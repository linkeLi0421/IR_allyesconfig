; ModuleID = '/llk/IR_all_yes/net/802/garp.c_pt.bc'
source_filename = "../net/802/garp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+garp_request_join\22, \22a\22\09"
module asm "\09.weak\09__crc_garp_request_join\09\09\09\09"
module asm "\09.long\09__crc_garp_request_join\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_garp_request_join:\09\09\09\09\09"
module asm "\09.asciz \09\22garp_request_join\22\09\09\09\09\09"
module asm "__kstrtabns_garp_request_join:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+garp_request_leave\22, \22a\22\09"
module asm "\09.weak\09__crc_garp_request_leave\09\09\09\09"
module asm "\09.long\09__crc_garp_request_leave\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_garp_request_leave:\09\09\09\09\09"
module asm "\09.asciz \09\22garp_request_leave\22\09\09\09\09\09"
module asm "__kstrtabns_garp_request_leave:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+garp_init_applicant\22, \22a\22\09"
module asm "\09.weak\09__crc_garp_init_applicant\09\09\09\09"
module asm "\09.long\09__crc_garp_init_applicant\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_garp_init_applicant:\09\09\09\09\09"
module asm "\09.asciz \09\22garp_init_applicant\22\09\09\09\09\09"
module asm "__kstrtabns_garp_init_applicant:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+garp_uninit_applicant\22, \22a\22\09"
module asm "\09.weak\09__crc_garp_uninit_applicant\09\09\09\09"
module asm "\09.long\09__crc_garp_uninit_applicant\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_garp_uninit_applicant:\09\09\09\09\09"
module asm "\09.asciz \09\22garp_uninit_applicant\22\09\09\09\09\09"
module asm "__kstrtabns_garp_uninit_applicant:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+garp_register_application\22, \22a\22\09"
module asm "\09.weak\09__crc_garp_register_application\09\09\09\09"
module asm "\09.long\09__crc_garp_register_application\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_garp_register_application:\09\09\09\09\09"
module asm "\09.asciz \09\22garp_register_application\22\09\09\09\09\09"
module asm "__kstrtabns_garp_register_application:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+garp_unregister_application\22, \22a\22\09"
module asm "\09.weak\09__crc_garp_unregister_application\09\09\09\09"
module asm "\09.long\09__crc_garp_unregister_application\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_garp_unregister_application:\09\09\09\09\09"
module asm "\09.asciz \09\22garp_unregister_application\22\09\09\09\09\09"
module asm "__kstrtabns_garp_unregister_application:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.garp_state_trans = type { i8, i8 }
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
%struct.garp_applicant = type { ptr, ptr, %struct.timer_list, %struct.spinlock, %struct.sk_buff_head, ptr, %struct.rb_root, %struct.callback_head }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.garp_attr = type { %struct.rb_node, i32, i8, i8, [0 x i8] }
%struct.garp_application = type { i32, i32, %struct.stp_proto }
%struct.stp_proto = type { [6 x i8], ptr, ptr }
%struct.garp_port = type { [1 x ptr], %struct.callback_head }
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
%struct.llc_pdu_un = type { i8, i8, i8 }
%struct.garp_attr_hdr = type { i8, i8, [0 x i8] }

@__param_str_garp_join_time = internal constant [20 x i8] c"garp.garp_join_time\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@garp_join_time = internal global i32 200, section ".data..read_mostly", align 4
@__param_garp_join_time = internal constant %struct.kernel_param { ptr @__param_str_garp_join_time, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @garp_join_time } }, section "__param", align 4
@__UNIQUE_ID_garp_join_timetype352 = internal constant [34 x i8] c"garp.parmtype=garp_join_time:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_garp_join_time353 = internal constant [57 x i8] c"garp.parm=garp_join_time:Join time in ms (default 200ms)\00", section ".modinfo", align 1
@__UNIQUE_ID_file354 = internal constant [23 x i8] c"garp.file=net/802/garp\00", section ".modinfo", align 1
@__UNIQUE_ID_license355 = internal constant [17 x i8] c"garp.license=GPL\00", section ".modinfo", align 1
@garp_request_join.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/802/garp.c\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@garp_request_join.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_garp_request_join = external dso_local constant [0 x i8], align 1
@__kstrtabns_garp_request_join = external dso_local constant [0 x i8], align 1
@__ksymtab_garp_request_join = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @garp_request_join to i32), ptr @__kstrtab_garp_request_join, ptr @__kstrtabns_garp_request_join }, section "___ksymtab_gpl+garp_request_join", align 4
@garp_request_leave.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@garp_request_leave.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_garp_request_leave = external dso_local constant [0 x i8], align 1
@__kstrtabns_garp_request_leave = external dso_local constant [0 x i8], align 1
@__ksymtab_garp_request_leave = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @garp_request_leave to i32), ptr @__kstrtab_garp_request_leave, ptr @__kstrtabns_garp_request_leave }, section "___ksymtab_gpl+garp_request_leave", align 4
@garp_init_applicant.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@garp_init_applicant.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@garp_init_applicant.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&app->lock\00", [21 x i8] zeroinitializer }, align 32
@garp_init_applicant.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&app->join_timer)\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_garp_init_applicant = external dso_local constant [0 x i8], align 1
@__kstrtabns_garp_init_applicant = external dso_local constant [0 x i8], align 1
@__ksymtab_garp_init_applicant = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @garp_init_applicant to i32), ptr @__kstrtab_garp_init_applicant, ptr @__kstrtabns_garp_init_applicant }, section "___ksymtab_gpl+garp_init_applicant", align 4
@garp_uninit_applicant.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@garp_uninit_applicant.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@garp_uninit_applicant.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_garp_uninit_applicant = external dso_local constant [0 x i8], align 1
@__kstrtabns_garp_uninit_applicant = external dso_local constant [0 x i8], align 1
@__ksymtab_garp_uninit_applicant = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @garp_uninit_applicant to i32), ptr @__kstrtab_garp_uninit_applicant, ptr @__kstrtabns_garp_uninit_applicant }, section "___ksymtab_gpl+garp_uninit_applicant", align 4
@__kstrtab_garp_register_application = external dso_local constant [0 x i8], align 1
@__kstrtabns_garp_register_application = external dso_local constant [0 x i8], align 1
@__ksymtab_garp_register_application = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @garp_register_application to i32), ptr @__kstrtab_garp_register_application, ptr @__kstrtabns_garp_register_application }, section "___ksymtab_gpl+garp_register_application", align 4
@__kstrtab_garp_unregister_application = external dso_local constant [0 x i8], align 1
@__kstrtabns_garp_unregister_application = external dso_local constant [0 x i8], align 1
@__ksymtab_garp_unregister_application = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @garp_unregister_application to i32), ptr @__kstrtab_garp_unregister_application, ptr @__kstrtabns_garp_unregister_application }, section "___ksymtab_gpl+garp_unregister_application", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@garp_applicant_state_table = internal constant { [11 x [8 x %struct.garp_state_trans]], [48 x i8] } { [11 x [8 x %struct.garp_state_trans]] [[8 x %struct.garp_state_trans] zeroinitializer, [8 x %struct.garp_state_trans] [%struct.garp_state_trans zeroinitializer, %struct.garp_state_trans { i8 4, i8 0 }, %struct.garp_state_trans { i8 2, i8 0 }, %struct.garp_state_trans { i8 1, i8 0 }, %struct.garp_state_trans { i8 1, i8 0 }, %struct.garp_state_trans { i8 1, i8 0 }, %struct.garp_state_trans { i8 5, i8 0 }, %struct.garp_state_trans { i8 2, i8 1 }], [8 x %struct.garp_state_trans] [%struct.garp_state_trans zeroinitializer, %struct.garp_state_trans { i8 4, i8 0 }, %struct.garp_state_trans { i8 3, i8 0 }, %struct.garp_state_trans { i8 1, i8 0 }, %struct.garp_state_trans { i8 1, i8 0 }, %struct.garp_state_trans { i8 1, i8 0 }, %struct.garp_state_trans { i8 5, i8 0 }, %struct.garp_state_trans { i8 3, i8 1 }], [8 x %struct.garp_state_trans] [%struct.garp_state_trans zeroinitializer, %struct.garp_state_trans { i8 4, i8 0 }, %struct.garp_state_trans { i8 3, i8 0 }, %struct.garp_state_trans { i8 1, i8 0 }, %struct.garp_state_trans { i8 1, i8 0 }, %struct.garp_state_trans { i8 5, i8 0 }, %struct.garp_state_trans { i8 5, i8 0 }, %struct.garp_state_trans zeroinitializer], [8 x %struct.garp_state_trans] [%struct.garp_state_trans { i8 1, i8 0 }, %struct.garp_state_trans zeroinitializer, %struct.garp_state_trans { i8 4, i8 0 }, %struct.garp_state_trans { i8 8, i8 0 }, %struct.garp_state_trans { i8 4, i8 0 }, %struct.garp_state_trans { i8 4, i8 0 }, %struct.garp_state_trans { i8 8, i8 0 }, %struct.garp_state_trans { i8 8, i8 2 }], [8 x %struct.garp_state_trans] [%struct.garp_state_trans zeroinitializer, %struct.garp_state_trans { i8 8, i8 0 }, %struct.garp_state_trans { i8 6, i8 0 }, %struct.garp_state_trans { i8 5, i8 0 }, %struct.garp_state_trans { i8 5, i8 0 }, %struct.garp_state_trans { i8 5, i8 0 }, %struct.garp_state_trans { i8 5, i8 0 }, %struct.garp_state_trans { i8 2, i8 1 }], [8 x %struct.garp_state_trans] [%struct.garp_state_trans zeroinitializer, %struct.garp_state_trans { i8 9, i8 0 }, %struct.garp_state_trans { i8 7, i8 0 }, %struct.garp_state_trans { i8 5, i8 0 }, %struct.garp_state_trans { i8 5, i8 0 }, %struct.garp_state_trans { i8 5, i8 0 }, %struct.garp_state_trans { i8 5, i8 0 }, %struct.garp_state_trans { i8 3, i8 1 }], [8 x %struct.garp_state_trans] [%struct.garp_state_trans zeroinitializer, %struct.garp_state_trans { i8 10, i8 0 }, %struct.garp_state_trans { i8 7, i8 0 }, %struct.garp_state_trans { i8 5, i8 0 }, %struct.garp_state_trans { i8 5, i8 0 }, %struct.garp_state_trans { i8 5, i8 0 }, %struct.garp_state_trans { i8 5, i8 0 }, %struct.garp_state_trans zeroinitializer], [8 x %struct.garp_state_trans] [%struct.garp_state_trans { i8 5, i8 0 }, %struct.garp_state_trans zeroinitializer, %struct.garp_state_trans { i8 9, i8 0 }, %struct.garp_state_trans { i8 8, i8 0 }, %struct.garp_state_trans { i8 8, i8 0 }, %struct.garp_state_trans { i8 8, i8 0 }, %struct.garp_state_trans { i8 8, i8 0 }, %struct.garp_state_trans zeroinitializer], [8 x %struct.garp_state_trans] [%struct.garp_state_trans { i8 6, i8 0 }, %struct.garp_state_trans zeroinitializer, %struct.garp_state_trans { i8 10, i8 0 }, %struct.garp_state_trans { i8 8, i8 0 }, %struct.garp_state_trans { i8 8, i8 0 }, %struct.garp_state_trans { i8 8, i8 0 }, %struct.garp_state_trans { i8 8, i8 0 }, %struct.garp_state_trans zeroinitializer], [8 x %struct.garp_state_trans] [%struct.garp_state_trans { i8 7, i8 0 }, %struct.garp_state_trans zeroinitializer, %struct.garp_state_trans { i8 10, i8 0 }, %struct.garp_state_trans { i8 8, i8 0 }, %struct.garp_state_trans { i8 8, i8 0 }, %struct.garp_state_trans { i8 8, i8 0 }, %struct.garp_state_trans { i8 8, i8 0 }, %struct.garp_state_trans zeroinitializer]], [48 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@garp_release_port.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@garp_release_port.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@garp_pdu_rcv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@garp_pdu_rcv.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.13 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 5]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 358, i32 27 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 574, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 594, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 597, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [27 x i8] c"garp_applicant_state_table\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 29, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 1984, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [18 x i8] c"../net/802/garp.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 519, i32 9 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_file354, ptr @__UNIQUE_ID_garp_join_time353, ptr @__UNIQUE_ID_garp_join_timetype352, ptr @__UNIQUE_ID_license355, ptr @__ksymtab_garp_init_applicant, ptr @__ksymtab_garp_register_application, ptr @__ksymtab_garp_request_join, ptr @__ksymtab_garp_request_leave, ptr @__ksymtab_garp_uninit_applicant, ptr @__ksymtab_garp_unregister_application, ptr @__param_garp_join_time, ptr @.str, ptr @.str.1, ptr @.str.4, ptr @garp_init_applicant.__key, ptr @.str.5, ptr @garp_init_applicant.__key.6, ptr @.str.7, ptr @garp_applicant_state_table, ptr @skb_queue_head_init.__key, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @garp_init_applicant.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @garp_init_applicant.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @garp_applicant_state_table to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @garp_request_join(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %appl, ptr nocapture noundef readonly %data, i8 noundef zeroext %len, i8 noundef zeroext %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #5
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b32 = load i1, ptr @garp_request_join.__warned, align 1
  br i1 %.b32, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @garp_request_join.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 358, ptr noundef nonnull @.str.1) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %garp_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 131
  %0 = ptrtoint ptr %garp_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %garp_port, align 4
  %call5 = tail call zeroext i1 @lockdep_rtnl_is_held() #5
  br i1 %call5, label %do.end.do.end14_crit_edge, label %land.lhs.true6

do.end.do.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

land.lhs.true6:                                   ; preds = %do.end
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.do.end14_crit_edge, label %land.lhs.true9

land.lhs.true6.do.end14_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b3031 = load i1, ptr @garp_request_join.__warned.2, align 1
  br i1 %.b3031, label %land.lhs.true9.do.end14_crit_edge, label %if.then11

land.lhs.true9.do.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @garp_request_join.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 359, ptr noundef nonnull @.str.1) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true9.do.end14_crit_edge, %land.lhs.true6.do.end14_crit_edge, %do.end.do.end14_crit_edge
  %2 = ptrtoint ptr %appl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %appl, align 4
  %arrayidx = getelementptr [1 x ptr], ptr %1, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %lock = getelementptr inbounds %struct.garp_applicant, ptr %5, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %gid.i = getelementptr inbounds %struct.garp_applicant, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gid.i, align 4
  %tobool.not43.i = icmp eq ptr %7, null
  br i1 %tobool.not43.i, label %entry.while.end_crit_edge.i, label %while.body.lr.ph.i

entry.while.end_crit_edge.i:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  %.pre.i = zext i8 %len to i32
  br label %if.end8.i.i

while.body.lr.ph.i:                               ; preds = %do.end14
  %conv2.i.i = zext i8 %type to i32
  %conv8.i.i = zext i8 %len to i32
  br label %while.body.i

while.body.i:                                     ; preds = %if.end4.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %8 = phi ptr [ %7, %while.body.lr.ph.i ], [ %14, %if.end4.i.while.body.i_crit_edge ]
  %type1.i.i = getelementptr inbounds %struct.garp_attr, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %type1.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %type)
  %cmp.not.i.i = icmp eq i8 %10, %type
  br i1 %cmp.not.i.i, label %if.end.i39.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i = zext i8 %10 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv2.i.i
  br label %garp_attr_cmp.exit.i

if.end.i39.i:                                     ; preds = %while.body.i
  %dlen.i.i = getelementptr inbounds %struct.garp_attr, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %dlen.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dlen.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %len)
  %cmp9.not.i.i = icmp eq i8 %12, %len
  br i1 %cmp9.not.i.i, label %if.end16.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv7.i.i = zext i8 %12 to i32
  %sub15.i.i = sub nsw i32 %conv7.i.i, %conv8.i.i
  br label %garp_attr_cmp.exit.i

if.end16.i.i:                                     ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #7
  %data17.i.i = getelementptr inbounds %struct.garp_attr, ptr %8, i32 0, i32 4
  %call.i.i = tail call i32 @memcmp(ptr noundef %data17.i.i, ptr noundef %data, i32 noundef %conv8.i.i) #8
  br label %garp_attr_cmp.exit.i

garp_attr_cmp.exit.i:                             ; preds = %if.end16.i.i, %if.then11.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %sub15.i.i, %if.then11.i.i ], [ %call.i.i, %if.end16.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp sgt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %garp_attr_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 2
  br label %if.end4.i

if.else.i:                                        ; preds = %garp_attr_cmp.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp1.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i.if.end21_crit_edge

if.else.i.if.end21_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %phi.cast.le.i = ptrtoint ptr %8 to i32
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %entry.while.end_crit_edge.i
  %conv.pre-phi.i = phi i32 [ %.pre.i, %entry.while.end_crit_edge.i ], [ %conv8.i.i, %while.cond.while.end_crit_edge.i ]
  %p.0.lcssa.i = phi ptr [ %gid.i, %entry.while.end_crit_edge.i ], [ %p.1.i, %while.cond.while.end_crit_edge.i ]
  %parent.0.lcssa.i = phi i32 [ 0, %entry.while.end_crit_edge.i ], [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ]
  %add.i = add nuw nsw i32 %conv.pre-phi.i, 20
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 2592) #9
  %tobool6.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool6.not.i, label %if.end8.i.i.cleanup_crit_edge, label %if.end8.i

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8.i:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %state.i = getelementptr inbounds %struct.garp_attr, ptr %call9.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %state.i, align 4
  %type9.i = getelementptr inbounds %struct.garp_attr, ptr %call9.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %type9.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %type, ptr %type9.i, align 16
  %dlen.i = getelementptr inbounds %struct.garp_attr, ptr %call9.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %dlen.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %len, ptr %dlen.i, align 1
  %data10.i = getelementptr inbounds %struct.garp_attr, ptr %call9.i.i, i32 0, i32 4
  %18 = call ptr @memcpy(ptr %data10.i, ptr %data, i32 %conv.pre-phi.i)
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
  tail call void @rb_insert_color(ptr noundef nonnull %call9.i.i, ptr noundef %gid.i) #5
  br label %if.end21

if.end21:                                         ; preds = %if.end8.i, %if.else.i.if.end21_crit_edge
  %retval.0.i.ph = phi ptr [ %call9.i.i, %if.end8.i ], [ %8, %if.else.i.if.end21_crit_edge ]
  tail call fastcc void @garp_attr_event(ptr noundef %5, ptr noundef nonnull %retval.0.i.ph, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end8.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @garp_attr_event(ptr noundef %app, ptr noundef %attr, i32 noundef %event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.garp_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 4
  %arrayidx2 = getelementptr [11 x [8 x %struct.garp_state_trans]], ptr @garp_applicant_state_table, i32 0, i32 %1, i32 %event
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %action = getelementptr [11 x [8 x %struct.garp_state_trans]], ptr @garp_applicant_state_table, i32 0, i32 %1, i32 %event, i32 1
  %4 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %action, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %do.end [
    i8 0, label %if.end.sw.epilog_crit_edge
    i8 1, label %sw.bb
    i8 2, label %sw.bb13
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %call = tail call fastcc i32 @garp_pdu_append_attr(ptr noundef %app, ptr noundef %attr, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp slt i32 %call, 0
  br i1 %cmp9, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = tail call fastcc i32 @garp_pdu_append_attr(ptr noundef %app, ptr noundef %attr, i32 noundef 3)
  %gid.i = getelementptr inbounds %struct.garp_applicant, ptr %app, i32 0, i32 6
  tail call void @rb_erase(ptr noundef %attr, ptr noundef %gid.i) #5
  tail call void @kfree(ptr noundef %attr) #5
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %7 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %state1, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb13, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @garp_request_leave(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %appl, ptr nocapture noundef readonly %data, i8 noundef zeroext %len, i8 noundef zeroext %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #5
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b32 = load i1, ptr @garp_request_leave.__warned, align 1
  br i1 %.b32, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @garp_request_leave.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 378, ptr noundef nonnull @.str.1) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %garp_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 131
  %0 = ptrtoint ptr %garp_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %garp_port, align 4
  %call5 = tail call zeroext i1 @lockdep_rtnl_is_held() #5
  br i1 %call5, label %do.end.do.end14_crit_edge, label %land.lhs.true6

do.end.do.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

land.lhs.true6:                                   ; preds = %do.end
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.do.end14_crit_edge, label %land.lhs.true9

land.lhs.true6.do.end14_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b3031 = load i1, ptr @garp_request_leave.__warned.3, align 1
  br i1 %.b3031, label %land.lhs.true9.do.end14_crit_edge, label %if.then11

land.lhs.true9.do.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @garp_request_leave.__warned.3, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 379, ptr noundef nonnull @.str.1) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true9.do.end14_crit_edge, %land.lhs.true6.do.end14_crit_edge, %do.end.do.end14_crit_edge
  %2 = ptrtoint ptr %appl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %appl, align 4
  %arrayidx = getelementptr [1 x ptr], ptr %1, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %lock = getelementptr inbounds %struct.garp_applicant, ptr %5, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %gid.i = getelementptr inbounds %struct.garp_applicant, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %parent.012.i = load ptr, ptr %gid.i, align 4
  %tobool.not13.i = icmp eq ptr %parent.012.i, null
  br i1 %tobool.not13.i, label %do.end14.cleanup_crit_edge, label %while.body.lr.ph.i

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %do.end14
  %conv2.i.i = zext i8 %type to i32
  %conv8.i.i = zext i8 %len to i32
  br label %while.body.i

while.body.i:                                     ; preds = %if.end4.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %parent.014.i = phi ptr [ %parent.012.i, %while.body.lr.ph.i ], [ %parent.0.i, %if.end4.i.while.body.i_crit_edge ]
  %type1.i.i = getelementptr inbounds %struct.garp_attr, ptr %parent.014.i, i32 0, i32 2
  %7 = ptrtoint ptr %type1.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %type)
  %cmp.not.i.i = icmp eq i8 %8, %type
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i = zext i8 %8 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv2.i.i
  br label %garp_attr_cmp.exit.i

if.end.i.i:                                       ; preds = %while.body.i
  %dlen.i.i = getelementptr inbounds %struct.garp_attr, ptr %parent.014.i, i32 0, i32 3
  %9 = ptrtoint ptr %dlen.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dlen.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %len)
  %cmp9.not.i.i = icmp eq i8 %10, %len
  br i1 %cmp9.not.i.i, label %if.end16.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv7.i.i = zext i8 %10 to i32
  %sub15.i.i = sub nsw i32 %conv7.i.i, %conv8.i.i
  br label %garp_attr_cmp.exit.i

if.end16.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %data17.i.i = getelementptr inbounds %struct.garp_attr, ptr %parent.014.i, i32 0, i32 4
  %call.i.i = tail call i32 @memcmp(ptr noundef %data17.i.i, ptr noundef %data, i32 noundef %conv8.i.i) #8
  br label %garp_attr_cmp.exit.i

garp_attr_cmp.exit.i:                             ; preds = %if.end16.i.i, %if.then11.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %sub15.i.i, %if.then11.i.i ], [ %call.i.i, %if.end16.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp sgt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %garp_attr_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %parent.014.i, i32 0, i32 2
  br label %if.end4.i

if.else.i:                                        ; preds = %garp_attr_cmp.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp1.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end21

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %parent.014.i, i32 0, i32 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.then.i
  %parent.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then2.i ]
  %11 = ptrtoint ptr %parent.1.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %parent.0.i = load ptr, ptr %parent.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %parent.0.i, null
  br i1 %tobool.not.i, label %if.end4.i.cleanup_crit_edge, label %if.end4.i.while.body.i_crit_edge

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @garp_attr_event(ptr noundef %5, ptr noundef nonnull %parent.014.i, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end4.i.cleanup_crit_edge, %do.end14.cleanup_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @garp_init_applicant(ptr noundef %dev, ptr noundef %appl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b136 = load i1, ptr @garp_init_applicant.__already_done, align 1
  br i1 %.b136, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !73

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @garp_init_applicant.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 574, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 574) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call38 = tail call zeroext i1 @lockdep_rtnl_is_held() #5
  br i1 %call38, label %if.end29.do.end46_crit_edge, label %land.lhs.true

if.end29.do.end46_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end46

land.lhs.true:                                    ; preds = %if.end29
  %call39 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true.do.end46_crit_edge, label %land.lhs.true41

land.lhs.true.do.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end46

land.lhs.true41:                                  ; preds = %land.lhs.true
  %.b134135 = load i1, ptr @garp_init_applicant.__warned, align 1
  br i1 %.b134135, label %land.lhs.true41.do.end46_crit_edge, label %if.then43

land.lhs.true41.do.end46_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end46

if.then43:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @garp_init_applicant.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 576, ptr noundef nonnull @.str.1) #5
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %land.lhs.true41.do.end46_crit_edge, %land.lhs.true.do.end46_crit_edge, %if.end29.do.end46_crit_edge
  %garp_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 131
  %0 = ptrtoint ptr %garp_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %garp_port, align 4
  %tobool48.not = icmp eq ptr %1, null
  br i1 %tobool48.not, label %if.then49, label %do.end46.if.end53_crit_edge

do.end46.if.end53_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then49:                                        ; preds = %do.end46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then49.cleanup_crit_edge, label %garp_init_port.exit

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

garp_init_port.exit:                              ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !74
  %3 = ptrtoint ptr %garp_port to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %call7.i.i.i, ptr %garp_port, align 4
  br label %if.end53

if.end53:                                         ; preds = %garp_init_port.exit, %do.end46.if.end53_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 172) #10
  %tobool55.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool55.not, label %if.end53.err2_crit_edge, label %if.end57

if.end53.err2_crit_edge:                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %err2

if.end57:                                         ; preds = %if.end53
  %proto = getelementptr inbounds %struct.garp_application, ptr %appl, i32 0, i32 2
  %call58 = tail call i32 @dev_mc_add(ptr noundef %dev, ptr noundef %proto) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %err3, label %if.end61

if.end61:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %dev62 = getelementptr inbounds %struct.garp_applicant, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %dev62 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev62, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %appl, ptr %call7.i.i, align 8
  %gid = getelementptr inbounds %struct.garp_applicant, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %gid, align 8
  %lock = getelementptr inbounds %struct.garp_applicant, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @garp_init_applicant.__key, i16 noundef signext 3) #5
  %queue = getelementptr inbounds %struct.garp_applicant, ptr %call7.i.i, i32 0, i32 4
  %lock.i = getelementptr inbounds %struct.garp_applicant, ptr %call7.i.i, i32 0, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #5
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %queue, ptr %queue, align 4
  %prev.i.i = getelementptr inbounds %struct.garp_applicant, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %queue, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.garp_applicant, ptr %call7.i.i, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qlen.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !75
  %11 = ptrtoint ptr %garp_port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %garp_port, align 4
  %13 = ptrtoint ptr %appl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %appl, align 4
  %arrayidx98 = getelementptr [1 x ptr], ptr %12, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call7.i.i, ptr %arrayidx98, align 4
  %join_timer = getelementptr inbounds %struct.garp_applicant, ptr %call7.i.i, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %join_timer, ptr noundef nonnull @garp_join_timer, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @garp_init_applicant.__key.6) #5
  %16 = load i32, ptr @garp_join_time, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %16) #5
  %conv.i = zext i32 %call2.i.i to i64
  %call1.i = tail call i32 @prandom_u32() #5
  %conv2.i = zext i32 %call1.i to i64
  %mul.i = mul nuw i64 %conv2.i, %conv.i
  %shr.i = lshr i64 %mul.i, 32
  %conv3.i = trunc i64 %shr.i to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %17, %conv3.i
  %call4.i = tail call i32 @mod_timer(ptr noundef %join_timer, i32 noundef %add.i) #5
  br label %cleanup

err3:                                             ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %err2

err2:                                             ; preds = %err3, %if.end53.err2_crit_edge
  %err.0 = phi i32 [ %call58, %err3 ], [ -12, %if.end53.err2_crit_edge ]
  tail call fastcc void @garp_release_port(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %err2, %if.end61, %if.then49.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end61 ], [ %err.0, %err2 ], [ -12, %if.then49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @garp_join_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -8
  %lock = getelementptr i8, ptr %t, i32 48
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %gid.i = getelementptr i8, ptr %t, i32 152
  %call.i = tail call ptr @rb_first(ptr noundef %gid.i) #5
  %tobool.not7.i = icmp eq ptr %call.i, null
  br i1 %tobool.not7.i, label %entry.garp_gid_event.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.garp_gid_event.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %garp_gid_event.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %node.08.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %call1.i = tail call ptr @rb_next(ptr noundef nonnull %node.08.i) #5
  tail call fastcc void @garp_attr_event(ptr noundef %add.ptr, ptr noundef nonnull %node.08.i, i32 noundef 7) #5
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %for.body.i.garp_gid_event.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.garp_gid_event.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %garp_gid_event.exit

garp_gid_event.exit:                              ; preds = %for.body.i.garp_gid_event.exit_crit_edge, %entry.garp_gid_event.exit_crit_edge
  tail call fastcc void @garp_pdu_queue(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  %queue.i = getelementptr i8, ptr %t, i32 92
  %call2.i = tail call ptr @skb_dequeue(ptr noundef %queue.i) #5
  %tobool.not3.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not3.i, label %garp_gid_event.exit.if.else.i.i_crit_edge, label %garp_gid_event.exit.while.body.i_crit_edge

garp_gid_event.exit.while.body.i_crit_edge:       ; preds = %garp_gid_event.exit
  br label %while.body.i

garp_gid_event.exit.if.else.i.i_crit_edge:        ; preds = %garp_gid_event.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %garp_gid_event.exit.while.body.i_crit_edge
  %call4.i = phi ptr [ %call.i8, %while.body.i.while.body.i_crit_edge ], [ %call2.i, %garp_gid_event.exit.while.body.i_crit_edge ]
  %call1.i7 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call4.i) #5
  %call.i8 = tail call ptr @skb_dequeue(ptr noundef %queue.i) #5
  %tobool.not.i9 = icmp eq ptr %call.i8, null
  br i1 %tobool.not.i9, label %while.body.i.if.else.i.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i.if.else.i.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %while.body.i.if.else.i.i_crit_edge, %garp_gid_event.exit.if.else.i.i_crit_edge
  %0 = load i32, ptr @garp_join_time, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %0) #5
  %conv.i = zext i32 %call2.i.i to i64
  %call1.i10 = tail call i32 @prandom_u32() #5
  %conv2.i = zext i32 %call1.i10 to i64
  %mul.i = mul nuw i64 %conv2.i, %conv.i
  %shr.i = lshr i64 %mul.i, 32
  %conv3.i = trunc i64 %shr.i to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %1, %conv3.i
  %call4.i11 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add.i) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @garp_release_port(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #5
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b49 = load i1, ptr @garp_release_port.__warned, align 1
  br i1 %.b49, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @garp_release_port.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 558, ptr noundef nonnull @.str.1) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %garp_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 131
  %0 = ptrtoint ptr %garp_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %garp_port, align 4
  %call5 = tail call zeroext i1 @lockdep_rtnl_is_held() #5
  br i1 %call5, label %do.end.do.end14_crit_edge, label %land.lhs.true6

do.end.do.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

land.lhs.true6:                                   ; preds = %do.end
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.do.end14_crit_edge, label %land.lhs.true9

land.lhs.true6.do.end14_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b4748 = load i1, ptr @garp_release_port.__warned.10, align 1
  br i1 %.b4748, label %land.lhs.true9.do.end14_crit_edge, label %if.then11

land.lhs.true9.do.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @garp_release_port.__warned.10, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 562, ptr noundef nonnull @.str.1) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true9.do.end14_crit_edge, %land.lhs.true6.do.end14_crit_edge, %do.end.do.end14_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool16.not = icmp eq ptr %3, null
  br i1 %tobool16.not, label %do.body24, label %do.end14.cleanup_crit_edge

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body24:                                        ; preds = %do.end14
  %4 = ptrtoint ptr %garp_port to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr null, ptr %garp_port, align 4
  %tobool33.not = icmp eq ptr %1, null
  br i1 %tobool33.not, label %do.body24.cleanup_crit_edge, label %do.end37

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end37:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  %rcu = getelementptr inbounds %struct.garp_port, ptr %1, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 4 to ptr)) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %do.body24.cleanup_crit_edge, %do.end14.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @garp_uninit_applicant(ptr noundef %dev, ptr noundef %appl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #5
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b106 = load i1, ptr @garp_uninit_applicant.__warned, align 1
  br i1 %.b106, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @garp_uninit_applicant.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 612, ptr noundef nonnull @.str.1) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %garp_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 131
  %0 = ptrtoint ptr %garp_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %garp_port, align 4
  %call5 = tail call zeroext i1 @lockdep_rtnl_is_held() #5
  br i1 %call5, label %do.end.do.end14_crit_edge, label %land.lhs.true6

do.end.do.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

land.lhs.true6:                                   ; preds = %do.end
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.do.end14_crit_edge, label %land.lhs.true9

land.lhs.true6.do.end14_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b102105 = load i1, ptr @garp_uninit_applicant.__warned.8, align 1
  br i1 %.b102105, label %land.lhs.true9.do.end14_crit_edge, label %if.then11

land.lhs.true9.do.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @garp_uninit_applicant.__warned.8, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 613, ptr noundef nonnull @.str.1) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true9.do.end14_crit_edge, %land.lhs.true6.do.end14_crit_edge, %do.end.do.end14_crit_edge
  %2 = ptrtoint ptr %appl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %appl, align 4
  %arrayidx = getelementptr [1 x ptr], ptr %1, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call16 = tail call i32 @rtnl_is_locked() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.rhs, label %do.end14.if.end52_crit_edge

do.end14.if.end52_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

land.rhs:                                         ; preds = %do.end14
  %.b103104 = load i1, ptr @garp_uninit_applicant.__already_done, align 1
  br i1 %.b103104, label %land.rhs.if.end52_crit_edge, label %if.then26, !prof !73

land.rhs.if.end52_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then26:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @garp_uninit_applicant.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 615, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 615) #5
  br label %if.end52

if.end52:                                         ; preds = %if.then26, %land.rhs.if.end52_crit_edge, %do.end14.if.end52_crit_edge
  %6 = ptrtoint ptr %appl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %appl, align 4
  %arrayidx68 = getelementptr [1 x ptr], ptr %1, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %arrayidx68, align 4
  %join_timer = getelementptr inbounds %struct.garp_applicant, ptr %5, i32 0, i32 2
  %call75 = tail call i32 @del_timer_sync(ptr noundef %join_timer) #5
  %lock = getelementptr inbounds %struct.garp_applicant, ptr %5, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %gid.i = getelementptr inbounds %struct.garp_applicant, ptr %5, i32 0, i32 6
  %call.i = tail call ptr @rb_first(ptr noundef %gid.i) #5
  %tobool.not7.i = icmp eq ptr %call.i, null
  br i1 %tobool.not7.i, label %if.end52.garp_gid_event.exit_crit_edge, label %if.end52.for.body.i_crit_edge

if.end52.for.body.i_crit_edge:                    ; preds = %if.end52
  br label %for.body.i

if.end52.garp_gid_event.exit_crit_edge:           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %garp_gid_event.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end52.for.body.i_crit_edge
  %node.08.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.end52.for.body.i_crit_edge ]
  %call1.i = tail call ptr @rb_next(ptr noundef nonnull %node.08.i) #5
  tail call fastcc void @garp_attr_event(ptr noundef %5, ptr noundef nonnull %node.08.i, i32 noundef 7) #5
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %for.body.i.garp_gid_event.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.garp_gid_event.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %garp_gid_event.exit

garp_gid_event.exit:                              ; preds = %for.body.i.garp_gid_event.exit_crit_edge, %if.end52.garp_gid_event.exit_crit_edge
  %call.i108 = tail call ptr @rb_first(ptr noundef %gid.i) #5
  %tobool.not7.i109 = icmp eq ptr %call.i108, null
  br i1 %tobool.not7.i109, label %garp_gid_event.exit.garp_attr_destroy_all.exit_crit_edge, label %garp_gid_event.exit.for.body.i113_crit_edge

garp_gid_event.exit.for.body.i113_crit_edge:      ; preds = %garp_gid_event.exit
  br label %for.body.i113

garp_gid_event.exit.garp_attr_destroy_all.exit_crit_edge: ; preds = %garp_gid_event.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %garp_attr_destroy_all.exit

for.body.i113:                                    ; preds = %for.body.i113.for.body.i113_crit_edge, %garp_gid_event.exit.for.body.i113_crit_edge
  %node.08.i110 = phi ptr [ %call1.i111, %for.body.i113.for.body.i113_crit_edge ], [ %call.i108, %garp_gid_event.exit.for.body.i113_crit_edge ]
  %call1.i111 = tail call ptr @rb_next(ptr noundef nonnull %node.08.i110) #5
  tail call void @rb_erase(ptr noundef nonnull %node.08.i110, ptr noundef %gid.i) #5
  tail call void @kfree(ptr noundef nonnull %node.08.i110) #5
  %tobool.not.i112 = icmp eq ptr %call1.i111, null
  br i1 %tobool.not.i112, label %for.body.i113.garp_attr_destroy_all.exit_crit_edge, label %for.body.i113.for.body.i113_crit_edge

for.body.i113.for.body.i113_crit_edge:            ; preds = %for.body.i113
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i113

for.body.i113.garp_attr_destroy_all.exit_crit_edge: ; preds = %for.body.i113
  call void @__sanitizer_cov_trace_pc() #7
  br label %garp_attr_destroy_all.exit

garp_attr_destroy_all.exit:                       ; preds = %for.body.i113.garp_attr_destroy_all.exit_crit_edge, %garp_gid_event.exit.garp_attr_destroy_all.exit_crit_edge
  tail call fastcc void @garp_pdu_queue(ptr noundef %5)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  %queue.i = getelementptr inbounds %struct.garp_applicant, ptr %5, i32 0, i32 4
  %call2.i = tail call ptr @skb_dequeue(ptr noundef %queue.i) #5
  %tobool.not3.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not3.i, label %garp_attr_destroy_all.exit.garp_queue_xmit.exit_crit_edge, label %garp_attr_destroy_all.exit.while.body.i_crit_edge

garp_attr_destroy_all.exit.while.body.i_crit_edge: ; preds = %garp_attr_destroy_all.exit
  br label %while.body.i

garp_attr_destroy_all.exit.garp_queue_xmit.exit_crit_edge: ; preds = %garp_attr_destroy_all.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %garp_queue_xmit.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %garp_attr_destroy_all.exit.while.body.i_crit_edge
  %call4.i = phi ptr [ %call.i115, %while.body.i.while.body.i_crit_edge ], [ %call2.i, %garp_attr_destroy_all.exit.while.body.i_crit_edge ]
  %call1.i114 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call4.i) #5
  %call.i115 = tail call ptr @skb_dequeue(ptr noundef %queue.i) #5
  %tobool.not.i116 = icmp eq ptr %call.i115, null
  br i1 %tobool.not.i116, label %while.body.i.garp_queue_xmit.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i.garp_queue_xmit.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %garp_queue_xmit.exit

garp_queue_xmit.exit:                             ; preds = %while.body.i.garp_queue_xmit.exit_crit_edge, %garp_attr_destroy_all.exit.garp_queue_xmit.exit_crit_edge
  %proto = getelementptr inbounds %struct.garp_application, ptr %appl, i32 0, i32 2
  %call77 = tail call i32 @dev_mc_del(ptr noundef %dev, ptr noundef %proto) #5
  %tobool79.not = icmp eq ptr %5, null
  br i1 %tobool79.not, label %garp_queue_xmit.exit.if.end84_crit_edge, label %do.end83

garp_queue_xmit.exit.if.end84_crit_edge:          ; preds = %garp_queue_xmit.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

do.end83:                                         ; preds = %garp_queue_xmit.exit
  call void @__sanitizer_cov_trace_pc() #7
  %rcu = getelementptr inbounds %struct.garp_applicant, ptr %5, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 164 to ptr)) #5
  br label %if.end84

if.end84:                                         ; preds = %do.end83, %garp_queue_xmit.exit.if.end84_crit_edge
  tail call fastcc void @garp_release_port(ptr noundef %dev)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @garp_pdu_queue(ptr noundef %app) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdu = getelementptr inbounds %struct.garp_applicant, ptr %app, i32 0, i32 5
  %0 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdu, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %if.end.garp_pdu_append_end_mark.exit_crit_edge

if.end.garp_pdu_append_end_mark.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %garp_pdu_append_end_mark.exit

skb_tailroom.exit.i:                              ; preds = %if.end
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i, align 8
  %cmp.i = icmp eq ptr %5, %7
  br i1 %cmp.i, label %skb_tailroom.exit.i.garp_pdu_append_end_mark.exit_crit_edge, label %__skb_put_u8.exit.i

skb_tailroom.exit.i.garp_pdu_append_end_mark.exit_crit_edge: ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %garp_pdu_append_end_mark.exit

__skb_put_u8.exit.i:                              ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 1
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i.i.i, ptr %tail.i.i, align 8
  %len9.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %len9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len9.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store i32 %add.i.i.i, ptr %len9.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %7, align 1
  br label %garp_pdu_append_end_mark.exit

garp_pdu_append_end_mark.exit:                    ; preds = %__skb_put_u8.exit.i, %skb_tailroom.exit.i.garp_pdu_append_end_mark.exit_crit_edge, %if.end.garp_pdu_append_end_mark.exit_crit_edge
  %12 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdu, align 4
  %data_len.i.i.i20 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %data_len.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i.i20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i.i21 = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i.i21, label %skb_tailroom.exit.i25, label %garp_pdu_append_end_mark.exit.garp_pdu_append_end_mark.exit31_crit_edge

garp_pdu_append_end_mark.exit.garp_pdu_append_end_mark.exit31_crit_edge: ; preds = %garp_pdu_append_end_mark.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %garp_pdu_append_end_mark.exit31

skb_tailroom.exit.i25:                            ; preds = %garp_pdu_append_end_mark.exit
  %end.i.i22 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 17
  %16 = ptrtoint ptr %end.i.i22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i.i22, align 4
  %tail.i.i23 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i.i23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i23, align 8
  %cmp.i24 = icmp eq ptr %17, %19
  br i1 %cmp.i24, label %skb_tailroom.exit.i25.garp_pdu_append_end_mark.exit31_crit_edge, label %__skb_put_u8.exit.i29

skb_tailroom.exit.i25.garp_pdu_append_end_mark.exit31_crit_edge: ; preds = %skb_tailroom.exit.i25
  call void @__sanitizer_cov_trace_pc() #7
  br label %garp_pdu_append_end_mark.exit31

__skb_put_u8.exit.i29:                            ; preds = %skb_tailroom.exit.i25
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i.i26 = getelementptr i8, ptr %19, i32 1
  %20 = ptrtoint ptr %tail.i.i23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i.i.i26, ptr %tail.i.i23, align 8
  %len9.i.i.i27 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 6
  %21 = ptrtoint ptr %len9.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len9.i.i.i27, align 4
  %add.i.i.i28 = add i32 %22, 1
  store i32 %add.i.i.i28, ptr %len9.i.i.i27, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %19, align 1
  br label %garp_pdu_append_end_mark.exit31

garp_pdu_append_end_mark.exit31:                  ; preds = %__skb_put_u8.exit.i29, %skb_tailroom.exit.i25.garp_pdu_append_end_mark.exit31_crit_edge, %garp_pdu_append_end_mark.exit.garp_pdu_append_end_mark.exit31_crit_edge
  %24 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdu, align 4
  %call.i = tail call ptr @skb_push(ptr noundef %25, i32 noundef 3) #5
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 19
  %26 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 18
  %28 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %27 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 15, i32 0, i32 20
  %30 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i32 = getelementptr i8, ptr %29, i32 %conv.i.i.i
  %31 = ptrtoint ptr %add.ptr.i.i.i32 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 66, ptr %add.ptr.i.i.i32, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i32, i32 0, i32 1
  %32 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 66, ptr %ssap4.i, align 1
  %33 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdu, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 18
  %35 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 15, i32 0, i32 20
  %37 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i33 = zext i16 %38 to i32
  %add.ptr.i.i.i34 = getelementptr i8, ptr %36, i32 %conv.i.i.i33
  %ctrl_1.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i34, i32 0, i32 2
  %39 = ptrtoint ptr %ctrl_1.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 3, ptr %ctrl_1.i, align 1
  %40 = load ptr, ptr %pdu, align 4
  %dev = getelementptr inbounds %struct.garp_applicant, ptr %app, i32 0, i32 1
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 86
  %43 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_addr, align 64
  %45 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %app, align 4
  %proto = getelementptr inbounds %struct.garp_application, ptr %46, i32 0, i32 2
  %call6 = tail call i32 @llc_mac_hdr_init(ptr noundef %40, ptr noundef %44, ptr noundef %proto) #5
  %queue = getelementptr inbounds %struct.garp_applicant, ptr %app, i32 0, i32 4
  %47 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdu, align 4
  tail call void @skb_queue_tail(ptr noundef %queue, ptr noundef %48) #5
  %49 = ptrtoint ptr %pdu to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %pdu, align 4
  br label %return

return:                                           ; preds = %garp_pdu_append_end_mark.exit31, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @garp_register_application(ptr noundef %appl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %proto = getelementptr inbounds %struct.garp_application, ptr %appl, i32 0, i32 2
  %rcv = getelementptr inbounds %struct.garp_application, ptr %appl, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %rcv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @garp_pdu_rcv, ptr %rcv, align 4
  %data = getelementptr inbounds %struct.garp_application, ptr %appl, i32 0, i32 2, i32 2
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %appl, ptr %data, align 4
  %call = tail call i32 @stp_proto_register(ptr noundef %proto) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @garp_pdu_rcv(ptr nocapture noundef readonly %proto, ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.stp_proto, ptr %proto, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %garp_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 131
  %2 = ptrtoint ptr %garp_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %garp_port, align 4
  %call = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b67 = load i1, ptr @garp_pdu_rcv.__warned, align 1
  br i1 %.b67, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @garp_pdu_rcv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 519, ptr noundef nonnull @.str.11) #5
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %do.end7.err_crit_edge, label %if.end11

do.end7.err_crit_edge:                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end11:                                         ; preds = %do.end7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %arrayidx = getelementptr [1 x ptr], ptr %3, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx, align 4
  %call17 = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true19, label %if.end11.do.end27_crit_edge

if.end11.do.end27_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end27

land.lhs.true19:                                  ; preds = %if.end11
  %call20 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true19.do.end27_crit_edge, label %land.lhs.true22

land.lhs.true19.do.end27_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end27

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %.b6566 = load i1, ptr @garp_pdu_rcv.__warned.12, align 1
  br i1 %.b6566, label %land.lhs.true22.do.end27_crit_edge, label %if.then24

land.lhs.true22.do.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end27

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @garp_pdu_rcv.__warned.12, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 522, ptr noundef nonnull @.str.11) #5
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %land.lhs.true22.do.end27_crit_edge, %land.lhs.true19.do.end27_crit_edge, %if.end11.do.end27_crit_edge
  %tobool29.not = icmp eq ptr %7, null
  br i1 %tobool29.not, label %do.end27.err_crit_edge, label %if.end31

do.end27.err_crit_edge:                           ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end31:                                         ; preds = %do.end27
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.end31.if.end34_crit_edge, !prof !76

if.end31.if.end34_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.end.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp3.i = icmp ult i32 %9, 2
  br i1 %cmp3.i, label %if.end.i.err_crit_edge, label %pskb_may_pull.exit, !prof !76

if.end.i.err_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 2, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #5
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.err_crit_edge, label %pskb_may_pull.exit.if.end34_crit_edge

pskb_may_pull.exit.if.end34_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

pskb_may_pull.exit.err_crit_edge:                 ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end34:                                         ; preds = %pskb_may_pull.exit.if.end34_crit_edge, %if.end31.if.end34_crit_edge
  %data35 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data35, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %15)
  %cmp.not = icmp eq i16 %15, 1
  br i1 %cmp.not, label %if.end39, label %if.end34.err_crit_edge

if.end34.err_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end39:                                         ; preds = %if.end34
  %call40 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #5
  %lock = getelementptr inbounds %struct.garp_applicant, ptr %7, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %gid.i.i.i = getelementptr inbounds %struct.garp_applicant, ptr %7, i32 0, i32 6
  br label %while.cond

while.cond:                                       ; preds = %if.end.i80.while.cond_crit_edge, %if.end39
  %16 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp41.not = icmp eq i32 %17, 0
  br i1 %cmp41.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.cond
  %18 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp.not.i.i = icmp eq i32 %19, %17
  br i1 %cmp.not.i.i, label %pskb_may_pull.exit.i, label %while.body.if.end.i68_crit_edge, !prof !76

while.body.if.end.i68_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i68

pskb_may_pull.exit.i:                             ; preds = %while.body
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef 1) #5
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.while.end_crit_edge, label %pskb_may_pull.exit.i.if.end.i68_crit_edge

pskb_may_pull.exit.i.if.end.i68_crit_edge:        ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i68

pskb_may_pull.exit.i.while.end_crit_edge:         ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end.i68:                                       ; preds = %pskb_may_pull.exit.i.if.end.i68_crit_edge, %while.body.if.end.i68_crit_edge
  %20 = ptrtoint ptr %data35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data35, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp.i = icmp eq i8 %23, 0
  br i1 %cmp.i, label %if.end.i68.while.end_crit_edge, label %if.end3.i

if.end.i68.while.end_crit_edge:                   ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end3.i:                                        ; preds = %if.end.i68
  %call4.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #5
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i38.i.while.cond.i_crit_edge, %if.end3.i
  %24 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp5.not.i = icmp eq i32 %25, 0
  br i1 %cmp5.not.i, label %while.cond.i.if.end47_crit_edge, label %while.body.i

while.cond.i.if.end47_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

while.body.i:                                     ; preds = %while.cond.i
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %21, align 1
  %28 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i.i.i = sub i32 %25, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i.i.i)
  %cmp.not.i.i.i = icmp ult i32 %sub.i.i.i.i, 2
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %while.body.i.if.end.i25.i_crit_edge, !prof !76

while.body.i.if.end.i25.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i25.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp3.i.i.i = icmp ult i32 %25, 2
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.while.end_crit_edge, label %pskb_may_pull.exit.i.i, !prof !76

if.end.i.i.i.while.end_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

pskb_may_pull.exit.i.i:                           ; preds = %if.end.i.i.i
  %sub.i.i24.i = sub nuw nsw i32 2, %sub.i.i.i.i
  %call13.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i24.i) #5
  %cmp14.i.not.i.i = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.not.i.i, label %pskb_may_pull.exit.i.i.while.end_crit_edge, label %pskb_may_pull.exit.i.i.if.end.i25.i_crit_edge

pskb_may_pull.exit.i.i.if.end.i25.i_crit_edge:    ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i25.i

pskb_may_pull.exit.i.i.while.end_crit_edge:       ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end.i25.i:                                     ; preds = %pskb_may_pull.exit.i.i.if.end.i25.i_crit_edge, %while.body.i.if.end.i25.i_crit_edge
  %30 = ptrtoint ptr %data35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data35, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp.i.i = icmp ult i8 %33, 2
  br i1 %cmp.i.i, label %if.end.i25.i.while.end_crit_edge, label %if.end3.i.i

if.end.i25.i.while.end_crit_edge:                 ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end3.i.i:                                      ; preds = %if.end.i25.i
  %conv.i.i = zext i8 %33 to i32
  %34 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i.i, align 4
  %36 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i61.i.i = sub i32 %35, %37
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i61.i.i, i32 %conv.i.i)
  %cmp.not.i62.i.i = icmp ult i32 %sub.i.i61.i.i, %conv.i.i
  br i1 %cmp.not.i62.i.i, label %if.end.i64.i.i, label %if.end3.i.i.if.end8.i.i_crit_edge, !prof !76

if.end3.i.i.if.end8.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i.i

if.end.i64.i.i:                                   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv.i.i)
  %cmp3.i63.i.i = icmp ult i32 %35, %conv.i.i
  br i1 %cmp3.i63.i.i, label %if.end.i64.i.i.while.end_crit_edge, label %pskb_may_pull.exit70.i.i, !prof !76

if.end.i64.i.i.while.end_crit_edge:               ; preds = %if.end.i64.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

pskb_may_pull.exit70.i.i:                         ; preds = %if.end.i64.i.i
  %sub.i65.i.i = sub i32 %conv.i.i, %sub.i.i61.i.i
  %call13.i66.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i65.i.i) #5
  %cmp14.i67.not.i.i = icmp eq ptr %call13.i66.i.i, null
  br i1 %cmp14.i67.not.i.i, label %pskb_may_pull.exit70.i.i.while.end_crit_edge, label %pskb_may_pull.exit70.i.i.if.end8.i.i_crit_edge

pskb_may_pull.exit70.i.i.if.end8.i.i_crit_edge:   ; preds = %pskb_may_pull.exit70.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i.i

pskb_may_pull.exit70.i.i.while.end_crit_edge:     ; preds = %pskb_may_pull.exit70.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end8.i.i:                                      ; preds = %pskb_may_pull.exit70.i.i.if.end8.i.i_crit_edge, %if.end3.i.i.if.end8.i.i_crit_edge
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %31, align 1
  %conv10.i.i = zext i8 %39 to i32
  %call11.i.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv10.i.i) #5
  %40 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %31, align 1
  %sub.i26.i = sub i8 2, %41
  %conv14.i.i = zext i8 %27 to i32
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %7, align 4
  %maxattr.i.i = getelementptr inbounds %struct.garp_application, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %maxattr.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %maxattr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv14.i.i)
  %cmp16.i.i = icmp ult i32 %45, %conv14.i.i
  br i1 %cmp16.i.i, label %if.end8.i.i.if.end12.i_crit_edge, label %if.end19.i.i

if.end8.i.i.if.end12.i_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

if.end19.i.i:                                     ; preds = %if.end8.i.i
  %event20.i.i = getelementptr inbounds %struct.garp_attr_hdr, ptr %31, i32 0, i32 1
  %46 = ptrtoint ptr %event20.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %event20.i.i, align 1
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %47, label %if.end19.i.i.if.end12.i_crit_edge [
    i8 0, label %sw.bb.i.i
    i8 1, label %if.end19.i.i.sw.epilog.i.i_crit_edge
    i8 2, label %sw.bb27.i.i
    i8 3, label %sw.bb28.i.i
    i8 5, label %sw.bb29.i.i
  ]

if.end19.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

if.end19.i.i.if.end12.i_crit_edge:                ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

sw.bb.i.i:                                        ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %cmp22.not.i.i = icmp eq i8 %41, 2
  br i1 %cmp22.not.i.i, label %if.end25.i.i, label %sw.bb.i.i.while.end_crit_edge

sw.bb.i.i.while.end_crit_edge:                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end25.i.i:                                     ; preds = %sw.bb.i.i
  %call.i.i = tail call ptr @rb_first(ptr noundef %gid.i.i.i) #5
  %tobool.not7.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not7.i.i, label %if.end25.i.i.if.end12.i_crit_edge, label %if.end25.i.i.for.body.i.i_crit_edge

if.end25.i.i.for.body.i.i_crit_edge:              ; preds = %if.end25.i.i
  br label %for.body.i.i

if.end25.i.i.if.end12.i_crit_edge:                ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end25.i.i.for.body.i.i_crit_edge
  %node.08.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.end25.i.i.for.body.i.i_crit_edge ]
  %call1.i.i = tail call ptr @rb_next(ptr noundef nonnull %node.08.i.i) #5
  tail call fastcc void @garp_attr_event(ptr noundef nonnull %7, ptr noundef nonnull %node.08.i.i, i32 noundef 6) #5
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end12.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.body.i.i.if.end12.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

sw.bb27.i.i:                                      ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

sw.bb28.i.i:                                      ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

sw.bb29.i.i:                                      ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb29.i.i, %sw.bb28.i.i, %sw.bb27.i.i, %if.end19.i.i.sw.epilog.i.i_crit_edge
  %event.0.i.i = phi i32 [ 4, %sw.bb29.i.i ], [ 6, %sw.bb28.i.i ], [ 2, %sw.bb27.i.i ], [ 3, %if.end19.i.i.sw.epilog.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %cmp30.i.i = icmp eq i8 %41, 2
  br i1 %cmp30.i.i, label %sw.epilog.i.i.while.end_crit_edge, label %if.end33.i.i

sw.epilog.i.i.while.end_crit_edge:                ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end33.i.i:                                     ; preds = %sw.epilog.i.i
  %data34.i.i = getelementptr inbounds %struct.garp_attr_hdr, ptr %31, i32 0, i32 2
  %49 = ptrtoint ptr %gid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %parent.012.i.i.i = load ptr, ptr %gid.i.i.i, align 4
  %tobool.not13.i.i.i = icmp eq ptr %parent.012.i.i.i, null
  br i1 %tobool.not13.i.i.i, label %if.end33.i.i.if.end12.i_crit_edge, label %while.body.lr.ph.i.i.i

if.end33.i.i.if.end12.i_crit_edge:                ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

while.body.lr.ph.i.i.i:                           ; preds = %if.end33.i.i
  %conv8.i.i.i.i = zext i8 %sub.i26.i to i32
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end4.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %parent.014.i.i.i = phi ptr [ %parent.012.i.i.i, %while.body.lr.ph.i.i.i ], [ %parent.0.i.i.i, %if.end4.i.i.i.while.body.i.i.i_crit_edge ]
  %type1.i.i.i.i = getelementptr inbounds %struct.garp_attr, ptr %parent.014.i.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %type1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %type1.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %27)
  %cmp.not.i.i.i.i = icmp eq i8 %51, %27
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i.i.i = zext i8 %51 to i32
  %sub.i.i71.i.i = sub nsw i32 %conv.i.i.i.i, %conv14.i.i
  br label %garp_attr_cmp.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %while.body.i.i.i
  %dlen.i.i.i.i = getelementptr inbounds %struct.garp_attr, ptr %parent.014.i.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %dlen.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %dlen.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %sub.i26.i)
  %cmp9.not.i.i.i.i = icmp eq i8 %53, %sub.i26.i
  br i1 %cmp9.not.i.i.i.i, label %if.end16.i.i.i.i, label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv7.i.i.i.i = zext i8 %53 to i32
  %sub15.i.i.i.i = sub nsw i32 %conv7.i.i.i.i, %conv8.i.i.i.i
  br label %garp_attr_cmp.exit.i.i.i

if.end16.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %data17.i.i.i.i = getelementptr inbounds %struct.garp_attr, ptr %parent.014.i.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call i32 @memcmp(ptr noundef %data17.i.i.i.i, ptr noundef %data34.i.i, i32 noundef %conv8.i.i.i.i) #8
  br label %garp_attr_cmp.exit.i.i.i

garp_attr_cmp.exit.i.i.i:                         ; preds = %if.end16.i.i.i.i, %if.then11.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i71.i.i, %if.then.i.i.i.i ], [ %sub15.i.i.i.i, %if.then11.i.i.i.i ], [ %call.i.i.i.i, %if.end16.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %retval.0.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %garp_attr_cmp.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %parent.014.i.i.i, i32 0, i32 2
  br label %if.end4.i.i.i

if.else.i.i.i:                                    ; preds = %garp_attr_cmp.exit.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i.i)
  %cmp1.i.i.i = icmp slt i32 %retval.0.i.i.i.i, 0
  br i1 %cmp1.i.i.i, label %if.then2.i.i.i, label %if.end40.i.i

if.then2.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %parent.014.i.i.i, i32 0, i32 1
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %if.then2.i.i.i, %if.then.i.i.i
  %parent.1.in.i.i.i = phi ptr [ %rb_left.i.i.i, %if.then.i.i.i ], [ %rb_right.i.i.i, %if.then2.i.i.i ]
  %54 = ptrtoint ptr %parent.1.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %parent.0.i.i.i = load ptr, ptr %parent.1.in.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %parent.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end4.i.i.i.if.end12.i_crit_edge, label %if.end4.i.i.i.while.body.i.i.i_crit_edge

if.end4.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i.i

if.end4.i.i.i.if.end12.i_crit_edge:               ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

if.end40.i.i:                                     ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @garp_attr_event(ptr noundef nonnull %7, ptr noundef nonnull %parent.014.i.i.i, i32 noundef %event.0.i.i) #5
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end40.i.i, %if.end4.i.i.i.if.end12.i_crit_edge, %if.end33.i.i.if.end12.i_crit_edge, %for.body.i.i.if.end12.i_crit_edge, %if.end25.i.i.if.end12.i_crit_edge, %if.end19.i.i.if.end12.i_crit_edge, %if.end8.i.i.if.end12.i_crit_edge
  %55 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len.i.i, align 4
  %57 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %56)
  %cmp.not.i.i30.i = icmp eq i32 %58, %56
  br i1 %cmp.not.i.i30.i, label %if.end.i.i32.i, label %if.end12.i.if.end.i38.i_crit_edge, !prof !76

if.end12.i.if.end.i38.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i38.i

if.end.i.i32.i:                                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp3.i.i31.i = icmp eq i32 %56, 0
  br i1 %cmp3.i.i31.i, label %if.end.i.i32.i.if.end47_crit_edge, label %pskb_may_pull.exit.i35.i, !prof !76

if.end.i.i32.i.if.end47_crit_edge:                ; preds = %if.end.i.i32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

pskb_may_pull.exit.i35.i:                         ; preds = %if.end.i.i32.i
  %call13.i.i33.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef 1) #5
  %cmp14.i.not.i34.i = icmp eq ptr %call13.i.i33.i, null
  br i1 %cmp14.i.not.i34.i, label %pskb_may_pull.exit.i35.i.if.end47thread-pre-split_crit_edge, label %pskb_may_pull.exit.i35.i.if.end.i38.i_crit_edge

pskb_may_pull.exit.i35.i.if.end.i38.i_crit_edge:  ; preds = %pskb_may_pull.exit.i35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i38.i

pskb_may_pull.exit.i35.i.if.end47thread-pre-split_crit_edge: ; preds = %pskb_may_pull.exit.i35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47thread-pre-split

if.end.i38.i:                                     ; preds = %pskb_may_pull.exit.i35.i.if.end.i38.i_crit_edge, %if.end12.i.if.end.i38.i_crit_edge
  %59 = ptrtoint ptr %data35 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data35, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %60, align 1
  %cmp.i37.i = icmp eq i8 %62, 0
  br i1 %cmp.i37.i, label %if.then2.i.i, label %if.end.i38.i.while.cond.i_crit_edge

if.end.i38.i.while.cond.i_crit_edge:              ; preds = %if.end.i38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

if.then2.i.i:                                     ; preds = %if.end.i38.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #5
  br label %if.end47thread-pre-split

if.end47thread-pre-split:                         ; preds = %if.then2.i.i, %pskb_may_pull.exit.i35.i.if.end47thread-pre-split_crit_edge
  %63 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pr = load i32, ptr %len.i.i, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end47thread-pre-split, %if.end.i.i32.i.if.end47_crit_edge, %while.cond.i.if.end47_crit_edge
  %64 = phi i32 [ %.pr, %if.end47thread-pre-split ], [ 0, %while.cond.i.if.end47_crit_edge ], [ 0, %if.end.i.i32.i.if.end47_crit_edge ]
  %65 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %64)
  %cmp.not.i.i72 = icmp eq i32 %66, %64
  br i1 %cmp.not.i.i72, label %if.end.i.i74, label %if.end47.if.end.i80_crit_edge, !prof !76

if.end47.if.end.i80_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i80

if.end.i.i74:                                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp3.i.i73 = icmp eq i32 %64, 0
  br i1 %cmp3.i.i73, label %if.end.i.i74.while.end_crit_edge, label %pskb_may_pull.exit.i77, !prof !76

if.end.i.i74.while.end_crit_edge:                 ; preds = %if.end.i.i74
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

pskb_may_pull.exit.i77:                           ; preds = %if.end.i.i74
  %call13.i.i75 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef 1) #5
  %cmp14.i.not.i76 = icmp eq ptr %call13.i.i75, null
  br i1 %cmp14.i.not.i76, label %pskb_may_pull.exit.i77.while.end_crit_edge, label %pskb_may_pull.exit.i77.if.end.i80_crit_edge

pskb_may_pull.exit.i77.if.end.i80_crit_edge:      ; preds = %pskb_may_pull.exit.i77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i80

pskb_may_pull.exit.i77.while.end_crit_edge:       ; preds = %pskb_may_pull.exit.i77
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end.i80:                                       ; preds = %pskb_may_pull.exit.i77.if.end.i80_crit_edge, %if.end47.if.end.i80_crit_edge
  %67 = ptrtoint ptr %data35 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data35, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %68, align 1
  %cmp.i79 = icmp eq i8 %70, 0
  br i1 %cmp.i79, label %if.then2.i, label %if.end.i80.while.cond_crit_edge

if.end.i80.while.cond_crit_edge:                  ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

if.then2.i:                                       ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #5
  br label %while.end

while.end:                                        ; preds = %if.then2.i, %pskb_may_pull.exit.i77.while.end_crit_edge, %if.end.i.i74.while.end_crit_edge, %sw.epilog.i.i.while.end_crit_edge, %sw.bb.i.i.while.end_crit_edge, %pskb_may_pull.exit70.i.i.while.end_crit_edge, %if.end.i64.i.i.while.end_crit_edge, %if.end.i25.i.while.end_crit_edge, %pskb_may_pull.exit.i.i.while.end_crit_edge, %if.end.i.i.i.while.end_crit_edge, %if.end.i68.while.end_crit_edge, %pskb_may_pull.exit.i.while.end_crit_edge, %while.cond.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  br label %err

err:                                              ; preds = %while.end, %if.end34.err_crit_edge, %pskb_may_pull.exit.err_crit_edge, %if.end.i.err_crit_edge, %do.end27.err_crit_edge, %do.end7.err_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stp_proto_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @garp_unregister_application(ptr noundef %appl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %proto = getelementptr inbounds %struct.garp_application, ptr %appl, i32 0, i32 2
  tail call void @stp_proto_unregister(ptr noundef %proto) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stp_proto_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @garp_pdu_append_attr(ptr noundef %app, ptr nocapture noundef readonly %attr, i32 noundef %event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdu = getelementptr inbounds %struct.garp_applicant, ptr %app, i32 0, i32 5
  %dev.i = getelementptr inbounds %struct.garp_applicant, ptr %app, i32 0, i32 1
  %type = getelementptr inbounds %struct.garp_attr, ptr %attr, i32 0, i32 2
  %dlen = getelementptr inbounds %struct.garp_attr, ptr %attr, i32 0, i32 3
  br label %again

again:                                            ; preds = %queue, %entry
  %0 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdu, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %again.if.end2_crit_edge

again.if.end2_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #7
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
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add5.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = getelementptr inbounds %struct.anon.44, ptr %call.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %12, align 8
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %14 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 4, ptr %protocol.i, align 8
  %15 = load ptr, ptr %dev.i, align 4
  %hard_header_len8.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 19
  %16 = ptrtoint ptr %hard_header_len8.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hard_header_len8.i, align 2
  %conv9.i = zext i16 %17 to i32
  %needed_headroom11.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 21
  %18 = ptrtoint ptr %needed_headroom11.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %needed_headroom11.i, align 8
  %conv12.i = zext i16 %19 to i32
  %add13.i = add nuw nsw i32 %conv12.i, %conv9.i
  %and14.i = and i32 %add13.i, 131056
  %add16.i = add nuw nsw i32 %and14.i, 19
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %add16.i
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %22 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %23, i32 %add16.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool.i.not.i.i, label %garp_pdu_init.exit, label %do.body3.i.i, !prof !73

do.body3.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #5, !srcloc !77
  unreachable

garp_pdu_init.exit:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i31.i = getelementptr i8, ptr %add.ptr1.i.i, i32 2
  %26 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.i31.i, ptr %tail.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %28, 2
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %29 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 1, ptr %add.ptr1.i.i, align 1
  %30 = ptrtoint ptr %pdu to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.i, ptr %pdu, align 4
  br label %if.end2

if.end2:                                          ; preds = %garp_pdu_init.exit, %again.if.end2_crit_edge
  %31 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdu, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cb.i, align 1
  %35 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %36)
  %cmp6.not = icmp eq i8 %34, %36
  br i1 %cmp6.not, label %if.end2.if.end25_crit_edge, label %if.then8

if.end2.if.end25_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then8:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool13.not = icmp eq i8 %34, 0
  br i1 %tobool13.not, label %if.then8.if.end18_crit_edge, label %land.lhs.true

if.then8.if.end18_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

land.lhs.true:                                    ; preds = %if.then8
  %data_len.i.i.i64 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 7
  %37 = ptrtoint ptr %data_len.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data_len.i.i.i64, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.i.not.i.i65 = icmp eq i32 %38, 0
  br i1 %tobool.i.not.i.i65, label %skb_tailroom.exit.i, label %land.lhs.true.queue_crit_edge

land.lhs.true.queue_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %queue

skb_tailroom.exit.i:                              ; preds = %land.lhs.true
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 17
  %39 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %end.i.i, align 4
  %tail.i.i66 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 16
  %41 = ptrtoint ptr %tail.i.i66 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i66, align 8
  %cmp.i = icmp eq ptr %40, %42
  br i1 %cmp.i, label %skb_tailroom.exit.i.queue_crit_edge, label %garp_pdu_append_end_mark.exit

skb_tailroom.exit.i.queue_crit_edge:              ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %queue

garp_pdu_append_end_mark.exit:                    ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i.i = getelementptr i8, ptr %42, i32 1
  %43 = ptrtoint ptr %tail.i.i66 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr.i.i.i, ptr %tail.i.i66, align 8
  %len9.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 6
  %44 = ptrtoint ptr %len9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len9.i.i.i, align 4
  %add.i.i.i = add i32 %45, 1
  store i32 %add.i.i.i, ptr %len9.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %42, align 1
  br label %if.end18

if.end18:                                         ; preds = %garp_pdu_append_end_mark.exit, %if.then8.if.end18_crit_edge
  %47 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %type, align 4
  %49 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdu, align 4
  %data_len.i.i.i69 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %data_len.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data_len.i.i.i69, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.i.not.i.i70 = icmp eq i32 %52, 0
  br i1 %tobool.i.not.i.i70, label %skb_tailroom.exit.i74, label %if.end18.queue_crit_edge

if.end18.queue_crit_edge:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %queue

skb_tailroom.exit.i74:                            ; preds = %if.end18
  %end.i.i71 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 17
  %53 = ptrtoint ptr %end.i.i71 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %end.i.i71, align 4
  %tail.i.i72 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 16
  %55 = ptrtoint ptr %tail.i.i72 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tail.i.i72, align 8
  %cmp.i73 = icmp eq ptr %54, %56
  br i1 %cmp.i73, label %skb_tailroom.exit.i74.queue_crit_edge, label %garp_pdu_append_msg.exit

skb_tailroom.exit.i74.queue_crit_edge:            ; preds = %skb_tailroom.exit.i74
  call void @__sanitizer_cov_trace_pc() #7
  br label %queue

garp_pdu_append_msg.exit:                         ; preds = %skb_tailroom.exit.i74
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i75 = getelementptr i8, ptr %56, i32 1
  %57 = ptrtoint ptr %tail.i.i72 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr.i.i75, ptr %tail.i.i72, align 8
  %len9.i.i76 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 6
  %58 = ptrtoint ptr %len9.i.i76 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len9.i.i76, align 4
  %add.i.i77 = add i32 %59, 1
  store i32 %add.i.i77, ptr %len9.i.i76, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %48, ptr %56, align 1
  %61 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdu, align 4
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %48, ptr %cb.i.i, align 1
  br label %if.end25

if.end25:                                         ; preds = %garp_pdu_append_msg.exit, %if.end2.if.end25_crit_edge
  %64 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdu, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.i.not.i = icmp eq i32 %67, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %if.end25.queue_crit_edge

if.end25.queue_crit_edge:                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %queue

skb_tailroom.exit:                                ; preds = %if.end25
  %68 = ptrtoint ptr %dlen to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %dlen, align 1
  %conv26 = zext i8 %69 to i32
  %add = add nuw nsw i32 %conv26, 2
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 17
  %70 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 16
  %72 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %71 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %73 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %add)
  %cmp29 = icmp ult i32 %sub.ptr.sub.i, %add
  br i1 %cmp29, label %skb_tailroom.exit.queue_crit_edge, label %__skb_put.exit

skb_tailroom.exit.queue_crit_edge:                ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %queue

__skb_put.exit:                                   ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #7
  %tail.i.le = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 16
  %74 = ptrtoint ptr %tail.i.le to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tail.i.le, align 8
  %add.ptr.i = getelementptr i8, ptr %75, i32 %add
  store ptr %add.ptr.i, ptr %tail.i.le, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 6
  %76 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len9.i, align 4
  %add.i83 = add i32 %77, %add
  store i32 %add.i83, ptr %len9.i, align 4
  %conv35 = trunc i32 %add to i8
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv35, ptr %75, align 1
  %conv37 = trunc i32 %event to i8
  %event38 = getelementptr inbounds %struct.garp_attr_hdr, ptr %75, i32 0, i32 1
  %79 = ptrtoint ptr %event38 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv37, ptr %event38, align 1
  %data = getelementptr inbounds %struct.garp_attr_hdr, ptr %75, i32 0, i32 2
  %data39 = getelementptr inbounds %struct.garp_attr, ptr %attr, i32 0, i32 4
  %80 = ptrtoint ptr %dlen to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %dlen, align 1
  %conv42 = zext i8 %81 to i32
  %82 = call ptr @memcpy(ptr %data, ptr %data39, i32 %conv42)
  br label %cleanup

queue:                                            ; preds = %skb_tailroom.exit.queue_crit_edge, %if.end25.queue_crit_edge, %skb_tailroom.exit.i74.queue_crit_edge, %if.end18.queue_crit_edge, %skb_tailroom.exit.i.queue_crit_edge, %land.lhs.true.queue_crit_edge
  tail call fastcc void @garp_pdu_queue(ptr noundef %app)
  br label %again

cleanup:                                          ; preds = %__skb_put.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__skb_put.exit ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_mac_hdr_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47, !48, !50, !52, !54, !55, !57, !59, !61, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__param_garp_join_time, !1, !"__param_garp_join_time", i1 false, i1 false}
!1 = !{!"../net/802/garp.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_garp_join_timetype352, !1, !"__UNIQUE_ID_garp_join_timetype352", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_garp_join_time353, !4, !"__UNIQUE_ID_garp_join_time353", i1 false, i1 false}
!4 = !{!"../net/802/garp.c", i32 23, i32 1}
!5 = !{ptr @__UNIQUE_ID_file354, !6, !"__UNIQUE_ID_file354", i1 false, i1 false}
!6 = !{!"../net/802/garp.c", i32 24, i32 1}
!7 = !{ptr @__UNIQUE_ID_license355, !6, !"__UNIQUE_ID_license355", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/802/garp.c", i32 358, i32 27}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../net/802/garp.c", i32 359, i32 31}
!14 = !{ptr @__ksymtab_garp_request_join, !15, !"__ksymtab_garp_request_join", i1 false, i1 false}
!15 = !{!"../net/802/garp.c", i32 372, i32 1}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../net/802/garp.c", i32 378, i32 27}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../net/802/garp.c", i32 379, i32 31}
!20 = !{ptr @__ksymtab_garp_request_leave, !21, !"__ksymtab_garp_request_leave", i1 false, i1 false}
!21 = !{!"../net/802/garp.c", i32 391, i32 1}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../net/802/garp.c", i32 574, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../net/802/garp.c", i32 576, i32 7}
!27 = !{ptr @garp_init_applicant.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../net/802/garp.c", i32 594, i32 2}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @garp_init_applicant.__key.6, !31, !"__key", i1 false, i1 false}
!31 = !{!"../net/802/garp.c", i32 597, i32 2}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @__ksymtab_garp_init_applicant, !34, !"__ksymtab_garp_init_applicant", i1 false, i1 false}
!34 = !{!"../net/802/garp.c", i32 608, i32 1}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../net/802/garp.c", i32 612, i32 27}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../net/802/garp.c", i32 613, i32 31}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../net/802/garp.c", i32 615, i32 2}
!41 = !{ptr @__ksymtab_garp_uninit_applicant, !42, !"__ksymtab_garp_uninit_applicant", i1 false, i1 false}
!42 = !{!"../net/802/garp.c", i32 635, i32 1}
!43 = !{ptr @__ksymtab_garp_register_application, !44, !"__ksymtab_garp_register_application", i1 false, i1 false}
!44 = !{!"../net/802/garp.c", i32 643, i32 1}
!45 = !{ptr @__ksymtab_garp_unregister_application, !46, !"__ksymtab_garp_unregister_application", i1 false, i1 false}
!46 = !{!"../net/802/garp.c", i32 649, i32 1}
!47 = !{ptr @__param_str_garp_join_time, !1, !"__param_str_garp_join_time", i1 false, i1 false}
!48 = !{ptr @garp_join_time, !49, !"garp_join_time", i1 false, i1 false}
!49 = !{!"../net/802/garp.c", i32 21, i32 21}
!50 = !{ptr @garp_applicant_state_table, !51, !"garp_applicant_state_table", i1 false, i1 false}
!51 = !{!"../net/802/garp.c", i32 29, i32 3}
!52 = !{ptr @skb_queue_head_init.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!54 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../net/802/garp.c", i32 558, i32 27}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../net/802/garp.c", i32 562, i32 7}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../net/802/garp.c", i32 519, i32 9}
!61 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../net/802/garp.c", i32 522, i32 8}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{i64 2156115351}
!75 = !{i64 2156133349}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{i64 2154577795, i64 2154578283, i64 2154577832, i64 2154577888, i64 2154577922, i64 2154577946, i64 2154577987, i64 2154578008, i64 2154578036, i64 2154578070}
