//
// FILE: RunningMedian.cpp
// AUTHOR: Rob dot Tillaart at gmail dot com
// VERSION: 0.1.04
// PURPOSE: RunningMedian library for Arduino
//
// HISTORY:
// 0.1.00 - 2011-02-16 initial version
// 0.1.01 - 2011-02-22 added remarks from CodingBadly
// 0.1.02 - 2012-03-15 added
// 0.1.03 - 2013-09-30 added _sorted flag, minor refactor
// 0.1.04 - 2013-10-17 added getAverage(uint8_t) - kudo's to Sembazuru
//
// Released to the public domain
//

#include "RunningMedian.h"

RunningMedian::RunningMedian(uint8_t size)
{
    _size = constrain(size, MEDIAN_MIN_SIZE, MEDIAN_MAX_SIZE);
    // array's could be allocated by malloc here,
    // but using fixed size is easier.
    clear();
}

RunningMedian::RunningMedian()
{
    _size = MEDIAN_DEF_SIZE;
    clear();
}
// resets all counters
void RunningMedian::clear()
{
    _cnt = 0;
    _idx = 0;
    _sorted = false;
}

// adds a new value to the data-set
// or overwrites the oldest if full.
void RunningMedian::add(float value)
{
    _ar[_idx++] = value;
    if (_idx >= _size) _idx = 0; // wrap around
    if (_cnt < _size) _cnt++;
    _sorted = false;
}

float RunningMedian::getMedian()
{
    if (_cnt > 0)
    {
        if (_sorted == false) sort();
        return _as[_cnt/2];
    }
    return NAN;
}

#ifdef RUNNING_MEDIAN_ALL
float RunningMedian::getHighest()
{
    if (_cnt > 0)
    {
        if (_sorted == false) sort();
        return _as[_cnt-1];
    }
    return NAN;
}

float RunningMedian::getLowest()
{
    if (_cnt > 0)
    {	
        if (_sorted == false) sort();
        return _as[0];
    }
    return NAN;
}

float RunningMedian::getAverage()
{
    if (_cnt > 0)
    {	
        float sum = 0;
        for (uint8_t i=0; i< _cnt; i++) sum += _ar[i];
        return sum / _cnt;
    }
    return NAN;
}

float RunningMedian::getAverage(uint8_t nMedians)
{
    if ((_cnt > 0) && (nMedians > 0))
    {
        if (_cnt < nMedians) nMedians = _cnt;     // when filling the array for first time
        uint8_t start = ((_cnt - nMedians)/2);
        uint8_t stop = start + nMedians;
        sort();
        float sum = 0;
        for (uint8_t i = start; i < stop; i++) sum += _as[i];
        return sum / nMedians;
    }
    return NAN;
}

uint8_t RunningMedian::getSize() { return _size; };

uint8_t RunningMedian::getCount() { return _cnt; };
#endif

void RunningMedian::sort()
{
    // copy
    for (uint8_t i=0; i< _cnt; i++) _as[i] = _ar[i];

    // sort all
    for (uint8_t i=0; i< _cnt-1; i++)
    {
        uint8_t m = i;
        for (uint8_t j=i+1; j< _cnt; j++)
        {
            if (_as[j] < _as[m]) m = j;
        }
        if (m != i)
        {
            float t = _as[m];   // PATCH from 0.1.05 (was long)
            _as[m] = _as[i];
            _as[i] = t;
        }
    }
    _sorted = true;
}

// END OF FILE
