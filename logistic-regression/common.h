// [p_begin, p_end)
void get_points_range(long i, long *p_begin, long *p_end)
{
    // partition by points
    *p_begin = pcnt / NUM_TASKS * i;
    if (i == NUM_TASKS - 1) {
        *p_end = pcnt;
    } else {
        *p_end = pcnt / NUM_TASKS * (i + 1);
    }
    return;
}
