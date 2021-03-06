int8 EXECUTION_MODE_OVERRIDE=0

int8 EXECUTION_MODE_QUEUE=1

# Unique ID used to identify this message, should preferably be consecutively increasing.
uint32 sequence_id

# When EXECUTION_MODE_OVERRIDE is chosen:
# - For trajectory messages: the time of the first trajectory point can be zero, in which case the controller will start directly at the first trajectory point.
# Otherwise the controller will prepend a first trajectory point at the current desired position.
# When EXECUTION_MODE_QUEUE is chosen:
# - The message must carry the ID of the message it should be queued to.
# - The very first message of a list of queued messages has to be an EXECUTION_MODE_OVERRIDE message.
# - For trajectory messages:
# - the trajectory point times are relative to the the last trajectory point time of the previous message.
# - the time of the first trajectory point has to be greater than zero.
# - When joint-space trajectory: the controller will queue the joint trajectory messages as a per joint basis.
int8 execution_mode

# Defines a unique ID for this message. Only needed when you want to queue another message to this message.
# Field default value -1
int64 message_id

# Only needed when using EXECUTION_MODE_QUEUE mode, it refers to the message_id to which this message should be queued to.
# It is used by the controller to ensure that no message has been lost on the way.
# If a message appears to be missing (previous_message_id different from the last message_id received by the controller), the motion is aborted.
int64 previous_message_id

# The time to delay this message on the controller side before being executed.
float64 execution_delay_time


