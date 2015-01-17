#ifndef LR_CONFIG_H
#define LR_CONFIG_H

#include <stddef.h>

#define MAX_POINT_CNT (1000000)
#define POINT_DIM (20)

// points; N_LONG_PER_PAGE is enough for one vector
#define WS_SIZE_PER_PAGE (N_LONG_PER_PAGE)

#define POINTS_ADDRESS (AMR_P_OFFSET_BEGIN)
#define POINTS_MAX_LEN (sizeof_long + sizeof_double * MAX_POINT_CNT * (POINT_DIM + 1))

// number of tasks
#define NUM_TASKS (30)

// Task status
#define TASK_STATUS_CREATED 0
#define TASK_STATUS_FINISHED 1

#define CACHE_MAGIC_NUM (0x8829eff20)
#define CACHE_MAGIC_NUM_ADDR DEJAVU_MEM_BEGIN
#define CACHE_POINTS (DEJAVU_MEM_BEGIN + sizeof_long)

// max iteration
#define MAX_ITER 10

// program specific macros
#define SHUFFLE_INPUT 1

#define noTASKING_INFO 1
#define noPRINT_INPUT 1
#define noDEBUG_TASKING 1
#define noDEBUG_CALC_W 1

#endif // LR_CONFIG_H
