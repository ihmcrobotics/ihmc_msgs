# Unique ID used to identify this message, should preferably be consecutively increasing.
uint32 sequence_id

# Field default value -1.0
float64 max_inter_region_connection_length

# Field default value -1.0
float64 normal_z_threshold_for_accessible_regions

# Field default value -1.0
float64 extrusion_distance

# Field default value -1.0
float64 extrusion_distance_if_not_too_high_to_step

# Field default value -1.0
float64 too_high_to_step_distance

# Field default value -1.0
float64 cluster_resolution

# Field default value -1.0
float64 exploration_distance_from_start_goal

float64 planar_region_min_area

uint32 planar_region_min_size

# Defines the angle from which two regions are considered orthogonal.
# It is used to determine if a region should be projected onto another as a polygon or a line.
# It should be close to 90 degrees.
# Returns the angle threshold to use to determine if a line or polygon projection method should be used.
# Field default value -1.0
float64 region_orthogonal_angle

# This epsilon is is used when searching to which region the start/goal belongs to.
# A positive value corresponds to growing all the regions before testing if the start/goal is inside.
# Returns the value of the epsilon to use.
# Field default value 0.03
float64 search_host_region_epsilon


