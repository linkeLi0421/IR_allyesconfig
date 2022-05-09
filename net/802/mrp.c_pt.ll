; ModuleID = '/llk/IR_all_yes/net/802/mrp.c_pt.bc'
source_filename = "../net/802/mrp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mrp_request_join\22, \22a\22\09"
module asm "\09.weak\09__crc_mrp_request_join\09\09\09\09"
module asm "\09.long\09__crc_mrp_request_join\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mrp_request_join:\09\09\09\09\09"
module asm "\09.asciz \09\22mrp_request_join\22\09\09\09\09\09"
module asm "__kstrtabns_mrp_request_join:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mrp_request_leave\22, \22a\22\09"
module asm "\09.weak\09__crc_mrp_request_leave\09\09\09\09"
module asm "\09.long\09__crc_mrp_request_leave\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mrp_request_leave:\09\09\09\09\09"
module asm "\09.asciz \09\22mrp_request_leave\22\09\09\09\09\09"
module asm "__kstrtabns_mrp_request_leave:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mrp_init_applicant\22, \22a\22\09"
module asm "\09.weak\09__crc_mrp_init_applicant\09\09\09\09"
module asm "\09.long\09__crc_mrp_init_applicant\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mrp_init_applicant:\09\09\09\09\09"
module asm "\09.asciz \09\22mrp_init_applicant\22\09\09\09\09\09"
module asm "__kstrtabns_mrp_init_applicant:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mrp_uninit_applicant\22, \22a\22\09"
module asm "\09.weak\09__crc_mrp_uninit_applicant\09\09\09\09"
module asm "\09.long\09__crc_mrp_uninit_applicant\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mrp_uninit_applicant:\09\09\09\09\09"
module asm "\09.asciz \09\22mrp_uninit_applicant\22\09\09\09\09\09"
module asm "__kstrtabns_mrp_uninit_applicant:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mrp_register_application\22, \22a\22\09"
module asm "\09.weak\09__crc_mrp_register_application\09\09\09\09"
module asm "\09.long\09__crc_mrp_register_application\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mrp_register_application:\09\09\09\09\09"
module asm "\09.asciz \09\22mrp_register_application\22\09\09\09\09\09"
module asm "__kstrtabns_mrp_register_application:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mrp_unregister_application\22, \22a\22\09"
module asm "\09.weak\09__crc_mrp_unregister_application\09\09\09\09"
module asm "\09.long\09__crc_mrp_unregister_application\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mrp_unregister_application:\09\09\09\09\09"
module asm "\09.asciz \09\22mrp_unregister_application\22\09\09\09\09\09"
module asm "__kstrtabns_mrp_unregister_application:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mrp_applicant = type { ptr, ptr, %struct.timer_list, %struct.timer_list, %struct.spinlock, %struct.sk_buff_head, ptr, %struct.rb_root, %struct.callback_head }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.mrp_attr = type { %struct.rb_node, i32, i8, i8, [0 x i8] }
%struct.mrp_application = type { i32, i32, %struct.packet_type, [6 x i8], i8 }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mrp_port = type { [1 x ptr], %struct.callback_head }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.mrp_vecattr_hdr = type { i16, [0 x i8] }
%struct.mrp_msg_hdr = type { i8, i8 }
%struct.mrp_pdu_hdr = type { i8 }

@__param_str_mrp_join_time = internal constant [18 x i8] c"mrp.mrp_join_time\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@mrp_join_time = internal global i32 200, section ".data..read_mostly", align 4
@__param_mrp_join_time = internal constant %struct.kernel_param { ptr @__param_str_mrp_join_time, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @mrp_join_time } }, section "__param", align 4
@__UNIQUE_ID_mrp_join_timetype342 = internal constant [32 x i8] c"mrp.parmtype=mrp_join_time:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_mrp_join_time343 = internal constant [55 x i8] c"mrp.parm=mrp_join_time:Join time in ms (default 200ms)\00", section ".modinfo", align 1
@__param_str_mrp_periodic_time = internal constant [22 x i8] c"mrp.mrp_periodic_time\00", align 1
@mrp_periodic_time = internal global i32 1000, section ".data..read_mostly", align 4
@__param_mrp_periodic_time = internal constant %struct.kernel_param { ptr @__param_str_mrp_periodic_time, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @mrp_periodic_time } }, section "__param", align 4
@__UNIQUE_ID_mrp_periodic_timetype344 = internal constant [36 x i8] c"mrp.parmtype=mrp_periodic_time:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_mrp_periodic_time345 = internal constant [60 x i8] c"mrp.parm=mrp_periodic_time:Periodic time in ms (default 1s)\00", section ".modinfo", align 1
@__UNIQUE_ID_file346 = internal constant [21 x i8] c"mrp.file=net/802/mrp\00", section ".modinfo", align 1
@__UNIQUE_ID_license347 = internal constant [16 x i8] c"mrp.license=GPL\00", section ".modinfo", align 1
@mrp_request_join.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net/802/mrp.c\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@mrp_request_join.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_mrp_request_join = external dso_local constant [0 x i8], align 1
@__kstrtabns_mrp_request_join = external dso_local constant [0 x i8], align 1
@__ksymtab_mrp_request_join = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mrp_request_join to i32), ptr @__kstrtab_mrp_request_join, ptr @__kstrtabns_mrp_request_join }, section "___ksymtab_gpl+mrp_request_join", align 4
@mrp_request_leave.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mrp_request_leave.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_mrp_request_leave = external dso_local constant [0 x i8], align 1
@__kstrtabns_mrp_request_leave = external dso_local constant [0 x i8], align 1
@__ksymtab_mrp_request_leave = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mrp_request_leave to i32), ptr @__kstrtab_mrp_request_leave, ptr @__kstrtabns_mrp_request_leave }, section "___ksymtab_gpl+mrp_request_leave", align 4
@mrp_init_applicant.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@mrp_init_applicant.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mrp_init_applicant.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&app->lock\00", [21 x i8] zeroinitializer }, align 32
@mrp_init_applicant.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&app->join_timer)\00", [45 x i8] zeroinitializer }, align 32
@mrp_init_applicant.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&app->periodic_timer)\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_mrp_init_applicant = external dso_local constant [0 x i8], align 1
@__kstrtabns_mrp_init_applicant = external dso_local constant [0 x i8], align 1
@__ksymtab_mrp_init_applicant = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mrp_init_applicant to i32), ptr @__kstrtab_mrp_init_applicant, ptr @__kstrtabns_mrp_init_applicant }, section "___ksymtab_gpl+mrp_init_applicant", align 4
@mrp_uninit_applicant.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mrp_uninit_applicant.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mrp_uninit_applicant.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_mrp_uninit_applicant = external dso_local constant [0 x i8], align 1
@__kstrtabns_mrp_uninit_applicant = external dso_local constant [0 x i8], align 1
@__ksymtab_mrp_uninit_applicant = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mrp_uninit_applicant to i32), ptr @__kstrtab_mrp_uninit_applicant, ptr @__kstrtabns_mrp_uninit_applicant }, section "___ksymtab_gpl+mrp_uninit_applicant", align 4
@__kstrtab_mrp_register_application = external dso_local constant [0 x i8], align 1
@__kstrtabns_mrp_register_application = external dso_local constant [0 x i8], align 1
@__ksymtab_mrp_register_application = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mrp_register_application to i32), ptr @__kstrtab_mrp_register_application, ptr @__kstrtabns_mrp_register_application }, section "___ksymtab_gpl+mrp_register_application", align 4
@__kstrtab_mrp_unregister_application = external dso_local constant [0 x i8], align 1
@__kstrtabns_mrp_unregister_application = external dso_local constant [0 x i8], align 1
@__ksymtab_mrp_unregister_application = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mrp_unregister_application to i32), ptr @__kstrtab_mrp_unregister_application, ptr @__kstrtabns_mrp_unregister_application }, section "___ksymtab_gpl+mrp_unregister_application", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mrp_applicant_state_table = internal constant { [12 x [13 x i8]], [36 x i8] } { [12 x [13 x i8]] [[13 x i8] zeroinitializer, [13 x i8] c"\03\02\01\01\01\08\01\01\01\01\01\01\01", [13 x i8] c"\03\02\01\05\02\0A\02\02\02\02\02\02\02", [13 x i8] c"\03\03\07\04\03\03\03\03\03\03\03\03\03", [13 x i8] c"\04\04\07\06\04\04\04\04\04\03\03\03\04", [13 x i8] c"\03\05\07\06\05\06\05\05\05\02\02\02\05", [13 x i8] c"\03\06\07\06\06\06\06\05\05\02\02\02\05", [13 x i8] c"\03\05\07\01\07\07\07\07\07\07\07\07\07", [13 x i8] c"\03\0A\08\08\08\09\08\08\08\01\01\01\08", [13 x i8] c"\03\0B\09\09\09\09\09\08\08\01\01\01\09", [13 x i8] c"\03\0A\08\06\0A\0B\0A\0A\0A\02\02\02\0A", [13 x i8] c"\03\0B\09\0B\0B\0B\0B\0A\0A\02\02\02\0A"], [36 x i8] zeroinitializer }, align 32
@mrp_tx_action_table = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\00\04\02\01\01\02\03\05\04\04\02\04", [20 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mrp_release_port.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mrp_release_port.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mrp_rcv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@mrp_rcv.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 533, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 855, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 875, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 878, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 880, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [26 x i8] c"mrp_applicant_state_table\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 32, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant [20 x i8] c"mrp_tx_action_table\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 201, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 1984, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [17 x i8] c"../net/802/mrp.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 798, i32 9 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_file346, ptr @__UNIQUE_ID_license347, ptr @__UNIQUE_ID_mrp_join_time343, ptr @__UNIQUE_ID_mrp_join_timetype342, ptr @__UNIQUE_ID_mrp_periodic_time345, ptr @__UNIQUE_ID_mrp_periodic_timetype344, ptr @__ksymtab_mrp_init_applicant, ptr @__ksymtab_mrp_register_application, ptr @__ksymtab_mrp_request_join, ptr @__ksymtab_mrp_request_leave, ptr @__ksymtab_mrp_uninit_applicant, ptr @__ksymtab_mrp_unregister_application, ptr @__param_mrp_join_time, ptr @__param_mrp_periodic_time, ptr @.str, ptr @.str.1, ptr @.str.4, ptr @mrp_init_applicant.__key, ptr @.str.5, ptr @mrp_init_applicant.__key.6, ptr @.str.7, ptr @mrp_init_applicant.__key.8, ptr @.str.9, ptr @mrp_applicant_state_table, ptr @mrp_tx_action_table, ptr @skb_queue_head_init.__key, ptr @.str.11, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrp_init_applicant.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrp_init_applicant.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrp_init_applicant.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrp_applicant_state_table to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrp_tx_action_table to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mrp_request_join(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %appl, ptr nocapture noundef readonly %value, i8 noundef zeroext %len, i8 noundef zeroext %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b36 = load i1, ptr @mrp_request_join.__warned, align 1
  br i1 %.b36, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mrp_request_join.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 533, ptr noundef nonnull @.str.1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %mrp_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 132
  %0 = ptrtoint ptr %mrp_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrp_port, align 8
  %call5 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call5, label %do.end.do.end14_crit_edge, label %land.lhs.true6

do.end.do.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

land.lhs.true6:                                   ; preds = %do.end
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.do.end14_crit_edge, label %land.lhs.true9

land.lhs.true6.do.end14_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b3435 = load i1, ptr @mrp_request_join.__warned.2, align 1
  br i1 %.b3435, label %land.lhs.true9.do.end14_crit_edge, label %if.then11

land.lhs.true9.do.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mrp_request_join.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 535, ptr noundef nonnull @.str.1) #7
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true9.do.end14_crit_edge, %land.lhs.true6.do.end14_crit_edge, %do.end.do.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %len)
  %cmp = icmp ugt i8 %len, 40
  br i1 %cmp, label %do.end14.cleanup_crit_edge, label %if.end19

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %do.end14
  %2 = ptrtoint ptr %appl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %appl, align 4
  %arrayidx = getelementptr [1 x ptr], ptr %1, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %lock = getelementptr inbounds %struct.mrp_applicant, ptr %5, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %mad.i = getelementptr inbounds %struct.mrp_applicant, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %mad.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mad.i, align 4
  %tobool.not44.i = icmp eq ptr %7, null
  br i1 %tobool.not44.i, label %entry.while.end_crit_edge.i, label %while.body.lr.ph.i

entry.while.end_crit_edge.i:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i = zext i8 %len to i32
  br label %if.end8.i.i

while.body.lr.ph.i:                               ; preds = %if.end19
  %conv2.i.i = zext i8 %type to i32
  %conv9.i.i = zext i8 %len to i32
  br label %while.body.i

while.body.i:                                     ; preds = %if.end4.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %8 = phi ptr [ %7, %while.body.lr.ph.i ], [ %14, %if.end4.i.while.body.i_crit_edge ]
  %type1.i.i = getelementptr inbounds %struct.mrp_attr, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %type1.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %type)
  %cmp.not.i.i = icmp eq i8 %10, %type
  br i1 %cmp.not.i.i, label %if.end.i40.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = zext i8 %10 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv2.i.i
  br label %mrp_attr_cmp.exit.i

if.end.i40.i:                                     ; preds = %while.body.i
  %len7.i.i = getelementptr inbounds %struct.mrp_attr, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %len7.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %len)
  %cmp10.not.i.i = icmp eq i8 %12, %len
  br i1 %cmp10.not.i.i, label %if.end17.i.i, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %if.end.i40.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv8.i.i = zext i8 %12 to i32
  %sub16.i.i = sub nsw i32 %conv8.i.i, %conv9.i.i
  br label %mrp_attr_cmp.exit.i

if.end17.i.i:                                     ; preds = %if.end.i40.i
  call void @__sanitizer_cov_trace_pc() #9
  %value18.i.i = getelementptr inbounds %struct.mrp_attr, ptr %8, i32 0, i32 4
  %call.i.i = tail call i32 @memcmp(ptr noundef %value18.i.i, ptr noundef %value, i32 noundef %conv9.i.i) #10
  br label %mrp_attr_cmp.exit.i

mrp_attr_cmp.exit.i:                              ; preds = %if.end17.i.i, %if.then12.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %sub16.i.i, %if.then12.i.i ], [ %call.i.i, %if.end17.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp sgt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %mrp_attr_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 2
  br label %if.end4.i

if.else.i:                                        ; preds = %mrp_attr_cmp.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp1.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i.if.end24_crit_edge

if.else.i.if.end24_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.then.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then2.i ]
  %13 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end4.i.while.body.i_crit_edge

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.le.i = ptrtoint ptr %8 to i32
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %entry.while.end_crit_edge.i
  %conv.pre-phi.i = phi i32 [ %.pre.i, %entry.while.end_crit_edge.i ], [ %conv9.i.i, %while.cond.while.end_crit_edge.i ]
  %p.0.lcssa.i = phi ptr [ %mad.i, %entry.while.end_crit_edge.i ], [ %p.1.i, %while.cond.while.end_crit_edge.i ]
  %parent.0.lcssa.i = phi i32 [ 0, %entry.while.end_crit_edge.i ], [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ]
  %add.i = add nuw nsw i32 %conv.pre-phi.i, 20
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 2592) #11
  %tobool6.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool6.not.i, label %if.end8.i.i.cleanup.sink.split_crit_edge, label %if.end8.i

if.end8.i.i.cleanup.sink.split_crit_edge:         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end8.i:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %state.i = getelementptr inbounds %struct.mrp_attr, ptr %call9.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %state.i, align 4
  %type9.i = getelementptr inbounds %struct.mrp_attr, ptr %call9.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %type9.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %type, ptr %type9.i, align 16
  %len10.i = getelementptr inbounds %struct.mrp_attr, ptr %call9.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %len10.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %len, ptr %len10.i, align 1
  %value11.i = getelementptr inbounds %struct.mrp_attr, ptr %call9.i.i, i32 0, i32 4
  %18 = call ptr @memcpy(ptr %value11.i, ptr %value, i32 %conv.pre-phi.i)
  %19 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %parent.0.lcssa.i, ptr %call9.i.i, align 128
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call9.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call9.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %rb_left.i.i, align 8
  %22 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9.i.i, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call9.i.i, ptr noundef %mad.i) #7
  br label %if.end24

if.end24:                                         ; preds = %if.end8.i, %if.else.i.if.end24_crit_edge
  %retval.0.i.ph = phi ptr [ %call9.i.i, %if.end8.i ], [ %8, %if.else.i.if.end24_crit_edge ]
  %state1.i = getelementptr inbounds %struct.mrp_attr, ptr %retval.0.i.ph, i32 0, i32 1
  %23 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i37 = icmp eq i32 %24, 0
  br i1 %cmp.i37, label %do.end.i, label %if.end19.i

do.end.i:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 487, i32 noundef 9, ptr noundef null) #7
  br label %cleanup.sink.split

if.end19.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx2.i = getelementptr [12 x [13 x i8]], ptr @mrp_applicant_state_table, i32 0, i32 %24, i32 1
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx2.i, align 1
  %conv.i = zext i8 %26 to i32
  %27 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv.i, ptr %state1.i, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end19.i, %do.end.i, %if.end8.i.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -12, %if.end8.i.i.cleanup.sink.split_crit_edge ], [ 0, %do.end.i ], [ 0, %if.end19.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end14.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mrp_attr_event(ptr noundef %app, ptr noundef %attr, i32 noundef %event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.mrp_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 4
  %arrayidx2 = getelementptr [12 x [13 x i8]], ptr @mrp_applicant_state_table, i32 0, i32 %1, i32 %event
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %do.end, label %if.end19

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 487, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end19:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %event)
  %cmp20 = icmp eq i32 %event, 3
  br i1 %cmp20, label %if.then22, label %if.end19.if.end69_crit_edge

if.end19.if.end69_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then22:                                        ; preds = %if.end19
  %arrayidx24 = getelementptr [12 x i8], ptr @mrp_tx_action_table, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx24, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %do.end55 [
    i8 0, label %if.then22.if.end69_crit_edge
    i8 3, label %if.then22.if.end69_crit_edge84
    i8 4, label %if.then22.if.end69_crit_edge85
    i8 1, label %sw.bb26
    i8 2, label %sw.bb31
    i8 5, label %sw.bb37
  ]

if.then22.if.end69_crit_edge85:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then22.if.end69_crit_edge84:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then22.if.end69_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

sw.bb26:                                          ; preds = %if.then22
  %call = tail call fastcc i32 @mrp_pdu_append_vecattr_event(ptr noundef %app, ptr noundef %attr, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp27 = icmp slt i32 %call, 0
  br i1 %cmp27, label %sw.bb26.cleanup_crit_edge, label %sw.bb26.if.end69_crit_edge

sw.bb26.if.end69_crit_edge:                       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb31:                                          ; preds = %if.then22
  %call32 = tail call fastcc i32 @mrp_pdu_append_vecattr_event(ptr noundef %app, ptr noundef %attr, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %sw.bb31.cleanup_crit_edge, label %sw.bb31.if.end69_crit_edge

sw.bb31.if.end69_crit_edge:                       ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb37:                                          ; preds = %if.then22
  %call38 = tail call fastcc i32 @mrp_pdu_append_vecattr_event(ptr noundef %app, ptr noundef %attr, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %sw.bb37.cleanup_crit_edge, label %if.end42

sw.bb37.cleanup_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42:                                         ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  %mad.i = getelementptr inbounds %struct.mrp_applicant, ptr %app, i32 0, i32 7
  tail call void @rb_erase(ptr noundef %attr, ptr noundef %mad.i) #7
  tail call void @kfree(ptr noundef %attr) #7
  br label %cleanup

do.end55:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 522, i32 noundef 9, ptr noundef null) #7
  br label %if.end69

if.end69:                                         ; preds = %do.end55, %sw.bb31.if.end69_crit_edge, %sw.bb26.if.end69_crit_edge, %if.then22.if.end69_crit_edge, %if.then22.if.end69_crit_edge84, %if.then22.if.end69_crit_edge85, %if.end19.if.end69_crit_edge
  %7 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %state1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.end42, %sw.bb37.cleanup_crit_edge, %sw.bb31.cleanup_crit_edge, %sw.bb26.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mrp_request_leave(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %appl, ptr nocapture noundef readonly %value, i8 noundef zeroext %len, i8 noundef zeroext %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b36 = load i1, ptr @mrp_request_leave.__warned, align 1
  br i1 %.b36, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mrp_request_leave.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 558, ptr noundef nonnull @.str.1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %mrp_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 132
  %0 = ptrtoint ptr %mrp_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrp_port, align 8
  %call5 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call5, label %do.end.do.end14_crit_edge, label %land.lhs.true6

do.end.do.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

land.lhs.true6:                                   ; preds = %do.end
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.do.end14_crit_edge, label %land.lhs.true9

land.lhs.true6.do.end14_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b3435 = load i1, ptr @mrp_request_leave.__warned.3, align 1
  br i1 %.b3435, label %land.lhs.true9.do.end14_crit_edge, label %if.then11

land.lhs.true9.do.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mrp_request_leave.__warned.3, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 560, ptr noundef nonnull @.str.1) #7
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true9.do.end14_crit_edge, %land.lhs.true6.do.end14_crit_edge, %do.end.do.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %len)
  %cmp = icmp ugt i8 %len, 40
  br i1 %cmp, label %do.end14.cleanup_crit_edge, label %if.end19

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %do.end14
  %2 = ptrtoint ptr %appl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %appl, align 4
  %arrayidx = getelementptr [1 x ptr], ptr %1, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %lock = getelementptr inbounds %struct.mrp_applicant, ptr %5, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %mad.i = getelementptr inbounds %struct.mrp_applicant, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %mad.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %parent.012.i = load ptr, ptr %mad.i, align 4
  %tobool.not13.i = icmp eq ptr %parent.012.i, null
  br i1 %tobool.not13.i, label %if.end19.cleanup.sink.split_crit_edge, label %while.body.lr.ph.i

if.end19.cleanup.sink.split_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

while.body.lr.ph.i:                               ; preds = %if.end19
  %conv2.i.i = zext i8 %type to i32
  %conv9.i.i = zext i8 %len to i32
  br label %while.body.i

while.body.i:                                     ; preds = %if.end4.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %parent.014.i = phi ptr [ %parent.012.i, %while.body.lr.ph.i ], [ %parent.0.i, %if.end4.i.while.body.i_crit_edge ]
  %type1.i.i = getelementptr inbounds %struct.mrp_attr, ptr %parent.014.i, i32 0, i32 2
  %7 = ptrtoint ptr %type1.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %type)
  %cmp.not.i.i = icmp eq i8 %8, %type
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = zext i8 %8 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv2.i.i
  br label %mrp_attr_cmp.exit.i

if.end.i.i:                                       ; preds = %while.body.i
  %len7.i.i = getelementptr inbounds %struct.mrp_attr, ptr %parent.014.i, i32 0, i32 3
  %9 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %len7.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %len)
  %cmp10.not.i.i = icmp eq i8 %10, %len
  br i1 %cmp10.not.i.i, label %if.end17.i.i, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv8.i.i = zext i8 %10 to i32
  %sub16.i.i = sub nsw i32 %conv8.i.i, %conv9.i.i
  br label %mrp_attr_cmp.exit.i

if.end17.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %value18.i.i = getelementptr inbounds %struct.mrp_attr, ptr %parent.014.i, i32 0, i32 4
  %call.i.i = tail call i32 @memcmp(ptr noundef %value18.i.i, ptr noundef %value, i32 noundef %conv9.i.i) #10
  br label %mrp_attr_cmp.exit.i

mrp_attr_cmp.exit.i:                              ; preds = %if.end17.i.i, %if.then12.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %sub16.i.i, %if.then12.i.i ], [ %call.i.i, %if.end17.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp sgt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %mrp_attr_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %parent.014.i, i32 0, i32 2
  br label %if.end4.i

if.else.i:                                        ; preds = %mrp_attr_cmp.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp1.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end24

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %parent.014.i, i32 0, i32 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.then.i
  %parent.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then2.i ]
  %11 = ptrtoint ptr %parent.1.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %parent.0.i = load ptr, ptr %parent.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %parent.0.i, null
  br i1 %tobool.not.i, label %if.end4.i.cleanup.sink.split_crit_edge, label %if.end4.i.while.body.i_crit_edge

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end4.i.cleanup.sink.split_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end24:                                         ; preds = %if.else.i
  %state1.i = getelementptr inbounds %struct.mrp_attr, ptr %parent.014.i, i32 0, i32 1
  %12 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i37 = icmp eq i32 %13, 0
  br i1 %cmp.i37, label %do.end.i, label %if.end19.i

do.end.i:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 487, i32 noundef 9, ptr noundef null) #7
  br label %cleanup.sink.split

if.end19.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx2.i = getelementptr [12 x [13 x i8]], ptr @mrp_applicant_state_table, i32 0, i32 %13, i32 2
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx2.i, align 1
  %conv.i = zext i8 %15 to i32
  %16 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.i, ptr %state1.i, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end19.i, %do.end.i, %if.end4.i.cleanup.sink.split_crit_edge, %if.end19.cleanup.sink.split_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end14.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mrp_init_applicant(ptr noundef %dev, ptr noundef %appl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b141 = load i1, ptr @mrp_init_applicant.__already_done, align 1
  br i1 %.b141, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !88

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mrp_init_applicant.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 855, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 855) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call38 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call38, label %if.end29.do.end46_crit_edge, label %land.lhs.true

if.end29.do.end46_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46

land.lhs.true:                                    ; preds = %if.end29
  %call39 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true.do.end46_crit_edge, label %land.lhs.true41

land.lhs.true.do.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46

land.lhs.true41:                                  ; preds = %land.lhs.true
  %.b139140 = load i1, ptr @mrp_init_applicant.__warned, align 1
  br i1 %.b139140, label %land.lhs.true41.do.end46_crit_edge, label %if.then43

land.lhs.true41.do.end46_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46

if.then43:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mrp_init_applicant.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 857, ptr noundef nonnull @.str.1) #7
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %land.lhs.true41.do.end46_crit_edge, %land.lhs.true.do.end46_crit_edge, %if.end29.do.end46_crit_edge
  %mrp_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 132
  %0 = ptrtoint ptr %mrp_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrp_port, align 8
  %tobool48.not = icmp eq ptr %1, null
  br i1 %tobool48.not, label %if.then49, label %do.end46.if.end53_crit_edge

do.end46.if.end53_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then49:                                        ; preds = %do.end46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then49.cleanup_crit_edge, label %mrp_init_port.exit

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mrp_init_port.exit:                               ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !89
  %3 = ptrtoint ptr %mrp_port to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %call7.i.i.i, ptr %mrp_port, align 8
  br label %if.end53

if.end53:                                         ; preds = %mrp_init_port.exit, %do.end46.if.end53_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 220) #12
  %tobool55.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool55.not, label %if.end53.err2_crit_edge, label %if.end57

if.end53.err2_crit_edge:                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %err2

if.end57:                                         ; preds = %if.end53
  %group_address = getelementptr inbounds %struct.mrp_application, ptr %appl, i32 0, i32 3
  %call58 = tail call i32 @dev_mc_add(ptr noundef %dev, ptr noundef %group_address) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %err3, label %if.end61

if.end61:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %dev62 = getelementptr inbounds %struct.mrp_applicant, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %dev62 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev62, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %appl, ptr %call7.i.i, align 8
  %mad = getelementptr inbounds %struct.mrp_applicant, ptr %call7.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %mad to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %mad, align 8
  %lock = getelementptr inbounds %struct.mrp_applicant, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @mrp_init_applicant.__key, i16 noundef signext 3) #7
  %queue = getelementptr inbounds %struct.mrp_applicant, ptr %call7.i.i, i32 0, i32 5
  %lock.i = getelementptr inbounds %struct.mrp_applicant, ptr %call7.i.i, i32 0, i32 5, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %queue, ptr %queue, align 4
  %prev.i.i = getelementptr inbounds %struct.mrp_applicant, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %queue, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.mrp_applicant, ptr %call7.i.i, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qlen.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !90
  %11 = ptrtoint ptr %mrp_port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mrp_port, align 8
  %13 = ptrtoint ptr %appl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %appl, align 4
  %arrayidx98 = getelementptr [1 x ptr], ptr %12, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call7.i.i, ptr %arrayidx98, align 4
  %join_timer = getelementptr inbounds %struct.mrp_applicant, ptr %call7.i.i, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %join_timer, ptr noundef nonnull @mrp_join_timer, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @mrp_init_applicant.__key.6) #7
  %16 = load i32, ptr @mrp_join_time, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %16) #7
  %conv.i = zext i32 %call2.i.i to i64
  %call1.i = tail call i32 @prandom_u32() #7
  %conv2.i = zext i32 %call1.i to i64
  %mul.i = mul nuw i64 %conv2.i, %conv.i
  %shr.i = lshr i64 %mul.i, 32
  %conv3.i = trunc i64 %shr.i to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %17, %conv3.i
  %call4.i = tail call i32 @mod_timer(ptr noundef %join_timer, i32 noundef %add.i) #7
  %periodic_timer = getelementptr inbounds %struct.mrp_applicant, ptr %call7.i.i, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %periodic_timer, ptr noundef nonnull @mrp_periodic_timer, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @mrp_init_applicant.__key.8) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %19 = load i32, ptr @mrp_periodic_time, align 4
  %call2.i.i147 = tail call i32 @__msecs_to_jiffies(i32 noundef %19) #7
  %add.i150 = add i32 %call2.i.i147, %18
  %call1.i151 = tail call i32 @mod_timer(ptr noundef %periodic_timer, i32 noundef %add.i150) #7
  br label %cleanup

err3:                                             ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %err2

err2:                                             ; preds = %err3, %if.end53.err2_crit_edge
  %err.0 = phi i32 [ %call58, %err3 ], [ -12, %if.end53.err2_crit_edge ]
  tail call fastcc void @mrp_release_port(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %err2, %if.end61, %if.then49.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end61 ], [ %err.0, %err2 ], [ -12, %if.then49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mrp_join_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -8
  %lock = getelementptr i8, ptr %t, i32 96
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %mad.i = getelementptr i8, ptr %t, i32 200
  %call.i = tail call ptr @rb_first(ptr noundef %mad.i) #7
  %tobool.not7.i = icmp eq ptr %call.i, null
  br i1 %tobool.not7.i, label %entry.mrp_mad_event.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.mrp_mad_event.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_mad_event.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %node.08.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %call1.i = tail call ptr @rb_next(ptr noundef nonnull %node.08.i) #7
  tail call fastcc void @mrp_attr_event(ptr noundef %add.ptr, ptr noundef nonnull %node.08.i, i32 noundef 3) #7
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %for.body.i.mrp_mad_event.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.mrp_mad_event.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_mad_event.exit

mrp_mad_event.exit:                               ; preds = %for.body.i.mrp_mad_event.exit_crit_edge, %entry.mrp_mad_event.exit_crit_edge
  tail call fastcc void @mrp_pdu_queue(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  %queue.i = getelementptr i8, ptr %t, i32 140
  %call2.i = tail call ptr @skb_dequeue(ptr noundef %queue.i) #7
  %tobool.not3.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not3.i, label %mrp_mad_event.exit.if.else.i.i_crit_edge, label %mrp_mad_event.exit.while.body.i_crit_edge

mrp_mad_event.exit.while.body.i_crit_edge:        ; preds = %mrp_mad_event.exit
  br label %while.body.i

mrp_mad_event.exit.if.else.i.i_crit_edge:         ; preds = %mrp_mad_event.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %mrp_mad_event.exit.while.body.i_crit_edge
  %call4.i = phi ptr [ %call.i8, %while.body.i.while.body.i_crit_edge ], [ %call2.i, %mrp_mad_event.exit.while.body.i_crit_edge ]
  %call1.i7 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call4.i) #7
  %call.i8 = tail call ptr @skb_dequeue(ptr noundef %queue.i) #7
  %tobool.not.i9 = icmp eq ptr %call.i8, null
  br i1 %tobool.not.i9, label %while.body.i.if.else.i.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.if.else.i.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %while.body.i.if.else.i.i_crit_edge, %mrp_mad_event.exit.if.else.i.i_crit_edge
  %0 = load i32, ptr @mrp_join_time, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %0) #7
  %conv.i = zext i32 %call2.i.i to i64
  %call1.i10 = tail call i32 @prandom_u32() #7
  %conv2.i = zext i32 %call1.i10 to i64
  %mul.i = mul nuw i64 %conv2.i, %conv.i
  %shr.i = lshr i64 %mul.i, 32
  %conv3.i = trunc i64 %shr.i to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %1, %conv3.i
  %call4.i11 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mrp_periodic_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %t, i32 48
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %mad.i = getelementptr i8, ptr %t, i32 152
  %call.i = tail call ptr @rb_first(ptr noundef %mad.i) #7
  %tobool.not7.i = icmp eq ptr %call.i, null
  br i1 %tobool.not7.i, label %entry.mrp_mad_event.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.mrp_mad_event.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_mad_event.exit

for.body.i:                                       ; preds = %mrp_attr_event.exit.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %node.08.i = phi ptr [ %call1.i, %mrp_attr_event.exit.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %call1.i = tail call ptr @rb_next(ptr noundef nonnull %node.08.i) #7
  %state1.i = getelementptr inbounds %struct.mrp_attr, ptr %node.08.i, i32 0, i32 1
  %0 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %do.end.i, label %if.end19.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 487, i32 noundef 9, ptr noundef null) #7
  br label %mrp_attr_event.exit

if.end19.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx2.i = getelementptr [12 x [13 x i8]], ptr @mrp_applicant_state_table, i32 0, i32 %1, i32 12
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2.i, align 1
  %conv.i = zext i8 %3 to i32
  %4 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv.i, ptr %state1.i, align 4
  br label %mrp_attr_event.exit

mrp_attr_event.exit:                              ; preds = %if.end19.i, %do.end.i
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %mrp_attr_event.exit.mrp_mad_event.exit_crit_edge, label %mrp_attr_event.exit.for.body.i_crit_edge

mrp_attr_event.exit.for.body.i_crit_edge:         ; preds = %mrp_attr_event.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

mrp_attr_event.exit.mrp_mad_event.exit_crit_edge: ; preds = %mrp_attr_event.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_mad_event.exit

mrp_mad_event.exit:                               ; preds = %mrp_attr_event.exit.mrp_mad_event.exit_crit_edge, %entry.mrp_mad_event.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %t, i32 -56
  tail call fastcc void @mrp_pdu_queue(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %6 = load i32, ptr @mrp_periodic_time, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %6) #7
  %add.i = add i32 %call2.i.i, %5
  %call1.i6 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mrp_release_port(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b49 = load i1, ptr @mrp_release_port.__warned, align 1
  br i1 %.b49, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mrp_release_port.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 839, ptr noundef nonnull @.str.1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %mrp_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 132
  %0 = ptrtoint ptr %mrp_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrp_port, align 8
  %call5 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call5, label %do.end.do.end14_crit_edge, label %land.lhs.true6

do.end.do.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

land.lhs.true6:                                   ; preds = %do.end
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.do.end14_crit_edge, label %land.lhs.true9

land.lhs.true6.do.end14_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b4748 = load i1, ptr @mrp_release_port.__warned.12, align 1
  br i1 %.b4748, label %land.lhs.true9.do.end14_crit_edge, label %if.then11

land.lhs.true9.do.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mrp_release_port.__warned.12, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 843, ptr noundef nonnull @.str.1) #7
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true9.do.end14_crit_edge, %land.lhs.true6.do.end14_crit_edge, %do.end.do.end14_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool16.not = icmp eq ptr %3, null
  br i1 %tobool16.not, label %do.body24, label %do.end14.cleanup_crit_edge

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body24:                                        ; preds = %do.end14
  %4 = ptrtoint ptr %mrp_port to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr null, ptr %mrp_port, align 8
  %tobool33.not = icmp eq ptr %1, null
  br i1 %tobool33.not, label %do.body24.cleanup_crit_edge, label %do.end37

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end37:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %rcu = getelementptr inbounds %struct.mrp_port, ptr %1, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 4 to ptr)) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %do.body24.cleanup_crit_edge, %do.end14.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mrp_uninit_applicant(ptr noundef %dev, ptr noundef %appl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b108 = load i1, ptr @mrp_uninit_applicant.__warned, align 1
  br i1 %.b108, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mrp_uninit_applicant.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 895, ptr noundef nonnull @.str.1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %mrp_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 132
  %0 = ptrtoint ptr %mrp_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrp_port, align 8
  %call5 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call5, label %do.end.do.end14_crit_edge, label %land.lhs.true6

do.end.do.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

land.lhs.true6:                                   ; preds = %do.end
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.do.end14_crit_edge, label %land.lhs.true9

land.lhs.true6.do.end14_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b104107 = load i1, ptr @mrp_uninit_applicant.__warned.10, align 1
  br i1 %.b104107, label %land.lhs.true9.do.end14_crit_edge, label %if.then11

land.lhs.true9.do.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mrp_uninit_applicant.__warned.10, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 897, ptr noundef nonnull @.str.1) #7
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true9.do.end14_crit_edge, %land.lhs.true6.do.end14_crit_edge, %do.end.do.end14_crit_edge
  %2 = ptrtoint ptr %appl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %appl, align 4
  %arrayidx = getelementptr [1 x ptr], ptr %1, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call16 = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.rhs, label %do.end14.if.end52_crit_edge

do.end14.if.end52_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

land.rhs:                                         ; preds = %do.end14
  %.b105106 = load i1, ptr @mrp_uninit_applicant.__already_done, align 1
  br i1 %.b105106, label %land.rhs.if.end52_crit_edge, label %if.then26, !prof !88

land.rhs.if.end52_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then26:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mrp_uninit_applicant.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 899, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 899) #7
  br label %if.end52

if.end52:                                         ; preds = %if.then26, %land.rhs.if.end52_crit_edge, %do.end14.if.end52_crit_edge
  %6 = ptrtoint ptr %appl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %appl, align 4
  %arrayidx68 = getelementptr [1 x ptr], ptr %1, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %arrayidx68, align 4
  %join_timer = getelementptr inbounds %struct.mrp_applicant, ptr %5, i32 0, i32 2
  %call75 = tail call i32 @del_timer_sync(ptr noundef %join_timer) #7
  %periodic_timer = getelementptr inbounds %struct.mrp_applicant, ptr %5, i32 0, i32 3
  %call76 = tail call i32 @del_timer_sync(ptr noundef %periodic_timer) #7
  %lock = getelementptr inbounds %struct.mrp_applicant, ptr %5, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %mad.i = getelementptr inbounds %struct.mrp_applicant, ptr %5, i32 0, i32 7
  %call.i = tail call ptr @rb_first(ptr noundef %mad.i) #7
  %tobool.not7.i = icmp eq ptr %call.i, null
  br i1 %tobool.not7.i, label %if.end52.mrp_mad_event.exit_crit_edge, label %if.end52.for.body.i_crit_edge

if.end52.for.body.i_crit_edge:                    ; preds = %if.end52
  br label %for.body.i

if.end52.mrp_mad_event.exit_crit_edge:            ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_mad_event.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end52.for.body.i_crit_edge
  %node.08.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.end52.for.body.i_crit_edge ]
  %call1.i = tail call ptr @rb_next(ptr noundef nonnull %node.08.i) #7
  tail call fastcc void @mrp_attr_event(ptr noundef %5, ptr noundef nonnull %node.08.i, i32 noundef 3) #7
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %for.body.i.mrp_mad_event.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.mrp_mad_event.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_mad_event.exit

mrp_mad_event.exit:                               ; preds = %for.body.i.mrp_mad_event.exit_crit_edge, %if.end52.mrp_mad_event.exit_crit_edge
  %call.i110 = tail call ptr @rb_first(ptr noundef %mad.i) #7
  %tobool.not7.i111 = icmp eq ptr %call.i110, null
  br i1 %tobool.not7.i111, label %mrp_mad_event.exit.mrp_attr_destroy_all.exit_crit_edge, label %mrp_mad_event.exit.for.body.i115_crit_edge

mrp_mad_event.exit.for.body.i115_crit_edge:       ; preds = %mrp_mad_event.exit
  br label %for.body.i115

mrp_mad_event.exit.mrp_attr_destroy_all.exit_crit_edge: ; preds = %mrp_mad_event.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_attr_destroy_all.exit

for.body.i115:                                    ; preds = %for.body.i115.for.body.i115_crit_edge, %mrp_mad_event.exit.for.body.i115_crit_edge
  %node.08.i112 = phi ptr [ %call1.i113, %for.body.i115.for.body.i115_crit_edge ], [ %call.i110, %mrp_mad_event.exit.for.body.i115_crit_edge ]
  %call1.i113 = tail call ptr @rb_next(ptr noundef nonnull %node.08.i112) #7
  tail call void @rb_erase(ptr noundef nonnull %node.08.i112, ptr noundef %mad.i) #7
  tail call void @kfree(ptr noundef nonnull %node.08.i112) #7
  %tobool.not.i114 = icmp eq ptr %call1.i113, null
  br i1 %tobool.not.i114, label %for.body.i115.mrp_attr_destroy_all.exit_crit_edge, label %for.body.i115.for.body.i115_crit_edge

for.body.i115.for.body.i115_crit_edge:            ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i115

for.body.i115.mrp_attr_destroy_all.exit_crit_edge: ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_attr_destroy_all.exit

mrp_attr_destroy_all.exit:                        ; preds = %for.body.i115.mrp_attr_destroy_all.exit_crit_edge, %mrp_mad_event.exit.mrp_attr_destroy_all.exit_crit_edge
  tail call fastcc void @mrp_pdu_queue(ptr noundef %5)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  %queue.i = getelementptr inbounds %struct.mrp_applicant, ptr %5, i32 0, i32 5
  %call2.i = tail call ptr @skb_dequeue(ptr noundef %queue.i) #7
  %tobool.not3.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not3.i, label %mrp_attr_destroy_all.exit.mrp_queue_xmit.exit_crit_edge, label %mrp_attr_destroy_all.exit.while.body.i_crit_edge

mrp_attr_destroy_all.exit.while.body.i_crit_edge: ; preds = %mrp_attr_destroy_all.exit
  br label %while.body.i

mrp_attr_destroy_all.exit.mrp_queue_xmit.exit_crit_edge: ; preds = %mrp_attr_destroy_all.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_queue_xmit.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %mrp_attr_destroy_all.exit.while.body.i_crit_edge
  %call4.i = phi ptr [ %call.i117, %while.body.i.while.body.i_crit_edge ], [ %call2.i, %mrp_attr_destroy_all.exit.while.body.i_crit_edge ]
  %call1.i116 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call4.i) #7
  %call.i117 = tail call ptr @skb_dequeue(ptr noundef %queue.i) #7
  %tobool.not.i118 = icmp eq ptr %call.i117, null
  br i1 %tobool.not.i118, label %while.body.i.mrp_queue_xmit.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.mrp_queue_xmit.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_queue_xmit.exit

mrp_queue_xmit.exit:                              ; preds = %while.body.i.mrp_queue_xmit.exit_crit_edge, %mrp_attr_destroy_all.exit.mrp_queue_xmit.exit_crit_edge
  %group_address = getelementptr inbounds %struct.mrp_application, ptr %appl, i32 0, i32 3
  %call78 = tail call i32 @dev_mc_del(ptr noundef %dev, ptr noundef %group_address) #7
  %tobool80.not = icmp eq ptr %5, null
  br i1 %tobool80.not, label %mrp_queue_xmit.exit.if.end85_crit_edge, label %do.end84

mrp_queue_xmit.exit.if.end85_crit_edge:           ; preds = %mrp_queue_xmit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

do.end84:                                         ; preds = %mrp_queue_xmit.exit
  call void @__sanitizer_cov_trace_pc() #9
  %rcu = getelementptr inbounds %struct.mrp_applicant, ptr %5, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 212 to ptr)) #7
  br label %if.end85

if.end85:                                         ; preds = %do.end84, %mrp_queue_xmit.exit.if.end85_crit_edge
  tail call fastcc void @mrp_release_port(ptr noundef %dev)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mrp_pdu_queue(ptr noundef %app) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdu = getelementptr inbounds %struct.mrp_applicant, ptr %app, i32 0, i32 6
  %0 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdu, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb.i, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %if.then3.if.end5_crit_edge

if.then3.if.end5_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

skb_tailroom.exit.i:                              ; preds = %if.then3
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i.i, 2
  br i1 %cmp.i, label %skb_tailroom.exit.i.if.end5_crit_edge, label %__skb_put.exit.i

skb_tailroom.exit.i.if.end5_crit_edge:            ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

__skb_put.exit.i:                                 ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 2
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i.i, ptr %tail.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %12, 2
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 0, ptr %9, align 1
  br label %if.end5

if.end5:                                          ; preds = %__skb_put.exit.i, %skb_tailroom.exit.i.if.end5_crit_edge, %if.then3.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %14 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdu, align 4
  %data_len.i.i.i28 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %data_len.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i.i28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i.i29 = icmp eq i32 %17, 0
  br i1 %tobool.i.not.i.i29, label %skb_tailroom.exit.i36, label %if.end5.mrp_pdu_append_end_mark.exit42_crit_edge

if.end5.mrp_pdu_append_end_mark.exit42_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_append_end_mark.exit42

skb_tailroom.exit.i36:                            ; preds = %if.end5
  %end.i.i30 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 17
  %18 = ptrtoint ptr %end.i.i30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i.i30, align 4
  %tail.i.i31 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i.i31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i31, align 8
  %sub.ptr.lhs.cast.i.i32 = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i.i33 = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i.i34 = sub i32 %sub.ptr.lhs.cast.i.i32, %sub.ptr.rhs.cast.i.i33
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i.i34)
  %cmp.i35 = icmp ult i32 %sub.ptr.sub.i.i34, 2
  br i1 %cmp.i35, label %skb_tailroom.exit.i36.mrp_pdu_append_end_mark.exit42_crit_edge, label %__skb_put.exit.i40

skb_tailroom.exit.i36.mrp_pdu_append_end_mark.exit42_crit_edge: ; preds = %skb_tailroom.exit.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_append_end_mark.exit42

__skb_put.exit.i40:                               ; preds = %skb_tailroom.exit.i36
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i37 = getelementptr i8, ptr %21, i32 2
  %22 = ptrtoint ptr %tail.i.i31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i.i37, ptr %tail.i.i31, align 8
  %len9.i.i38 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 6
  %23 = ptrtoint ptr %len9.i.i38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len9.i.i38, align 4
  %add.i.i39 = add i32 %24, 2
  store i32 %add.i.i39, ptr %len9.i.i38, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 0, ptr %21, align 1
  br label %mrp_pdu_append_end_mark.exit42

mrp_pdu_append_end_mark.exit42:                   ; preds = %__skb_put.exit.i40, %skb_tailroom.exit.i36.mrp_pdu_append_end_mark.exit42_crit_edge, %if.end5.mrp_pdu_append_end_mark.exit42_crit_edge
  %26 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdu, align 4
  %dev = getelementptr inbounds %struct.mrp_applicant, ptr %app, i32 0, i32 1
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %30 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %app, align 4
  %pkttype = getelementptr inbounds %struct.mrp_application, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %pkttype to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %pkttype, align 4
  %group_address = getelementptr inbounds %struct.mrp_application, ptr %31, i32 0, i32 3
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 86
  %34 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_addr, align 64
  %len = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 6
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 49
  %38 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %header_ops.i, align 4
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %mrp_pdu_append_end_mark.exit42.dev_hard_header.exit_crit_edge, label %lor.lhs.false.i

mrp_pdu_append_end_mark.exit42.dev_hard_header.exit_crit_edge: ; preds = %mrp_pdu_append_end_mark.exit42
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_hard_header.exit

lor.lhs.false.i:                                  ; preds = %mrp_pdu_append_end_mark.exit42
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %tobool2.not.i = icmp eq ptr %41, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.dev_hard_header.exit_crit_edge, label %if.end.i

lor.lhs.false.i.dev_hard_header.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_hard_header.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %41(ptr noundef %27, ptr noundef %29, i16 noundef zeroext %33, ptr noundef %group_address, ptr noundef %35, i32 noundef %37) #7
  br label %dev_hard_header.exit

dev_hard_header.exit:                             ; preds = %if.end.i, %lor.lhs.false.i.dev_hard_header.exit_crit_edge, %mrp_pdu_append_end_mark.exit42.dev_hard_header.exit_crit_edge
  %queue = getelementptr inbounds %struct.mrp_applicant, ptr %app, i32 0, i32 5
  %42 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdu, align 4
  tail call void @skb_queue_tail(ptr noundef %queue, ptr noundef %43) #7
  %44 = ptrtoint ptr %pdu to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %pdu, align 4
  br label %return

return:                                           ; preds = %dev_hard_header.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mrp_register_application(ptr noundef %appl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pkttype = getelementptr inbounds %struct.mrp_application, ptr %appl, i32 0, i32 2
  %func = getelementptr inbounds %struct.mrp_application, ptr %appl, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mrp_rcv, ptr %func, align 4
  tail call void @dev_add_pack(ptr noundef %pkttype) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrp_rcv(ptr noundef %skb, ptr noundef %dev, ptr nocapture noundef readonly %pt, ptr nocapture noundef readnone %orig_dev) #0 align 64 {
entry:
  %_vah.i.i = alloca %struct.mrp_vecattr_hdr, align 2
  %vaevents.i.i = alloca i8, align 1
  %endmark.i.i = alloca i16, align 2
  %_mh.i = alloca %struct.mrp_msg_hdr, align 1
  %endmark.i = alloca i16, align 2
  %_ph = alloca %struct.mrp_pdu_hdr, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pt, i32 -8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %_ph) #7
  %0 = ptrtoint ptr %_ph to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %_ph, align 1, !annotation !91
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %1 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %3 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %4 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %7 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr.mask = and i16 %bf.load, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %bf.lshr.mask)
  %cmp = icmp eq i16 %bf.lshr.mask, 24576
  br i1 %cmp, label %entry.out_crit_edge, label %if.end, !prof !92

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #7
  %8 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i.not.i = icmp eq i32 %9, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end
  %call7.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #7
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread138, !prof !92

skb_share_check.exit.thread138:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @consume_skb(ptr noundef %skb) #7
  br label %if.end14

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %out

skb_share_check.exit:                             ; preds = %if.end
  %tobool4.not = icmp eq ptr %skb, null
  br i1 %tobool4.not, label %skb_share_check.exit.out_crit_edge, label %skb_share_check.exit.if.end14_crit_edge, !prof !92

skb_share_check.exit.if.end14_crit_edge:          ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

skb_share_check.exit.out_crit_edge:               ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end14:                                         ; preds = %skb_share_check.exit.if.end14_crit_edge, %skb_share_check.exit.thread138
  %skb.addr.0.i141 = phi ptr [ %call7.i, %skb_share_check.exit.thread138 ], [ %skb, %skb_share_check.exit.if.end14_crit_edge ]
  %mrp_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 132
  %10 = ptrtoint ptr %mrp_port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %mrp_port, align 8
  %call17 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true, label %if.end14.do.end26_crit_edge

if.end14.do.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26

land.lhs.true:                                    ; preds = %if.end14
  %call19 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true.do.end26_crit_edge, label %land.lhs.true21

land.lhs.true.do.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26

land.lhs.true21:                                  ; preds = %land.lhs.true
  %.b108 = load i1, ptr @mrp_rcv.__warned, align 1
  br i1 %.b108, label %land.lhs.true21.do.end26_crit_edge, label %if.then23

land.lhs.true21.do.end26_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mrp_rcv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 798, ptr noundef nonnull @.str.13) #7
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %land.lhs.true21.do.end26_crit_edge, %land.lhs.true.do.end26_crit_edge, %if.end14.do.end26_crit_edge
  %tobool28.not = icmp eq ptr %11, null
  br i1 %tobool28.not, label %do.end26.out_crit_edge, label %if.end38, !prof !92

do.end26.out_crit_edge:                           ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end38:                                         ; preds = %do.end26
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 4
  %arrayidx = getelementptr [1 x ptr], ptr %11, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx, align 4
  %call44 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true46, label %if.end38.do.end54_crit_edge

if.end38.do.end54_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54

land.lhs.true46:                                  ; preds = %if.end38
  %call47 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true46.do.end54_crit_edge, label %land.lhs.true49

land.lhs.true46.do.end54_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54

land.lhs.true49:                                  ; preds = %land.lhs.true46
  %.b106107 = load i1, ptr @mrp_rcv.__warned.14, align 1
  br i1 %.b106107, label %land.lhs.true49.do.end54_crit_edge, label %if.then51

land.lhs.true49.do.end54_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54

if.then51:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mrp_rcv.__warned.14, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 801, ptr noundef nonnull @.str.13) #7
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %land.lhs.true49.do.end54_crit_edge, %land.lhs.true46.do.end54_crit_edge, %if.end38.do.end54_crit_edge
  %tobool56.not = icmp eq ptr %15, null
  br i1 %tobool56.not, label %do.end54.out_crit_edge, label %if.end66, !prof !92

do.end54.out_crit_edge:                           ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end66:                                         ; preds = %do.end54
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i141, i32 0, i32 6
  %16 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i141, i32 0, i32 7
  %18 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len.i.i, align 8
  %20 = add i32 %sub.ptr.sub.i, %19
  %sub.i4.i = sub i32 %17, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 1
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %skb_header_pointer.exit, !prof !92

lor.lhs.false.i.i:                                ; preds = %if.end66
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb.addr.0.i141, i32 noundef %sub.ptr.sub.i, ptr noundef nonnull %_ph, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.out_crit_edge, label %lor.lhs.false.i.i.if.end70_crit_edge

lor.lhs.false.i.i.if.end70_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

lor.lhs.false.i.i.out_crit_edge:                  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

skb_header_pointer.exit:                          ; preds = %if.end66
  %data.i109 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i141, i32 0, i32 19
  %21 = ptrtoint ptr %data.i109 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i109, align 4
  %add.ptr.i.i110 = getelementptr i8, ptr %22, i32 %sub.ptr.sub.i
  %tobool68.not = icmp eq ptr %add.ptr.i.i110, null
  br i1 %tobool68.not, label %skb_header_pointer.exit.out_crit_edge, label %skb_header_pointer.exit.if.end70_crit_edge

skb_header_pointer.exit.if.end70_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

skb_header_pointer.exit.out_crit_edge:            ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end70:                                         ; preds = %skb_header_pointer.exit.if.end70_crit_edge, %lor.lhs.false.i.i.if.end70_crit_edge
  %retval.0.i.i147 = phi ptr [ %add.ptr.i.i110, %skb_header_pointer.exit.if.end70_crit_edge ], [ %_ph, %lor.lhs.false.i.i.if.end70_crit_edge ]
  %23 = ptrtoint ptr %retval.0.i.i147 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %retval.0.i.i147, align 1
  %25 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %15, align 4
  %version73 = getelementptr inbounds %struct.mrp_application, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %version73 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %version73, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %28)
  %cmp75.not = icmp eq i8 %24, %28
  br i1 %cmp75.not, label %if.end78, label %if.end70.out_crit_edge

if.end70.out_crit_edge:                           ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end78:                                         ; preds = %if.end70
  %add = add i32 %sub.ptr.sub.i, 1
  %lock = getelementptr inbounds %struct.mrp_applicant, ptr %15, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %lock) #7
  %29 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %add)
  %cmp79173 = icmp ugt i32 %30, %add
  br i1 %cmp79173, label %while.body.lr.ph, label %if.end78.while.end_crit_edge

if.end78.while.end_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end78
  %31 = getelementptr inbounds %struct.mrp_msg_hdr, ptr %_mh.i, i32 0, i32 1
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i141, i32 0, i32 19
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i141, i32 0, i32 3
  %vah.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i141, i32 0, i32 3, i32 4
  %mad.i.i.i = getelementptr inbounds %struct.mrp_applicant, ptr %15, i32 0, i32 7
  %attrvalue.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i141, i32 0, i32 3, i32 8
  br label %while.body

while.body:                                       ; preds = %mrp_pdu_parse_msg.exit.while.body_crit_edge, %while.body.lr.ph
  %offset.0174 = phi i32 [ %add, %while.body.lr.ph ], [ %offset.7, %mrp_pdu_parse_msg.exit.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %endmark.i) #7
  %32 = ptrtoint ptr %endmark.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -1, ptr %endmark.i, align 2, !annotation !91
  %call.i = call i32 @skb_copy_bits(ptr noundef %skb.addr.0.i141, i32 noundef %offset.0174, ptr noundef nonnull %endmark.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %while.body.mrp_pdu_parse_end_mark.exit.thread_crit_edge, label %if.end.i

while.body.mrp_pdu_parse_end_mark.exit.thread_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_parse_end_mark.exit.thread

if.end.i:                                         ; preds = %while.body
  %33 = ptrtoint ptr %endmark.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %endmark.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp1.i = icmp eq i16 %34, 0
  br i1 %cmp1.i, label %if.end.i.mrp_pdu_parse_end_mark.exit.thread_crit_edge, label %if.end85

if.end.i.mrp_pdu_parse_end_mark.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_parse_end_mark.exit.thread

mrp_pdu_parse_end_mark.exit.thread:               ; preds = %if.end.i.mrp_pdu_parse_end_mark.exit.thread_crit_edge, %while.body.mrp_pdu_parse_end_mark.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %endmark.i) #7
  br label %while.end

if.end85:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %endmark.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %_mh.i) #7
  %35 = ptrtoint ptr %_mh.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %_mh.i, align 1, !annotation !91
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %31, align 1, !annotation !91
  %37 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i.i, align 4
  %39 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_len.i.i, align 8
  %41 = add i32 %offset.0174, %40
  %sub.i4.i.i = sub i32 %38, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i4.i.i)
  %cmp.not.i.i.i = icmp slt i32 %sub.i4.i.i, 2
  br i1 %cmp.not.i.i.i, label %lor.lhs.false.i.i.i, label %skb_header_pointer.exit.i, !prof !92

lor.lhs.false.i.i.i:                              ; preds = %if.end85
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb.addr.0.i141, i32 noundef %offset.0174, ptr noundef nonnull %_mh.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %skb_header_pointer.exit.thread.i, label %skb_header_pointer.exit.thread61.i

skb_header_pointer.exit.thread61.i:               ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %_mh.i, ptr %cb.i.i, align 4
  br label %if.end.i113

skb_header_pointer.exit.thread.i:                 ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %cb.i.i, align 4
  br label %mrp_pdu_parse_msg.exit.thread

skb_header_pointer.exit.i:                        ; preds = %if.end85
  %44 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %45, i32 %offset.0174
  %46 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr.i.i.i, ptr %cb.i.i, align 4
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_header_pointer.exit.i.mrp_pdu_parse_msg.exit.thread_crit_edge, label %skb_header_pointer.exit.i.if.end.i113_crit_edge

skb_header_pointer.exit.i.if.end.i113_crit_edge:  ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i113

skb_header_pointer.exit.i.mrp_pdu_parse_msg.exit.thread_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_parse_msg.exit.thread

if.end.i113:                                      ; preds = %skb_header_pointer.exit.i.if.end.i113_crit_edge, %skb_header_pointer.exit.thread61.i
  %add.i111 = add i32 %offset.0174, 2
  %47 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cb.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp.i112 = icmp eq i8 %50, 0
  br i1 %cmp.i112, label %if.end.i113.mrp_pdu_parse_msg.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.i113.mrp_pdu_parse_msg.exit.thread_crit_edge: ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_parse_msg.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end.i113
  %conv10.i = zext i8 %50 to i32
  %51 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %15, align 4
  %maxattr.i = getelementptr inbounds %struct.mrp_application, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %maxattr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %maxattr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %conv10.i)
  %cmp12.i = icmp ult i32 %54, %conv10.i
  br i1 %cmp12.i, label %lor.lhs.false.i.mrp_pdu_parse_msg.exit.thread_crit_edge, label %lor.lhs.false14.i

lor.lhs.false.i.mrp_pdu_parse_msg.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_parse_msg.exit.thread

lor.lhs.false14.i:                                ; preds = %lor.lhs.false.i
  %attrlen.i = getelementptr inbounds %struct.mrp_msg_hdr, ptr %48, i32 0, i32 1
  %55 = ptrtoint ptr %attrlen.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %attrlen.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp18.i = icmp eq i8 %56, 0
  br i1 %cmp18.i, label %lor.lhs.false14.i.mrp_pdu_parse_msg.exit.thread_crit_edge, label %while.cond.preheader.i

lor.lhs.false14.i.mrp_pdu_parse_msg.exit.thread_crit_edge: ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_parse_msg.exit.thread

while.cond.preheader.i:                           ; preds = %lor.lhs.false14.i
  %57 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %add.i111)
  %cmp2282.i = icmp ugt i32 %58, %add.i111
  br i1 %cmp2282.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.mrp_pdu_parse_msg.exit_crit_edge

while.cond.preheader.i.mrp_pdu_parse_msg.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_parse_msg.exit

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %mrp_pdu_parse_vecattr.exit.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %offset.2 = phi i32 [ %offset.6, %mrp_pdu_parse_vecattr.exit.i.while.body.i_crit_edge ], [ %add.i111, %while.cond.preheader.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %endmark.i.i) #7
  %59 = ptrtoint ptr %endmark.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -1, ptr %endmark.i.i, align 2, !annotation !91
  %call.i.i114 = call i32 @skb_copy_bits(ptr noundef %skb.addr.0.i141, i32 noundef %offset.2, ptr noundef nonnull %endmark.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i114)
  %cmp.i.i = icmp slt i32 %call.i.i114, 0
  br i1 %cmp.i.i, label %while.body.i.mrp_pdu_parse_end_mark.exit.thread.i_crit_edge, label %if.end.i.i115

while.body.i.mrp_pdu_parse_end_mark.exit.thread.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_parse_end_mark.exit.thread.i

if.end.i.i115:                                    ; preds = %while.body.i
  %60 = ptrtoint ptr %endmark.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %endmark.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp1.i.i = icmp eq i16 %61, 0
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.end28.i

if.then3.i.i:                                     ; preds = %if.end.i.i115
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i = add i32 %offset.2, 2
  br label %mrp_pdu_parse_end_mark.exit.thread.i

mrp_pdu_parse_end_mark.exit.thread.i:             ; preds = %if.then3.i.i, %while.body.i.mrp_pdu_parse_end_mark.exit.thread.i_crit_edge
  %offset.3 = phi i32 [ %add.i.i, %if.then3.i.i ], [ %offset.2, %while.body.i.mrp_pdu_parse_end_mark.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %endmark.i.i) #7
  br label %mrp_pdu_parse_msg.exit

if.end28.i:                                       ; preds = %if.end.i.i115
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %endmark.i.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %_vah.i.i) #7
  %62 = ptrtoint ptr %_vah.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 -1, ptr %_vah.i.i, align 2, !annotation !91
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %vaevents.i.i) #7
  %63 = ptrtoint ptr %vaevents.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -1, ptr %vaevents.i.i, align 1, !annotation !91
  %64 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len.i.i, align 4
  %66 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %data_len.i.i, align 8
  %68 = add i32 %offset.2, %67
  %sub.i4.i.i.i = sub i32 %65, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i4.i.i.i)
  %cmp.not.i.i.i.i = icmp slt i32 %sub.i4.i.i.i, 2
  br i1 %cmp.not.i.i.i.i, label %lor.lhs.false.i.i.i.i, label %skb_header_pointer.exit.i.i, !prof !92

lor.lhs.false.i.i.i.i:                            ; preds = %if.end28.i
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb.addr.0.i141, i32 noundef %offset.2, ptr noundef nonnull %_vah.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp3.i.i.i.i, label %skb_header_pointer.exit.thread.i.i, label %skb_header_pointer.exit.thread237.i.i

skb_header_pointer.exit.thread237.i.i:            ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %vah.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %_vah.i.i, ptr %vah.i.i, align 4
  br label %if.end.i52.i

skb_header_pointer.exit.thread.i.i:               ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %vah.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %vah.i.i, align 4
  br label %mrp_pdu_parse_vecattr.exit.thread.i

skb_header_pointer.exit.i.i:                      ; preds = %if.end28.i
  %71 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %72, i32 %offset.2
  %73 = ptrtoint ptr %vah.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %add.ptr.i.i.i.i, ptr %vah.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i, label %skb_header_pointer.exit.i.i.mrp_pdu_parse_vecattr.exit.thread.i_crit_edge, label %skb_header_pointer.exit.i.i.if.end.i52.i_crit_edge

skb_header_pointer.exit.i.i.if.end.i52.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i52.i

skb_header_pointer.exit.i.i.mrp_pdu_parse_vecattr.exit.thread.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_parse_vecattr.exit.thread.i

if.end.i52.i:                                     ; preds = %skb_header_pointer.exit.i.i.if.end.i52.i_crit_edge, %skb_header_pointer.exit.thread237.i.i
  %add.i51.i = add i32 %offset.2, 2
  %74 = ptrtoint ptr %vah.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vah.i.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %77 = load i16, ptr %75, align 1
  %78 = and i16 %77, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool6.not.i.i = icmp eq i16 %78, 0
  br i1 %tobool6.not.i.i, label %if.end.i52.i.if.end8.i.i_crit_edge, label %if.then7.i.i

if.end.i52.i.if.end8.i.i_crit_edge:               ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.then7.i.i:                                     ; preds = %if.end.i52.i
  %call.i.i53.i = call ptr @rb_first(ptr noundef %mad.i.i.i) #7
  %tobool.not7.i.i.i = icmp eq ptr %call.i.i53.i, null
  br i1 %tobool.not7.i.i.i, label %if.then7.i.i.if.end8.i.i_crit_edge, label %if.then7.i.i.for.body.i.i.i_crit_edge

if.then7.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.then7.i.i
  br label %for.body.i.i.i

if.then7.i.i.if.end8.i.i_crit_edge:               ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

for.body.i.i.i:                                   ; preds = %mrp_attr_event.exit.i.i.for.body.i.i.i_crit_edge, %if.then7.i.i.for.body.i.i.i_crit_edge
  %node.08.i.i.i = phi ptr [ %call1.i.i.i, %mrp_attr_event.exit.i.i.for.body.i.i.i_crit_edge ], [ %call.i.i53.i, %if.then7.i.i.for.body.i.i.i_crit_edge ]
  %call1.i.i.i = call ptr @rb_next(ptr noundef nonnull %node.08.i.i.i) #7
  %state1.i.i.i = getelementptr inbounds %struct.mrp_attr, ptr %node.08.i.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %state1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %state1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.i.i.i = icmp eq i32 %80, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end19.i.i.i

do.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 487, i32 noundef 9, ptr noundef null) #7
  br label %mrp_attr_event.exit.i.i

if.end19.i.i.i:                                   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx2.i.i.i = getelementptr [12 x [13 x i8]], ptr @mrp_applicant_state_table, i32 0, i32 %80, i32 10
  %81 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx2.i.i.i, align 1
  %conv.i.i.i = zext i8 %82 to i32
  %83 = ptrtoint ptr %state1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv.i.i.i, ptr %state1.i.i.i, align 4
  br label %mrp_attr_event.exit.i.i

mrp_attr_event.exit.i.i:                          ; preds = %if.end19.i.i.i, %do.end.i.i.i
  %tobool.not.i.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not.i.i.i, label %mrp_attr_event.exit.i.i.if.end8.i.i_crit_edge, label %mrp_attr_event.exit.i.i.for.body.i.i.i_crit_edge

mrp_attr_event.exit.i.i.for.body.i.i.i_crit_edge: ; preds = %mrp_attr_event.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

mrp_attr_event.exit.i.i.if.end8.i.i_crit_edge:    ; preds = %mrp_attr_event.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %mrp_attr_event.exit.i.i.if.end8.i.i_crit_edge, %if.then7.i.i.if.end8.i.i_crit_edge, %if.end.i52.i.if.end8.i.i_crit_edge
  %84 = ptrtoint ptr %vah.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vah.i.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %85, align 1
  %88 = and i16 %87, 8191
  %89 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cb.i.i, align 4
  %attrlen.i.i = getelementptr inbounds %struct.mrp_msg_hdr, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %attrlen.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %attrlen.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %92)
  %cmp.i54.i = icmp ugt i8 %92, 40
  br i1 %cmp.i54.i, label %if.end8.i.i.mrp_pdu_parse_vecattr.exit.thread.i_crit_edge, label %if.end23.i.i

if.end8.i.i.mrp_pdu_parse_vecattr.exit.thread.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_parse_vecattr.exit.thread.i

if.end23.i.i:                                     ; preds = %if.end8.i.i
  %conv28.i.i = zext i8 %92 to i32
  %call29.i.i = call i32 @skb_copy_bits(ptr noundef %skb.addr.0.i141, i32 noundef %add.i51.i, ptr noundef %attrvalue.i.i, i32 noundef %conv28.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %cmp30.i.i = icmp slt i32 %call29.i.i, 0
  br i1 %cmp30.i.i, label %if.end23.i.i.mrp_pdu_parse_vecattr.exit.thread.i_crit_edge, label %if.end33.i.i

if.end23.i.i.mrp_pdu_parse_vecattr.exit.thread.i_crit_edge: ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_parse_vecattr.exit.thread.i

if.end33.i.i:                                     ; preds = %if.end23.i.i
  %93 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cb.i.i, align 4
  %attrlen36.i.i = getelementptr inbounds %struct.mrp_msg_hdr, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %attrlen36.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %attrlen36.i.i, align 1
  %conv37.i.i = zext i8 %96 to i32
  %add38.i.i = add i32 %add.i51.i, %conv37.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %cmp40.not249.i.i = icmp eq i16 %88, 0
  br i1 %cmp40.not249.i.i, label %if.end33.i.i.mrp_pdu_parse_vecattr.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.end33.i.i.mrp_pdu_parse_vecattr.exit.i_crit_edge: ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_parse_vecattr.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.end33.i.i
  %call42.i79.i = call i32 @skb_copy_bits(ptr noundef %skb.addr.0.i141, i32 noundef %add38.i.i, ptr noundef nonnull %vaevents.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i79.i)
  %cmp43.i80.i = icmp slt i32 %call42.i79.i, 0
  br i1 %cmp43.i80.i, label %while.body.lr.ph.i.i.mrp_pdu_parse_vecattr.exit.thread.i_crit_edge, label %while.body.lr.ph.i.i.if.end46.i.i_crit_edge

while.body.lr.ph.i.i.if.end46.i.i_crit_edge:      ; preds = %while.body.lr.ph.i.i
  br label %if.end46.i.i

while.body.lr.ph.i.i.mrp_pdu_parse_vecattr.exit.thread.i_crit_edge: ; preds = %while.body.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_parse_vecattr.exit.thread.i

if.end46.i.i:                                     ; preds = %mrp_pdu_parse_vecattr_event.exit232.i.i.if.end46.i.i_crit_edge, %while.body.lr.ph.i.i.if.end46.i.i_crit_edge
  %offset.4 = phi i32 [ %add47.i.i, %mrp_pdu_parse_vecattr_event.exit232.i.i.if.end46.i.i_crit_edge ], [ %add38.i.i, %while.body.lr.ph.i.i.if.end46.i.i_crit_edge ]
  %valen.0250.i81.i = phi i16 [ %dec71.i.i, %mrp_pdu_parse_vecattr_event.exit232.i.i.if.end46.i.i_crit_edge ], [ %88, %while.body.lr.ph.i.i.if.end46.i.i_crit_edge ]
  %add47.i.i = add i32 %offset.4, 1
  %97 = ptrtoint ptr %vaevents.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %vaevents.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -41, i8 %98)
  %cmp51.i.i = icmp ugt i8 %98, -41
  br i1 %cmp51.i.i, label %if.end46.i.i.mrp_pdu_parse_vecattr.exit.thread.i_crit_edge, label %if.end54.i.i

if.end46.i.i.mrp_pdu_parse_vecattr.exit.thread.i_crit_edge: ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_parse_vecattr.exit.thread.i

if.end54.i.i:                                     ; preds = %if.end46.i.i
  %99 = udiv i8 %98, 36
  %100 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cb.i.i, align 4
  %attrlen.i.i.i = getelementptr inbounds %struct.mrp_msg_hdr, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %attrlen.i.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %attrlen.i.i.i, align 1
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %101, align 1
  %106 = ptrtoint ptr %mad.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %parent.012.i.i.i.i = load ptr, ptr %mad.i.i.i, align 4
  %tobool.not13.i.i.i.i = icmp eq ptr %parent.012.i.i.i.i, null
  br i1 %tobool.not13.i.i.i.i, label %if.end54.i.i.mrp_pdu_parse_vecattr_event.exit.i.i_crit_edge, label %while.body.lr.ph.i.i.i.i

if.end54.i.i.mrp_pdu_parse_vecattr_event.exit.i.i_crit_edge: ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_parse_vecattr_event.exit.i.i

while.body.lr.ph.i.i.i.i:                         ; preds = %if.end54.i.i
  %conv2.i.i.i.i.i = zext i8 %105 to i32
  %conv9.i.i.i.i.i = zext i8 %103 to i32
  br label %while.body.i.i.i.i

while.body.i.i.i.i:                               ; preds = %if.end4.i.i.i.i.while.body.i.i.i.i_crit_edge, %while.body.lr.ph.i.i.i.i
  %parent.014.i.i.i.i = phi ptr [ %parent.012.i.i.i.i, %while.body.lr.ph.i.i.i.i ], [ %parent.0.i.i.i.i, %if.end4.i.i.i.i.while.body.i.i.i.i_crit_edge ]
  %type1.i.i.i.i.i = getelementptr inbounds %struct.mrp_attr, ptr %parent.014.i.i.i.i, i32 0, i32 2
  %107 = ptrtoint ptr %type1.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %type1.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %108, i8 %105)
  %cmp.not.i.i.i.i.i = icmp eq i8 %108, %105
  br i1 %cmp.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i8 %108 to i32
  %sub.i.i.i.i.i = sub nsw i32 %conv.i.i.i.i.i, %conv2.i.i.i.i.i
  br label %mrp_attr_cmp.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %while.body.i.i.i.i
  %len7.i.i.i.i.i = getelementptr inbounds %struct.mrp_attr, ptr %parent.014.i.i.i.i, i32 0, i32 3
  %109 = ptrtoint ptr %len7.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %len7.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %110, i8 %103)
  %cmp10.not.i.i.i.i.i = icmp eq i8 %110, %103
  br i1 %cmp10.not.i.i.i.i.i, label %if.end17.i.i.i.i.i, label %if.then12.i.i.i.i.i

if.then12.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv8.i.i.i.i.i = zext i8 %110 to i32
  %sub16.i.i.i.i.i = sub nsw i32 %conv8.i.i.i.i.i, %conv9.i.i.i.i.i
  br label %mrp_attr_cmp.exit.i.i.i.i

if.end17.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %value18.i.i.i.i.i = getelementptr inbounds %struct.mrp_attr, ptr %parent.014.i.i.i.i, i32 0, i32 4
  %call.i.i.i.i.i116 = call i32 @memcmp(ptr noundef %value18.i.i.i.i.i, ptr noundef %attrvalue.i.i, i32 noundef %conv9.i.i.i.i.i) #10
  br label %mrp_attr_cmp.exit.i.i.i.i

mrp_attr_cmp.exit.i.i.i.i:                        ; preds = %if.end17.i.i.i.i.i, %if.then12.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %sub16.i.i.i.i.i, %if.then12.i.i.i.i.i ], [ %call.i.i.i.i.i116, %if.end17.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %retval.0.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i125.i.i, label %if.else.i.i.i.i

if.then.i.i125.i.i:                               ; preds = %mrp_attr_cmp.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %parent.014.i.i.i.i, i32 0, i32 2
  br label %if.end4.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %mrp_attr_cmp.exit.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i.i.i)
  %cmp1.i.i.i.i = icmp slt i32 %retval.0.i.i.i.i.i, 0
  br i1 %cmp1.i.i.i.i, label %if.then2.i.i.i.i, label %if.end.i.i55.i

if.then2.i.i.i.i:                                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %parent.014.i.i.i.i, i32 0, i32 1
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %if.then2.i.i.i.i, %if.then.i.i125.i.i
  %parent.1.in.i.i.i.i = phi ptr [ %rb_left.i.i.i.i, %if.then.i.i125.i.i ], [ %rb_right.i.i.i.i, %if.then2.i.i.i.i ]
  %111 = ptrtoint ptr %parent.1.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %parent.0.i.i.i.i = load ptr, ptr %parent.1.in.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %parent.0.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end4.i.i.i.i.mrp_pdu_parse_vecattr_event.exit.i.i_crit_edge, label %if.end4.i.i.i.i.while.body.i.i.i.i_crit_edge

if.end4.i.i.i.i.while.body.i.i.i.i_crit_edge:     ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i.i

if.end4.i.i.i.i.mrp_pdu_parse_vecattr_event.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_parse_vecattr_event.exit.i.i

if.end.i.i55.i:                                   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -40, i8 %98)
  %112 = icmp ult i8 %98, -40
  br i1 %112, label %switch.lookup, label %if.end.i.i55.i.mrp_pdu_parse_vecattr_event.exit.i.i_crit_edge

if.end.i.i55.i.mrp_pdu_parse_vecattr_event.exit.i.i_crit_edge: ; preds = %if.end.i.i55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_parse_vecattr_event.exit.i.i

switch.lookup:                                    ; preds = %if.end.i.i55.i
  call void @__sanitizer_cov_trace_pc() #9
  %narrow210 = add nuw nsw i8 %99, 4
  %switch.offset = zext i8 %narrow210 to i32
  call fastcc void @mrp_attr_event(ptr noundef nonnull %15, ptr noundef nonnull %parent.014.i.i.i.i, i32 noundef %switch.offset) #7
  br label %mrp_pdu_parse_vecattr_event.exit.i.i

mrp_pdu_parse_vecattr_event.exit.i.i:             ; preds = %switch.lookup, %if.end.i.i55.i.mrp_pdu_parse_vecattr_event.exit.i.i_crit_edge, %if.end4.i.i.i.i.mrp_pdu_parse_vecattr_event.exit.i.i_crit_edge, %if.end54.i.i.mrp_pdu_parse_vecattr_event.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %valen.0250.i81.i)
  %tobool56.not.i.i = icmp eq i16 %valen.0250.i81.i, 1
  br i1 %tobool56.not.i.i, label %mrp_pdu_parse_vecattr_event.exit.i.i.mrp_pdu_parse_vecattr.exit.i_crit_edge, label %if.end58.i.i

mrp_pdu_parse_vecattr_event.exit.i.i.mrp_pdu_parse_vecattr.exit.i_crit_edge: ; preds = %mrp_pdu_parse_vecattr_event.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_parse_vecattr.exit.i

if.end58.i.i:                                     ; preds = %mrp_pdu_parse_vecattr_event.exit.i.i
  %113 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cb.i.i, align 4
  %attrlen64.i.i = getelementptr inbounds %struct.mrp_msg_hdr, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %attrlen64.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %attrlen64.i.i, align 1
  %117 = zext i8 %116 to i32
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %land.rhs.i.i.i.while.cond.i.i.i_crit_edge, %if.end58.i.i
  %indvars.iv.i.i.i = phi i32 [ %118, %land.rhs.i.i.i.while.cond.i.i.i_crit_edge ], [ %117, %if.end58.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv.i.i.i)
  %cmp.not.i.i56.i = icmp eq i32 %indvars.iv.i.i.i, 0
  br i1 %cmp.not.i.i56.i, label %while.cond.i.i.i.mrp_attrvalue_inc.exit.i.i_crit_edge, label %land.rhs.i.i.i

while.cond.i.i.i.mrp_attrvalue_inc.exit.i.i_crit_edge: ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_attrvalue_inc.exit.i.i

land.rhs.i.i.i:                                   ; preds = %while.cond.i.i.i
  %118 = add nsw i32 %indvars.iv.i.i.i, -1
  %arrayidx.i.i.i = getelementptr i8, ptr %attrvalue.i.i, i32 %118
  %119 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.i.i.i, align 1
  %inc.i.i.i = add i8 %120, 1
  store i8 %inc.i.i.i, ptr %arrayidx.i.i.i, align 1
  %tobool.not.i128.i.i = icmp eq i8 %inc.i.i.i, 0
  br i1 %tobool.not.i128.i.i, label %land.rhs.i.i.i.while.cond.i.i.i_crit_edge, label %land.rhs.i.i.i.mrp_attrvalue_inc.exit.i.i_crit_edge

land.rhs.i.i.i.mrp_attrvalue_inc.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_attrvalue_inc.exit.i.i

land.rhs.i.i.i.while.cond.i.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i.i

mrp_attrvalue_inc.exit.i.i:                       ; preds = %land.rhs.i.i.i.mrp_attrvalue_inc.exit.i.i_crit_edge, %while.cond.i.i.i.mrp_attrvalue_inc.exit.i.i_crit_edge
  %121 = ptrtoint ptr %vaevents.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %vaevents.i.i, align 1
  %123 = urem i8 %122, 36
  store i8 %123, ptr %vaevents.i.i, align 1
  %124 = udiv i8 %123, 6
  %125 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %cb.i.i, align 4
  %attrlen.i131.i.i = getelementptr inbounds %struct.mrp_msg_hdr, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %attrlen.i131.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %attrlen.i131.i.i, align 1
  %129 = ptrtoint ptr %126 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %126, align 1
  %131 = ptrtoint ptr %mad.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %parent.012.i.i133.i.i = load ptr, ptr %mad.i.i.i, align 4
  %tobool.not13.i.i134.i.i = icmp eq ptr %parent.012.i.i133.i.i, null
  br i1 %tobool.not13.i.i134.i.i, label %mrp_attrvalue_inc.exit.i.i.mrp_pdu_parse_vecattr_event.exit175.i.i_crit_edge, label %while.body.lr.ph.i.i137.i.i

mrp_attrvalue_inc.exit.i.i.mrp_pdu_parse_vecattr_event.exit175.i.i_crit_edge: ; preds = %mrp_attrvalue_inc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_parse_vecattr_event.exit175.i.i

while.body.lr.ph.i.i137.i.i:                      ; preds = %mrp_attrvalue_inc.exit.i.i
  %conv2.i.i.i135.i.i = zext i8 %130 to i32
  %conv9.i.i.i136.i.i = zext i8 %128 to i32
  br label %while.body.i.i141.i.i

while.body.i.i141.i.i:                            ; preds = %if.end4.i.i166.i.i.while.body.i.i141.i.i_crit_edge, %while.body.lr.ph.i.i137.i.i
  %parent.014.i.i138.i.i = phi ptr [ %parent.012.i.i133.i.i, %while.body.lr.ph.i.i137.i.i ], [ %parent.0.i.i164.i.i, %if.end4.i.i166.i.i.while.body.i.i141.i.i_crit_edge ]
  %type1.i.i.i139.i.i = getelementptr inbounds %struct.mrp_attr, ptr %parent.014.i.i138.i.i, i32 0, i32 2
  %132 = ptrtoint ptr %type1.i.i.i139.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %type1.i.i.i139.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %133, i8 %130)
  %cmp.not.i.i.i140.i.i = icmp eq i8 %133, %130
  br i1 %cmp.not.i.i.i140.i.i, label %if.end.i.i.i147.i.i, label %if.then.i.i.i144.i.i

if.then.i.i.i144.i.i:                             ; preds = %while.body.i.i141.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i142.i.i = zext i8 %133 to i32
  %sub.i.i.i143.i.i = sub nsw i32 %conv.i.i.i142.i.i, %conv2.i.i.i135.i.i
  br label %mrp_attr_cmp.exit.i.i156.i.i

if.end.i.i.i147.i.i:                              ; preds = %while.body.i.i141.i.i
  %len7.i.i.i145.i.i = getelementptr inbounds %struct.mrp_attr, ptr %parent.014.i.i138.i.i, i32 0, i32 3
  %134 = ptrtoint ptr %len7.i.i.i145.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %len7.i.i.i145.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %135, i8 %128)
  %cmp10.not.i.i.i146.i.i = icmp eq i8 %135, %128
  br i1 %cmp10.not.i.i.i146.i.i, label %if.end17.i.i.i153.i.i, label %if.then12.i.i.i150.i.i

if.then12.i.i.i150.i.i:                           ; preds = %if.end.i.i.i147.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv8.i.i.i148.i.i = zext i8 %135 to i32
  %sub16.i.i.i149.i.i = sub nsw i32 %conv8.i.i.i148.i.i, %conv9.i.i.i136.i.i
  br label %mrp_attr_cmp.exit.i.i156.i.i

if.end17.i.i.i153.i.i:                            ; preds = %if.end.i.i.i147.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %value18.i.i.i151.i.i = getelementptr inbounds %struct.mrp_attr, ptr %parent.014.i.i138.i.i, i32 0, i32 4
  %call.i.i.i152.i.i = call i32 @memcmp(ptr noundef %value18.i.i.i151.i.i, ptr noundef %attrvalue.i.i, i32 noundef %conv9.i.i.i136.i.i) #10
  br label %mrp_attr_cmp.exit.i.i156.i.i

mrp_attr_cmp.exit.i.i156.i.i:                     ; preds = %if.end17.i.i.i153.i.i, %if.then12.i.i.i150.i.i, %if.then.i.i.i144.i.i
  %retval.0.i.i.i154.i.i = phi i32 [ %sub.i.i.i143.i.i, %if.then.i.i.i144.i.i ], [ %sub16.i.i.i149.i.i, %if.then12.i.i.i150.i.i ], [ %call.i.i.i152.i.i, %if.end17.i.i.i153.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i154.i.i)
  %cmp.i.i155.i.i = icmp sgt i32 %retval.0.i.i.i154.i.i, 0
  br i1 %cmp.i.i155.i.i, label %if.then.i.i158.i.i, label %if.else.i.i160.i.i

if.then.i.i158.i.i:                               ; preds = %mrp_attr_cmp.exit.i.i156.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left.i.i157.i.i = getelementptr inbounds %struct.rb_node, ptr %parent.014.i.i138.i.i, i32 0, i32 2
  br label %if.end4.i.i166.i.i

if.else.i.i160.i.i:                               ; preds = %mrp_attr_cmp.exit.i.i156.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i154.i.i)
  %cmp1.i.i159.i.i = icmp slt i32 %retval.0.i.i.i154.i.i, 0
  br i1 %cmp1.i.i159.i.i, label %if.then2.i.i162.i.i, label %switch.lookup205

if.then2.i.i162.i.i:                              ; preds = %if.else.i.i160.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right.i.i161.i.i = getelementptr inbounds %struct.rb_node, ptr %parent.014.i.i138.i.i, i32 0, i32 1
  br label %if.end4.i.i166.i.i

if.end4.i.i166.i.i:                               ; preds = %if.then2.i.i162.i.i, %if.then.i.i158.i.i
  %parent.1.in.i.i163.i.i = phi ptr [ %rb_left.i.i157.i.i, %if.then.i.i158.i.i ], [ %rb_right.i.i161.i.i, %if.then2.i.i162.i.i ]
  %136 = ptrtoint ptr %parent.1.in.i.i163.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %parent.0.i.i164.i.i = load ptr, ptr %parent.1.in.i.i163.i.i, align 4
  %tobool.not.i.i165.i.i = icmp eq ptr %parent.0.i.i164.i.i, null
  br i1 %tobool.not.i.i165.i.i, label %if.end4.i.i166.i.i.mrp_pdu_parse_vecattr_event.exit175.i.i_crit_edge, label %if.end4.i.i166.i.i.while.body.i.i141.i.i_crit_edge

if.end4.i.i166.i.i.while.body.i.i141.i.i_crit_edge: ; preds = %if.end4.i.i166.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i141.i.i

if.end4.i.i166.i.i.mrp_pdu_parse_vecattr_event.exit175.i.i_crit_edge: ; preds = %if.end4.i.i166.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_parse_vecattr_event.exit175.i.i

switch.lookup205:                                 ; preds = %if.else.i.i160.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %narrow209 = add nuw nsw i8 %124, 4
  %switch.offset206 = zext i8 %narrow209 to i32
  call fastcc void @mrp_attr_event(ptr noundef nonnull %15, ptr noundef nonnull %parent.014.i.i138.i.i, i32 noundef %switch.offset206) #7
  br label %mrp_pdu_parse_vecattr_event.exit175.i.i

mrp_pdu_parse_vecattr_event.exit175.i.i:          ; preds = %switch.lookup205, %if.end4.i.i166.i.i.mrp_pdu_parse_vecattr_event.exit175.i.i_crit_edge, %mrp_attrvalue_inc.exit.i.i.mrp_pdu_parse_vecattr_event.exit175.i.i_crit_edge
  %dec71.i.i = add i16 %valen.0250.i81.i, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec71.i.i)
  %tobool72.not.i.i = icmp eq i16 %dec71.i.i, 0
  br i1 %tobool72.not.i.i, label %mrp_pdu_parse_vecattr_event.exit175.i.i.mrp_pdu_parse_vecattr.exit.i_crit_edge, label %if.end74.i.i

mrp_pdu_parse_vecattr_event.exit175.i.i.mrp_pdu_parse_vecattr.exit.i_crit_edge: ; preds = %mrp_pdu_parse_vecattr_event.exit175.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_parse_vecattr.exit.i

if.end74.i.i:                                     ; preds = %mrp_pdu_parse_vecattr_event.exit175.i.i
  %137 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cb.i.i, align 4
  %attrlen80.i.i = getelementptr inbounds %struct.mrp_msg_hdr, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %attrlen80.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %attrlen80.i.i, align 1
  %141 = zext i8 %140 to i32
  br label %while.cond.i180.i.i

while.cond.i180.i.i:                              ; preds = %land.rhs.i184.i.i.while.cond.i180.i.i_crit_edge, %if.end74.i.i
  %indvars.iv.i178.i.i = phi i32 [ %142, %land.rhs.i184.i.i.while.cond.i180.i.i_crit_edge ], [ %141, %if.end74.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv.i178.i.i)
  %cmp.not.i179.i.i = icmp eq i32 %indvars.iv.i178.i.i, 0
  br i1 %cmp.not.i179.i.i, label %while.cond.i180.i.i.mrp_attrvalue_inc.exit185.i.i_crit_edge, label %land.rhs.i184.i.i

while.cond.i180.i.i.mrp_attrvalue_inc.exit185.i.i_crit_edge: ; preds = %while.cond.i180.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_attrvalue_inc.exit185.i.i

land.rhs.i184.i.i:                                ; preds = %while.cond.i180.i.i
  %142 = add nsw i32 %indvars.iv.i178.i.i, -1
  %arrayidx.i181.i.i = getelementptr i8, ptr %attrvalue.i.i, i32 %142
  %143 = ptrtoint ptr %arrayidx.i181.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx.i181.i.i, align 1
  %inc.i182.i.i = add i8 %144, 1
  store i8 %inc.i182.i.i, ptr %arrayidx.i181.i.i, align 1
  %tobool.not.i183.i.i = icmp eq i8 %inc.i182.i.i, 0
  br i1 %tobool.not.i183.i.i, label %land.rhs.i184.i.i.while.cond.i180.i.i_crit_edge, label %land.rhs.i184.i.i.mrp_attrvalue_inc.exit185.i.i_crit_edge

land.rhs.i184.i.i.mrp_attrvalue_inc.exit185.i.i_crit_edge: ; preds = %land.rhs.i184.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_attrvalue_inc.exit185.i.i

land.rhs.i184.i.i.while.cond.i180.i.i_crit_edge:  ; preds = %land.rhs.i184.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i180.i.i

mrp_attrvalue_inc.exit185.i.i:                    ; preds = %land.rhs.i184.i.i.mrp_attrvalue_inc.exit185.i.i_crit_edge, %while.cond.i180.i.i.mrp_attrvalue_inc.exit185.i.i_crit_edge
  %145 = ptrtoint ptr %vaevents.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %vaevents.i.i, align 1
  %147 = urem i8 %146, 6
  store i8 %147, ptr %vaevents.i.i, align 1
  %148 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %cb.i.i, align 4
  %attrlen.i188.i.i = getelementptr inbounds %struct.mrp_msg_hdr, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %attrlen.i188.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %attrlen.i188.i.i, align 1
  %152 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %149, align 1
  %154 = ptrtoint ptr %mad.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %parent.012.i.i190.i.i = load ptr, ptr %mad.i.i.i, align 4
  %tobool.not13.i.i191.i.i = icmp eq ptr %parent.012.i.i190.i.i, null
  br i1 %tobool.not13.i.i191.i.i, label %mrp_attrvalue_inc.exit185.i.i.mrp_pdu_parse_vecattr_event.exit232.i.i_crit_edge, label %while.body.lr.ph.i.i194.i.i

mrp_attrvalue_inc.exit185.i.i.mrp_pdu_parse_vecattr_event.exit232.i.i_crit_edge: ; preds = %mrp_attrvalue_inc.exit185.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_parse_vecattr_event.exit232.i.i

while.body.lr.ph.i.i194.i.i:                      ; preds = %mrp_attrvalue_inc.exit185.i.i
  %conv2.i.i.i192.i.i = zext i8 %153 to i32
  %conv9.i.i.i193.i.i = zext i8 %151 to i32
  br label %while.body.i.i198.i.i

while.body.i.i198.i.i:                            ; preds = %if.end4.i.i223.i.i.while.body.i.i198.i.i_crit_edge, %while.body.lr.ph.i.i194.i.i
  %parent.014.i.i195.i.i = phi ptr [ %parent.012.i.i190.i.i, %while.body.lr.ph.i.i194.i.i ], [ %parent.0.i.i221.i.i, %if.end4.i.i223.i.i.while.body.i.i198.i.i_crit_edge ]
  %type1.i.i.i196.i.i = getelementptr inbounds %struct.mrp_attr, ptr %parent.014.i.i195.i.i, i32 0, i32 2
  %155 = ptrtoint ptr %type1.i.i.i196.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %type1.i.i.i196.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %156, i8 %153)
  %cmp.not.i.i.i197.i.i = icmp eq i8 %156, %153
  br i1 %cmp.not.i.i.i197.i.i, label %if.end.i.i.i204.i.i, label %if.then.i.i.i201.i.i

if.then.i.i.i201.i.i:                             ; preds = %while.body.i.i198.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i199.i.i = zext i8 %156 to i32
  %sub.i.i.i200.i.i = sub nsw i32 %conv.i.i.i199.i.i, %conv2.i.i.i192.i.i
  br label %mrp_attr_cmp.exit.i.i213.i.i

if.end.i.i.i204.i.i:                              ; preds = %while.body.i.i198.i.i
  %len7.i.i.i202.i.i = getelementptr inbounds %struct.mrp_attr, ptr %parent.014.i.i195.i.i, i32 0, i32 3
  %157 = ptrtoint ptr %len7.i.i.i202.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %len7.i.i.i202.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %158, i8 %151)
  %cmp10.not.i.i.i203.i.i = icmp eq i8 %158, %151
  br i1 %cmp10.not.i.i.i203.i.i, label %if.end17.i.i.i210.i.i, label %if.then12.i.i.i207.i.i

if.then12.i.i.i207.i.i:                           ; preds = %if.end.i.i.i204.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv8.i.i.i205.i.i = zext i8 %158 to i32
  %sub16.i.i.i206.i.i = sub nsw i32 %conv8.i.i.i205.i.i, %conv9.i.i.i193.i.i
  br label %mrp_attr_cmp.exit.i.i213.i.i

if.end17.i.i.i210.i.i:                            ; preds = %if.end.i.i.i204.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %value18.i.i.i208.i.i = getelementptr inbounds %struct.mrp_attr, ptr %parent.014.i.i195.i.i, i32 0, i32 4
  %call.i.i.i209.i.i = call i32 @memcmp(ptr noundef %value18.i.i.i208.i.i, ptr noundef %attrvalue.i.i, i32 noundef %conv9.i.i.i193.i.i) #10
  br label %mrp_attr_cmp.exit.i.i213.i.i

mrp_attr_cmp.exit.i.i213.i.i:                     ; preds = %if.end17.i.i.i210.i.i, %if.then12.i.i.i207.i.i, %if.then.i.i.i201.i.i
  %retval.0.i.i.i211.i.i = phi i32 [ %sub.i.i.i200.i.i, %if.then.i.i.i201.i.i ], [ %sub16.i.i.i206.i.i, %if.then12.i.i.i207.i.i ], [ %call.i.i.i209.i.i, %if.end17.i.i.i210.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i211.i.i)
  %cmp.i.i212.i.i = icmp sgt i32 %retval.0.i.i.i211.i.i, 0
  br i1 %cmp.i.i212.i.i, label %if.then.i.i215.i.i, label %if.else.i.i217.i.i

if.then.i.i215.i.i:                               ; preds = %mrp_attr_cmp.exit.i.i213.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left.i.i214.i.i = getelementptr inbounds %struct.rb_node, ptr %parent.014.i.i195.i.i, i32 0, i32 2
  br label %if.end4.i.i223.i.i

if.else.i.i217.i.i:                               ; preds = %mrp_attr_cmp.exit.i.i213.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i211.i.i)
  %cmp1.i.i216.i.i = icmp slt i32 %retval.0.i.i.i211.i.i, 0
  br i1 %cmp1.i.i216.i.i, label %if.then2.i.i219.i.i, label %switch.lookup207

if.then2.i.i219.i.i:                              ; preds = %if.else.i.i217.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right.i.i218.i.i = getelementptr inbounds %struct.rb_node, ptr %parent.014.i.i195.i.i, i32 0, i32 1
  br label %if.end4.i.i223.i.i

if.end4.i.i223.i.i:                               ; preds = %if.then2.i.i219.i.i, %if.then.i.i215.i.i
  %parent.1.in.i.i220.i.i = phi ptr [ %rb_left.i.i214.i.i, %if.then.i.i215.i.i ], [ %rb_right.i.i218.i.i, %if.then2.i.i219.i.i ]
  %159 = ptrtoint ptr %parent.1.in.i.i220.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %parent.0.i.i221.i.i = load ptr, ptr %parent.1.in.i.i220.i.i, align 4
  %tobool.not.i.i222.i.i = icmp eq ptr %parent.0.i.i221.i.i, null
  br i1 %tobool.not.i.i222.i.i, label %if.end4.i.i223.i.i.mrp_pdu_parse_vecattr_event.exit232.i.i_crit_edge, label %if.end4.i.i223.i.i.while.body.i.i198.i.i_crit_edge

if.end4.i.i223.i.i.while.body.i.i198.i.i_crit_edge: ; preds = %if.end4.i.i223.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i198.i.i

if.end4.i.i223.i.i.mrp_pdu_parse_vecattr_event.exit232.i.i_crit_edge: ; preds = %if.end4.i.i223.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_parse_vecattr_event.exit232.i.i

switch.lookup207:                                 ; preds = %if.else.i.i217.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %narrow = add nuw nsw i8 %147, 4
  %switch.offset208 = zext i8 %narrow to i32
  call fastcc void @mrp_attr_event(ptr noundef nonnull %15, ptr noundef nonnull %parent.014.i.i195.i.i, i32 noundef %switch.offset208) #7
  br label %mrp_pdu_parse_vecattr_event.exit232.i.i

mrp_pdu_parse_vecattr_event.exit232.i.i:          ; preds = %switch.lookup207, %if.end4.i.i223.i.i.mrp_pdu_parse_vecattr_event.exit232.i.i_crit_edge, %mrp_attrvalue_inc.exit185.i.i.mrp_pdu_parse_vecattr_event.exit232.i.i_crit_edge
  %call42.i.i = call i32 @skb_copy_bits(ptr noundef %skb.addr.0.i141, i32 noundef %add47.i.i, ptr noundef nonnull %vaevents.i.i, i32 noundef 1) #7
  %cmp43.i.i = icmp slt i32 %call42.i.i, 0
  br i1 %cmp43.i.i, label %mrp_pdu_parse_vecattr_event.exit232.i.i.mrp_pdu_parse_vecattr.exit.thread.i_crit_edge, label %mrp_pdu_parse_vecattr_event.exit232.i.i.if.end46.i.i_crit_edge

mrp_pdu_parse_vecattr_event.exit232.i.i.if.end46.i.i_crit_edge: ; preds = %mrp_pdu_parse_vecattr_event.exit232.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i.i

mrp_pdu_parse_vecattr_event.exit232.i.i.mrp_pdu_parse_vecattr.exit.thread.i_crit_edge: ; preds = %mrp_pdu_parse_vecattr_event.exit232.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_parse_vecattr.exit.thread.i

mrp_pdu_parse_vecattr.exit.thread.i:              ; preds = %mrp_pdu_parse_vecattr_event.exit232.i.i.mrp_pdu_parse_vecattr.exit.thread.i_crit_edge, %if.end46.i.i.mrp_pdu_parse_vecattr.exit.thread.i_crit_edge, %while.body.lr.ph.i.i.mrp_pdu_parse_vecattr.exit.thread.i_crit_edge, %if.end23.i.i.mrp_pdu_parse_vecattr.exit.thread.i_crit_edge, %if.end8.i.i.mrp_pdu_parse_vecattr.exit.thread.i_crit_edge, %skb_header_pointer.exit.i.i.mrp_pdu_parse_vecattr.exit.thread.i_crit_edge, %skb_header_pointer.exit.thread.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %vaevents.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_vah.i.i) #7
  br label %mrp_pdu_parse_msg.exit.thread

mrp_pdu_parse_vecattr.exit.i:                     ; preds = %mrp_pdu_parse_vecattr_event.exit175.i.i.mrp_pdu_parse_vecattr.exit.i_crit_edge, %mrp_pdu_parse_vecattr_event.exit.i.i.mrp_pdu_parse_vecattr.exit.i_crit_edge, %if.end33.i.i.mrp_pdu_parse_vecattr.exit.i_crit_edge
  %offset.6 = phi i32 [ %add38.i.i, %if.end33.i.i.mrp_pdu_parse_vecattr.exit.i_crit_edge ], [ %add47.i.i, %mrp_pdu_parse_vecattr_event.exit.i.i.mrp_pdu_parse_vecattr.exit.i_crit_edge ], [ %add47.i.i, %mrp_pdu_parse_vecattr_event.exit175.i.i.mrp_pdu_parse_vecattr.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %vaevents.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_vah.i.i) #7
  %160 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %len.i.i, align 4
  %cmp22.i = icmp ugt i32 %161, %offset.6
  br i1 %cmp22.i, label %mrp_pdu_parse_vecattr.exit.i.while.body.i_crit_edge, label %mrp_pdu_parse_vecattr.exit.i.mrp_pdu_parse_msg.exit_crit_edge

mrp_pdu_parse_vecattr.exit.i.mrp_pdu_parse_msg.exit_crit_edge: ; preds = %mrp_pdu_parse_vecattr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrp_pdu_parse_msg.exit

mrp_pdu_parse_vecattr.exit.i.while.body.i_crit_edge: ; preds = %mrp_pdu_parse_vecattr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

mrp_pdu_parse_msg.exit.thread:                    ; preds = %mrp_pdu_parse_vecattr.exit.thread.i, %lor.lhs.false14.i.mrp_pdu_parse_msg.exit.thread_crit_edge, %lor.lhs.false.i.mrp_pdu_parse_msg.exit.thread_crit_edge, %if.end.i113.mrp_pdu_parse_msg.exit.thread_crit_edge, %skb_header_pointer.exit.i.mrp_pdu_parse_msg.exit.thread_crit_edge, %skb_header_pointer.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_mh.i) #7
  br label %while.end

mrp_pdu_parse_msg.exit:                           ; preds = %mrp_pdu_parse_vecattr.exit.i.mrp_pdu_parse_msg.exit_crit_edge, %mrp_pdu_parse_end_mark.exit.thread.i, %while.cond.preheader.i.mrp_pdu_parse_msg.exit_crit_edge
  %offset.7 = phi i32 [ %offset.3, %mrp_pdu_parse_end_mark.exit.thread.i ], [ %add.i111, %while.cond.preheader.i.mrp_pdu_parse_msg.exit_crit_edge ], [ %offset.6, %mrp_pdu_parse_vecattr.exit.i.mrp_pdu_parse_msg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_mh.i) #7
  %162 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %len.i.i, align 4
  %cmp79 = icmp ugt i32 %163, %offset.7
  br i1 %cmp79, label %mrp_pdu_parse_msg.exit.while.body_crit_edge, label %mrp_pdu_parse_msg.exit.while.end_crit_edge

mrp_pdu_parse_msg.exit.while.end_crit_edge:       ; preds = %mrp_pdu_parse_msg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

mrp_pdu_parse_msg.exit.while.body_crit_edge:      ; preds = %mrp_pdu_parse_msg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %mrp_pdu_parse_msg.exit.while.end_crit_edge, %mrp_pdu_parse_msg.exit.thread, %mrp_pdu_parse_end_mark.exit.thread, %if.end78.while.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #7
  br label %out

out:                                              ; preds = %while.end, %if.end70.out_crit_edge, %skb_header_pointer.exit.out_crit_edge, %lor.lhs.false.i.i.out_crit_edge, %do.end54.out_crit_edge, %do.end26.out_crit_edge, %skb_share_check.exit.out_crit_edge, %skb_share_check.exit.thread, %entry.out_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %entry.out_crit_edge ], [ null, %skb_share_check.exit.out_crit_edge ], [ %skb.addr.0.i141, %do.end26.out_crit_edge ], [ %skb.addr.0.i141, %do.end54.out_crit_edge ], [ %skb.addr.0.i141, %if.end70.out_crit_edge ], [ %skb.addr.0.i141, %while.end ], [ %skb.addr.0.i141, %skb_header_pointer.exit.out_crit_edge ], [ null, %skb_share_check.exit.thread ], [ %skb.addr.0.i141, %lor.lhs.false.i.i.out_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_ph) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mrp_unregister_application(ptr noundef %appl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pkttype = getelementptr inbounds %struct.mrp_application, ptr %appl, i32 0, i32 2
  tail call void @dev_remove_pack(ptr noundef %pkttype) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mrp_pdu_append_vecattr_event(ptr noundef %app, ptr nocapture noundef readonly %attr, i32 noundef %vaevent) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdu = getelementptr inbounds %struct.mrp_applicant, ptr %app, i32 0, i32 6
  %dev.i = getelementptr inbounds %struct.mrp_applicant, ptr %app, i32 0, i32 1
  %type = getelementptr inbounds %struct.mrp_attr, ptr %attr, i32 0, i32 2
  %len17 = getelementptr inbounds %struct.mrp_attr, ptr %attr, i32 0, i32 3
  %value = getelementptr inbounds %struct.mrp_attr, ptr %attr, i32 0, i32 4
  br label %again

again:                                            ; preds = %queue, %entry
  %0 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdu, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %again.if.end2_crit_edge

again.if.end2_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.then:                                          ; preds = %again
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu.i, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hard_header_len.i, align 2
  %conv.i = zext i16 %7 to i32
  %needed_headroom.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %needed_headroom.i, align 8
  %conv3.i = zext i16 %9 to i32
  %add.i = add nuw nsw i32 %conv3.i, %conv.i
  %and.i = and i32 %add.i, 131056
  %add4.i = add i32 %5, 16
  %add5.i = add i32 %add4.i, %and.i
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add5.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = getelementptr inbounds %struct.anon.44, ptr %call.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %12, align 8
  %14 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %app, align 4
  %pkttype.i = getelementptr inbounds %struct.mrp_application, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %pkttype.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %pkttype.i, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %18 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %protocol.i, align 8
  %19 = load ptr, ptr %dev.i, align 4
  %hard_header_len9.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %hard_header_len9.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hard_header_len9.i, align 2
  %conv10.i = zext i16 %21 to i32
  %needed_headroom12.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 21
  %22 = ptrtoint ptr %needed_headroom12.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %needed_headroom12.i, align 8
  %conv13.i = zext i16 %23 to i32
  %add14.i = add nuw nsw i32 %conv13.i, %conv10.i
  %and15.i = and i32 %add14.i, 131056
  %add16.i = add nuw nsw i32 %and15.i, 16
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %24 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %add16.i
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %26 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %27, i32 %add16.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %28 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 20
  %30 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 19
  %31 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %32 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.i.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool.i.not.i.i, label %mrp_pdu_init.exit, label %do.body3.i.i, !prof !88

do.body3.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #7, !srcloc !93
  unreachable

mrp_pdu_init.exit:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i43.i = getelementptr i8, ptr %add.ptr1.i.i, i32 1
  %34 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr.i43.i, ptr %tail.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %35 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %36, 1
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %37 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %app, align 4
  %version.i = getelementptr inbounds %struct.mrp_application, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %version.i, align 2
  %41 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %add.ptr1.i.i, align 1
  %42 = ptrtoint ptr %pdu to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i.i, ptr %pdu, align 4
  br label %if.end2

if.end2:                                          ; preds = %mrp_pdu_init.exit, %again.if.end2_crit_edge
  %43 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdu, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cb.i, align 4
  %tobool5.not = icmp eq ptr %46, null
  br i1 %tobool5.not, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end2
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 1
  %49 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %50)
  %cmp10.not = icmp eq i8 %48, %50
  br i1 %cmp10.not, label %lor.lhs.false12, label %lor.lhs.false.if.then.i_crit_edge

lor.lhs.false.if.then.i_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %attrlen = getelementptr inbounds %struct.mrp_msg_hdr, ptr %46, i32 0, i32 1
  %51 = ptrtoint ptr %attrlen to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %attrlen, align 1
  %53 = ptrtoint ptr %len17 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %len17, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %54)
  %cmp19.not = icmp eq i8 %52, %54
  br i1 %cmp19.not, label %lor.lhs.false12.if.end29_crit_edge, label %lor.lhs.false12.if.then.i_crit_edge

lor.lhs.false12.if.then.i_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false12.if.end29_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then21:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %type, align 4
  %57 = ptrtoint ptr %len17 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %len17, align 1
  br label %if.end9.i

if.then.i:                                        ; preds = %lor.lhs.false12.if.then.i_crit_edge, %lor.lhs.false.if.then.i_crit_edge
  %59 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %type, align 4
  %61 = ptrtoint ptr %len17 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %len17, align 1
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 7
  %63 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.i.not.i.i.i = icmp eq i32 %64, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.then.i.queue_crit_edge

if.then.i.queue_crit_edge:                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %queue

skb_tailroom.exit.i.i:                            ; preds = %if.then.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 17
  %65 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 16
  %67 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %66 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %68 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i.i, 2
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.queue_crit_edge, label %if.end.i149

skb_tailroom.exit.i.i.queue_crit_edge:            ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %queue

if.end.i149:                                      ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i = getelementptr i8, ptr %68, i32 2
  %69 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 6
  %70 = ptrtoint ptr %len9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len9.i.i.i, align 4
  %add.i.i.i = add i32 %71, 2
  store i32 %add.i.i.i, ptr %len9.i.i.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 0, ptr %68, align 1
  %73 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdu, align 4
  %cb.i30.i = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %cb.i30.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %cb.i30.i, align 4
  %76 = load ptr, ptr %pdu, align 4
  %vah.i = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 3, i32 4
  %77 = ptrtoint ptr %vah.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %vah.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i149, %if.then21
  %78 = phi i8 [ %62, %if.end.i149 ], [ %58, %if.then21 ]
  %79 = phi i8 [ %60, %if.end.i149 ], [ %56, %if.then21 ]
  %80 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pdu, align 4
  %data_len.i.i.i150 = getelementptr inbounds %struct.sk_buff, ptr %81, i32 0, i32 7
  %82 = ptrtoint ptr %data_len.i.i.i150 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %data_len.i.i.i150, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.i.not.i.i151 = icmp eq i32 %83, 0
  br i1 %tobool.i.not.i.i151, label %skb_tailroom.exit.i, label %if.end9.i.queue_crit_edge

if.end9.i.queue_crit_edge:                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %queue

skb_tailroom.exit.i:                              ; preds = %if.end9.i
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %81, i32 0, i32 17
  %84 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %end.i.i, align 4
  %tail.i.i152 = getelementptr inbounds %struct.sk_buff, ptr %81, i32 0, i32 16
  %86 = ptrtoint ptr %tail.i.i152 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tail.i.i152, align 8
  %sub.ptr.lhs.cast.i.i153 = ptrtoint ptr %85 to i32
  %sub.ptr.rhs.cast.i.i154 = ptrtoint ptr %87 to i32
  %sub.ptr.sub.i.i155 = sub i32 %sub.ptr.lhs.cast.i.i153, %sub.ptr.rhs.cast.i.i154
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i.i155)
  %cmp12.i = icmp ult i32 %sub.ptr.sub.i.i155, 2
  br i1 %cmp12.i, label %skb_tailroom.exit.i.queue_crit_edge, label %mrp_pdu_append_msg_hdr.exit

skb_tailroom.exit.i.queue_crit_edge:              ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %queue

mrp_pdu_append_msg_hdr.exit:                      ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i156 = getelementptr i8, ptr %87, i32 2
  %88 = ptrtoint ptr %tail.i.i152 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %add.ptr.i.i156, ptr %tail.i.i152, align 8
  %len9.i.i157 = getelementptr inbounds %struct.sk_buff, ptr %81, i32 0, i32 6
  %89 = ptrtoint ptr %len9.i.i157 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len9.i.i157, align 4
  %add.i.i158 = add i32 %90, 2
  store i32 %add.i.i158, ptr %len9.i.i157, align 4
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %79, ptr %87, align 1
  %attrlen18.i = getelementptr inbounds %struct.mrp_msg_hdr, ptr %87, i32 0, i32 1
  %92 = ptrtoint ptr %attrlen18.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %78, ptr %attrlen18.i, align 1
  %93 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pdu, align 4
  %cb.i35.i = getelementptr inbounds %struct.sk_buff, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %cb.i35.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %87, ptr %cb.i35.i, align 4
  br label %if.end29

if.end29:                                         ; preds = %mrp_pdu_append_msg_hdr.exit, %lor.lhs.false12.if.end29_crit_edge
  %96 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pdu, align 4
  %vah = getelementptr inbounds %struct.sk_buff, ptr %97, i32 0, i32 3, i32 4
  %98 = ptrtoint ptr %vah to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %vah, align 4
  %tobool32.not = icmp eq ptr %99, null
  br i1 %tobool32.not, label %if.end29.if.then41_crit_edge, label %lor.lhs.false33

if.end29.if.then41_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

lor.lhs.false33:                                  ; preds = %if.end29
  %attrvalue = getelementptr inbounds %struct.sk_buff, ptr %97, i32 0, i32 3, i32 8
  %100 = ptrtoint ptr %len17 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %len17, align 1
  %conv38 = zext i8 %101 to i32
  %bcmp = tail call i32 @bcmp(ptr %attrvalue, ptr %value, i32 %conv38) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool40.not = icmp eq i32 %bcmp, 0
  br i1 %tobool40.not, label %lor.lhs.false33.if.end50_crit_edge, label %lor.lhs.false33.if.then41_crit_edge

lor.lhs.false33.if.then41_crit_edge:              ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

lor.lhs.false33.if.end50_crit_edge:               ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then41:                                        ; preds = %lor.lhs.false33.if.then41_crit_edge, %if.end29.if.then41_crit_edge
  %data_len.i.i.i164 = getelementptr inbounds %struct.sk_buff, ptr %97, i32 0, i32 7
  %102 = ptrtoint ptr %data_len.i.i.i164 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %data_len.i.i.i164, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.i.not.i.i165 = icmp eq i32 %103, 0
  br i1 %tobool.i.not.i.i165, label %skb_tailroom.exit.i173, label %if.then41.queue_crit_edge

if.then41.queue_crit_edge:                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %queue

skb_tailroom.exit.i173:                           ; preds = %if.then41
  %104 = ptrtoint ptr %len17 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %len17, align 1
  %end.i.i166 = getelementptr inbounds %struct.sk_buff, ptr %97, i32 0, i32 17
  %106 = ptrtoint ptr %end.i.i166 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %end.i.i166, align 4
  %tail.i.i167 = getelementptr inbounds %struct.sk_buff, ptr %97, i32 0, i32 16
  %108 = ptrtoint ptr %tail.i.i167 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tail.i.i167, align 8
  %sub.ptr.lhs.cast.i.i168 = ptrtoint ptr %107 to i32
  %sub.ptr.rhs.cast.i.i169 = ptrtoint ptr %109 to i32
  %sub.ptr.sub.i.i170 = sub i32 %sub.ptr.lhs.cast.i.i168, %sub.ptr.rhs.cast.i.i169
  %conv.i171 = zext i8 %105 to i32
  %add.i172 = add nuw nsw i32 %conv.i171, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i170, i32 %add.i172)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i.i170, %add.i172
  br i1 %cmp.i, label %skb_tailroom.exit.i173.queue_crit_edge, label %mrp_pdu_append_vecattr_hdr.exit

skb_tailroom.exit.i173.queue_crit_edge:           ; preds = %skb_tailroom.exit.i173
  call void @__sanitizer_cov_trace_pc() #9
  br label %queue

mrp_pdu_append_vecattr_hdr.exit:                  ; preds = %skb_tailroom.exit.i173
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i174 = getelementptr i8, ptr %109, i32 %add.i172
  %110 = ptrtoint ptr %tail.i.i167 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %add.ptr.i.i174, ptr %tail.i.i167, align 8
  %len9.i.i175 = getelementptr inbounds %struct.sk_buff, ptr %97, i32 0, i32 6
  %111 = ptrtoint ptr %len9.i.i175 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %len9.i.i175, align 4
  %add.i.i176 = add i32 %112, %add.i172
  store i32 %add.i.i176, ptr %len9.i.i175, align 4
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 2)
  store i16 0, ptr %109, align 1
  %firstattrvalue6.i = getelementptr inbounds %struct.mrp_vecattr_hdr, ptr %109, i32 0, i32 1
  %114 = call ptr @memcpy(ptr %firstattrvalue6.i, ptr %value, i32 %conv.i171)
  %115 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pdu, align 4
  %vah10.i = getelementptr inbounds %struct.sk_buff, ptr %116, i32 0, i32 3, i32 4
  %117 = ptrtoint ptr %vah10.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %109, ptr %vah10.i, align 4
  %118 = load ptr, ptr %pdu, align 4
  %attrvalue.i = getelementptr inbounds %struct.sk_buff, ptr %118, i32 0, i32 3, i32 8
  %119 = call ptr @memcpy(ptr %attrvalue.i, ptr %value, i32 %conv.i171)
  br label %if.end50

if.end50:                                         ; preds = %mrp_pdu_append_vecattr_hdr.exit, %lor.lhs.false33.if.end50_crit_edge
  %120 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pdu, align 4
  %vah53 = getelementptr inbounds %struct.sk_buff, ptr %121, i32 0, i32 3, i32 4
  %122 = ptrtoint ptr %vah53 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %vah53, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_loadN_noabort(i32 %124, i32 2)
  %125 = load i16, ptr %123, align 1
  %126 = urem i16 %125, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %126)
  %tobool56.not = icmp eq i16 %126, 0
  br i1 %tobool56.not, label %if.then57, label %if.end68

if.then57:                                        ; preds = %if.end50
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %121, i32 0, i32 7
  %127 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool.i.not.i = icmp eq i32 %128, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %if.then57.queue_crit_edge

if.then57.queue_crit_edge:                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %queue

skb_tailroom.exit:                                ; preds = %if.then57
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %121, i32 0, i32 17
  %129 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %121, i32 0, i32 16
  %131 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %tail.i, align 8
  %cmp60 = icmp eq ptr %130, %132
  br i1 %cmp60, label %skb_tailroom.exit.queue_crit_edge, label %if.end68.thread

skb_tailroom.exit.queue_crit_edge:                ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %queue

if.end68.thread:                                  ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #9
  %tail.i.le = getelementptr inbounds %struct.sk_buff, ptr %121, i32 0, i32 16
  %133 = ptrtoint ptr %tail.i.le to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %tail.i.le, align 8
  %add.ptr.i = getelementptr i8, ptr %134, i32 1
  store ptr %add.ptr.i, ptr %tail.i.le, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %121, i32 0, i32 6
  %135 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %len9.i, align 4
  %add.i183 = add i32 %136, 1
  store i32 %add.i183, ptr %len9.i, align 4
  %137 = trunc i32 %vaevent to i8
  %conv70 = mul i8 %137, 36
  %138 = ptrtoint ptr %134 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv70, ptr %134, align 1
  br label %do.body97

if.end68:                                         ; preds = %if.end50
  %tail.i184 = getelementptr inbounds %struct.sk_buff, ptr %121, i32 0, i32 16
  %139 = ptrtoint ptr %tail.i184 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %tail.i184, align 8
  %add.ptr = getelementptr i8, ptr %140, i32 -1
  %conv69 = zext i16 %126 to i32
  %141 = zext i32 %conv69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %conv69, label %do.end [
    i32 2, label %sw.bb75
    i32 1, label %sw.bb71
  ]

sw.bb71:                                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %142 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %add.ptr, align 1
  %144 = trunc i32 %vaevent to i8
  %145 = mul i8 %144, 6
  %conv74 = add i8 %143, %145
  store i8 %conv74, ptr %add.ptr, align 1
  br label %do.body97

sw.bb75:                                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %146 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %add.ptr, align 1
  %148 = trunc i32 %vaevent to i8
  %conv78 = add i8 %147, %148
  store i8 %conv78, ptr %add.ptr, align 1
  br label %do.body97

do.end:                                           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 464, i32 noundef 9, ptr noundef null) #7
  br label %do.body97

do.body97:                                        ; preds = %do.end, %sw.bb75, %sw.bb71, %if.end68.thread
  %149 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pdu, align 4
  %vah101 = getelementptr inbounds %struct.sk_buff, ptr %150, i32 0, i32 3, i32 4
  %151 = ptrtoint ptr %vah101 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %vah101, align 4
  %inc = add i16 %125, 1
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_storeN_noabort(i32 %153, i32 2)
  store i16 %inc, ptr %152, align 1
  %154 = load ptr, ptr %pdu, align 4
  %attrvalue108 = getelementptr inbounds %struct.sk_buff, ptr %154, i32 0, i32 3, i32 8
  %155 = ptrtoint ptr %len17 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %len17, align 1
  %157 = zext i8 %156 to i32
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %do.body97
  %indvars.iv.i = phi i32 [ %158, %land.rhs.i.while.cond.i_crit_edge ], [ %157, %do.body97 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv.i)
  %cmp.not.i = icmp eq i32 %indvars.iv.i, 0
  br i1 %cmp.not.i, label %while.cond.i.cleanup_crit_edge, label %land.rhs.i

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.i:                                       ; preds = %while.cond.i
  %158 = add nsw i32 %indvars.iv.i, -1
  %arrayidx.i = getelementptr i8, ptr %attrvalue108, i32 %158
  %159 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx.i, align 1
  %inc.i = add i8 %160, 1
  store i8 %inc.i, ptr %arrayidx.i, align 1
  %tobool.not.i187 = icmp eq i8 %inc.i, 0
  br i1 %tobool.not.i187, label %land.rhs.i.while.cond.i_crit_edge, label %land.rhs.i.cleanup_crit_edge

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

queue:                                            ; preds = %skb_tailroom.exit.queue_crit_edge, %if.then57.queue_crit_edge, %skb_tailroom.exit.i173.queue_crit_edge, %if.then41.queue_crit_edge, %skb_tailroom.exit.i.queue_crit_edge, %if.end9.i.queue_crit_edge, %skb_tailroom.exit.i.i.queue_crit_edge, %if.then.i.queue_crit_edge
  tail call fastcc void @mrp_pdu_queue(ptr noundef %app)
  br label %again

cleanup:                                          ; preds = %land.rhs.i.cleanup_crit_edge, %while.cond.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.cond.i.cleanup_crit_edge ], [ 0, %land.rhs.i.cleanup_crit_edge ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !16, !17, !19, !21, !23, !25, !27, !29, !30, !32, !34, !35, !37, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !56, !58, !59, !61, !63, !65, !67, !68, !70, !72, !74, !75, !77}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__param_mrp_join_time, !1, !"__param_mrp_join_time", i1 false, i1 false}
!1 = !{!"../net/802/mrp.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_mrp_join_timetype342, !1, !"__UNIQUE_ID_mrp_join_timetype342", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_mrp_join_time343, !4, !"__UNIQUE_ID_mrp_join_time343", i1 false, i1 false}
!4 = !{!"../net/802/mrp.c", i32 23, i32 1}
!5 = !{ptr @__param_mrp_periodic_time, !6, !"__param_mrp_periodic_time", i1 false, i1 false}
!6 = !{!"../net/802/mrp.c", i32 26, i32 1}
!7 = !{ptr @__UNIQUE_ID_mrp_periodic_timetype344, !6, !"__UNIQUE_ID_mrp_periodic_timetype344", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_mrp_periodic_time345, !9, !"__UNIQUE_ID_mrp_periodic_time345", i1 false, i1 false}
!9 = !{!"../net/802/mrp.c", i32 27, i32 1}
!10 = !{ptr @__UNIQUE_ID_file346, !11, !"__UNIQUE_ID_file346", i1 false, i1 false}
!11 = !{!"../net/802/mrp.c", i32 29, i32 1}
!12 = !{ptr @__UNIQUE_ID_license347, !11, !"__UNIQUE_ID_license347", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/802/mrp.c", i32 533, i32 26}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/802/mrp.c", i32 534, i32 30}
!19 = !{ptr @__ksymtab_mrp_request_join, !20, !"__ksymtab_mrp_request_join", i1 false, i1 false}
!20 = !{!"../net/802/mrp.c", i32 552, i32 1}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/802/mrp.c", i32 558, i32 26}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../net/802/mrp.c", i32 559, i32 30}
!25 = !{ptr @__ksymtab_mrp_request_leave, !26, !"__ksymtab_mrp_request_leave", i1 false, i1 false}
!26 = !{!"../net/802/mrp.c", i32 576, i32 1}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../net/802/mrp.c", i32 855, i32 2}
!29 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../net/802/mrp.c", i32 857, i32 7}
!32 = !{ptr @mrp_init_applicant.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../net/802/mrp.c", i32 875, i32 2}
!34 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mrp_init_applicant.__key.6, !36, !"__key", i1 false, i1 false}
!36 = !{!"../net/802/mrp.c", i32 878, i32 2}
!37 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mrp_init_applicant.__key.8, !39, !"__key", i1 false, i1 false}
!39 = !{!"../net/802/mrp.c", i32 880, i32 2}
!40 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @__ksymtab_mrp_init_applicant, !42, !"__ksymtab_mrp_init_applicant", i1 false, i1 false}
!42 = !{!"../net/802/mrp.c", i32 891, i32 1}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../net/802/mrp.c", i32 895, i32 26}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../net/802/mrp.c", i32 896, i32 30}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../net/802/mrp.c", i32 899, i32 2}
!49 = !{ptr @__ksymtab_mrp_uninit_applicant, !50, !"__ksymtab_mrp_uninit_applicant", i1 false, i1 false}
!50 = !{!"../net/802/mrp.c", i32 921, i32 1}
!51 = !{ptr @__ksymtab_mrp_register_application, !52, !"__ksymtab_mrp_register_application", i1 false, i1 false}
!52 = !{!"../net/802/mrp.c", i32 929, i32 1}
!53 = !{ptr @__ksymtab_mrp_unregister_application, !54, !"__ksymtab_mrp_unregister_application", i1 false, i1 false}
!54 = !{!"../net/802/mrp.c", i32 935, i32 1}
!55 = !{ptr @__param_str_mrp_join_time, !1, !"__param_str_mrp_join_time", i1 false, i1 false}
!56 = !{ptr @mrp_join_time, !57, !"mrp_join_time", i1 false, i1 false}
!57 = !{!"../net/802/mrp.c", i32 21, i32 21}
!58 = !{ptr @__param_str_mrp_periodic_time, !6, !"__param_str_mrp_periodic_time", i1 false, i1 false}
!59 = !{ptr @mrp_periodic_time, !60, !"mrp_periodic_time", i1 false, i1 false}
!60 = !{!"../net/802/mrp.c", i32 25, i32 21}
!61 = !{ptr @mrp_applicant_state_table, !62, !"mrp_applicant_state_table", i1 false, i1 false}
!62 = !{!"../net/802/mrp.c", i32 32, i32 1}
!63 = !{ptr @mrp_tx_action_table, !64, !"mrp_tx_action_table", i1 false, i1 false}
!64 = !{!"../net/802/mrp.c", i32 201, i32 1}
!65 = !{ptr @skb_queue_head_init.__key, !66, !"__key", i1 false, i1 false}
!66 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!67 = !{ptr @.str.11, !66, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../net/802/mrp.c", i32 839, i32 26}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../net/802/mrp.c", i32 843, i32 7}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../net/802/mrp.c", i32 798, i32 9}
!74 = !{ptr @.str.13, !73, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../net/802/mrp.c", i32 801, i32 8}
!77 = distinct !{null, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/skbuff.h", i32 1810, i32 2}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{!"branch_weights", i32 2000, i32 1}
!89 = !{i64 2156059370}
!90 = !{i64 2156077234}
!91 = !{!"auto-init"}
!92 = !{!"branch_weights", i32 1, i32 2000}
!93 = !{i64 2154584891, i64 2154585379, i64 2154584928, i64 2154584984, i64 2154585018, i64 2154585042, i64 2154585083, i64 2154585104, i64 2154585132, i64 2154585166}
