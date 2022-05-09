; ModuleID = '/llk/IR_all_yes/drivers/media/cec/core/cec-pin-error-inj.c_pt.bc'
source_filename = "../drivers/media/cec/core/cec-pin-error-inj.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cec_error_inj_cmd = type { i32, i32, ptr }
%struct.cec_pin = type { ptr, ptr, ptr, %struct.wait_queue_head, %struct.hrtimer, i64, i32, i16, i8, i8, i8, i32, %struct.cec_msg, i32, i8, i32, i8, %struct.cec_msg, i32, i8, i32, i64, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, %struct.cec_msg, i8, i64, %struct.atomic_t, %struct.atomic_t, i32, i32, [128 x i64], [128 x i8], i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, [257 x i64], [257 x [8 x i8]] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.69 }
%union.anon.69 = type { [16 x i32] }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" \09\0D\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clear\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx-clear\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx-clear\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tx-ignore-nack-until-eom\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx-custom-pulse\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx-custom-low-usecs\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx-custom-high-usecs\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"any\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"once\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"always\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"toggle\00", [25 x i8] zeroinitializer }, align 32
@cec_error_inj_cmds = internal constant { [18 x %struct.cec_error_inj_cmd], [40 x i8] } { [18 x %struct.cec_error_inj_cmd] [%struct.cec_error_inj_cmd { i32 0, i32 -1, ptr @.str.58 }, %struct.cec_error_inj_cmd { i32 2, i32 0, ptr @.str.59 }, %struct.cec_error_inj_cmd { i32 4, i32 -1, ptr @.str.60 }, %struct.cec_error_inj_cmd { i32 6, i32 -1, ptr @.str.61 }, %struct.cec_error_inj_cmd { i32 8, i32 1, ptr @.str.62 }, %struct.cec_error_inj_cmd { i32 16, i32 -1, ptr @.str.63 }, %struct.cec_error_inj_cmd { i32 18, i32 -1, ptr @.str.64 }, %struct.cec_error_inj_cmd { i32 34, i32 2, ptr @.str.65 }, %struct.cec_error_inj_cmd { i32 36, i32 -1, ptr @.str.66 }, %struct.cec_error_inj_cmd { i32 20, i32 3, ptr @.str.67 }, %struct.cec_error_inj_cmd { i32 22, i32 4, ptr @.str.68 }, %struct.cec_error_inj_cmd { i32 24, i32 5, ptr @.str.69 }, %struct.cec_error_inj_cmd { i32 26, i32 -1, ptr @.str.70 }, %struct.cec_error_inj_cmd { i32 28, i32 -1, ptr @.str.71 }, %struct.cec_error_inj_cmd { i32 30, i32 -1, ptr @.str.72 }, %struct.cec_error_inj_cmd { i32 32, i32 6, ptr @.str.73 }, %struct.cec_error_inj_cmd { i32 38, i32 7, ptr @.str.74 }, %struct.cec_error_inj_cmd { i32 0, i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"# Clear error injections:\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"#   clear          clear all rx and tx error injections\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"#   rx-clear       clear all rx error injections\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"#   tx-clear       clear all tx error injections\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"#   <op> clear     clear all rx and tx error injections for <op>\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"#   <op> rx-clear  clear all rx error injections for <op>\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"#   <op> tx-clear  clear all tx error injections for <op>\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"#\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"# RX error injection:\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"#   <op>[,<mode>] rx-nack              NACK the message instead of sending an ACK\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"#   <op>[,<mode>] rx-low-drive <bit>   force a low-drive condition at this bit position\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"#   <op>[,<mode>] rx-add-byte          add a spurious byte to the received CEC message\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"#   <op>[,<mode>] rx-remove-byte       remove the last byte from the received CEC message\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"#    any[,<mode>] rx-arb-lost [<poll>] generate a POLL message to trigger an arbitration lost\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"# TX error injection settings:\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"#   tx-ignore-nack-until-eom           ignore early NACKs until EOM\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"#   tx-custom-low-usecs <usecs>        define the 'low' time for the custom pulse\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"#   tx-custom-high-usecs <usecs>       define the 'high' time for the custom pulse\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"#   tx-custom-pulse                    transmit the custom pulse once the bus is idle\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"# TX error injection:\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"#   <op>[,<mode>] tx-no-eom            don't set the EOM bit\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"#   <op>[,<mode>] tx-early-eom         set the EOM bit one byte too soon\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"#   <op>[,<mode>] tx-add-bytes <num>   append <num> (1-255) spurious bytes to the message\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"#   <op>[,<mode>] tx-remove-byte       drop the last byte from the message\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"#   <op>[,<mode>] tx-short-bit <bit>   make this bit shorter than allowed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"#   <op>[,<mode>] tx-long-bit <bit>    make this bit longer than allowed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"#   <op>[,<mode>] tx-custom-bit <bit>  send the custom pulse instead of this bit\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"#   <op>[,<mode>] tx-short-start       send a start pulse that's too short\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"#   <op>[,<mode>] tx-long-start        send a start pulse that's too long\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"#   <op>[,<mode>] tx-custom-start      send the custom pulse instead of the start pulse\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"#   <op>[,<mode>] tx-last-bit <bit>    stop sending after this bit\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"#   <op>[,<mode>] tx-low-drive <bit>   force a low-drive condition at this bit position\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"# <op>       CEC message opcode (0-255) or 'any'\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"# <mode>     'once' (default), 'always', 'toggle' or 'off'\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"# <bit>      CEC message bit (0-159)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"#            10 bits per 'byte': bits 0-7: data, bit 8: EOM, bit 9: ACK\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"# <poll>     CEC poll message used to test arbitration lost (0x00-0xff, default 0x0f)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"# <usecs>    microseconds (0-10000000, default 1000)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0Aclear\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %u\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tx-ignore-nack-until-eom\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx-custom-pulse\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tx-custom-low-usecs %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tx-custom-high-usecs %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rx-nack\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx-low-drive\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rx-add-byte\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx-remove-byte\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rx-arb-lost\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tx-no-eom\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx-early-eom\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx-add-bytes\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx-remove-byte\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx-short-bit\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tx-long-bit\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx-custom-bit\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx-short-start\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx-long-start\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx-custom-start\00", [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tx-last-bit\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx-low-drive\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"any,\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%02x,\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"once \00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"always \00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"toggle \00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"off \00", [27 x i8] zeroinitializer }, align 32
@switch.table.cec_pin_error_inj_show = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.77], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 34]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 32, i64 20, i64 22, i64 24]
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 74, i32 30 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 90, i32 21 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 99, i32 21 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 105, i32 21 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 115, i32 21 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 119, i32 21 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 128, i32 21 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 136, i32 21 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 148, i32 21 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 162, i32 22 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 164, i32 27 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 166, i32 27 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 168, i32 27 }
@___asan_gen_.121 = private unnamed_addr constant [19 x i8] c"cec_error_inj_cmds\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 19, i32 39 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 267, i32 15 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 268, i32 15 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 269, i32 15 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 270, i32 15 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 271, i32 15 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 272, i32 15 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 273, i32 15 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 274, i32 15 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 275, i32 15 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 276, i32 15 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 277, i32 15 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 278, i32 15 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 279, i32 15 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 280, i32 15 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 282, i32 15 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 283, i32 15 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 284, i32 15 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 285, i32 15 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 286, i32 15 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 288, i32 15 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 289, i32 15 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 290, i32 15 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 291, i32 15 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 292, i32 15 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 293, i32 15 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 294, i32 15 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 295, i32 15 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 296, i32 15 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 297, i32 15 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 298, i32 15 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 299, i32 15 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 300, i32 15 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 302, i32 15 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 303, i32 15 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 304, i32 15 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 305, i32 15 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 306, i32 15 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 307, i32 15 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 309, i32 15 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 328, i32 20 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 330, i32 17 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 335, i32 16 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 337, i32 16 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 339, i32 18 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 342, i32 18 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 20, i32 38 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 22, i32 40 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 23, i32 42 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 24, i32 45 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 26, i32 39 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 28, i32 40 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 29, i32 43 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 31, i32 40 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 32, i32 45 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 34, i32 40 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 36, i32 39 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 38, i32 41 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 39, i32 45 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 40, i32 44 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 41, i32 46 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 43, i32 39 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 45, i32 40 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 243, i32 16 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 245, i32 18 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 248, i32 16 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 251, i32 16 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 254, i32 16 }
@___asan_gen_.325 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.326 = private constant [46 x i8] c"../drivers/media/cec/core/cec-pin-error-inj.c\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 257, i32 16 }
@___asan_gen_.328 = private unnamed_addr constant [36 x i8] c"switch.table.cec_pin_error_inj_show\00", align 1
@llvm.compiler.used = appending global [83 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @cec_error_inj_cmds, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @switch.table.cec_pin_error_inj_show], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_error_inj_cmds to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cec_pin_error_inj_show to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @cec_pin_rx_error_inj(ptr nocapture noundef readonly %pin) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.cec_pin, ptr %pin, i32 0, i32 57, i32 256
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx, align 8
  %and = and i64 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %rx_bit = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 18
  %2 = ptrtoint ptr %rx_bit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_bit, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %3)
  %cmp = icmp ugt i32 %3, 17
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx1 = getelementptr %struct.cec_pin, ptr %pin, i32 0, i32 17, i32 6, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %phi.cast = zext i8 %5 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cmd.0 = phi i32 [ 256, %entry.if.end_crit_edge ], [ %phi.cast, %if.then ], [ 256, %land.lhs.true.if.end_crit_edge ]
  %arrayidx4 = getelementptr %struct.cec_pin, ptr %pin, i32 0, i32 57, i32 %cmd.0
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx4, align 8
  %and5 = and i64 %7, 65535
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5)
  %tobool6.not = icmp eq i64 %and5, 0
  %8 = trunc i32 %cmd.0 to i16
  %conv8 = select i1 %tobool6.not, i16 256, i16 %8
  ret i16 %conv8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @cec_pin_tx_error_inj(ptr nocapture noundef readonly %pin) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.cec_pin, ptr %pin, i32 0, i32 57, i32 256
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %1)
  %tobool.not = icmp ult i64 %1, 65536
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 12, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx2 = getelementptr %struct.cec_pin, ptr %pin, i32 0, i32 12, i32 6, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %phi.cast = zext i8 %5 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cmd.0 = phi i32 [ 256, %entry.if.end_crit_edge ], [ %phi.cast, %if.then ], [ 256, %land.lhs.true.if.end_crit_edge ]
  %arrayidx5 = getelementptr %struct.cec_pin, ptr %pin, i32 0, i32 57, i32 %cmd.0
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %7)
  %tobool7.not = icmp ult i64 %7, 65536
  %8 = trunc i32 %cmd.0 to i16
  %conv9 = select i1 %tobool7.not, i16 256, i16 %8
  ret i16 %conv9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cec_pin_error_inj_parse_line(ptr nocapture noundef readonly %adap, ptr noundef %line) local_unnamed_addr #2 align 64 {
entry:
  %p = alloca ptr, align 4
  %op = alloca i8, align 1
  %pos = alloca i8, align 1
  %usecs = alloca i32, align 4
  %usecs55 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pin1 = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 35
  %0 = ptrtoint ptr %pin1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %op) #5
  %2 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %op, align 1, !annotation !175
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pos) #5
  %3 = ptrtoint ptr %pos to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %pos, align 1, !annotation !175
  %call = tail call ptr @skip_spaces(ptr noundef %line) #5
  %4 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %p, align 4
  %call2 = call ptr @strsep(ptr noundef nonnull %p, ptr noundef nonnull @.str) #5
  %call3 = call i32 @strcmp(ptr noundef %call2, ptr noundef nonnull dereferenceable(6) @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %error_inj = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 57
  %5 = call ptr @memset(ptr %error_inj, i32 0, i32 2056)
  %tx_toggle = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %tx_toggle to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %tx_toggle, align 4
  %rx_toggle = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %rx_toggle to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %rx_toggle, align 4
  %tx_ignore_nack_until_eom = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 51
  %8 = ptrtoint ptr %tx_ignore_nack_until_eom to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %tx_ignore_nack_until_eom, align 4
  %tx_custom_pulse = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 52
  %9 = ptrtoint ptr %tx_custom_pulse to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %tx_custom_pulse, align 1
  %tx_custom_low_usecs = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 49
  %10 = ptrtoint ptr %tx_custom_low_usecs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1000, ptr %tx_custom_low_usecs, align 4
  %tx_custom_high_usecs = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 50
  %11 = ptrtoint ptr %tx_custom_high_usecs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1000, ptr %tx_custom_high_usecs, align 8
  br label %cleanup219

if.end:                                           ; preds = %entry
  %call4 = call i32 @strcmp(ptr noundef %call2, ptr noundef nonnull dereferenceable(9) @.str.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.for.body_crit_edge, label %if.end9

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0316 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cec_pin, ptr %1, i32 0, i32 57, i32 %i.0316
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx, align 8
  %and = and i64 %13, -65536
  store i64 %and, ptr %arrayidx, align 8
  %inc = add nuw nsw i32 %i.0316, 1
  %exitcond319.not = icmp eq i32 %inc, 257
  br i1 %exitcond319.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %rx_toggle8 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %rx_toggle8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %rx_toggle8, align 4
  br label %cleanup219

if.end9:                                          ; preds = %if.end
  %call10 = call i32 @strcmp(ptr noundef %call2, ptr noundef nonnull dereferenceable(9) @.str.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.for.body15_crit_edge, label %if.end27

if.end9.for.body15_crit_edge:                     ; preds = %if.end9
  br label %for.body15

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %if.end9.for.body15_crit_edge
  %i.1315 = phi i32 [ %inc20, %for.body15.for.body15_crit_edge ], [ 0, %if.end9.for.body15_crit_edge ]
  %arrayidx17 = getelementptr %struct.cec_pin, ptr %1, i32 0, i32 57, i32 %i.1315
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx17, align 8
  %and18 = and i64 %16, 65535
  store i64 %and18, ptr %arrayidx17, align 8
  %inc20 = add nuw nsw i32 %i.1315, 1
  %exitcond.not = icmp eq i32 %inc20, 257
  br i1 %exitcond.not, label %for.end21, label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body15

for.end21:                                        ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #7
  %tx_toggle22 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 16
  %17 = ptrtoint ptr %tx_toggle22 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %tx_toggle22, align 4
  %tx_ignore_nack_until_eom23 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 51
  %18 = ptrtoint ptr %tx_ignore_nack_until_eom23 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %tx_ignore_nack_until_eom23, align 4
  %tx_custom_pulse24 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 52
  %19 = ptrtoint ptr %tx_custom_pulse24 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %tx_custom_pulse24, align 1
  %tx_custom_low_usecs25 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 49
  %20 = ptrtoint ptr %tx_custom_low_usecs25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1000, ptr %tx_custom_low_usecs25, align 4
  %tx_custom_high_usecs26 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 50
  %21 = ptrtoint ptr %tx_custom_high_usecs26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1000, ptr %tx_custom_high_usecs26, align 8
  br label %cleanup219

if.end27:                                         ; preds = %if.end9
  %call28 = call i32 @strcmp(ptr noundef %call2, ptr noundef nonnull dereferenceable(25) @.str.4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %tx_ignore_nack_until_eom31 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 51
  %22 = ptrtoint ptr %tx_ignore_nack_until_eom31 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %tx_ignore_nack_until_eom31, align 4
  br label %cleanup219

if.end32:                                         ; preds = %if.end27
  %call33 = call i32 @strcmp(ptr noundef %call2, ptr noundef nonnull dereferenceable(16) @.str.5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %tx_custom_pulse36 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 52
  %23 = ptrtoint ptr %tx_custom_pulse36 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %tx_custom_pulse36, align 1
  call void @cec_pin_start_timer(ptr noundef %1) #5
  br label %cleanup219

if.end37:                                         ; preds = %if.end32
  %24 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %p, align 4
  %tobool38.not = icmp eq ptr %25, null
  br i1 %tobool38.not, label %if.end37.cleanup219_crit_edge, label %if.end40

if.end37.cleanup219_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup219

if.end40:                                         ; preds = %if.end37
  %call41 = call ptr @skip_spaces(ptr noundef nonnull %25) #5
  %26 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call41, ptr %p, align 4
  %call42 = call i32 @strcmp(ptr noundef %call2, ptr noundef nonnull dereferenceable(20) @.str.6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then44, label %if.end51

if.then44:                                        ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %usecs) #5
  %27 = ptrtoint ptr %usecs to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %usecs, align 4, !annotation !175
  %call.i = call i32 @kstrtouint(ptr noundef %call41, i32 noundef 0, ptr noundef nonnull %usecs) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool46.not = icmp eq i32 %call.i, 0
  br i1 %tobool46.not, label %lor.lhs.false, label %if.then44.cleanup_crit_edge

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then44
  %28 = ptrtoint ptr %usecs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %29)
  %cmp47 = icmp ugt i32 %29, 10000000
  br i1 %cmp47, label %lor.lhs.false.cleanup_crit_edge, label %if.end49

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end49:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %tx_custom_low_usecs50 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 49
  %30 = ptrtoint ptr %tx_custom_low_usecs50 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %tx_custom_low_usecs50, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %lor.lhs.false.cleanup_crit_edge, %if.then44.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end49 ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %if.then44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %usecs) #5
  br label %cleanup219

if.end51:                                         ; preds = %if.end40
  %call52 = call i32 @strcmp(ptr noundef %call2, ptr noundef nonnull dereferenceable(21) @.str.7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then54, label %if.end64

if.then54:                                        ; preds = %if.end51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %usecs55) #5
  %31 = ptrtoint ptr %usecs55 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %usecs55, align 4, !annotation !175
  %call.i304 = call i32 @kstrtouint(ptr noundef %call41, i32 noundef 0, ptr noundef nonnull %usecs55) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i304)
  %tobool57.not = icmp eq i32 %call.i304, 0
  br i1 %tobool57.not, label %lor.lhs.false58, label %if.then54.cleanup63_crit_edge

if.then54.cleanup63_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup63

lor.lhs.false58:                                  ; preds = %if.then54
  %32 = ptrtoint ptr %usecs55 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %usecs55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %33)
  %cmp59 = icmp ugt i32 %33, 10000000
  br i1 %cmp59, label %lor.lhs.false58.cleanup63_crit_edge, label %if.end61

lor.lhs.false58.cleanup63_crit_edge:              ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup63

if.end61:                                         ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #7
  %tx_custom_high_usecs62 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 50
  %34 = ptrtoint ptr %tx_custom_high_usecs62 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %tx_custom_high_usecs62, align 8
  br label %cleanup63

cleanup63:                                        ; preds = %if.end61, %lor.lhs.false58.cleanup63_crit_edge, %if.then54.cleanup63_crit_edge
  %retval.1 = phi i1 [ true, %if.end61 ], [ false, %lor.lhs.false58.cleanup63_crit_edge ], [ false, %if.then54.cleanup63_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %usecs55) #5
  br label %cleanup219

if.end64:                                         ; preds = %if.end51
  %call65 = call ptr @strchr(ptr noundef %call2, i32 noundef 44)
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %if.end64.if.end68_crit_edge, label %if.then67

if.end64.if.end68_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr = getelementptr i8, ptr %call65, i32 1
  %35 = ptrtoint ptr %call65 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %call65, align 1
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end64.if.end68_crit_edge
  %comma.0 = phi ptr [ %incdec.ptr, %if.then67 ], [ null, %if.end64.if.end68_crit_edge ]
  %call69 = call i32 @strcmp(ptr noundef %call2, ptr noundef nonnull dereferenceable(4) @.str.8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then71, label %if.else

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr %struct.cec_pin, ptr %1, i32 0, i32 57, i32 256
  br label %if.end87

if.else:                                          ; preds = %if.end68
  %call76 = call i32 @kstrtou8(ptr noundef %call2, i32 noundef 0, ptr noundef nonnull %op) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then78, label %if.else.cleanup219_crit_edge

if.else.cleanup219_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup219

if.then78:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %error_inj79 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 57
  %36 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %op, align 1
  %conv = zext i8 %37 to i32
  %add.ptr81 = getelementptr i64, ptr %error_inj79, i32 %conv
  br label %if.end87

if.end87:                                         ; preds = %if.then78, %if.then71
  %error.0 = phi ptr [ %add.ptr81, %if.then78 ], [ %add.ptr, %if.then71 ]
  %38 = phi i32 [ %conv, %if.then78 ], [ 256, %if.then71 ]
  %tobool88.not = icmp eq ptr %comma.0, null
  br i1 %tobool88.not, label %if.end87.if.end110_crit_edge, label %if.then89

if.end87.if.end110_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

if.then89:                                        ; preds = %if.end87
  %call90 = call i32 @strcmp(ptr noundef nonnull %comma.0, ptr noundef nonnull dereferenceable(4) @.str.9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.then89.if.end110_crit_edge, label %if.else93

if.then89.if.end110_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

if.else93:                                        ; preds = %if.then89
  %call94 = call i32 @strcmp(ptr noundef nonnull %comma.0, ptr noundef nonnull dereferenceable(5) @.str.10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.else93.if.end110_crit_edge, label %if.else97

if.else93.if.end110_crit_edge:                    ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

if.else97:                                        ; preds = %if.else93
  %call98 = call i32 @strcmp(ptr noundef nonnull %comma.0, ptr noundef nonnull dereferenceable(7) @.str.11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.else97.if.end110_crit_edge, label %if.else101

if.else97.if.end110_crit_edge:                    ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

if.else101:                                       ; preds = %if.else97
  %call102 = call i32 @strcmp(ptr noundef nonnull %comma.0, ptr noundef nonnull dereferenceable(7) @.str.12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.else101.if.end110_crit_edge, label %if.else101.cleanup219_crit_edge

if.else101.cleanup219_crit_edge:                  ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup219

if.else101.if.end110_crit_edge:                   ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

if.end110:                                        ; preds = %if.else101.if.end110_crit_edge, %if.else97.if.end110_crit_edge, %if.else93.if.end110_crit_edge, %if.then89.if.end110_crit_edge, %if.end87.if.end110_crit_edge
  %mode.0 = phi i8 [ 1, %if.end87.if.end110_crit_edge ], [ 0, %if.then89.if.end110_crit_edge ], [ 1, %if.else93.if.end110_crit_edge ], [ 2, %if.else97.if.end110_crit_edge ], [ 3, %if.else101.if.end110_crit_edge ]
  %call111 = call ptr @strsep(ptr noundef nonnull %p, ptr noundef nonnull @.str) #5
  %39 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %p, align 4
  %tobool112.not = icmp eq ptr %40, null
  br i1 %tobool112.not, label %if.end110.if.end117_crit_edge, label %if.then113

if.end110.if.end117_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

if.then113:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  %call114 = call ptr @skip_spaces(ptr noundef nonnull %40) #5
  %41 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call114, ptr %p, align 4
  %call115 = call i32 @kstrtou8(ptr noundef %call114, i32 noundef 0, ptr noundef nonnull %pos) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br label %if.end117

if.end117:                                        ; preds = %if.then113, %if.end110.if.end117_crit_edge
  %has_pos.0.off0 = phi i1 [ %tobool116.not, %if.then113 ], [ false, %if.end110.if.end117_crit_edge ]
  %call118 = call i32 @strcmp(ptr noundef %call111, ptr noundef nonnull dereferenceable(6) @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.then120, label %if.end121

if.then120:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %error.0 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 0, ptr %error.0, align 8
  br label %cleanup219

if.end121:                                        ; preds = %if.end117
  %call122 = call i32 @strcmp(ptr noundef %call111, ptr noundef nonnull dereferenceable(9) @.str.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.then124, label %if.end126

if.then124:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %error.0 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %error.0, align 8
  %and125 = and i64 %44, -65536
  store i64 %and125, ptr %error.0, align 8
  br label %cleanup219

if.end126:                                        ; preds = %if.end121
  %call127 = call i32 @strcmp(ptr noundef %call111, ptr noundef nonnull dereferenceable(9) @.str.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.then129, label %for.body135.preheader

for.body135.preheader:                            ; preds = %if.end126
  %call139 = call i32 @strcmp(ptr noundef %call111, ptr noundef nonnull dereferenceable(8) @.str.58) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %for.body135.preheader.if.end142_crit_edge, label %for.inc216

for.body135.preheader.if.end142_crit_edge:        ; preds = %for.body135.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

if.then129:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %error.0 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %error.0, align 8
  %and130 = and i64 %46, 65535
  store i64 %and130, ptr %error.0, align 8
  br label %cleanup219

if.end142:                                        ; preds = %for.inc216.15.if.end142_crit_edge, %for.inc216.14.if.end142_crit_edge, %for.inc216.13.if.end142_crit_edge, %for.inc216.12.if.end142_crit_edge, %for.inc216.11.if.end142_crit_edge, %for.inc216.10.if.end142_crit_edge, %for.inc216.9.if.end142_crit_edge, %for.inc216.8.if.end142_crit_edge, %for.inc216.7.if.end142_crit_edge, %for.inc216.6.if.end142_crit_edge, %for.inc216.5.if.end142_crit_edge, %for.inc216.4.if.end142_crit_edge, %for.inc216.3.if.end142_crit_edge, %for.inc216.2.if.end142_crit_edge, %for.inc216.1.if.end142_crit_edge, %for.inc216.if.end142_crit_edge, %for.body135.preheader.if.end142_crit_edge
  %.lcssa = phi i32 [ 0, %for.body135.preheader.if.end142_crit_edge ], [ 1, %for.inc216.if.end142_crit_edge ], [ 2, %for.inc216.1.if.end142_crit_edge ], [ 3, %for.inc216.2.if.end142_crit_edge ], [ 4, %for.inc216.3.if.end142_crit_edge ], [ 5, %for.inc216.4.if.end142_crit_edge ], [ 6, %for.inc216.5.if.end142_crit_edge ], [ 7, %for.inc216.6.if.end142_crit_edge ], [ 8, %for.inc216.7.if.end142_crit_edge ], [ 9, %for.inc216.8.if.end142_crit_edge ], [ 10, %for.inc216.9.if.end142_crit_edge ], [ 11, %for.inc216.10.if.end142_crit_edge ], [ 12, %for.inc216.11.if.end142_crit_edge ], [ 13, %for.inc216.12.if.end142_crit_edge ], [ 14, %for.inc216.13.if.end142_crit_edge ], [ 15, %for.inc216.14.if.end142_crit_edge ], [ 16, %for.inc216.15.if.end142_crit_edge ]
  %arrayidx133.le = getelementptr [18 x %struct.cec_error_inj_cmd], ptr @cec_error_inj_cmds, i32 0, i32 %.lcssa
  %47 = ptrtoint ptr %arrayidx133.le to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx133.le, align 4
  %sh_prom = zext i32 %48 to i64
  %shl = shl i64 3, %sh_prom
  %arg_idx146 = getelementptr [18 x %struct.cec_error_inj_cmd], ptr @cec_error_inj_cmds, i32 0, i32 %.lcssa, i32 1
  %49 = ptrtoint ptr %arg_idx146 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arg_idx146, align 4
  %51 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values)
  switch i32 %48, label %if.end166 [
    i32 8, label %if.then149
    i32 34, label %if.then159
  ]

if.then149:                                       ; preds = %if.end142
  br i1 %tobool70.not, label %if.end152, label %if.then149.cleanup219_crit_edge

if.then149.cleanup219_crit_edge:                  ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup219

if.end152:                                        ; preds = %if.then149
  br i1 %has_pos.0.off0, label %if.end152.if.end166.thread_crit_edge, label %if.then154

if.end152.if.end166.thread_crit_edge:             ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end166.thread

if.then154:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %pos to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 15, ptr %pos, align 1
  br label %if.end166.thread

if.then159:                                       ; preds = %if.end142
  br i1 %has_pos.0.off0, label %lor.lhs.false161, label %if.then159.cleanup219_crit_edge

if.then159.cleanup219_crit_edge:                  ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup219

lor.lhs.false161:                                 ; preds = %if.then159
  %53 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool162.not = icmp eq i8 %54, 0
  br i1 %tobool162.not, label %lor.lhs.false161.cleanup219_crit_edge, label %lor.lhs.false161.if.end166.thread_crit_edge

lor.lhs.false161.if.end166.thread_crit_edge:      ; preds = %lor.lhs.false161
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end166.thread

lor.lhs.false161.cleanup219_crit_edge:            ; preds = %lor.lhs.false161
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup219

if.end166.thread:                                 ; preds = %lor.lhs.false161.if.end166.thread_crit_edge, %if.then154, %if.end152.if.end166.thread_crit_edge
  %55 = lshr i32 102034, %.lcssa
  %56 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp167.not306 = icmp eq i32 %56, 0
  %neg = xor i64 %shl, -1
  %57 = ptrtoint ptr %error.0 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %error.0, align 8
  %and202 = and i64 %58, %neg
  %conv203 = zext i8 %mode.0 to i64
  %shl205 = shl i64 %conv203, %sh_prom
  %or = or i64 %and202, %shl205
  store i64 %or, ptr %error.0, align 8
  br i1 %cmp167.not306, label %if.end166.thread.cleanup219_crit_edge, label %if.end166.thread.if.then208_crit_edge

if.end166.thread.if.then208_crit_edge:            ; preds = %if.end166.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then208

if.end166.thread.cleanup219_crit_edge:            ; preds = %if.end166.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup219

if.end166:                                        ; preds = %if.end142
  %59 = lshr i32 102034, %.lcssa
  %60 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp167.not = icmp eq i32 %60, 0
  br i1 %cmp167.not, label %cleanup219.critedge, label %if.then171

if.then171:                                       ; preds = %if.end166
  br i1 %has_pos.0.off0, label %lor.lhs.false173, label %if.then171.cleanup219_crit_edge

if.then171.cleanup219_crit_edge:                  ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup219

lor.lhs.false173:                                 ; preds = %if.then171
  %61 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -97, i8 %62)
  %cmp175 = icmp ugt i8 %62, -97
  br i1 %cmp175, label %lor.lhs.false173.cleanup219_crit_edge, label %if.end178

lor.lhs.false173.cleanup219_crit_edge:            ; preds = %lor.lhs.false173
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup219

if.end178:                                        ; preds = %lor.lhs.false173
  %tobool70.not.not = xor i1 %tobool70.not, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %62)
  %cmp183 = icmp ult i8 %62, 18
  %or.cond = select i1 %tobool70.not.not, i1 %cmp183, i1 false
  br i1 %or.cond, label %if.end178.cleanup219_crit_edge, label %if.end186

if.end178.cleanup219_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup219

if.end186:                                        ; preds = %if.end178
  %63 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %48, label %if.end186.if.then208.sink.split_crit_edge [
    i32 20, label %if.end186.land.lhs.true195_crit_edge
    i32 22, label %if.end186.land.lhs.true195_crit_edge331
    i32 24, label %if.end186.land.lhs.true195_crit_edge332
  ]

if.end186.land.lhs.true195_crit_edge332:          ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true195

if.end186.land.lhs.true195_crit_edge331:          ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true195

if.end186.land.lhs.true195_crit_edge:             ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true195

if.end186.if.then208.sink.split_crit_edge:        ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then208.sink.split

land.lhs.true195:                                 ; preds = %if.end186.land.lhs.true195_crit_edge, %if.end186.land.lhs.true195_crit_edge331, %if.end186.land.lhs.true195_crit_edge332
  %64 = urem i8 %62, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %64)
  %cmp197 = icmp eq i8 %64, 9
  br i1 %cmp197, label %land.lhs.true195.cleanup219_crit_edge, label %land.lhs.true195.if.then208.sink.split_crit_edge

land.lhs.true195.if.then208.sink.split_crit_edge: ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then208.sink.split

land.lhs.true195.cleanup219_crit_edge:            ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup219

if.then208.sink.split:                            ; preds = %land.lhs.true195.if.then208.sink.split_crit_edge, %if.end186.if.then208.sink.split_crit_edge
  %neg.c326 = xor i64 %shl, -1
  %65 = ptrtoint ptr %error.0 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %error.0, align 8
  %and202.c327 = and i64 %66, %neg.c326
  %conv203.c328 = zext i8 %mode.0 to i64
  %shl205.c329 = shl i64 %conv203.c328, %sh_prom
  %or.c330 = or i64 %and202.c327, %shl205.c329
  store i64 %or.c330, ptr %error.0, align 8
  br label %if.then208

if.then208:                                       ; preds = %if.then208.sink.split, %if.end166.thread.if.then208_crit_edge
  %67 = getelementptr %struct.cec_pin, ptr %1, i32 0, i32 58, i32 %38
  %68 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %pos, align 1
  %arrayidx209 = getelementptr i8, ptr %67, i32 %50
  %70 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %arrayidx209, align 1
  br label %cleanup219

for.inc216:                                       ; preds = %for.body135.preheader
  %call139.1 = call i32 @strcmp(ptr noundef %call111, ptr noundef nonnull dereferenceable(13) @.str.59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.1)
  %tobool140.not.1 = icmp eq i32 %call139.1, 0
  br i1 %tobool140.not.1, label %for.inc216.if.end142_crit_edge, label %for.inc216.1

for.inc216.if.end142_crit_edge:                   ; preds = %for.inc216
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

for.inc216.1:                                     ; preds = %for.inc216
  %call139.2 = call i32 @strcmp(ptr noundef %call111, ptr noundef nonnull dereferenceable(12) @.str.60) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.2)
  %tobool140.not.2 = icmp eq i32 %call139.2, 0
  br i1 %tobool140.not.2, label %for.inc216.1.if.end142_crit_edge, label %for.inc216.2

for.inc216.1.if.end142_crit_edge:                 ; preds = %for.inc216.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

for.inc216.2:                                     ; preds = %for.inc216.1
  %call139.3 = call i32 @strcmp(ptr noundef %call111, ptr noundef nonnull dereferenceable(15) @.str.61) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.3)
  %tobool140.not.3 = icmp eq i32 %call139.3, 0
  br i1 %tobool140.not.3, label %for.inc216.2.if.end142_crit_edge, label %for.inc216.3

for.inc216.2.if.end142_crit_edge:                 ; preds = %for.inc216.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

for.inc216.3:                                     ; preds = %for.inc216.2
  %call139.4 = call i32 @strcmp(ptr noundef %call111, ptr noundef nonnull dereferenceable(12) @.str.62) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.4)
  %tobool140.not.4 = icmp eq i32 %call139.4, 0
  br i1 %tobool140.not.4, label %for.inc216.3.if.end142_crit_edge, label %for.inc216.4

for.inc216.3.if.end142_crit_edge:                 ; preds = %for.inc216.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

for.inc216.4:                                     ; preds = %for.inc216.3
  %call139.5 = call i32 @strcmp(ptr noundef %call111, ptr noundef nonnull dereferenceable(10) @.str.63) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.5)
  %tobool140.not.5 = icmp eq i32 %call139.5, 0
  br i1 %tobool140.not.5, label %for.inc216.4.if.end142_crit_edge, label %for.inc216.5

for.inc216.4.if.end142_crit_edge:                 ; preds = %for.inc216.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

for.inc216.5:                                     ; preds = %for.inc216.4
  %call139.6 = call i32 @strcmp(ptr noundef %call111, ptr noundef nonnull dereferenceable(13) @.str.64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.6)
  %tobool140.not.6 = icmp eq i32 %call139.6, 0
  br i1 %tobool140.not.6, label %for.inc216.5.if.end142_crit_edge, label %for.inc216.6

for.inc216.5.if.end142_crit_edge:                 ; preds = %for.inc216.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

for.inc216.6:                                     ; preds = %for.inc216.5
  %call139.7 = call i32 @strcmp(ptr noundef %call111, ptr noundef nonnull dereferenceable(13) @.str.65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.7)
  %tobool140.not.7 = icmp eq i32 %call139.7, 0
  br i1 %tobool140.not.7, label %for.inc216.6.if.end142_crit_edge, label %for.inc216.7

for.inc216.6.if.end142_crit_edge:                 ; preds = %for.inc216.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

for.inc216.7:                                     ; preds = %for.inc216.6
  %call139.8 = call i32 @strcmp(ptr noundef %call111, ptr noundef nonnull dereferenceable(15) @.str.66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.8)
  %tobool140.not.8 = icmp eq i32 %call139.8, 0
  br i1 %tobool140.not.8, label %for.inc216.7.if.end142_crit_edge, label %for.inc216.8

for.inc216.7.if.end142_crit_edge:                 ; preds = %for.inc216.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

for.inc216.8:                                     ; preds = %for.inc216.7
  %call139.9 = call i32 @strcmp(ptr noundef %call111, ptr noundef nonnull dereferenceable(13) @.str.67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.9)
  %tobool140.not.9 = icmp eq i32 %call139.9, 0
  br i1 %tobool140.not.9, label %for.inc216.8.if.end142_crit_edge, label %for.inc216.9

for.inc216.8.if.end142_crit_edge:                 ; preds = %for.inc216.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

for.inc216.9:                                     ; preds = %for.inc216.8
  %call139.10 = call i32 @strcmp(ptr noundef %call111, ptr noundef nonnull dereferenceable(12) @.str.68) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.10)
  %tobool140.not.10 = icmp eq i32 %call139.10, 0
  br i1 %tobool140.not.10, label %for.inc216.9.if.end142_crit_edge, label %for.inc216.10

for.inc216.9.if.end142_crit_edge:                 ; preds = %for.inc216.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

for.inc216.10:                                    ; preds = %for.inc216.9
  %call139.11 = call i32 @strcmp(ptr noundef %call111, ptr noundef nonnull dereferenceable(14) @.str.69) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.11)
  %tobool140.not.11 = icmp eq i32 %call139.11, 0
  br i1 %tobool140.not.11, label %for.inc216.10.if.end142_crit_edge, label %for.inc216.11

for.inc216.10.if.end142_crit_edge:                ; preds = %for.inc216.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

for.inc216.11:                                    ; preds = %for.inc216.10
  %call139.12 = call i32 @strcmp(ptr noundef %call111, ptr noundef nonnull dereferenceable(15) @.str.70) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.12)
  %tobool140.not.12 = icmp eq i32 %call139.12, 0
  br i1 %tobool140.not.12, label %for.inc216.11.if.end142_crit_edge, label %for.inc216.12

for.inc216.11.if.end142_crit_edge:                ; preds = %for.inc216.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

for.inc216.12:                                    ; preds = %for.inc216.11
  %call139.13 = call i32 @strcmp(ptr noundef %call111, ptr noundef nonnull dereferenceable(14) @.str.71) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.13)
  %tobool140.not.13 = icmp eq i32 %call139.13, 0
  br i1 %tobool140.not.13, label %for.inc216.12.if.end142_crit_edge, label %for.inc216.13

for.inc216.12.if.end142_crit_edge:                ; preds = %for.inc216.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

for.inc216.13:                                    ; preds = %for.inc216.12
  %call139.14 = call i32 @strcmp(ptr noundef %call111, ptr noundef nonnull dereferenceable(16) @.str.72) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.14)
  %tobool140.not.14 = icmp eq i32 %call139.14, 0
  br i1 %tobool140.not.14, label %for.inc216.13.if.end142_crit_edge, label %for.inc216.14

for.inc216.13.if.end142_crit_edge:                ; preds = %for.inc216.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

for.inc216.14:                                    ; preds = %for.inc216.13
  %call139.15 = call i32 @strcmp(ptr noundef %call111, ptr noundef nonnull dereferenceable(12) @.str.73) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.15)
  %tobool140.not.15 = icmp eq i32 %call139.15, 0
  br i1 %tobool140.not.15, label %for.inc216.14.if.end142_crit_edge, label %for.inc216.15

for.inc216.14.if.end142_crit_edge:                ; preds = %for.inc216.14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

for.inc216.15:                                    ; preds = %for.inc216.14
  %call139.16 = call i32 @strcmp(ptr noundef %call111, ptr noundef nonnull dereferenceable(13) @.str.74) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.16)
  %tobool140.not.16 = icmp eq i32 %call139.16, 0
  br i1 %tobool140.not.16, label %for.inc216.15.if.end142_crit_edge, label %for.inc216.15.cleanup219_crit_edge

for.inc216.15.cleanup219_crit_edge:               ; preds = %for.inc216.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup219

for.inc216.15.if.end142_crit_edge:                ; preds = %for.inc216.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

cleanup219.critedge:                              ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #7
  %neg.c320 = xor i64 %shl, -1
  %71 = ptrtoint ptr %error.0 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %error.0, align 8
  %and202.c321 = and i64 %72, %neg.c320
  %conv203.c322 = zext i8 %mode.0 to i64
  %shl205.c323 = shl i64 %conv203.c322, %sh_prom
  %or.c324 = or i64 %and202.c321, %shl205.c323
  store i64 %or.c324, ptr %error.0, align 8
  br label %cleanup219

cleanup219:                                       ; preds = %cleanup219.critedge, %for.inc216.15.cleanup219_crit_edge, %if.then208, %land.lhs.true195.cleanup219_crit_edge, %if.end178.cleanup219_crit_edge, %lor.lhs.false173.cleanup219_crit_edge, %if.then171.cleanup219_crit_edge, %if.end166.thread.cleanup219_crit_edge, %lor.lhs.false161.cleanup219_crit_edge, %if.then159.cleanup219_crit_edge, %if.then149.cleanup219_crit_edge, %if.then129, %if.then124, %if.then120, %if.else101.cleanup219_crit_edge, %if.else.cleanup219_crit_edge, %cleanup63, %cleanup, %if.end37.cleanup219_crit_edge, %if.then35, %if.then30, %for.end21, %for.end, %if.then
  %retval.4 = phi i1 [ true, %if.then129 ], [ true, %if.then124 ], [ true, %if.then120 ], [ %retval.1, %cleanup63 ], [ %retval.0, %cleanup ], [ true, %if.then35 ], [ true, %if.then30 ], [ true, %for.end21 ], [ true, %for.end ], [ true, %if.then ], [ false, %if.end37.cleanup219_crit_edge ], [ false, %if.else.cleanup219_crit_edge ], [ false, %if.else101.cleanup219_crit_edge ], [ true, %if.end166.thread.cleanup219_crit_edge ], [ true, %if.then208 ], [ false, %land.lhs.true195.cleanup219_crit_edge ], [ false, %if.end178.cleanup219_crit_edge ], [ false, %if.then171.cleanup219_crit_edge ], [ false, %lor.lhs.false173.cleanup219_crit_edge ], [ false, %if.then159.cleanup219_crit_edge ], [ false, %lor.lhs.false161.cleanup219_crit_edge ], [ false, %if.then149.cleanup219_crit_edge ], [ false, %for.inc216.15.cleanup219_crit_edge ], [ true, %cleanup219.critedge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pos) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %op) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #5
  ret i1 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_pin_start_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cec_pin_error_inj_show(ptr nocapture noundef readonly %adap, ptr noundef %sf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pin1 = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 35
  %0 = ptrtoint ptr %pin1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin1, align 8
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.13) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.14) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.15) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.16) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.17) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.18) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.19) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.20) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.21) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.22) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.23) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.24) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.25) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.26) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.20) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.27) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.28) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.29) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.30) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.31) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.20) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.32) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.33) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.34) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.35) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.36) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.37) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.38) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.39) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.40) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.41) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.42) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.43) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.44) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.20) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.45) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.46) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.47) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.48) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.49) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.50) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.51) #5
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %i.0117 = phi i32 [ 0, %entry ], [ %inc25, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cec_pin, ptr %1, i32 0, i32 57, i32 %i.0117
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.0117)
  %cmp.i = icmp eq i32 %i.0117, 256
  br label %for.body4

for.body4:                                        ; preds = %cleanup.for.body4_crit_edge, %for.body
  %4 = phi ptr [ @.str.58, %for.body ], [ %16, %cleanup.for.body4_crit_edge ]
  %j.0116 = phi i32 [ 0, %for.body ], [ %inc, %cleanup.for.body4_crit_edge ]
  %arrayidx3 = getelementptr [18 x %struct.cec_error_inj_cmd], ptr @cec_error_inj_cmds, i32 0, i32 %j.0116
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx3, align 4
  %arg_idx11 = getelementptr [18 x %struct.cec_error_inj_cmd], ptr @cec_error_inj_cmds, i32 0, i32 %j.0116, i32 1
  %7 = ptrtoint ptr %arg_idx11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arg_idx11, align 4
  %sh_prom = zext i32 %6 to i64
  %shr = lshr i64 %3, %sh_prom
  %conv115 = and i64 %shr, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %conv115)
  %tobool12.not = icmp eq i64 %conv115, 0
  br i1 %tobool12.not, label %for.body4.cleanup_crit_edge, label %if.end

for.body4.cleanup_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %for.body4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.75) #5
  br label %if.end.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.76, i32 noundef %i.0117) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %trunc = trunc i64 %shr to i32
  %switch.tableidx = and i32 %trunc, 3
  %9 = xor i32 %switch.tableidx, 2
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.cec_pin_error_inj_show, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load ptr, ptr %switch.gep, align 4
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull %switch.load) #5
  tail call void @seq_puts(ptr noundef %sf, ptr noundef %4) #5
  %11 = lshr i32 102034, %j.0116
  %12 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp14.not = icmp eq i32 %12, 0
  br i1 %cmp14.not, label %if.end.i.if.end20_crit_edge, label %if.then16

if.end.i.if.end20_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then16:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx18 = getelementptr %struct.cec_pin, ptr %1, i32 0, i32 58, i32 %i.0117, i32 %8
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.52, i32 noundef %conv19) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end.i.if.end20_crit_edge
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.53) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %for.body4.cleanup_crit_edge
  %inc = add nuw nsw i32 %j.0116, 1
  %cmd = getelementptr [18 x %struct.cec_error_inj_cmd], ptr @cec_error_inj_cmds, i32 0, i32 %inc, i32 2
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd, align 4
  %exitcond = icmp eq i32 %inc, 17
  br i1 %exitcond, label %for.end, label %cleanup.for.body4_crit_edge

cleanup.for.body4_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body4

for.end:                                          ; preds = %cleanup
  %inc25 = add nuw nsw i32 %i.0117, 1
  %exitcond118.not = icmp eq i32 %inc25, 257
  br i1 %exitcond118.not, label %for.end26, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end26:                                        ; preds = %for.end
  %tx_ignore_nack_until_eom = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 51
  %17 = ptrtoint ptr %tx_ignore_nack_until_eom to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tx_ignore_nack_until_eom, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool27.not = icmp eq i8 %18, 0
  br i1 %tobool27.not, label %for.end26.if.end29_crit_edge, label %if.then28

for.end26.if.end29_crit_edge:                     ; preds = %for.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then28:                                        ; preds = %for.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.54) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %for.end26.if.end29_crit_edge
  %tx_custom_pulse = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 52
  %19 = ptrtoint ptr %tx_custom_pulse to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tx_custom_pulse, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool30.not = icmp eq i8 %20, 0
  br i1 %tobool30.not, label %if.end29.if.end32_crit_edge, label %if.then31

if.end29.if.end32_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.55) #5
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end29.if.end32_crit_edge
  %tx_custom_low_usecs = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 49
  %21 = ptrtoint ptr %tx_custom_low_usecs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_custom_low_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %22)
  %cmp33.not = icmp eq i32 %22, 1000
  br i1 %cmp33.not, label %if.end32.if.end37_crit_edge, label %if.then35

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.56, i32 noundef %22) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end32.if.end37_crit_edge
  %tx_custom_high_usecs = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 50
  %23 = ptrtoint ptr %tx_custom_high_usecs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_custom_high_usecs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %24)
  %cmp38.not = icmp eq i32 %24, 1000
  br i1 %cmp38.not, label %if.end37.if.end42_crit_edge, label %if.then40

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.57, i32 noundef %24) #5
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end37.if.end42_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164}
!llvm.module.flags = !{!166, !167, !168, !169, !170, !171, !172, !173}
!llvm.ident = !{!174}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 74, i32 30}
!2 = distinct !{null, !3, !"delims", i1 false, i1 false}
!3 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 74, i32 21}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 90, i32 21}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 99, i32 21}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 105, i32 21}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 115, i32 21}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 119, i32 21}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 128, i32 21}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 136, i32 21}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 148, i32 21}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 162, i32 22}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 164, i32 27}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 166, i32 27}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 168, i32 27}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 267, i32 15}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 268, i32 15}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 269, i32 15}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 270, i32 15}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 271, i32 15}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 272, i32 15}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 273, i32 15}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 274, i32 15}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 275, i32 15}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 276, i32 15}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 277, i32 15}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 278, i32 15}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 279, i32 15}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 280, i32 15}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 282, i32 15}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 283, i32 15}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 284, i32 15}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 285, i32 15}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 286, i32 15}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 288, i32 15}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 289, i32 15}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 290, i32 15}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 291, i32 15}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 292, i32 15}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 293, i32 15}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 294, i32 15}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 295, i32 15}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 296, i32 15}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 297, i32 15}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 298, i32 15}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 299, i32 15}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 300, i32 15}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 302, i32 15}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 303, i32 15}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 304, i32 15}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 305, i32 15}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 306, i32 15}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 307, i32 15}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 309, i32 15}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 328, i32 20}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 330, i32 17}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 335, i32 16}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 337, i32 16}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 339, i32 18}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 342, i32 18}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 20, i32 38}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 22, i32 40}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 23, i32 42}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 24, i32 45}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 26, i32 39}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 28, i32 40}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 29, i32 43}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 31, i32 40}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 32, i32 45}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 34, i32 40}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 36, i32 39}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 38, i32 41}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 39, i32 45}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 40, i32 44}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 41, i32 46}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 43, i32 39}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 45, i32 40}
!152 = !{ptr @cec_error_inj_cmds, !153, !"cec_error_inj_cmds", i1 false, i1 false}
!153 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 19, i32 39}
!154 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 243, i32 16}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 245, i32 18}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 248, i32 16}
!160 = !{ptr @.str.78, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 251, i32 16}
!162 = !{ptr @.str.79, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 254, i32 16}
!164 = !{ptr @.str.80, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/cec/core/cec-pin-error-inj.c", i32 257, i32 16}
!166 = !{i32 1, !"wchar_size", i32 2}
!167 = !{i32 1, !"min_enum_size", i32 4}
!168 = !{i32 8, !"branch-target-enforcement", i32 0}
!169 = !{i32 8, !"sign-return-address", i32 0}
!170 = !{i32 8, !"sign-return-address-all", i32 0}
!171 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!172 = !{i32 7, !"uwtable", i32 1}
!173 = !{i32 7, !"frame-pointer", i32 2}
!174 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!175 = !{!"auto-init"}
!176 = !{i8 0, i8 2}
