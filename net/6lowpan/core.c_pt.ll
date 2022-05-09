; ModuleID = '/llk/IR_all_yes/net/6lowpan/core.c_pt.bc'
source_filename = "../net/6lowpan/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+lowpan_register_netdevice\22, \22a\22\09"
module asm "\09.weak\09__crc_lowpan_register_netdevice\09\09\09\09"
module asm "\09.long\09__crc_lowpan_register_netdevice\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lowpan_register_netdevice:\09\09\09\09\09"
module asm "\09.asciz \09\22lowpan_register_netdevice\22\09\09\09\09\09"
module asm "__kstrtabns_lowpan_register_netdevice:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lowpan_register_netdev\22, \22a\22\09"
module asm "\09.weak\09__crc_lowpan_register_netdev\09\09\09\09"
module asm "\09.long\09__crc_lowpan_register_netdev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lowpan_register_netdev:\09\09\09\09\09"
module asm "\09.asciz \09\22lowpan_register_netdev\22\09\09\09\09\09"
module asm "__kstrtabns_lowpan_register_netdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lowpan_unregister_netdevice\22, \22a\22\09"
module asm "\09.weak\09__crc_lowpan_unregister_netdevice\09\09\09\09"
module asm "\09.long\09__crc_lowpan_unregister_netdevice\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lowpan_unregister_netdevice:\09\09\09\09\09"
module asm "\09.asciz \09\22lowpan_unregister_netdevice\22\09\09\09\09\09"
module asm "__kstrtabns_lowpan_unregister_netdevice:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lowpan_unregister_netdev\22, \22a\22\09"
module asm "\09.weak\09__crc_lowpan_unregister_netdev\09\09\09\09"
module asm "\09.long\09__crc_lowpan_unregister_netdev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lowpan_unregister_netdev:\09\09\09\09\09"
module asm "\09.asciz \09\22lowpan_unregister_netdev\22\09\09\09\09\09"
module asm "__kstrtabns_lowpan_unregister_netdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ndisc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.140, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
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
%union.anon.140 = type { ptr }
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
%struct.wpan_dev = type { ptr, i32, %struct.list_head, ptr, ptr, ptr, i32, i16, i16, i64, %struct.atomic_t, %struct.atomic_t, i8, i8, i8, i8, i8, i8, i8 }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }

@lowpan_register_netdevice.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&lowpan_dev(dev)->ctx.lock\00", [37 x i8] zeroinitializer }, align 32
@lowpan_ndisc_ops = external dso_local constant %struct.ndisc_ops, align 4
@__kstrtab_lowpan_register_netdevice = external dso_local constant [0 x i8], align 1
@__kstrtabns_lowpan_register_netdevice = external dso_local constant [0 x i8], align 1
@__ksymtab_lowpan_register_netdevice = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lowpan_register_netdevice to i32), ptr @__kstrtab_lowpan_register_netdevice, ptr @__kstrtabns_lowpan_register_netdevice }, section "___ksymtab+lowpan_register_netdevice", align 4
@__kstrtab_lowpan_register_netdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_lowpan_register_netdev = external dso_local constant [0 x i8], align 1
@__ksymtab_lowpan_register_netdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lowpan_register_netdev to i32), ptr @__kstrtab_lowpan_register_netdev, ptr @__kstrtabns_lowpan_register_netdev }, section "___ksymtab+lowpan_register_netdev", align 4
@__kstrtab_lowpan_unregister_netdevice = external dso_local constant [0 x i8], align 1
@__kstrtabns_lowpan_unregister_netdevice = external dso_local constant [0 x i8], align 1
@__ksymtab_lowpan_unregister_netdevice = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lowpan_unregister_netdevice to i32), ptr @__kstrtab_lowpan_unregister_netdevice, ptr @__kstrtabns_lowpan_unregister_netdevice }, section "___ksymtab+lowpan_unregister_netdevice", align 4
@__kstrtab_lowpan_unregister_netdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_lowpan_unregister_netdev = external dso_local constant [0 x i8], align 1
@__ksymtab_lowpan_unregister_netdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lowpan_unregister_netdev to i32), ptr @__kstrtab_lowpan_unregister_netdev, ptr @__kstrtabns_lowpan_unregister_netdev }, section "___ksymtab+lowpan_unregister_netdev", align 4
@lowpan_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @lowpan_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_6lowpan__486_178_lowpan_module_init6 = internal global ptr @lowpan_module_init, section ".initcall6.init", align 4
@__exitcall_lowpan_module_exit = internal global ptr @lowpan_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file487 = internal constant [33 x i8] c"6lowpan.file=net/6lowpan/6lowpan\00", section ".modinfo", align 1
@__UNIQUE_ID_license488 = internal constant [20 x i8] c"6lowpan.license=GPL\00", section ".modinfo", align 1
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nhc_dest\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nhc_fragment\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nhc_hop\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nhc_ipv6\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nhc_mobility\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nhc_routing\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nhc_udp\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 35, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"lowpan_notifier\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 145, i32 30 }
@___asan_gen_.27 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 313, i32 9 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 161, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 162, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 163, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 164, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 165, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 166, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [22 x i8] c"../net/6lowpan/core.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 167, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_file487, ptr @__UNIQUE_ID_license488, ptr @__exitcall_lowpan_module_exit, ptr @__initcall__kmod_6lowpan__486_178_lowpan_module_init6, ptr @__ksymtab_lowpan_register_netdev, ptr @__ksymtab_lowpan_register_netdevice, ptr @__ksymtab_lowpan_unregister_netdev, ptr @__ksymtab_lowpan_unregister_netdevice, ptr @lowpan_module_exit, ptr @lowpan_register_netdevice.__key, ptr @.str, ptr @lowpan_notifier, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_register_netdevice.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lowpan_register_netdevice(ptr noundef %dev, i32 noundef %lltype) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %lltype to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %lltype, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
    i32 0, label %sw.bb1
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 6, %sw.bb1 ], [ 8, %entry.sw.epilog.sink.split_crit_edge ]
  %addr_len2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %1 = ptrtoint ptr %addr_len2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %.sink, ptr %addr_len2, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 825, ptr %type, align 16
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %3 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1280, ptr %mtu, align 4
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %lltype, ptr %add.ptr.i.i, align 4
  %ctx = getelementptr i8, ptr %dev, i32 2312
  tail call void @__raw_spin_lock_init(ptr noundef %ctx, ptr noundef nonnull @.str, ptr noundef nonnull @lowpan_register_netdevice.__key, i16 noundef signext 3) #7
  %arrayidx = getelementptr i8, ptr %dev, i32 2360
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr i8, ptr %dev, i32 2388
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr i8, ptr %dev, i32 2416
  %7 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr i8, ptr %dev, i32 2444
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr i8, ptr %dev, i32 2472
  %9 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %arrayidx.4, align 4
  %arrayidx.5 = getelementptr i8, ptr %dev, i32 2500
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 5, ptr %arrayidx.5, align 4
  %arrayidx.6 = getelementptr i8, ptr %dev, i32 2528
  %11 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 6, ptr %arrayidx.6, align 4
  %arrayidx.7 = getelementptr i8, ptr %dev, i32 2556
  %12 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 7, ptr %arrayidx.7, align 4
  %arrayidx.8 = getelementptr i8, ptr %dev, i32 2584
  %13 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 8, ptr %arrayidx.8, align 4
  %arrayidx.9 = getelementptr i8, ptr %dev, i32 2612
  %14 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 9, ptr %arrayidx.9, align 4
  %arrayidx.10 = getelementptr i8, ptr %dev, i32 2640
  %15 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 10, ptr %arrayidx.10, align 4
  %arrayidx.11 = getelementptr i8, ptr %dev, i32 2668
  %16 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 11, ptr %arrayidx.11, align 4
  %arrayidx.12 = getelementptr i8, ptr %dev, i32 2696
  %17 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 12, ptr %arrayidx.12, align 4
  %arrayidx.13 = getelementptr i8, ptr %dev, i32 2724
  %18 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 13, ptr %arrayidx.13, align 4
  %arrayidx.14 = getelementptr i8, ptr %dev, i32 2752
  %19 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 14, ptr %arrayidx.14, align 4
  %arrayidx.15 = getelementptr i8, ptr %dev, i32 2780
  %20 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 15, ptr %arrayidx.15, align 4
  %ndisc_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 46
  %21 = ptrtoint ptr %ndisc_ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @lowpan_ndisc_ops, ptr %ndisc_ops, align 8
  %call8 = tail call i32 @register_netdevice(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lowpan_dev_debugfs_init(ptr noundef %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.epilog.cleanup_crit_edge
  ret i32 %call8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lowpan_dev_debugfs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lowpan_register_netdev(ptr noundef %dev, i32 noundef %lltype) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #7
  %0 = zext i32 %lltype to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %lltype, label %entry.sw.epilog.i_crit_edge [
    i32 1, label %entry.sw.epilog.sink.split.i_crit_edge
    i32 0, label %sw.bb1.i
  ]

entry.sw.epilog.sink.split.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb1.i, %entry.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 6, %sw.bb1.i ], [ 8, %entry.sw.epilog.sink.split.i_crit_edge ]
  %addr_len2.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %1 = ptrtoint ptr %addr_len2.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %.sink.i, ptr %addr_len2.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %entry.sw.epilog.i_crit_edge
  %type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 825, ptr %type.i, align 16
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %3 = ptrtoint ptr %mtu.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1280, ptr %mtu.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %lltype, ptr %add.ptr.i.i.i, align 4
  %ctx.i = getelementptr i8, ptr %dev, i32 2312
  tail call void @__raw_spin_lock_init(ptr noundef %ctx.i, ptr noundef nonnull @.str, ptr noundef nonnull @lowpan_register_netdevice.__key, i16 noundef signext 3) #7
  %arrayidx.i = getelementptr i8, ptr %dev, i32 2360
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx.i, align 4
  %arrayidx.1.i = getelementptr i8, ptr %dev, i32 2388
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr i8, ptr %dev, i32 2416
  %7 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %arrayidx.2.i, align 4
  %arrayidx.3.i = getelementptr i8, ptr %dev, i32 2444
  %8 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %arrayidx.3.i, align 4
  %arrayidx.4.i = getelementptr i8, ptr %dev, i32 2472
  %9 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %arrayidx.4.i, align 4
  %arrayidx.5.i = getelementptr i8, ptr %dev, i32 2500
  %10 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 5, ptr %arrayidx.5.i, align 4
  %arrayidx.6.i = getelementptr i8, ptr %dev, i32 2528
  %11 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 6, ptr %arrayidx.6.i, align 4
  %arrayidx.7.i = getelementptr i8, ptr %dev, i32 2556
  %12 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 7, ptr %arrayidx.7.i, align 4
  %arrayidx.8.i = getelementptr i8, ptr %dev, i32 2584
  %13 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 8, ptr %arrayidx.8.i, align 4
  %arrayidx.9.i = getelementptr i8, ptr %dev, i32 2612
  %14 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 9, ptr %arrayidx.9.i, align 4
  %arrayidx.10.i = getelementptr i8, ptr %dev, i32 2640
  %15 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 10, ptr %arrayidx.10.i, align 4
  %arrayidx.11.i = getelementptr i8, ptr %dev, i32 2668
  %16 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 11, ptr %arrayidx.11.i, align 4
  %arrayidx.12.i = getelementptr i8, ptr %dev, i32 2696
  %17 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 12, ptr %arrayidx.12.i, align 4
  %arrayidx.13.i = getelementptr i8, ptr %dev, i32 2724
  %18 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 13, ptr %arrayidx.13.i, align 4
  %arrayidx.14.i = getelementptr i8, ptr %dev, i32 2752
  %19 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 14, ptr %arrayidx.14.i, align 4
  %arrayidx.15.i = getelementptr i8, ptr %dev, i32 2780
  %20 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 15, ptr %arrayidx.15.i, align 4
  %ndisc_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 46
  %21 = ptrtoint ptr %ndisc_ops.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @lowpan_ndisc_ops, ptr %ndisc_ops.i, align 8
  %call8.i = tail call i32 @register_netdevice(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %sw.epilog.i.lowpan_register_netdevice.exit_crit_edge, label %if.end.i

sw.epilog.i.lowpan_register_netdevice.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lowpan_register_netdevice.exit

if.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lowpan_dev_debugfs_init(ptr noundef %dev) #7
  br label %lowpan_register_netdevice.exit

lowpan_register_netdevice.exit:                   ; preds = %if.end.i, %sw.epilog.i.lowpan_register_netdevice.exit_crit_edge
  tail call void @rtnl_unlock() #7
  ret i32 %call8.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lowpan_unregister_netdevice(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef null) #7
  tail call void @lowpan_dev_debugfs_exit(ptr noundef %dev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lowpan_dev_debugfs_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lowpan_unregister_netdev(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #7
  tail call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef null) #7
  tail call void @lowpan_dev_debugfs_exit(ptr noundef %dev) #7
  tail call void @rtnl_unlock() #7
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @addrconf_ifid_802154_6lowpan(ptr nocapture noundef %eui, ptr nocapture noundef readonly %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 2808
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 83
  %2 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ieee802154_ptr, align 4
  %short_addr = getelementptr inbounds %struct.wpan_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %short_addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %short_addr, align 2
  %6 = and i16 %5, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i = icmp eq i16 %6, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pan_id = getelementptr inbounds %struct.wpan_dev, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %pan_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pan_id, align 8
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %8, label %if.end.if.else_crit_edge [
    i16 0, label %land.lhs.true
    i16 -1, label %if.end.if.end15_crit_edge
  ]

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp5 = icmp eq i16 %5, 0
  br i1 %cmp5, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %10 = tail call i16 @llvm.bswap.i16(i16 %8) #7
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end.if.end15_crit_edge
  %storemerge = phi i16 [ %10, %if.else ], [ 0, %if.end.if.end15_crit_edge ]
  %11 = ptrtoint ptr %eui to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %storemerge, ptr %eui, align 1
  %12 = lshr i16 %storemerge, 8
  %13 = trunc i16 %12 to i8
  %14 = and i8 %13, -3
  store i8 %14, ptr %eui, align 1
  %arrayidx18 = getelementptr i8, ptr %eui, i32 2
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx18, align 1
  %arrayidx19 = getelementptr i8, ptr %eui, i32 3
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %arrayidx19, align 1
  %arrayidx20 = getelementptr i8, ptr %eui, i32 4
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -2, ptr %arrayidx20, align 1
  %arrayidx21 = getelementptr i8, ptr %eui, i32 5
  %18 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx21, align 1
  %arrayidx22 = getelementptr i8, ptr %eui, i32 6
  %19 = ptrtoint ptr %short_addr to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %short_addr, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #7
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %21, ptr %arrayidx22, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lowpan_module_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lowpan_debugfs_exit() #7
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @lowpan_notifier) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lowpan_debugfs_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lowpan_module_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lowpan_debugfs_init() #10
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @lowpan_notifier) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lowpan_debugfs_exit() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext false, ptr noundef nonnull @.str.3) #7
  %call2 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext false, ptr noundef nonnull @.str.4) #7
  %call3 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext false, ptr noundef nonnull @.str.5) #7
  %call4 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext false, ptr noundef nonnull @.str.6) #7
  %call5 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext false, ptr noundef nonnull @.str.7) #7
  %call6 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext false, ptr noundef nonnull @.str.8) #7
  %call7 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext false, ptr noundef nonnull @.str.9) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lowpan_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  %addr = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr) #7
  %2 = getelementptr inbounds [4 x i32], ptr %addr, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i32], ptr %addr, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i32], ptr %addr, i32 0, i32 3
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 825, i16 %6)
  %cmp.not = icmp eq i16 %6, 825
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 80
  %7 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i, label %if.end.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

if.end.__in6_dev_get.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %call2.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__in6_dev_get.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 313, ptr noundef nonnull @.str.2) #7
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %if.end.__in6_dev_get.exit_crit_edge
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %__in6_dev_get.exit.cleanup_crit_edge, label %if.end4

__in6_dev_get.exit.cleanup_crit_edge:             ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %__in6_dev_get.exit
  %9 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %event, label %if.end4.cleanup_crit_edge [
    i32 1, label %if.end4.sw.bb_crit_edge
    i32 4, label %if.end4.sw.bb_crit_edge32
    i32 2, label %for.cond.preheader
  ]

if.end4.sw.bb_crit_edge32:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end4.sw.bb_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr i8, ptr %1, i32 2384
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #7
  %flags.1 = getelementptr i8, ptr %1, i32 2412
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.1) #7
  %flags.2 = getelementptr i8, ptr %1, i32 2440
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.2) #7
  %flags.3 = getelementptr i8, ptr %1, i32 2468
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.3) #7
  %flags.4 = getelementptr i8, ptr %1, i32 2496
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.4) #7
  %flags.5 = getelementptr i8, ptr %1, i32 2524
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.5) #7
  %flags.6 = getelementptr i8, ptr %1, i32 2552
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.6) #7
  %flags.7 = getelementptr i8, ptr %1, i32 2580
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.7) #7
  %flags.8 = getelementptr i8, ptr %1, i32 2608
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.8) #7
  %flags.9 = getelementptr i8, ptr %1, i32 2636
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.9) #7
  %flags.10 = getelementptr i8, ptr %1, i32 2664
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.10) #7
  %flags.11 = getelementptr i8, ptr %1, i32 2692
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.11) #7
  %flags.12 = getelementptr i8, ptr %1, i32 2720
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.12) #7
  %flags.13 = getelementptr i8, ptr %1, i32 2748
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.13) #7
  %flags.14 = getelementptr i8, ptr %1, i32 2776
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.14) #7
  %flags.15 = getelementptr i8, ptr %1, i32 2804
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.15) #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end4.sw.bb_crit_edge, %if.end4.sw.bb_crit_edge32
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 2304
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  br i1 %cmp.i, label %land.lhs.true, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.bb
  %priv.i.i = getelementptr i8, ptr %1, i32 2808
  %12 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i.i, align 4
  %ieee802154_ptr.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 83
  %14 = ptrtoint ptr %ieee802154_ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ieee802154_ptr.i, align 4
  %short_addr.i = getelementptr inbounds %struct.wpan_dev, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %short_addr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %short_addr.i, align 2
  %18 = and i16 %17, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i.i = icmp eq i16 %18, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true
  %pan_id.i = getelementptr inbounds %struct.wpan_dev, ptr %15, i32 0, i32 7
  %19 = ptrtoint ptr %pan_id.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %pan_id.i, align 8
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %20, label %if.end.i.if.else.i_crit_edge [
    i16 0, label %land.lhs.true.i28
    i16 -1, label %if.end.i.if.then10_crit_edge
  ]

if.end.i.if.then10_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i28:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp5.i = icmp eq i16 %17, 0
  br i1 %cmp5.i, label %land.lhs.true.i28.cleanup_crit_edge, label %land.lhs.true.i28.if.else.i_crit_edge

land.lhs.true.i28.if.else.i_crit_edge:            ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i28.cleanup_crit_edge:              ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.i:                                        ; preds = %land.lhs.true.i28.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %22 = tail call i16 @llvm.bswap.i16(i16 %20) #7
  br label %if.then10

if.then10:                                        ; preds = %if.else.i, %if.end.i.if.then10_crit_edge
  %storemerge.i = phi i16 [ %22, %if.else.i ], [ 0, %if.end.i.if.then10_crit_edge ]
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %storemerge.i, ptr %3, align 4
  %24 = lshr i16 %storemerge.i, 8
  %25 = trunc i16 %24 to i8
  %26 = and i8 %25, -3
  store i8 %26, ptr %3, align 4
  %arrayidx18.i = getelementptr inbounds i8, ptr %addr, i32 10
  %27 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx18.i, align 2
  %arrayidx19.i = getelementptr inbounds i8, ptr %addr, i32 11
  %28 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %arrayidx19.i, align 1
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -2, ptr %4, align 4
  %arrayidx21.i = getelementptr inbounds i8, ptr %addr, i32 13
  %30 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx21.i, align 1
  %arrayidx22.i = getelementptr inbounds i8, ptr %addr, i32 14
  %31 = tail call i16 @llvm.bswap.i16(i16 %17) #7
  %32 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %arrayidx22.i, align 2
  %33 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -25165824, ptr %addr, align 4
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %2, align 4
  call void @addrconf_add_linklocal(ptr noundef nonnull %8, ptr noundef nonnull %addr, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %land.lhs.true.i28.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %for.cond.preheader, %if.end4.cleanup_crit_edge, %__in6_dev_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %__in6_dev_get.exit.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 1, %sw.bb.cleanup_crit_edge ], [ 1, %if.then10 ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %land.lhs.true.i28.cleanup_crit_edge ], [ 1, %for.cond.preheader ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @addrconf_add_linklocal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @lowpan_debugfs_init() local_unnamed_addr #6 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @lowpan_register_netdevice.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/6lowpan/core.c", i32 35, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_lowpan_register_netdevice, !4, !"__ksymtab_lowpan_register_netdevice", i1 false, i1 false}
!4 = !{!"../net/6lowpan/core.c", i32 49, i32 1}
!5 = !{ptr @__ksymtab_lowpan_register_netdev, !6, !"__ksymtab_lowpan_register_netdev", i1 false, i1 false}
!6 = !{!"../net/6lowpan/core.c", i32 61, i32 1}
!7 = !{ptr @__ksymtab_lowpan_unregister_netdevice, !8, !"__ksymtab_lowpan_unregister_netdevice", i1 false, i1 false}
!8 = !{!"../net/6lowpan/core.c", i32 68, i32 1}
!9 = !{ptr @__ksymtab_lowpan_unregister_netdev, !10, !"__ksymtab_lowpan_unregister_netdev", i1 false, i1 false}
!10 = !{!"../net/6lowpan/core.c", i32 76, i32 1}
!11 = !{ptr @__initcall__kmod_6lowpan__486_178_lowpan_module_init6, !12, !"__initcall__kmod_6lowpan__486_178_lowpan_module_init6", i1 false, i1 false}
!12 = !{!"../net/6lowpan/core.c", i32 178, i32 1}
!13 = !{ptr @__exitcall_lowpan_module_exit, !14, !"__exitcall_lowpan_module_exit", i1 false, i1 false}
!14 = !{!"../net/6lowpan/core.c", i32 179, i32 1}
!15 = !{ptr @__UNIQUE_ID_file487, !16, !"__UNIQUE_ID_file487", i1 false, i1 false}
!16 = !{!"../net/6lowpan/core.c", i32 181, i32 1}
!17 = !{ptr @__UNIQUE_ID_license488, !16, !"__UNIQUE_ID_license488", i1 false, i1 false}
!18 = !{ptr @lowpan_notifier, !19, !"lowpan_notifier", i1 false, i1 false}
!19 = !{!"../net/6lowpan/core.c", i32 145, i32 30}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/6lowpan/core.c", i32 161, i32 2}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/6lowpan/core.c", i32 162, i32 2}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/6lowpan/core.c", i32 163, i32 2}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/6lowpan/core.c", i32 164, i32 2}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/6lowpan/core.c", i32 165, i32 2}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/6lowpan/core.c", i32 166, i32 2}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/6lowpan/core.c", i32 167, i32 2}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
