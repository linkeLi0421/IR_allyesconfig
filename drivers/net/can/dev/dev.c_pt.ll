; ModuleID = '/llk/IR_all_yes/drivers/net/can/dev/dev.c_pt.bc'
source_filename = "../drivers/net/can/dev/dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+can_get_state_str\22, \22a\22\09"
module asm "\09.weak\09__crc_can_get_state_str\09\09\09\09"
module asm "\09.long\09__crc_can_get_state_str\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_get_state_str:\09\09\09\09\09"
module asm "\09.asciz \09\22can_get_state_str\22\09\09\09\09\09"
module asm "__kstrtabns_can_get_state_str:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+can_change_state\22, \22a\22\09"
module asm "\09.weak\09__crc_can_change_state\09\09\09\09"
module asm "\09.long\09__crc_can_change_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_change_state:\09\09\09\09\09"
module asm "\09.asciz \09\22can_change_state\22\09\09\09\09\09"
module asm "__kstrtabns_can_change_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+can_bus_off\22, \22a\22\09"
module asm "\09.weak\09__crc_can_bus_off\09\09\09\09"
module asm "\09.long\09__crc_can_bus_off\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_bus_off:\09\09\09\09\09"
module asm "\09.asciz \09\22can_bus_off\22\09\09\09\09\09"
module asm "__kstrtabns_can_bus_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+alloc_candev_mqs\22, \22a\22\09"
module asm "\09.weak\09__crc_alloc_candev_mqs\09\09\09\09"
module asm "\09.long\09__crc_alloc_candev_mqs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_candev_mqs:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_candev_mqs\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_candev_mqs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+free_candev\22, \22a\22\09"
module asm "\09.weak\09__crc_free_candev\09\09\09\09"
module asm "\09.long\09__crc_free_candev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_candev:\09\09\09\09\09"
module asm "\09.asciz \09\22free_candev\22\09\09\09\09\09"
module asm "__kstrtabns_free_candev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+can_change_mtu\22, \22a\22\09"
module asm "\09.weak\09__crc_can_change_mtu\09\09\09\09"
module asm "\09.long\09__crc_can_change_mtu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_change_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22can_change_mtu\22\09\09\09\09\09"
module asm "__kstrtabns_can_change_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+open_candev\22, \22a\22\09"
module asm "\09.weak\09__crc_open_candev\09\09\09\09"
module asm "\09.long\09__crc_open_candev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_open_candev:\09\09\09\09\09"
module asm "\09.asciz \09\22open_candev\22\09\09\09\09\09"
module asm "__kstrtabns_open_candev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+of_can_transceiver\22, \22a\22\09"
module asm "\09.weak\09__crc_of_can_transceiver\09\09\09\09"
module asm "\09.long\09__crc_of_can_transceiver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_can_transceiver:\09\09\09\09\09"
module asm "\09.asciz \09\22of_can_transceiver\22\09\09\09\09\09"
module asm "__kstrtabns_of_can_transceiver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+close_candev\22, \22a\22\09"
module asm "\09.weak\09__crc_close_candev\09\09\09\09"
module asm "\09.long\09__crc_close_candev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_close_candev:\09\09\09\09\09"
module asm "\09.asciz \09\22close_candev\22\09\09\09\09\09"
module asm "__kstrtabns_close_candev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+register_candev\22, \22a\22\09"
module asm "\09.weak\09__crc_register_candev\09\09\09\09"
module asm "\09.long\09__crc_register_candev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_candev:\09\09\09\09\09"
module asm "\09.asciz \09\22register_candev\22\09\09\09\09\09"
module asm "__kstrtabns_register_candev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unregister_candev\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_candev\09\09\09\09"
module asm "\09.long\09__crc_unregister_candev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_candev:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_candev\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_candev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+safe_candev_priv\22, \22a\22\09"
module asm "\09.weak\09__crc_safe_candev_priv\09\09\09\09"
module asm "\09.long\09__crc_safe_candev_priv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_safe_candev_priv:\09\09\09\09\09"
module asm "\09.asciz \09\22safe_candev_priv\22\09\09\09\09\09"
module asm "__kstrtabns_safe_candev_priv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.can_frame = type { i32, %union.anon.145, i8, i8, i8, [8 x i8] }
%union.anon.145 = type { i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@__UNIQUE_ID_description459 = internal constant [48 x i8] c"can_dev.description=CAN device driver interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file460 = internal constant [41 x i8] c"can_dev.file=drivers/net/can/dev/can-dev\00", section ".modinfo", align 1
@__UNIQUE_ID_license461 = internal constant [23 x i8] c"can_dev.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author462 = internal constant [55 x i8] c"can_dev.author=Wolfgang Grandegger <wg@grandegger.com>\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Error Active\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Error Warning\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Error Passive\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Bus Off\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Stopped\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Sleeping\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<unknown>\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_can_get_state_str = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_get_state_str = external dso_local constant [0 x i8], align 1
@__ksymtab_can_get_state_str = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_get_state_str to i32), ptr @__kstrtab_can_get_state_str, ptr @__kstrtabns_can_get_state_str }, section "___ksymtab_gpl+can_get_state_str", align 4
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: oops, state did not change\00", [33 x i8] zeroinitializer }, align 32
@__func__.can_change_state = private unnamed_addr constant [17 x i8] c"can_change_state\00", align 1
@can_change_state.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @__func__.can_change_state, ptr @.str.9, ptr @.str.10, i8 0, i8 28, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"can_dev\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/net/can/dev/dev.c\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Controller changed from %s State (%d) into %s State (%d).\0A\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_can_change_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_change_state = external dso_local constant [0 x i8], align 1
@__ksymtab_can_change_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_change_state to i32), ptr @__kstrtab_can_change_state, ptr @__kstrtabns_can_change_state }, section "___ksymtab_gpl+can_change_state", align 4
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bus-off, scheduling restart in %d ms\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bus-off\0A\00", [23 x i8] zeroinitializer }, align 32
@__kstrtab_can_bus_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_bus_off = external dso_local constant [0 x i8], align 1
@__ksymtab_can_bus_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_bus_off to i32), ptr @__kstrtab_can_bus_off, ptr @__kstrtabns_can_bus_off }, section "___ksymtab_gpl+can_bus_off", align 4
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"can%d\00", [26 x i8] zeroinitializer }, align 32
@alloc_candev_mqs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&priv->restart_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@alloc_candev_mqs.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&priv->restart_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_alloc_candev_mqs = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_candev_mqs = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_candev_mqs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_candev_mqs to i32), ptr @__kstrtab_alloc_candev_mqs, ptr @__kstrtabns_alloc_candev_mqs }, section "___ksymtab_gpl+alloc_candev_mqs", align 4
@__kstrtab_free_candev = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_candev = external dso_local constant [0 x i8], align 1
@__ksymtab_free_candev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_candev to i32), ptr @__kstrtab_free_candev, ptr @__kstrtabns_free_candev }, section "___ksymtab_gpl+free_candev", align 4
@__kstrtab_can_change_mtu = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_change_mtu = external dso_local constant [0 x i8], align 1
@__ksymtab_can_change_mtu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_change_mtu to i32), ptr @__kstrtab_can_change_mtu, ptr @__kstrtabns_can_change_mtu }, section "___ksymtab_gpl+can_change_mtu", align 4
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bit-timing not yet defined\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"incorrect/missing data bit-timing\0A\00", [61 x i8] zeroinitializer }, align 32
@__kstrtab_open_candev = external dso_local constant [0 x i8], align 1
@__kstrtabns_open_candev = external dso_local constant [0 x i8], align 1
@__ksymtab_open_candev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @open_candev to i32), ptr @__kstrtab_open_candev, ptr @__kstrtabns_open_candev }, section "___ksymtab_gpl+open_candev", align 4
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"can-transceiver\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max-bitrate\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Invalid value for transceiver max bitrate. Ignoring bitrate limit.\0A\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab_of_can_transceiver = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_can_transceiver = external dso_local constant [0 x i8], align 1
@__ksymtab_of_can_transceiver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_can_transceiver to i32), ptr @__kstrtab_of_can_transceiver, ptr @__kstrtabns_of_can_transceiver }, section "___ksymtab_gpl+of_can_transceiver", align 4
@__kstrtab_close_candev = external dso_local constant [0 x i8], align 1
@__kstrtabns_close_candev = external dso_local constant [0 x i8], align 1
@__ksymtab_close_candev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @close_candev to i32), ptr @__kstrtab_close_candev, ptr @__kstrtabns_close_candev }, section "___ksymtab_gpl+close_candev", align 4
@can_link_ops = external dso_local global %struct.rtnl_link_ops, align 4
@__kstrtab_register_candev = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_candev = external dso_local constant [0 x i8], align 1
@__ksymtab_register_candev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_candev to i32), ptr @__kstrtab_register_candev, ptr @__kstrtabns_register_candev }, section "___ksymtab_gpl+register_candev", align 4
@__kstrtab_unregister_candev = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_candev = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_candev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_candev to i32), ptr @__kstrtab_unregister_candev, ptr @__kstrtabns_unregister_candev }, section "___ksymtab_gpl+unregister_candev", align 4
@__kstrtab_safe_candev_priv = external dso_local constant [0 x i8], align 1
@__kstrtabns_safe_candev_priv = external dso_local constant [0 x i8], align 1
@__ksymtab_safe_candev_priv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @safe_candev_priv to i32), ptr @__kstrtab_safe_candev_priv, ptr @__kstrtabns_safe_candev_priv }, section "___ksymtab_gpl+safe_candev_priv", align 4
@__initcall__kmod_can_dev__467_523_can_dev_init6 = internal global ptr @can_dev_init, section ".initcall6.init", align 4
@__exitcall_can_dev_exit = internal global ptr @can_dev_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias468 = internal constant [28 x i8] c"can_dev.alias=rtnl-link-can\00", section ".modinfo", align 1
@can_restart.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.22, ptr @.str.9, ptr @.str.23, i8 0, i8 40, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"can_restart\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"restarted\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error %d during restart\00", [40 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netdevice.h\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Overwriting already set ml_priv_type (%u) with different ml_priv_type (%u)!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Overwriting already set ml_priv and ml_priv_type is ML_PRIV_NONE!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"termination\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot get termination-gpios\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"termination-ohms\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot get termination-ohms: %pe\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Invalid termination-ohms value (%u > %u)\0A\00", [54 x i8] zeroinitializer }, align 32
@can_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.9, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016CAN device driver interface\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"can_dev_init\00", [19 x i8] zeroinitializer }, align 32
@can_dev_init._entry_ptr = internal global ptr @can_dev_init._entry, section ".printk_index", align 4
@switch.table.can_get_state_str = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], [40 x i8] zeroinitializer }, align 32
@switch.table.can_change_state = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], [40 x i8] zeroinitializer }, align 32
@switch.table.can_change_state.35 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 72]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 82, i32 10 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 84, i32 10 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 86, i32 10 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 88, i32 10 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 90, i32 10 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 92, i32 10 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 94, i32 10 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 108, i32 20 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 112, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 209, i32 20 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 212, i32 20 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 263, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 282, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 343, i32 19 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 351, i32 19 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 375, i32 32 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 379, i32 33 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 382, i32 20 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 160, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 168, i32 19 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 2430, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 2433, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 427, i32 38 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 430, i32 10 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 435, i32 38 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 437, i32 20 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 443, i32 20 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.146 = private constant [29 x i8] c"../drivers/net/can/dev/dev.c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 519, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [31 x i8] c"switch.table.can_get_state_str\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [30 x i8] c"switch.table.can_change_state\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [33 x i8] c"switch.table.can_change_state.35\00", align 1
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_alias468, ptr @__UNIQUE_ID_author462, ptr @__UNIQUE_ID_description459, ptr @__UNIQUE_ID_file460, ptr @__UNIQUE_ID_license461, ptr @__exitcall_can_dev_exit, ptr @__initcall__kmod_can_dev__467_523_can_dev_init6, ptr @__ksymtab_alloc_candev_mqs, ptr @__ksymtab_can_bus_off, ptr @__ksymtab_can_change_mtu, ptr @__ksymtab_can_change_state, ptr @__ksymtab_can_get_state_str, ptr @__ksymtab_close_candev, ptr @__ksymtab_free_candev, ptr @__ksymtab_of_can_transceiver, ptr @__ksymtab_open_candev, ptr @__ksymtab_register_candev, ptr @__ksymtab_safe_candev_priv, ptr @__ksymtab_unregister_candev, ptr @can_dev_exit, ptr @can_dev_init._entry, ptr @can_dev_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @alloc_candev_mqs.__key, ptr @.str.14, ptr @alloc_candev_mqs.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @switch.table.can_get_state_str, ptr @switch.table.can_change_state, ptr @switch.table.can_change_state.35], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_candev_mqs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_candev_mqs.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.can_get_state_str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.can_change_state to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.can_change_state.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @can_get_state_str(i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %state)
  %0 = icmp ult i32 %state, 6
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.can_get_state_str, i32 0, i32 %state
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.6, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @can_change_state(ptr noundef %dev, ptr noundef %cf, i32 noundef %tx_state, i32 noundef %rx_state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_state, i32 %rx_state)
  %cmp = icmp ule i32 %tx_state, %rx_state
  %0 = tail call i32 @llvm.umax.i32(i32 %tx_state, i32 %rx_state)
  %state = getelementptr i8, ptr %dev, i32 2472
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %2)
  %cmp1 = icmp eq i32 %0, %2
  br i1 %cmp1, label %if.then, label %do.body3, !prof !116

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.can_change_state) #13
  br label %cleanup

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_change_state.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@can_change_state, %do.end22)) #10
          to label %if.then15 [label %do.end22], !srcloc !117

if.then15:                                        ; preds = %do.body3
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %5 = icmp ult i32 %4, 6
  br i1 %5, label %switch.lookup, label %if.then15.can_get_state_str.exit_crit_edge

if.then15.can_get_state_str.exit_crit_edge:       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_get_state_str.exit

switch.lookup:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.can_change_state, i32 0, i32 %4
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %can_get_state_str.exit

can_get_state_str.exit:                           ; preds = %switch.lookup, %if.then15.can_get_state_str.exit_crit_edge
  %retval.0.i85 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.6, %if.then15.can_get_state_str.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %0)
  %7 = icmp ult i32 %0, 6
  br i1 %7, label %switch.lookup105, label %can_get_state_str.exit.can_get_state_str.exit93_crit_edge

can_get_state_str.exit.can_get_state_str.exit93_crit_edge: ; preds = %can_get_state_str.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_get_state_str.exit93

switch.lookup105:                                 ; preds = %can_get_state_str.exit
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep106 = getelementptr inbounds [6 x ptr], ptr @switch.table.can_change_state.35, i32 0, i32 %0
  %8 = ptrtoint ptr %switch.gep106 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load107 = load ptr, ptr %switch.gep106, align 4
  br label %can_get_state_str.exit93

can_get_state_str.exit93:                         ; preds = %switch.lookup105, %can_get_state_str.exit.can_get_state_str.exit93_crit_edge
  %retval.0.i92 = phi ptr [ %switch.load107, %switch.lookup105 ], [ @.str.6, %can_get_state_str.exit.can_get_state_str.exit93_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @can_change_state.__UNIQUE_ID_ddebug465, ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull %retval.0.i85, i32 noundef %4, ptr noundef nonnull %retval.0.i92, i32 noundef %0) #10
  br label %do.end22

do.end22:                                         ; preds = %can_get_state_str.exit93, %do.body3
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %0)
  %cmp.not.i = icmp ult i32 %10, %0
  br i1 %cmp.not.i, label %if.end.i, label %do.end22.can_update_state_error_stats.exit_crit_edge

do.end22.can_update_state_error_stats.exit_crit_edge: ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_update_state_error_stats.exit

if.end.i:                                         ; preds = %do.end22
  %switch.tableidx = add i32 %0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 3
  br i1 %11, label %switch.lookup108, label %if.end.i.can_update_state_error_stats.exit_crit_edge

if.end.i.can_update_state_error_stats.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_update_state_error_stats.exit

switch.lookup108:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %switch.idx.mult = shl i32 %switch.tableidx, 2
  %switch.offset = add i32 %switch.idx.mult, 2312
  %bus_off.i = getelementptr i8, ptr %dev, i32 %switch.offset
  %12 = ptrtoint ptr %bus_off.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bus_off.i, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %bus_off.i, align 4
  br label %can_update_state_error_stats.exit

can_update_state_error_stats.exit:                ; preds = %switch.lookup108, %if.end.i.can_update_state_error_stats.exit_crit_edge, %do.end22.can_update_state_error_stats.exit_crit_edge
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %0, ptr %state, align 4
  %tobool24.not = icmp eq ptr %cf, null
  br i1 %tobool24.not, label %can_update_state_error_stats.exit.cleanup_crit_edge, label %if.end26

can_update_state_error_stats.exit.cleanup_crit_edge: ; preds = %can_update_state_error_stats.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %can_update_state_error_stats.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp27 = icmp eq i32 %0, 3
  %15 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cf, align 8
  br i1 %cmp27, label %if.then34, label %if.end35, !prof !116

if.then34:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %16, 64
  %17 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or, ptr %cf, align 8
  br label %cleanup

if.end35:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %or37 = or i32 %16, 4
  %18 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or37, ptr %cf, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_state, i32 %rx_state)
  %cmp38.not = icmp uge i32 %tx_state, %rx_state
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %tx_state)
  %19 = icmp ult i32 %tx_state, 3
  %or.cond = and i1 %cmp38.not, %19
  %switch.cast = trunc i32 %tx_state to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 2099264, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %cond43 = select i1 %or.cond, i8 %switch.masked, i8 0
  %arrayidx = getelementptr %struct.can_frame, ptr %cf, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %conv45 = or i8 %21, %cond43
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rx_state)
  %22 = icmp ult i32 %rx_state, 3
  %or.cond115 = and i1 %cmp, %22
  %switch.cast111 = trunc i32 %rx_state to i24
  %switch.shiftamt112 = shl i24 %switch.cast111, 3
  %switch.downshift113 = lshr i24 1049664, %switch.shiftamt112
  %switch.masked114 = trunc i24 %switch.downshift113 to i8
  %cond52 = select i1 %or.cond115, i8 %switch.masked114, i8 0
  %conv57 = or i8 %cond52, %conv45
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv57, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then34, %can_update_state_error_stats.exit.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @can_restart_now(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %restart_ms = getelementptr i8, ptr %dev, i32 2484
  %0 = ptrtoint ptr %restart_ms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %restart_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr i8, ptr %dev, i32 2472
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %restart_work = getelementptr i8, ptr %dev, i32 2488
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %restart_work) #10
  tail call fastcc void @can_restart(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @can_restart(ptr noundef %dev) unnamed_addr #1 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #10
  %0 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !118
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %state.i, align 4
  %3 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %do.body3, label %do.end8, !prof !116

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/can/dev/dev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 143, 0\0A.popsection", ""() #10, !srcloc !119
  unreachable

do.end8:                                          ; preds = %entry
  tail call void @can_flush_echo_skb(ptr noundef %dev) #10
  %call9 = call ptr @alloc_can_err_skb(ptr noundef %dev, ptr noundef nonnull %cf) #10
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end8.do.body15_crit_edge, label %if.end12

do.end8.do.body15_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body15

if.end12:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %or = or i32 %7, 256
  store i32 %or, ptr %5, align 8
  %call13 = call i32 @netif_rx_ni(ptr noundef nonnull %call9) #10
  br label %do.body15

do.body15:                                        ; preds = %if.end12, %do.end8.do.body15_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_restart.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@can_restart, %do.end31)) #10
          to label %if.then26 [label %do.end31], !srcloc !117

if.then26:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @can_restart.__UNIQUE_ID_ddebug466, ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  br label %do.end31

do.end31:                                         ; preds = %if.then26, %do.body15
  %restarts = getelementptr i8, ptr %dev, i32 2328
  %8 = ptrtoint ptr %restarts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %restarts, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %restarts, align 4
  %do_set_mode = getelementptr i8, ptr %dev, i32 2596
  %10 = ptrtoint ptr %do_set_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %do_set_mode, align 4
  %call32 = call i32 %11(ptr noundef %dev, i32 noundef 1) #10
  call void @netif_carrier_on(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.end31.if.end35_crit_edge, label %if.then34

do.end31.if.end35_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then34:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call32) #13
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %do.end31.if.end35_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @can_bus_off(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %restart_ms = getelementptr i8, ptr %dev, i32 2484
  %0 = ptrtoint ptr %restart_ms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %restart_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %1) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.12) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @netif_carrier_off(ptr noundef %dev) #10
  %2 = ptrtoint ptr %restart_ms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %restart_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %restart_work = getelementptr i8, ptr %dev, i32 2488
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %3) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %restart_work, i32 noundef %call2.i) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @can_setup(ptr nocapture noundef writeonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 280, ptr %type, align 16
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %1 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16, ptr %mtu, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %hard_header_len, align 2
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %3 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %addr_len, align 1
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %4 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 10, ptr %tx_queue_len, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 128, ptr %flags, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %6 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 8, ptr %features, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_candev_mqs(i32 noundef %sizeof_priv, i32 noundef %echo_skb_max, i32 noundef %txqs, i32 noundef %rxqs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %sizeof_priv, 31
  %and = and i32 %add, -32
  %add1 = add i32 %and, 12312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %echo_skb_max)
  %tobool.not = icmp eq i32 %echo_skb_max, 0
  %add2 = add i32 %and, 12315
  %and3 = and i32 %add2, -8
  %mul = shl i32 %echo_skb_max, 2
  %add4 = add i32 %and3, %mul
  %size.0 = select i1 %tobool.not, i32 %add1, i32 %add4
  %call = tail call ptr @alloc_netdev_mqs(i32 noundef %size.0, ptr noundef nonnull @.str.13, i8 noundef zeroext 0, ptr noundef nonnull @can_setup, i32 noundef %txqs, i32 noundef %rxqs) #10
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %add.ptr.i, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %and
  %ml_priv_type.i.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 129
  %1 = ptrtoint ptr %ml_priv_type.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ml_priv_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %do.end.i.i, label %if.end7.if.end.i.i_crit_edge, !prof !116

if.end7.if.end.i.i_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 2432, i32 noundef 9, ptr noundef nonnull @.str.26, i32 noundef %2, i32 noundef 1) #10
  %4 = ptrtoint ptr %ml_priv_type.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr.i.i = load i32, ptr %ml_priv_type.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end7.if.end.i.i_crit_edge
  %5 = phi i32 [ %.pr.i.i, %do.end.i.i ], [ %2, %if.end7.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool24.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool24.not.i.i, label %land.rhs25.i.i, label %if.end.i.i.can_set_ml_priv.exit_crit_edge

if.end.i.i.can_set_ml_priv.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_set_ml_priv.exit

land.rhs25.i.i:                                   ; preds = %if.end.i.i
  %ml_priv26.i.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 128
  %6 = ptrtoint ptr %ml_priv26.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ml_priv26.i.i, align 8
  %tobool27.not.i.i = icmp eq ptr %7, null
  br i1 %tobool27.not.i.i, label %land.rhs25.i.i.can_set_ml_priv.exit_crit_edge, label %do.end44.i.i, !prof !120

land.rhs25.i.i.can_set_ml_priv.exit_crit_edge:    ; preds = %land.rhs25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_set_ml_priv.exit

do.end44.i.i:                                     ; preds = %land.rhs25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 2434, i32 noundef 9, ptr noundef nonnull @.str.27) #10
  br label %can_set_ml_priv.exit

can_set_ml_priv.exit:                             ; preds = %do.end44.i.i, %land.rhs25.i.i.can_set_ml_priv.exit_crit_edge, %if.end.i.i.can_set_ml_priv.exit_crit_edge
  %ml_priv58.i.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 128
  %8 = ptrtoint ptr %ml_priv58.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %ml_priv58.i.i, align 8
  %9 = ptrtoint ptr %ml_priv_type.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ml_priv_type.i.i, align 4
  br i1 %tobool.not, label %can_set_ml_priv.exit.if.end17_crit_edge, label %if.then13

can_set_ml_priv.exit.if.end17_crit_edge:          ; preds = %can_set_ml_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then13:                                        ; preds = %can_set_ml_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %echo_skb_max14 = getelementptr i8, ptr %call, i32 2464
  %10 = ptrtoint ptr %echo_skb_max14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %echo_skb_max, ptr %echo_skb_max14, align 4
  %mul15.neg = mul i32 %echo_skb_max, -4
  %sub = add i32 %size.0, %mul15.neg
  %add.ptr16 = getelementptr i8, ptr %add.ptr.i, i32 %sub
  %echo_skb = getelementptr i8, ptr %call, i32 2468
  %11 = ptrtoint ptr %echo_skb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr16, ptr %echo_skb, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %can_set_ml_priv.exit.if.end17_crit_edge
  %state = getelementptr i8, ptr %call, i32 2472
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %state, align 4
  %restart_work = getelementptr i8, ptr %call, i32 2488
  tail call void @__init_work(ptr noundef %restart_work, i32 noundef 0) #10
  %13 = ptrtoint ptr %restart_work to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %restart_work, align 4
  %lockdep_map = getelementptr i8, ptr %call, i32 2504
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @alloc_candev_mqs.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry25 = getelementptr i8, ptr %call, i32 2492
  %14 = ptrtoint ptr %entry25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry25, ptr %entry25, align 4
  %prev.i = getelementptr i8, ptr %call, i32 2496
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry25, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call, i32 2500
  %16 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @can_restart_work, ptr %func, align 4
  %timer = getelementptr i8, ptr %call, i32 2532
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.16, ptr noundef nonnull @alloc_candev_mqs.__key.15) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @can_restart_work(ptr nocapture noundef readonly %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -184
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call fastcc void @can_restart(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_candev(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @free_netdev(ptr noundef %dev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @can_change_mtu(ptr nocapture noundef %dev, i32 noundef %new_mtu) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrlmode.i = getelementptr i8, ptr %dev, i32 2476
  %0 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctrlmode.i, align 4
  %ctrlmode_supported.i = getelementptr i8, ptr %dev, i32 2480
  %2 = ptrtoint ptr %ctrlmode_supported.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrlmode_supported.i, align 4
  %neg.i = xor i32 %3, -1
  %and.i = and i32 %1, %neg.i
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %new_mtu to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %new_mtu, label %if.end.cleanup_crit_edge [
    i32 16, label %sw.bb
    i32 72, label %sw.bb7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %and2 = and i32 %and.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %and6 = and i32 %1, -33
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %and8 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %and10 = and i32 %and.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %or.cond = select i1 %tobool9.not, i1 %tobool11.not, i1 false
  br i1 %or.cond, label %sw.bb7.cleanup_crit_edge, label %if.end13

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %1, 32
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end13, %if.end5
  %storemerge = phi i32 [ %or, %if.end13 ], [ %and6, %if.end5 ]
  %7 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %ctrlmode.i, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %8 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %new_mtu, ptr %mtu, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb7.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -16, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb7.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @open_candev(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bittiming = getelementptr i8, ptr %dev, i32 2340
  %0 = ptrtoint ptr %bittiming to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bittiming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrlmode = getelementptr i8, ptr %dev, i32 2476
  %2 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrlmode, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %data_bittiming = getelementptr i8, ptr %dev, i32 2372
  %4 = ptrtoint ptr %data_bittiming to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_bittiming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp = icmp ult i32 %5, %1
  %or.cond = select i1 %tobool3.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then8, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #13
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_carrier_on(ptr noundef %dev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end9.cleanup_crit_edge, %if.then8, %if.then
  %retval.0 = phi i32 [ -22, %if.then8 ], [ -22, %if.then ], [ 0, %if.then11 ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @of_can_transceiver(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call2 = tail call ptr @of_get_child_by_name(ptr noundef %3, ptr noundef nonnull @.str.19) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %bitrate_max = getelementptr i8, ptr %dev, i32 2436
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call2, ptr noundef nonnull @.str.20, ptr noundef %bitrate_max, i32 noundef 1, i32 noundef 0) #10
  %4 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #10
  tail call void @of_node_put(ptr noundef nonnull %call2) #10
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %4, label %if.end.if.then9_crit_edge [
    i32 0, label %land.lhs.true6
    i32 -22, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

land.lhs.true6:                                   ; preds = %if.end
  %6 = ptrtoint ptr %bitrate_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bitrate_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %land.lhs.true6.if.then9_crit_edge, label %land.lhs.true6.cleanup_crit_edge

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true6.if.then9_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.then9:                                         ; preds = %land.lhs.true6.if.then9_crit_edge, %if.end.if.then9_crit_edge
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.21) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %land.lhs.true6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @close_candev(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %restart_work = getelementptr i8, ptr %dev, i32 2488
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %restart_work) #10
  tail call void @can_flush_echo_skb(ptr noundef %dev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_flush_echo_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_candev(ptr noundef %dev) #1 align 64 {
entry:
  %term.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %termination_const = getelementptr i8, ptr %dev, i32 2448
  %0 = ptrtoint ptr %termination_const to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %termination_const, align 4
  %tobool.not = icmp eq ptr %1, null
  %termination_const_cnt = getelementptr i8, ptr %dev, i32 2444
  %2 = ptrtoint ptr %termination_const_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %termination_const_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp ne i32 %3, 0
  %cmp.not = xor i1 %tobool.not, %tobool1.not
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %do_set_termination = getelementptr i8, ptr %dev, i32 2600
  %4 = ptrtoint ptr %do_set_termination to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %do_set_termination, align 4
  %tobool8.not = icmp ne ptr %5, null
  %cmp11.not = xor i1 %tobool.not, %tobool8.not
  br i1 %cmp11.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %bitrate_const = getelementptr i8, ptr %dev, i32 2424
  %6 = ptrtoint ptr %bitrate_const to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bitrate_const, align 4
  %tobool12.not = icmp ne ptr %7, null
  %bitrate_const_cnt = getelementptr i8, ptr %dev, i32 2420
  %8 = ptrtoint ptr %bitrate_const_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bitrate_const_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool15.not = icmp eq i32 %9, 0
  %cmp18.not = xor i1 %tobool12.not, %tobool15.not
  br i1 %cmp18.not, label %if.end20, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %data_bitrate_const = getelementptr i8, ptr %dev, i32 2428
  %10 = ptrtoint ptr %data_bitrate_const to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data_bitrate_const, align 4
  %tobool21.not = icmp ne ptr %11, null
  %data_bitrate_const_cnt = getelementptr i8, ptr %dev, i32 2432
  %12 = ptrtoint ptr %data_bitrate_const_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_bitrate_const_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool24.not = icmp eq i32 %13, 0
  %cmp27.not = xor i1 %tobool21.not, %tobool24.not
  br i1 %cmp27.not, label %if.end29, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  br i1 %tobool.not, label %if.then32, label %if.end29.if.end37_crit_edge

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then32:                                        ; preds = %if.end29
  %parent.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %14 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %term.i) #10
  %16 = ptrtoint ptr %term.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %term.i, align 4, !annotation !118
  %call2.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %15, ptr noundef nonnull @.str.28, i32 noundef 3) #10
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %can_get_termination.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then32
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end.i.can_get_termination.exit.thread_crit_edge, label %if.end7.i

if.end.i.can_get_termination.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_get_termination.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %call.i.i = call i32 @device_property_read_u32_array(ptr noundef %15, ptr noundef nonnull @.str.30, ptr noundef nonnull %term.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool9.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not.i, label %if.end12.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = inttoptr i32 %call.i.i to ptr
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef nonnull %17) #13
  br label %can_get_termination.exit.thread56

if.end12.i:                                       ; preds = %if.end7.i
  %18 = ptrtoint ptr %term.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %term.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %19)
  %cmp.i = icmp ugt i32 %19, 65535
  br i1 %cmp.i, label %if.then13.i, label %if.end14.i

if.then13.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %19, i32 noundef 65535) #13
  br label %can_get_termination.exit.thread56

if.end14.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %termination_const_cnt to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %termination_const_cnt, align 4
  %termination_gpio_ohms.i = getelementptr i8, ptr %dev, i32 2460
  %21 = ptrtoint ptr %termination_const to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %termination_gpio_ohms.i, ptr %termination_const, align 4
  %termination_gpio.i = getelementptr i8, ptr %dev, i32 2456
  %22 = ptrtoint ptr %termination_gpio.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call2.i, ptr %termination_gpio.i, align 4
  %23 = ptrtoint ptr %termination_gpio_ohms.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %termination_gpio_ohms.i, align 4
  %conv.i = trunc i32 %19 to i16
  %arrayidx17.i = getelementptr i8, ptr %dev, i32 2462
  %24 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i, ptr %arrayidx17.i, align 2
  %25 = ptrtoint ptr %do_set_termination to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @can_set_termination, ptr %do_set_termination, align 4
  br label %can_get_termination.exit.thread

can_get_termination.exit.thread:                  ; preds = %if.end14.i, %if.end.i.can_get_termination.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %term.i) #10
  br label %if.end37

can_get_termination.exit.thread56:                ; preds = %if.then13.i, %if.then10.i
  %retval.0.i.ph = phi i32 [ -22, %if.then13.i ], [ %call.i.i, %if.then10.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %term.i) #10
  br label %cleanup

can_get_termination.exit:                         ; preds = %if.then32
  %26 = ptrtoint ptr %call2.i to i32
  %call5.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %15, i32 noundef %26, ptr noundef nonnull @.str.29) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %term.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool34.not = icmp eq i32 %call5.i, 0
  br i1 %tobool34.not, label %can_get_termination.exit.if.end37_crit_edge, label %can_get_termination.exit.cleanup_crit_edge

can_get_termination.exit.cleanup_crit_edge:       ; preds = %can_get_termination.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

can_get_termination.exit.if.end37_crit_edge:      ; preds = %can_get_termination.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.end37:                                         ; preds = %can_get_termination.exit.if.end37_crit_edge, %can_get_termination.exit.thread, %if.end29.if.end37_crit_edge
  %rtnl_link_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 136
  %27 = ptrtoint ptr %rtnl_link_ops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @can_link_ops, ptr %rtnl_link_ops, align 4
  call void @netif_carrier_off(ptr noundef %dev) #10
  %call38 = call i32 @register_netdev(ptr noundef %dev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %can_get_termination.exit.cleanup_crit_edge, %can_get_termination.exit.thread56, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %if.end37 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ], [ %call5.i, %can_get_termination.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %can_get_termination.exit.thread56 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_candev(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_netdev(ptr noundef %dev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @safe_candev_priv(ptr noundef readonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 280, i16 %1)
  %cmp.not = icmp eq i16 %1, 280
  br i1 %cmp.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rtnl_link_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 136
  %2 = ptrtoint ptr %rtnl_link_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtnl_link_ops, align 4
  %cmp2.not = icmp eq ptr %3, @can_link_ops
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %spec.select = select i1 %cmp2.not, ptr %add.ptr.i, ptr null
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @can_dev_init() #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @can_netlink_register() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @can_dev_exit() #8 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @can_netlink_unregister() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_netlink_unregister() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @can_set_termination(ptr nocapture noundef readonly %ndev, i16 noundef zeroext %term) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %ndev, i32 2462
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %term)
  %cmp = icmp eq i16 %1, %term
  %. = zext i1 %cmp to i32
  %termination_gpio = getelementptr i8, ptr %ndev, i32 2456
  %2 = ptrtoint ptr %termination_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %termination_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef %.) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_netlink_register() local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !87, !89, !90, !92, !94, !96, !98, !100, !102, !104, !105, !106}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__UNIQUE_ID_description459, !1, !"__UNIQUE_ID_description459", i1 false, i1 false}
!1 = !{!"../drivers/net/can/dev/dev.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_file460, !3, !"__UNIQUE_ID_file460", i1 false, i1 false}
!3 = !{!"../drivers/net/can/dev/dev.c", i32 24, i32 1}
!4 = !{ptr @__UNIQUE_ID_license461, !3, !"__UNIQUE_ID_license461", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author462, !6, !"__UNIQUE_ID_author462", i1 false, i1 false}
!6 = !{!"../drivers/net/can/dev/dev.c", i32 25, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/can/dev/dev.c", i32 82, i32 10}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/can/dev/dev.c", i32 84, i32 10}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/can/dev/dev.c", i32 86, i32 10}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/can/dev/dev.c", i32 88, i32 10}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/can/dev/dev.c", i32 90, i32 10}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/can/dev/dev.c", i32 92, i32 10}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/can/dev/dev.c", i32 94, i32 10}
!21 = !{ptr @__ksymtab_can_get_state_str, !22, !"__ksymtab_can_get_state_str", i1 false, i1 false}
!22 = !{!"../drivers/net/can/dev/dev.c", i32 99, i32 1}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/can/dev/dev.c", i32 108, i32 20}
!25 = !{ptr @__func__.can_change_state, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/can/dev/dev.c", i32 108, i32 54}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/can/dev/dev.c", i32 112, i32 2}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @can_change_state.__UNIQUE_ID_ddebug465, !28, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!32 = !{ptr @__ksymtab_can_change_state, !33, !"__ksymtab_can_change_state", i1 false, i1 false}
!33 = !{!"../drivers/net/can/dev/dev.c", i32 133, i32 1}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/can/dev/dev.c", i32 209, i32 20}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/can/dev/dev.c", i32 212, i32 20}
!38 = !{ptr @__ksymtab_can_bus_off, !39, !"__ksymtab_can_bus_off", i1 false, i1 false}
!39 = !{!"../drivers/net/can/dev/dev.c", i32 220, i32 1}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/can/dev/dev.c", i32 263, i32 31}
!42 = !{ptr @alloc_candev_mqs.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/net/can/dev/dev.c", i32 282, i32 2}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @alloc_candev_mqs.__key.15, !43, !"__key", i1 false, i1 false}
!46 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @__ksymtab_alloc_candev_mqs, !48, !"__ksymtab_alloc_candev_mqs", i1 false, i1 false}
!48 = !{!"../drivers/net/can/dev/dev.c", i32 286, i32 1}
!49 = !{ptr @__ksymtab_free_candev, !50, !"__ksymtab_free_candev", i1 false, i1 false}
!50 = !{!"../drivers/net/can/dev/dev.c", i32 293, i32 1}
!51 = !{ptr @__ksymtab_can_change_mtu, !52, !"__ksymtab_can_change_mtu", i1 false, i1 false}
!52 = !{!"../drivers/net/can/dev/dev.c", i32 331, i32 1}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/can/dev/dev.c", i32 343, i32 19}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/can/dev/dev.c", i32 351, i32 19}
!57 = !{ptr @__ksymtab_open_candev, !58, !"__ksymtab_open_candev", i1 false, i1 false}
!58 = !{!"../drivers/net/can/dev/dev.c", i32 361, i32 1}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/can/dev/dev.c", i32 375, i32 32}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/can/dev/dev.c", i32 379, i32 33}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/can/dev/dev.c", i32 382, i32 20}
!65 = !{ptr @__ksymtab_of_can_transceiver, !66, !"__ksymtab_of_can_transceiver", i1 false, i1 false}
!66 = !{!"../drivers/net/can/dev/dev.c", i32 384, i32 1}
!67 = !{ptr @__ksymtab_close_candev, !68, !"__ksymtab_close_candev", i1 false, i1 false}
!68 = !{!"../drivers/net/can/dev/dev.c", i32 399, i32 1}
!69 = !{ptr @__ksymtab_register_candev, !70, !"__ksymtab_register_candev", i1 false, i1 false}
!70 = !{!"../drivers/net/can/dev/dev.c", i32 490, i32 1}
!71 = !{ptr @__ksymtab_unregister_candev, !72, !"__ksymtab_unregister_candev", i1 false, i1 false}
!72 = !{!"../drivers/net/can/dev/dev.c", i32 497, i32 1}
!73 = !{ptr @__ksymtab_safe_candev_priv, !74, !"__ksymtab_safe_candev_priv", i1 false, i1 false}
!74 = !{!"../drivers/net/can/dev/dev.c", i32 509, i32 1}
!75 = !{ptr @__initcall__kmod_can_dev__467_523_can_dev_init6, !76, !"__initcall__kmod_can_dev__467_523_can_dev_init6", i1 false, i1 false}
!76 = !{!"../drivers/net/can/dev/dev.c", i32 523, i32 1}
!77 = !{ptr @__exitcall_can_dev_exit, !78, !"__exitcall_can_dev_exit", i1 false, i1 false}
!78 = !{!"../drivers/net/can/dev/dev.c", i32 531, i32 1}
!79 = !{ptr @__UNIQUE_ID_alias468, !80, !"__UNIQUE_ID_alias468", i1 false, i1 false}
!80 = !{!"../drivers/net/can/dev/dev.c", i32 533, i32 1}
!81 = !{ptr @.str.22, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/can/dev/dev.c", i32 160, i32 2}
!83 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @can_restart.__UNIQUE_ID_ddebug466, !82, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!85 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/can/dev/dev.c", i32 168, i32 19}
!87 = !{ptr @.str.25, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/linux/netdevice.h", i32 2430, i32 2}
!89 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/netdevice.h", i32 2433, i32 2}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/can/dev/dev.c", i32 427, i32 38}
!94 = !{ptr @.str.29, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/can/dev/dev.c", i32 430, i32 10}
!96 = !{ptr @.str.30, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/can/dev/dev.c", i32 435, i32 38}
!98 = !{ptr @.str.31, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/can/dev/dev.c", i32 437, i32 20}
!100 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/can/dev/dev.c", i32 443, i32 20}
!102 = !{ptr @.str.33, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/can/dev/dev.c", i32 519, i32 3}
!104 = !{ptr @.str.34, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @can_dev_init._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @can_dev_init._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{!"branch_weights", i32 1, i32 2000}
!117 = !{i64 2148964432, i64 2148964437, i64 2148964450, i64 2148964494, i64 2148964528, i64 2148964549}
!118 = !{!"auto-init"}
!119 = !{i64 2157045370, i64 2157045860, i64 2157045407, i64 2157045463, i64 2157045497, i64 2157045521, i64 2157045562, i64 2157045583, i64 2157045611, i64 2157045645}
!120 = !{!"branch_weights", i32 2000, i32 1}
