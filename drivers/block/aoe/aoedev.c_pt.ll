; ModuleID = '/llk/IR_all_yes/drivers/block/aoe/aoedev.c_pt.bc'
source_filename = "../drivers/block/aoe/aoedev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.105 }
%union.anon.105 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.aoedev = type { ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, %struct.work_struct, ptr, ptr, ptr, %struct.list_head, %struct.blk_mq_tag_set, %struct.hd_geometry, i64, %struct.timer_list, %struct.spinlock, %struct.sk_buff_head, ptr, %struct.anon.127, i32, [61 x %struct.list_head], %struct.list_head, ptr, i32, ptr, i32, [512 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hd_geometry = type { i8, i8, i16, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.anon.127 = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.frame = type { %struct.list_head, i32, i64, i32, i32, ptr, ptr, ptr, ptr, %struct.bvec_iter, i8 }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.aoetgt = type { [6 x i8], i16, ptr, %struct.list_head, [8 x %struct.aoeif], ptr, i16, i16, i16, i16, i32, i32, i32, i32, i32, i8 }
%struct.aoeif = type { ptr, i32, i32 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.68, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.69, %union.anon.70, %union.anon.71, %union.anon.76, ptr, ptr }
%union.anon.68 = type { %struct.list_head }
%union.anon.69 = type { %struct.hlist_node }
%union.anon.70 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.71 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, %struct.list_head, ptr }
%union.anon.76 = type { i64, [8 x i8] }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.67, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bio_issue = type { i64 }
%union.anon.67 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.112, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.112 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.126 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }

@__param_str_aoe_dyndevs = internal constant [16 x i8] c"aoe.aoe_dyndevs\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@aoe_dyndevs = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_aoe_dyndevs = internal constant %struct.kernel_param { ptr @__param_str_aoe_dyndevs, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.105 { ptr @aoe_dyndevs } }, section "__param", align 4
@__UNIQUE_ID_aoe_dyndevstype371 = internal constant [29 x i8] c"aoe.parmtype=aoe_dyndevs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_aoe_dyndevs372 = internal constant [60 x i8] c"aoe.parm=aoe_dyndevs:Use dynamic minor numbers for devices.\00", section ".modinfo", align 1
@devlist_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@devlist = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@aoedev_by_aoeaddr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(work_completion)(&d->work)\00", [36 x i8] zeroinitializer }, align 32
@aoedev_by_aoeaddr.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&d->lock\00", [23 x i8] zeroinitializer }, align 32
@aoedev_by_aoeaddr.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(&d->timer)\00", [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"devlist_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"all\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@skbfree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013aoe: %s holds ref: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"skbfree\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/block/aoe/aoedev.c\00", [37 x i8] zeroinitializer }, align 32
@skbfree._entry_ptr = internal global ptr @skbfree._entry, section ".printk_index", align 4
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"netif\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot free skb -- memory leaked.\00", [62 x i8] zeroinitializer }, align 32
@used_minors_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@used_minors = internal global { [2048 x i32], [2048 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"used_minors_lock\00", [47 x i8] zeroinitializer }, align 32
@minor_get_static._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.12, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013aoe: %s %d slots per shelf\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"minor_get_static\00", [47 x i8] zeroinitializer }, align 32
@minor_get_static._entry_ptr = internal global ptr @minor_get_static._entry, section ".printk_index", align 4
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"static minor device numbers support only\00", [55 x i8] zeroinitializer }, align 32
@minor_get_static._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.12, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013aoe: %s with e%ld.%d\0A\00", [40 x i8] zeroinitializer }, align 32
@minor_get_static._entry_ptr.21 = internal global ptr @minor_get_static._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cannot use static minor device numbers\00", [57 x i8] zeroinitializer }, align 32
@minor_get_static._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.17, ptr @.str.12, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013aoe: %s %lu\0A\00", [17 x i8] zeroinitializer }, align 32
@minor_get_static._entry_ptr.25 = internal global ptr @minor_get_static._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"existing device already has static minor number\00", [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.28 = private unnamed_addr constant [12 x i8] c"aoe_dyndevs\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 21, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"devlist_lock\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [8 x i8] c"devlist\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 25, i32 23 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 472, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 473, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 476, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 26, i32 8 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 319, i32 23 }
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 156, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 414, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"used_minors_lock\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [12 x i8] c"used_minors\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 38, i32 8 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 37, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 72, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 81, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private constant [30 x i8] c"../drivers/block/aoe/aoedev.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 90, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1984, i32 2 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_aoe_dyndevs372, ptr @__UNIQUE_ID_aoe_dyndevstype371, ptr @__param_aoe_dyndevs, ptr @minor_get_static._entry, ptr @minor_get_static._entry.19, ptr @minor_get_static._entry.23, ptr @minor_get_static._entry_ptr, ptr @minor_get_static._entry_ptr.21, ptr @minor_get_static._entry_ptr.25, ptr @skbfree._entry, ptr @skbfree._entry_ptr, ptr @aoe_dyndevs, ptr @devlist_lock, ptr @devlist, ptr @aoedev_by_aoeaddr.__key, ptr @.str, ptr @aoedev_by_aoeaddr.__key.1, ptr @.str.2, ptr @aoedev_by_aoeaddr.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @used_minors_lock, ptr @used_minors, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @skb_queue_head_init.__key, ptr @.str.27], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoe_dyndevs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devlist_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devlist to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoedev_by_aoeaddr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoedev_by_aoeaddr.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aoedev_by_aoeaddr.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skbfree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @used_minors_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @used_minors to i32), i32 8192, i32 10240, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minor_get_static._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minor_get_static._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minor_get_static._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aoedev_put(ptr nocapture noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devlist_lock) #10
  %ref = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 11
  %0 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref, align 8
  %dec = add i32 %1, -1
  store i32 %dec, ptr %ref, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devlist_lock, i32 noundef %call2) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aoedev_downdev(ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %2 = and i16 %1, -2
  store i16 %2, ptr %flags, align 2
  br label %for.body

for.body:                                         ; preds = %for.inc7.for.body_crit_edge, %entry
  %i.089 = phi i32 [ 0, %entry ], [ %inc, %for.inc7.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.aoedev, ptr %d, i32 0, i32 26, i32 %i.089
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %cmp.i.not85 = icmp eq ptr %4, %arrayidx
  br i1 %cmp.i.not85, label %for.body.for.inc7_crit_edge, label %for.body.for.body5_crit_edge

for.body.for.body5_crit_edge:                     ; preds = %for.body
  br label %for.body5

for.body.for.inc7_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc7

for.body5:                                        ; preds = %downdev_frame.exit.for.body5_crit_edge, %for.body.for.body5_crit_edge
  %pos.086 = phi ptr [ %nx.088, %downdev_frame.exit.for.body5_crit_edge ], [ %4, %for.body.for.body5_crit_edge ]
  %5 = ptrtoint ptr %pos.086 to i32
  call void @__asan_load4_noabort(i32 %5)
  %nx.088 = load ptr, ptr %pos.086, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.086) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body5.list_del.exit.i_crit_edge

for.body5.list_del.exit.i_crit_edge:              ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.086, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %pos.086 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pos.086, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body5.list_del.exit.i_crit_edge
  %12 = ptrtoint ptr %pos.086 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.086, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.086, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %buf.i = getelementptr inbounds %struct.frame, ptr %pos.086, i32 0, i32 8
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %list_del.exit.i.downdev_frame.exit_crit_edge, label %if.then.i

list_del.exit.i.downdev_frame.exit_crit_edge:     ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %downdev_frame.exit

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %dec.i = add i32 %17, -1
  store i32 %dec.i, ptr %15, align 4
  %t.i = getelementptr inbounds %struct.frame, ptr %pos.086, i32 0, i32 5
  %18 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %t.i, align 8
  %d.i = getelementptr inbounds %struct.aoetgt, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %d.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d.i, align 4
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buf.i, align 4
  tail call void @aoe_failbuf(ptr noundef %21, ptr noundef %23) #10
  br label %downdev_frame.exit

downdev_frame.exit:                               ; preds = %if.then.i, %list_del.exit.i.downdev_frame.exit_crit_edge
  tail call void @aoe_freetframe(ptr noundef %pos.086) #10
  %cmp.i.not = icmp eq ptr %nx.088, %arrayidx
  br i1 %cmp.i.not, label %downdev_frame.exit.for.inc7_crit_edge, label %downdev_frame.exit.for.body5_crit_edge

downdev_frame.exit.for.body5_crit_edge:           ; preds = %downdev_frame.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body5

downdev_frame.exit.for.inc7_crit_edge:            ; preds = %downdev_frame.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc7

for.inc7:                                         ; preds = %downdev_frame.exit.for.inc7_crit_edge, %for.body.for.inc7_crit_edge
  %inc = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc, 61
  br i1 %exitcond.not, label %for.end8, label %for.inc7.for.body_crit_edge

for.inc7.for.body_crit_edge:                      ; preds = %for.inc7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end8:                                         ; preds = %for.inc7
  %rexmitq = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 27
  %24 = ptrtoint ptr %rexmitq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rexmitq, align 4
  %cmp.i66.not91 = icmp eq ptr %25, %rexmitq
  br i1 %cmp.i66.not91, label %for.end8.for.end18_crit_edge, label %for.end8.for.body15_crit_edge

for.end8.for.body15_crit_edge:                    ; preds = %for.end8
  br label %for.body15

for.end8.for.end18_crit_edge:                     ; preds = %for.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end18

for.body15:                                       ; preds = %downdev_frame.exit80.for.body15_crit_edge, %for.end8.for.body15_crit_edge
  %pos.192 = phi ptr [ %nx.194, %downdev_frame.exit80.for.body15_crit_edge ], [ %25, %for.end8.for.body15_crit_edge ]
  %26 = ptrtoint ptr %pos.192 to i32
  call void @__asan_load4_noabort(i32 %26)
  %nx.194 = load ptr, ptr %pos.192, align 4
  %call.i.i.i68 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.192) #10
  br i1 %call.i.i.i68, label %if.end.i.i.i71, label %for.body15.list_del.exit.i75_crit_edge

for.body15.list_del.exit.i75_crit_edge:           ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i75

if.end.i.i.i71:                                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i69 = getelementptr inbounds %struct.list_head, ptr %pos.192, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i69, align 4
  %29 = ptrtoint ptr %pos.192 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pos.192, align 4
  %prev1.i.i.i.i70 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i70, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit.i75

list_del.exit.i75:                                ; preds = %if.end.i.i.i71, %for.body15.list_del.exit.i75_crit_edge
  %33 = ptrtoint ptr %pos.192 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.192, align 4
  %prev.i.i72 = getelementptr inbounds %struct.list_head, ptr %pos.192, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i72 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i72, align 4
  %buf.i73 = getelementptr inbounds %struct.frame, ptr %pos.192, i32 0, i32 8
  %35 = ptrtoint ptr %buf.i73 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf.i73, align 4
  %tobool.not.i74 = icmp eq ptr %36, null
  br i1 %tobool.not.i74, label %list_del.exit.i75.downdev_frame.exit80_crit_edge, label %if.then.i79

list_del.exit.i75.downdev_frame.exit80_crit_edge: ; preds = %list_del.exit.i75
  call void @__sanitizer_cov_trace_pc() #12
  br label %downdev_frame.exit80

if.then.i79:                                      ; preds = %list_del.exit.i75
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %dec.i76 = add i32 %38, -1
  store i32 %dec.i76, ptr %36, align 4
  %t.i77 = getelementptr inbounds %struct.frame, ptr %pos.192, i32 0, i32 5
  %39 = ptrtoint ptr %t.i77 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %t.i77, align 8
  %d.i78 = getelementptr inbounds %struct.aoetgt, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %d.i78 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %d.i78, align 4
  %43 = ptrtoint ptr %buf.i73 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buf.i73, align 4
  tail call void @aoe_failbuf(ptr noundef %42, ptr noundef %44) #10
  br label %downdev_frame.exit80

downdev_frame.exit80:                             ; preds = %if.then.i79, %list_del.exit.i75.downdev_frame.exit80_crit_edge
  tail call void @aoe_freetframe(ptr noundef %pos.192) #10
  %cmp.i66.not = icmp eq ptr %nx.194, %rexmitq
  br i1 %cmp.i66.not, label %downdev_frame.exit80.for.end18_crit_edge, label %downdev_frame.exit80.for.body15_crit_edge

downdev_frame.exit80.for.body15_crit_edge:        ; preds = %downdev_frame.exit80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body15

downdev_frame.exit80.for.end18_crit_edge:         ; preds = %downdev_frame.exit80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end18

for.end18:                                        ; preds = %downdev_frame.exit80.for.end18_crit_edge, %for.end8.for.end18_crit_edge
  %targets = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 28
  %45 = ptrtoint ptr %targets to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %targets, align 8
  %ntargets = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 29
  %47 = ptrtoint ptr %ntargets to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ntargets, align 4
  %add.ptr = getelementptr ptr, ptr %46, i32 %48
  %cmp2095 = icmp ult ptr %46, %add.ptr
  br i1 %cmp2095, label %for.end18.land.rhs_crit_edge, label %for.end18.for.end25_crit_edge

for.end18.for.end25_crit_edge:                    ; preds = %for.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end25

for.end18.land.rhs_crit_edge:                     ; preds = %for.end18
  br label %land.rhs

land.rhs:                                         ; preds = %for.body23.land.rhs_crit_edge, %for.end18.land.rhs_crit_edge
  %tt.096 = phi ptr [ %incdec.ptr, %for.body23.land.rhs_crit_edge ], [ %46, %for.end18.land.rhs_crit_edge ]
  %49 = ptrtoint ptr %tt.096 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tt.096, align 4
  %tobool22.not = icmp eq ptr %50, null
  br i1 %tobool22.not, label %land.rhs.for.end25_crit_edge, label %for.body23

land.rhs.for.end25_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end25

for.body23:                                       ; preds = %land.rhs
  tail call void @aoecmd_wreset(ptr noundef nonnull %50) #10
  %nout = getelementptr inbounds %struct.aoetgt, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %nout to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %nout, align 4
  %incdec.ptr = getelementptr ptr, ptr %tt.096, i32 1
  %cmp20 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp20, label %for.body23.land.rhs_crit_edge, label %for.body23.for.end25_crit_edge

for.body23.for.end25_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end25

for.body23.land.rhs_crit_edge:                    ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.end25:                                        ; preds = %for.body23.for.end25_crit_edge, %land.rhs.for.end25_crit_edge, %for.end18.for.end25_crit_edge
  %ip.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 24
  %52 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ip.i, align 8
  tail call void @aoe_failbuf(ptr noundef %d, ptr noundef %53) #10
  %rq2.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 24, i32 2
  %54 = ptrtoint ptr %rq2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rq2.i, align 8
  %cmp.i81 = icmp eq ptr %55, null
  br i1 %cmp.i81, label %for.end25.aoe_failip.exit_crit_edge, label %if.end.i

for.end25.aoe_failip.exit_crit_edge:              ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %aoe_failip.exit

if.end.i:                                         ; preds = %for.end25
  %add.ptr.i.i = getelementptr %struct.request, ptr %55, i32 1
  %nxbio.i = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 24, i32 1
  %56 = ptrtoint ptr %nxbio.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %nxbio.i, align 4
  %tobool.not22.i = icmp eq ptr %57, null
  br i1 %tobool.not22.i, label %while.endthread-pre-split.i, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %58 = phi ptr [ %65, %while.body.i.while.body.i_crit_edge ], [ %57, %if.end.i.while.body.i_crit_edge ]
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 10, ptr %bi_status.i, align 2
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %58, align 8
  %62 = ptrtoint ptr %nxbio.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %nxbio.i, align 4
  %63 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i.i, align 4
  %dec.i82 = add i32 %64, -1
  store i32 %dec.i82, ptr %add.ptr.i.i, align 4
  %65 = load ptr, ptr %nxbio.i, align 4
  %tobool.not.i83 = icmp eq ptr %65, null
  br i1 %tobool.not.i83, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.endthread-pre-split.i:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pr.i = load i32, ptr %add.ptr.i.i, align 4
  br label %while.end.i

while.end.i:                                      ; preds = %while.endthread-pre-split.i, %while.body.i.while.end.i_crit_edge
  %67 = phi i32 [ %.pr.i, %while.endthread-pre-split.i ], [ %dec.i82, %while.body.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool7.not.i = icmp eq i32 %67, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %while.end.i.aoe_failip.exit_crit_edge

while.end.i.aoe_failip.exit_crit_edge:            ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aoe_failip.exit

if.then8.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @aoe_end_request(ptr noundef %d, ptr noundef nonnull %55, i32 noundef 0) #10
  br label %aoe_failip.exit

aoe_failip.exit:                                  ; preds = %if.then8.i, %while.end.i.aoe_failip.exit_crit_edge, %for.end25.aoe_failip.exit_crit_edge
  %blkq = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 15
  %68 = ptrtoint ptr %blkq to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %blkq, align 8
  %tobool26.not = icmp eq ptr %69, null
  br i1 %tobool26.not, label %aoe_failip.exit.if.end_crit_edge, label %if.then

aoe_failip.exit.if.end_crit_edge:                 ; preds = %aoe_failip.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %aoe_failip.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @blk_mq_freeze_queue(ptr noundef nonnull %69) #10
  %70 = ptrtoint ptr %blkq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %blkq, align 8
  tail call void @blk_mq_quiesce_queue(ptr noundef %71) #10
  %72 = ptrtoint ptr %blkq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %blkq, align 8
  tail call void @blk_mq_unquiesce_queue(ptr noundef %73) #10
  %74 = ptrtoint ptr %blkq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %blkq, align 8
  tail call void @blk_mq_unfreeze_queue(ptr noundef %75) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %aoe_failip.exit.if.end_crit_edge
  %gd = getelementptr inbounds %struct.aoedev, ptr %d, i32 0, i32 13
  %76 = ptrtoint ptr %gd to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %gd, align 8
  %tobool31.not = icmp eq ptr %77, null
  br i1 %tobool31.not, label %if.end.if.end34_crit_edge, label %if.then32

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @set_capacity(ptr noundef nonnull %77, i64 noundef 0) #10
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end.if.end34_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aoecmd_wreset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_quiesce_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unquiesce_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aoedev_flush(ptr noundef %str, i32 noundef %cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @flush(ptr noundef %str, i32 noundef %cnt, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @flush(ptr noundef %str, i32 noundef %cnt, i32 noundef %exiting) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %exiting)
  %tobool.not = icmp eq i32 %exiting, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cnt)
  %cmp = icmp ugt i32 %cnt, 2
  %or.cond = and i1 %cmp, %tobool.not
  %0 = call ptr @memset(ptr %buf, i32 255, i32 16)
  br i1 %or.cond, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then:                                          ; preds = %entry
  %1 = tail call i32 @llvm.umin.i32(i32 %cnt, i32 16)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %1, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.if.then11.i.i_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then
  %2 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %str, i32 %1, i32 -1226833920) #13, !srcloc !73
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !74

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %1) #10
  %3 = call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !75
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !77
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %str, i32 noundef %1) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #10, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end5, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !74

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.if.then11.i.i_crit_edge
  %res.0.i.i168 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %1, %if.then.if.then11.i.i_crit_edge ], [ %1, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %1, %res.0.i.i168
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i168)
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buf, ptr noundef nonnull dereferenceable(3) @.str.6, i32 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool8.not = icmp eq i32 %bcmp, 0
  br label %if.end12

if.end12:                                         ; preds = %if.end5, %entry.if.end12_crit_edge
  %all.0.shrunk = phi i1 [ false, %entry.if.end12_crit_edge ], [ %tobool8.not, %if.end5 ]
  %tobool27.not = phi i1 [ true, %entry.if.end12_crit_edge ], [ %tobool8.not, %if.end5 ]
  %cnt.addr.0 = phi i32 [ %cnt, %entry.if.end12_crit_edge ], [ %1, %if.end5 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  call void @flush_workqueue(ptr noundef %7) #10
  %call16187 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devlist_lock) #10
  %d.0183188 = load ptr, ptr @devlist, align 4
  %tobool19.not184189 = icmp eq ptr %d.0183188, null
  br i1 %tobool19.not184189, label %if.end12.for.end_crit_edge, label %if.end12.for.body.lr.ph_crit_edge

if.end12.for.body.lr.ph_crit_edge:                ; preds = %if.end12
  br label %for.body.lr.ph

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end53.for.body.lr.ph_crit_edge, %if.end12.for.body.lr.ph_crit_edge
  %d.0183192 = phi ptr [ %d.0183, %if.end53.for.body.lr.ph_crit_edge ], [ %d.0183188, %if.end12.for.body.lr.ph_crit_edge ]
  %call16190 = phi i32 [ %call16, %if.end53.for.body.lr.ph_crit_edge ], [ %call16187, %if.end12.for.body.lr.ph_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %cont.for.body_crit_edge, %for.body.lr.ph
  %d.0185 = phi ptr [ %d.0183192, %for.body.lr.ph ], [ %d.0, %cont.for.body_crit_edge ]
  %lock = getelementptr inbounds %struct.aoedev, ptr %d.0185, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %lock) #10
  %flags20 = getelementptr inbounds %struct.aoedev, ptr %d.0185, i32 0, i32 6
  %8 = ptrtoint ptr %flags20 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags20, align 2
  %conv21 = zext i16 %9 to i32
  %and = and i32 %conv21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end24, label %for.body.cont_crit_edge

for.body.cont_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cont

if.end24:                                         ; preds = %for.body
  br i1 %tobool.not, label %if.else, label %if.end24.if.end53_crit_edge

if.end24.if.end53_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.else:                                          ; preds = %if.end24
  br i1 %tobool27.not, label %if.else34, label %if.then28

if.then28:                                        ; preds = %if.else
  %gd.i = getelementptr inbounds %struct.aoedev, ptr %d.0185, i32 0, i32 13
  %10 = ptrtoint ptr %gd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gd.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then28.cont_crit_edge, label %user_req.exit

if.then28.cont_crit_edge:                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cont

user_req.exit:                                    ; preds = %if.then28
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 3
  %call.i.i158 = call ptr @strrchr(ptr noundef %disk_name.i, i32 noundef 47) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i158, null
  %add.ptr.i.i159 = getelementptr i8, ptr %call.i.i158, i32 1
  %cond.i.i = select i1 %tobool.not.i.i, ptr %disk_name.i, ptr %add.ptr.i.i159
  %sub.ptr.lhs.cast.i = ptrtoint ptr %cond.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %disk_name.i to i32
  %sub.ptr.sub.neg.i = add i32 %sub.ptr.rhs.cast.i, 32
  %sub.i = sub i32 %sub.ptr.sub.neg.i, %sub.ptr.lhs.cast.i
  %12 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %cnt.addr.0) #10
  %call7.i = call i32 @strncmp(ptr noundef nonnull %buf, ptr noundef %cond.i.i, i32 noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i.not = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i.not, label %user_req.exit.if.end53_crit_edge, label %user_req.exit.cont_crit_edge

user_req.exit.cont_crit_edge:                     ; preds = %user_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cont

user_req.exit.if.end53_crit_edge:                 ; preds = %user_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.else34:                                        ; preds = %if.else
  %and39 = and i32 %conv21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %or.cond156 = select i1 %all.0.shrunk, i1 true, i1 %tobool40.not
  %13 = and i16 %9, 74
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool44.not = icmp eq i16 %13, 0
  %or.cond178 = select i1 %or.cond156, i1 %tobool44.not, i1 false
  br i1 %or.cond178, label %lor.lhs.false45, label %if.else34.cont_crit_edge

if.else34.cont_crit_edge:                         ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cont

lor.lhs.false45:                                  ; preds = %if.else34
  %nopen = getelementptr inbounds %struct.aoedev, ptr %d.0185, i32 0, i32 7
  %14 = ptrtoint ptr %nopen to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %nopen, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool47.not = icmp eq i16 %15, 0
  br i1 %tobool47.not, label %lor.lhs.false48, label %lor.lhs.false45.cont_crit_edge

lor.lhs.false45.cont_crit_edge:                   ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cont

lor.lhs.false48:                                  ; preds = %lor.lhs.false45
  %ref = getelementptr inbounds %struct.aoedev, ptr %d.0185, i32 0, i32 11
  %16 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ref, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool49.not = icmp eq i32 %17, 0
  br i1 %tobool49.not, label %lor.lhs.false48.if.end53_crit_edge, label %lor.lhs.false48.cont_crit_edge

lor.lhs.false48.cont_crit_edge:                   ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cont

lor.lhs.false48.if.end53_crit_edge:               ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.end53:                                         ; preds = %lor.lhs.false48.if.end53_crit_edge, %user_req.exit.if.end53_crit_edge, %if.end24.if.end53_crit_edge
  %flags20.le = getelementptr inbounds %struct.aoedev, ptr %d.0185, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devlist_lock, i32 noundef %call16190) #10
  call void @aoedev_downdev(ptr noundef nonnull %d.0185)
  %18 = ptrtoint ptr %flags20.le to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags20.le, align 2
  %20 = or i16 %19, 2
  store i16 %20, ptr %flags20.le, align 2
  %call16 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devlist_lock) #10
  %d.0183 = load ptr, ptr @devlist, align 4
  %tobool19.not184 = icmp eq ptr %d.0183, null
  br i1 %tobool19.not184, label %if.end53.for.end_crit_edge, label %if.end53.for.body.lr.ph_crit_edge

if.end53.for.body.lr.ph_crit_edge:                ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph

if.end53.for.end_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cont:                                             ; preds = %lor.lhs.false48.cont_crit_edge, %lor.lhs.false45.cont_crit_edge, %if.else34.cont_crit_edge, %user_req.exit.cont_crit_edge, %if.then28.cont_crit_edge, %for.body.cont_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  %21 = ptrtoint ptr %d.0185 to i32
  call void @__asan_load4_noabort(i32 %21)
  %d.0 = load ptr, ptr %d.0185, align 4
  %tobool19.not = icmp eq ptr %d.0, null
  br i1 %tobool19.not, label %cont.for.end_crit_edge, label %cont.for.body_crit_edge

cont.for.body_crit_edge:                          ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cont.for.end_crit_edge:                           ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cont.for.end_crit_edge, %if.end53.for.end_crit_edge, %if.end12.for.end_crit_edge
  %call16.lcssa = phi i32 [ %call16187, %if.end12.for.end_crit_edge ], [ %call16190, %cont.for.end_crit_edge ], [ %call16, %if.end53.for.end_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devlist_lock, i32 noundef %call16.lcssa) #10
  %call67199 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devlist_lock) #10
  %d.1194200 = load ptr, ptr @devlist, align 4
  %tobool73.not195201 = icmp eq ptr %d.1194200, null
  br i1 %tobool73.not195201, label %for.end.for.end110_crit_edge, label %for.end.for.body74.lr.ph_crit_edge

for.end.for.body74.lr.ph_crit_edge:               ; preds = %for.end
  br label %for.body74.lr.ph

for.end.for.end110_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end110

for.body74.lr.ph:                                 ; preds = %freedev.exit.for.body74.lr.ph_crit_edge, %for.end.for.body74.lr.ph_crit_edge
  %d.1194203 = phi ptr [ %d.1194, %freedev.exit.for.body74.lr.ph_crit_edge ], [ %d.1194200, %for.end.for.body74.lr.ph_crit_edge ]
  %call67202 = phi i32 [ %call67, %freedev.exit.for.body74.lr.ph_crit_edge ], [ %call67199, %for.end.for.body74.lr.ph_crit_edge ]
  br label %for.body74

for.cond92.preheader:                             ; preds = %if.end87
  %d.2205.pr = load ptr, ptr @devlist, align 4
  %tobool93.not206 = icmp eq ptr %d.2205.pr, null
  br i1 %tobool93.not206, label %for.cond92.preheader.for.end110_crit_edge, label %for.cond92.preheader.for.body94_crit_edge

for.cond92.preheader.for.body94_crit_edge:        ; preds = %for.cond92.preheader
  br label %for.body94

for.cond92.preheader.for.end110_crit_edge:        ; preds = %for.cond92.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end110

for.body74:                                       ; preds = %if.end87.for.body74_crit_edge, %for.body74.lr.ph
  %d.1196 = phi ptr [ %d.1194203, %for.body74.lr.ph ], [ %d.1, %if.end87.for.body74_crit_edge ]
  %lock75 = getelementptr inbounds %struct.aoedev, ptr %d.1196, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %lock75) #10
  %flags76 = getelementptr inbounds %struct.aoedev, ptr %d.1196, i32 0, i32 6
  %22 = ptrtoint ptr %flags76 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags76, align 2
  %24 = and i16 %23, 130
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %24)
  %25 = icmp eq i16 %24, 2
  br i1 %25, label %if.then85, label %if.end87

if.then85:                                        ; preds = %for.body74
  %flags76.le = getelementptr inbounds %struct.aoedev, ptr %d.1196, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lock75) #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devlist_lock, i32 noundef %call67202) #10
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock75) #10
  %26 = ptrtoint ptr %flags76.le to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %flags76.le, align 2
  %28 = and i16 %27, 130
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %28)
  %29 = icmp eq i16 %28, 2
  br i1 %29, label %if.then.i161, label %if.then85.freedev.exit_crit_edge

if.then85.freedev.exit_crit_edge:                 ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  br label %freedev.exit

if.then.i161:                                     ; preds = %if.then85
  %or.i = or i16 %27, 128
  %30 = ptrtoint ptr %flags76.le to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %or.i, ptr %flags76.le, align 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock75, i32 noundef %call2.i) #10
  %timer.i = getelementptr inbounds %struct.aoedev, ptr %d.1196, i32 0, i32 20
  %call18.i = call i32 @del_timer_sync(ptr noundef %timer.i) #10
  %gd.i160 = getelementptr inbounds %struct.aoedev, ptr %d.1196, i32 0, i32 13
  %31 = ptrtoint ptr %gd.i160 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gd.i160, align 8
  %tobool19.not.i = icmp eq ptr %32, null
  br i1 %tobool19.not.i, label %if.then.i161.if.end23.i_crit_edge, label %if.then20.i

if.then.i161.if.end23.i_crit_edge:                ; preds = %if.then.i161
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.then.i161
  call void @__sanitizer_cov_trace_pc() #12
  call void @aoedisk_rm_debugfs(ptr noundef nonnull %d.1196) #10
  %33 = ptrtoint ptr %gd.i160 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %gd.i160, align 8
  call void @del_gendisk(ptr noundef %34) #10
  %35 = ptrtoint ptr %gd.i160 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gd.i160, align 8
  call void @blk_cleanup_disk(ptr noundef %36) #10
  %tag_set.i = getelementptr inbounds %struct.aoedev, ptr %d.1196, i32 0, i32 17
  call void @blk_mq_free_tag_set(ptr noundef %tag_set.i) #10
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.then.i161.if.end23.i_crit_edge
  %targets.i = getelementptr inbounds %struct.aoedev, ptr %d.1196, i32 0, i32 28
  %37 = ptrtoint ptr %targets.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %targets.i, align 8
  %ntargets.i = getelementptr inbounds %struct.aoedev, ptr %d.1196, i32 0, i32 29
  %39 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ntargets.i, align 4
  %add.ptr.i = getelementptr ptr, ptr %38, i32 %40
  %cmp2478.i = icmp ult ptr %38, %add.ptr.i
  br i1 %cmp2478.i, label %if.end23.i.land.rhs.i_crit_edge, label %if.end23.i.for.end.i_crit_edge

if.end23.i.for.end.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end23.i.land.rhs.i_crit_edge:                  ; preds = %if.end23.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %freetgt.exit.i.land.rhs.i_crit_edge, %if.end23.i.land.rhs.i_crit_edge
  %t.079.i = phi ptr [ %incdec.ptr.i, %freetgt.exit.i.land.rhs.i_crit_edge ], [ %38, %if.end23.i.land.rhs.i_crit_edge ]
  %41 = ptrtoint ptr %t.079.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %t.079.i, align 4
  %tobool26.not.i = icmp eq ptr %42, null
  br i1 %tobool26.not.i, label %land.rhs.i.for.end.i_crit_edge, label %for.body.i

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %land.rhs.i
  %ifs.i.i = getelementptr inbounds %struct.aoetgt, ptr %42, i32 0, i32 4
  %arrayidx.i.i = getelementptr %struct.aoetgt, ptr %42, i32 0, i32 5
  %cmp1.i.i162 = icmp ult ptr %ifs.i.i, %arrayidx.i.i
  br i1 %cmp1.i.i162, label %for.body.i.for.body.i.i_crit_edge, label %for.body.i.for.end.i.i_crit_edge

for.body.i.for.end.i.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %dev_put.exit.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %ifp.02.i.i = phi ptr [ %incdec.ptr.i.i, %dev_put.exit.i.i.for.body.i.i_crit_edge ], [ %ifs.i.i, %for.body.i.for.body.i.i_crit_edge ]
  %43 = ptrtoint ptr %ifp.02.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ifp.02.i.i, align 4
  %tobool.not.i.i163 = icmp eq ptr %44, null
  br i1 %tobool.not.i.i163, label %for.body.i.i.for.end.i.i_crit_edge, label %do.body1.i.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

do.body1.i.i.i:                                   ; preds = %for.body.i.i
  %45 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !78
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 118
  %46 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  %49 = call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i164 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i164 to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %54, %48
  %55 = inttoptr i32 %add.i.i.i to ptr
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %add13.i.i.i = add i32 %57, -1
  store i32 %add13.i.i.i, ptr %55, align 4
  %58 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !79
  %and.i.i.i.i.i = and i32 %58, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_put.exit.i.i_crit_edge, !prof !80

do.body1.i.i.i.dev_put.exit.i.i_crit_edge:        ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @warn_bogus_irq_restore() #10
  br label %dev_put.exit.i.i

dev_put.exit.i.i:                                 ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_put.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %45) #10, !srcloc !81
  %incdec.ptr.i.i = getelementptr %struct.aoeif, ptr %ifp.02.i.i, i32 1
  %cmp.i.i165 = icmp ult ptr %incdec.ptr.i.i, %arrayidx.i.i
  br i1 %cmp.i.i165, label %dev_put.exit.i.i.for.body.i.i_crit_edge, label %dev_put.exit.i.i.for.end.i.i_crit_edge

dev_put.exit.i.i.for.end.i.i_crit_edge:           ; preds = %dev_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

dev_put.exit.i.i.for.body.i.i_crit_edge:          ; preds = %dev_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %dev_put.exit.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge, %for.body.i.for.end.i.i_crit_edge
  %ffree.i.i = getelementptr inbounds %struct.aoetgt, ptr %42, i32 0, i32 3
  %59 = ptrtoint ptr %ffree.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ffree.i.i, align 4
  %cmp.i.not4.i.i = icmp eq ptr %60, %ffree.i.i
  br i1 %cmp.i.not4.i.i, label %for.end.i.i.freetgt.exit.i_crit_edge, label %for.end.i.i.for.body6.i.i_crit_edge

for.end.i.i.for.body6.i.i_crit_edge:              ; preds = %for.end.i.i
  br label %for.body6.i.i

for.end.i.i.freetgt.exit.i_crit_edge:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %freetgt.exit.i

for.body6.i.i:                                    ; preds = %list_del.exit.i.i.for.body6.i.i_crit_edge, %for.end.i.i.for.body6.i.i_crit_edge
  %pos.05.i.i = phi ptr [ %nx.07.i.i, %list_del.exit.i.i.for.body6.i.i_crit_edge ], [ %60, %for.end.i.i.for.body6.i.i_crit_edge ]
  %61 = ptrtoint ptr %pos.05.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %nx.07.i.i = load ptr, ptr %pos.05.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.05.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body6.i.i.list_del.exit.i.i_crit_edge

for.body6.i.i.list_del.exit.i.i_crit_edge:        ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.05.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i.i.i, align 4
  %64 = ptrtoint ptr %pos.05.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pos.05.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body6.i.i.list_del.exit.i.i_crit_edge
  %68 = ptrtoint ptr %pos.05.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.05.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.05.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %skb.i.i = getelementptr inbounds %struct.frame, ptr %pos.05.i.i, i32 0, i32 6
  %70 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %skb.i.i, align 4
  call fastcc void @skbfree(ptr noundef %71) #10
  call void @kfree(ptr noundef %pos.05.i.i) #10
  %cmp.i.not.i.i = icmp eq ptr %nx.07.i.i, %ffree.i.i
  br i1 %cmp.i.not.i.i, label %list_del.exit.i.i.freetgt.exit.i_crit_edge, label %list_del.exit.i.i.for.body6.i.i_crit_edge

list_del.exit.i.i.for.body6.i.i_crit_edge:        ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body6.i.i

list_del.exit.i.i.freetgt.exit.i_crit_edge:       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %freetgt.exit.i

freetgt.exit.i:                                   ; preds = %list_del.exit.i.i.freetgt.exit.i_crit_edge, %for.end.i.i.freetgt.exit.i_crit_edge
  call void @kfree(ptr noundef nonnull %42) #10
  %incdec.ptr.i = getelementptr ptr, ptr %t.079.i, i32 1
  %cmp24.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp24.i, label %freetgt.exit.i.land.rhs.i_crit_edge, label %freetgt.exit.i.for.end.i_crit_edge

freetgt.exit.i.for.end.i_crit_edge:               ; preds = %freetgt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

freetgt.exit.i.land.rhs.i_crit_edge:              ; preds = %freetgt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

for.end.i:                                        ; preds = %freetgt.exit.i.for.end.i_crit_edge, %land.rhs.i.for.end.i_crit_edge, %if.end23.i.for.end.i_crit_edge
  %bufpool.i = getelementptr inbounds %struct.aoedev, ptr %d.1196, i32 0, i32 23
  %72 = ptrtoint ptr %bufpool.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bufpool.i, align 4
  call void @mempool_destroy(ptr noundef %73) #10
  %skbpool.i.i = getelementptr inbounds %struct.aoedev, ptr %d.1196, i32 0, i32 22
  %74 = ptrtoint ptr %skbpool.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %skbpool.i.i, align 4
  %cmp.not10.i.i = icmp eq ptr %75, %skbpool.i.i
  br i1 %cmp.not10.i.i, label %for.end.i.skbpoolfree.exit.i_crit_edge, label %for.end.i.for.body.i73.i_crit_edge

for.end.i.for.body.i73.i_crit_edge:               ; preds = %for.end.i
  br label %for.body.i73.i

for.end.i.skbpoolfree.exit.i_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skbpoolfree.exit.i

for.body.i73.i:                                   ; preds = %for.body.i73.i.for.body.i73.i_crit_edge, %for.end.i.for.body.i73.i_crit_edge
  %skb.011.i.i = phi ptr [ %tmp.0.i.i, %for.body.i73.i.for.body.i73.i_crit_edge ], [ %75, %for.end.i.for.body.i73.i_crit_edge ]
  %76 = ptrtoint ptr %skb.011.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %tmp.0.i.i = load ptr, ptr %skb.011.i.i, align 8
  call fastcc void @skbfree(ptr noundef %skb.011.i.i) #10
  %cmp.not.i.i = icmp eq ptr %tmp.0.i.i, %skbpool.i.i
  br i1 %cmp.not.i.i, label %for.body.i73.i.skbpoolfree.exit.i_crit_edge, label %for.body.i73.i.for.body.i73.i_crit_edge

for.body.i73.i.for.body.i73.i_crit_edge:          ; preds = %for.body.i73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i73.i

for.body.i73.i.skbpoolfree.exit.i_crit_edge:      ; preds = %for.body.i73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skbpoolfree.exit.i

skbpoolfree.exit.i:                               ; preds = %for.body.i73.i.skbpoolfree.exit.i_crit_edge, %for.end.i.skbpoolfree.exit.i_crit_edge
  %77 = ptrtoint ptr %skbpool.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %skbpool.i.i, ptr %skbpool.i.i, align 4
  %prev.i.i74.i = getelementptr inbounds %struct.aoedev, ptr %d.1196, i32 0, i32 22, i32 0, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i.i74.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %skbpool.i.i, ptr %prev.i.i74.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.aoedev, ptr %d.1196, i32 0, i32 22, i32 1
  %79 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %qlen.i.i.i, align 4
  %sysminor.i = getelementptr inbounds %struct.aoedev, ptr %d.1196, i32 0, i32 1
  %80 = ptrtoint ptr %sysminor.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sysminor.i, align 4
  %div40.i.i = lshr i32 %81, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %81)
  %cmp.i76.i = icmp ugt i32 %81, 1048575
  br i1 %cmp.i76.i, label %do.body2.i.i, label %do.body9.i.i, !prof !80

do.body2.i.i:                                     ; preds = %skbpoolfree.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/aoe/aoedev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #10, !srcloc !82
  unreachable

do.body9.i.i:                                     ; preds = %skbpoolfree.exit.i
  %call11.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @used_minors_lock) #10
  %div1.i.i.i = lshr i32 %81, 9
  %arrayidx.i.i77.i = getelementptr i32, ptr @used_minors, i32 %div1.i.i.i
  %82 = ptrtoint ptr %arrayidx.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %arrayidx.i.i77.i, align 4
  %and.i.i.i = and i32 %div40.i.i, 31
  %84 = shl nuw i32 1, %and.i.i.i
  %85 = and i32 %83, %84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool18.not.i.i = icmp eq i32 %85, 0
  br i1 %tobool18.not.i.i, label %do.body28.i.i, label %minor_free.exit.i, !prof !80

do.body28.i.i:                                    ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/aoe/aoedev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 120, 0\0A.popsection", ""() #10, !srcloc !83
  unreachable

minor_free.exit.i:                                ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_clear_bit(i32 noundef %div40.i.i, ptr noundef nonnull @used_minors) #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @used_minors_lock, i32 noundef %call11.i.i) #10
  %call36.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock75) #10
  %86 = ptrtoint ptr %flags76.le to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %flags76.le, align 2
  %88 = or i16 %87, 256
  store i16 %88, ptr %flags76.le, align 2
  br label %freedev.exit

freedev.exit:                                     ; preds = %minor_free.exit.i, %if.then85.freedev.exit_crit_edge
  %call36.sink.i = phi i32 [ %call36.i, %minor_free.exit.i ], [ %call2.i, %if.then85.freedev.exit_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock75, i32 noundef %call36.sink.i) #10
  %call67 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devlist_lock) #10
  %d.1194 = load ptr, ptr @devlist, align 4
  %tobool73.not195 = icmp eq ptr %d.1194, null
  br i1 %tobool73.not195, label %freedev.exit.for.end110_crit_edge, label %freedev.exit.for.body74.lr.ph_crit_edge

freedev.exit.for.body74.lr.ph_crit_edge:          ; preds = %freedev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body74.lr.ph

freedev.exit.for.end110_crit_edge:                ; preds = %freedev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end110

if.end87:                                         ; preds = %for.body74
  call void @_raw_spin_unlock(ptr noundef %lock75) #10
  %89 = ptrtoint ptr %d.1196 to i32
  call void @__asan_load4_noabort(i32 %89)
  %d.1 = load ptr, ptr %d.1196, align 4
  %tobool73.not = icmp eq ptr %d.1, null
  br i1 %tobool73.not, label %for.cond92.preheader, label %if.end87.for.body74_crit_edge

if.end87.for.body74_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body74

for.body94:                                       ; preds = %if.end108.for.body94_crit_edge, %for.cond92.preheader.for.body94_crit_edge
  %d.2208 = phi ptr [ %d.2, %if.end108.for.body94_crit_edge ], [ %d.2205.pr, %for.cond92.preheader.for.body94_crit_edge ]
  %dd.0207 = phi ptr [ %dd.1176, %if.end108.for.body94_crit_edge ], [ @devlist, %for.cond92.preheader.for.body94_crit_edge ]
  %lock95 = getelementptr inbounds %struct.aoedev, ptr %d.2208, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %lock95) #10
  %flags96 = getelementptr inbounds %struct.aoedev, ptr %d.2208, i32 0, i32 6
  %90 = ptrtoint ptr %flags96 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %flags96, align 2
  %92 = and i16 %91, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %tobool99.not = icmp eq i16 %92, 0
  br i1 %tobool99.not, label %if.end104.thread, label %if.then107

if.end104.thread:                                 ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock(ptr noundef %lock95) #10
  br label %if.end108

if.then107:                                       ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %d.2208 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %d.2208, align 8
  %95 = ptrtoint ptr %dd.0207 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %dd.0207, align 4
  call void @_raw_spin_unlock(ptr noundef %lock95) #10
  %targets = getelementptr inbounds %struct.aoedev, ptr %d.2208, i32 0, i32 28
  %96 = ptrtoint ptr %targets to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %targets, align 8
  call void @kfree(ptr noundef %97) #10
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %if.end104.thread
  %doomed.0177 = phi ptr [ null, %if.end104.thread ], [ %d.2208, %if.then107 ]
  %dd.1176 = phi ptr [ %d.2208, %if.end104.thread ], [ %dd.0207, %if.then107 ]
  call void @kfree(ptr noundef %doomed.0177) #10
  %98 = ptrtoint ptr %dd.1176 to i32
  call void @__asan_load4_noabort(i32 %98)
  %d.2 = load ptr, ptr %dd.1176, align 4
  %tobool93.not = icmp eq ptr %d.2, null
  br i1 %tobool93.not, label %if.end108.for.end110_crit_edge, label %if.end108.for.body94_crit_edge

if.end108.for.body94_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body94

if.end108.for.end110_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end110

for.end110:                                       ; preds = %if.end108.for.end110_crit_edge, %freedev.exit.for.end110_crit_edge, %for.cond92.preheader.for.end110_crit_edge, %for.end.for.end110_crit_edge
  %call67.lcssa225 = phi i32 [ %call67202, %for.cond92.preheader.for.end110_crit_edge ], [ %call67199, %for.end.for.end110_crit_edge ], [ %call67202, %if.end108.for.end110_crit_edge ], [ %call67, %freedev.exit.for.end110_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devlist_lock, i32 noundef %call67.lcssa225) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end110, %if.then11.i.i
  %retval.0 = phi i32 [ 0, %for.end110 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aoedev_by_aoeaddr(i32 noundef %maj, i32 noundef %min, i32 noundef %do_alloc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devlist_lock) #10
  %d.0121 = load ptr, ptr @devlist, align 4
  %tobool.not122 = icmp eq ptr %d.0121, null
  br i1 %tobool.not122, label %entry.lor.lhs.false.critedge_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.lor.lhs.false.critedge_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.critedge

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %d.0123 = phi ptr [ %d.0, %for.inc.for.body_crit_edge ], [ %d.0121, %entry.for.body_crit_edge ]
  %aoemajor = getelementptr inbounds %struct.aoedev, ptr %d.0123, i32 0, i32 2
  %0 = ptrtoint ptr %aoemajor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aoemajor, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %maj)
  %cmp5 = icmp eq i32 %1, %maj
  br i1 %cmp5, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %aoeminor = getelementptr inbounds %struct.aoedev, ptr %d.0123, i32 0, i32 5
  %2 = ptrtoint ptr %aoeminor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %aoeminor, align 4
  %conv7 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7, i32 %min)
  %cmp8 = icmp eq i32 %conv7, %min
  br i1 %cmp8, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %lock = getelementptr inbounds %struct.aoedev, ptr %d.0123, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %flags10 = getelementptr inbounds %struct.aoedev, ptr %d.0123, i32 0, i32 6
  %4 = ptrtoint ptr %flags10 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags10, align 2
  %6 = and i16 %5, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool12.not = icmp eq i16 %6, 0
  br i1 %tobool12.not, label %if.end, label %if.then13

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %out

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %ref = getelementptr inbounds %struct.aoedev, ptr %d.0123, i32 0, i32 11
  %7 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ref, align 8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %ref, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %out

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %d.0123 to i32
  call void @__asan_load4_noabort(i32 %9)
  %d.0 = load ptr, ptr %d.0123, align 4
  %tobool.not = icmp eq ptr %d.0, null
  br i1 %tobool.not, label %for.inc.lor.lhs.false.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.lor.lhs.false.critedge_crit_edge:         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.critedge

lor.lhs.false.critedge:                           ; preds = %for.inc.lor.lhs.false.critedge_crit_edge, %entry.lor.lhs.false.critedge_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_alloc)
  %tobool18.not = icmp eq i32 %do_alloc, 0
  br i1 %tobool18.not, label %lor.lhs.false.critedge.out_crit_edge, label %lor.lhs.false19

lor.lhs.false.critedge.out_crit_edge:             ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false19:                                  ; preds = %lor.lhs.false.critedge
  %10 = load i32, ptr @aoe_dyndevs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false19
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @used_minors_lock) #10
  %call5.i.i = tail call i32 @_find_first_zero_bit_be(ptr noundef nonnull @used_minors, i32 noundef 65536) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call5.i.i)
  %cmp6.i.i = icmp ult i32 %call5.i.i, 65536
  br i1 %cmp6.i.i, label %if.then.i.i, label %if.then.i.minor_get.exit_crit_edge

if.then.i.minor_get.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %minor_get.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef %call5.i.i, ptr noundef nonnull @used_minors) #10
  br label %minor_get.exit

if.else.i:                                        ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %min)
  %cmp.i.i = icmp sgt i32 %min, 15
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i32 noundef 16) #15
  br label %out

if.end.i.i:                                       ; preds = %if.else.i
  %mul.i3.i = shl i32 %maj, 4
  %add.i.i = add i32 %mul.i3.i, %min
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add.i.i)
  %cmp1.i.i = icmp ugt i32 %add.i.i, 65535
  br i1 %cmp1.i.i, label %do.end5.i.i, label %do.body10.i.i

do.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22, i32 noundef %maj, i32 noundef %min) #15
  br label %out

do.body10.i.i:                                    ; preds = %if.end.i.i
  %call14.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @used_minors_lock) #10
  %div1.i.i.i = lshr i32 %add.i.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @used_minors, i32 %div1.i.i.i
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %add.i.i, 31
  %13 = shl nuw i32 1, %and.i.i.i
  %14 = and i32 %12, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.end23.i.i

do.end23.i.i:                                     ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call25.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.26, i32 noundef %add.i.i) #15
  br label %minor_get.exit

if.else.i.i:                                      ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef %add.i.i, ptr noundef nonnull @used_minors) #10
  br label %minor_get.exit

minor_get.exit:                                   ; preds = %if.else.i.i, %do.end23.i.i, %if.then.i.i, %if.then.i.minor_get.exit_crit_edge
  %call2.i.i.sink = phi i32 [ %call2.i.i, %if.then.i.i ], [ %call2.i.i, %if.then.i.minor_get.exit_crit_edge ], [ %call14.i.i, %if.else.i.i ], [ %call14.i.i, %do.end23.i.i ]
  %sysminor.0.in = phi i32 [ %call5.i.i, %if.then.i.i ], [ %call5.i.i, %if.then.i.minor_get.exit_crit_edge ], [ %add.i.i, %if.else.i.i ], [ %add.i.i, %do.end23.i.i ]
  %cmp21 = phi i1 [ false, %if.then.i.i ], [ true, %if.then.i.minor_get.exit_crit_edge ], [ false, %if.else.i.i ], [ true, %do.end23.i.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @used_minors_lock, i32 noundef %call2.i.i.sink) #10
  %sysminor.0 = shl i32 %sysminor.0.in, 4
  br i1 %cmp21, label %minor_get.exit.out_crit_edge, label %if.end24

minor_get.exit.out_crit_edge:                     ; preds = %minor_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end24:                                         ; preds = %minor_get.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 2848, i32 noundef 1496) #16
  %tobool26.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool26.not, label %if.end24.out_crit_edge, label %if.end28

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end28:                                         ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i113 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 2848, i32 noundef 16) #16
  %targets = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 28
  %17 = ptrtoint ptr %targets to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i.i113, ptr %targets, align 8
  %tobool31.not = icmp eq ptr %call7.i.i.i113, null
  br i1 %tobool31.not, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %out

if.end33:                                         ; preds = %if.end28
  %ntargets = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 29
  %18 = ptrtoint ptr %ntargets to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %ntargets, align 4
  %work = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 12
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #10
  %19 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @aoedev_by_aoeaddr.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry38 = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 12, i32 1
  %20 = ptrtoint ptr %entry38 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry38, ptr %entry38, align 8
  %prev.i = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 12, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry38, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 12, i32 2
  %22 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @aoecmd_sleepwork, ptr %func, align 8
  %lock43 = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 21
  tail call void @__raw_spin_lock_init(ptr noundef %lock43, ptr noundef nonnull @.str.2, ptr noundef nonnull @aoedev_by_aoeaddr.__key.1, i16 noundef signext 3) #10
  %rq_list = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 16
  %23 = ptrtoint ptr %rq_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %rq_list, ptr %rq_list, align 4
  %prev.i114 = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 16, i32 1
  %24 = ptrtoint ptr %prev.i114 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %rq_list, ptr %prev.i114, align 8
  %skbpool = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 22
  %lock.i = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 22, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %25 = ptrtoint ptr %skbpool to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %skbpool, ptr %skbpool, align 4
  %prev.i.i = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 22, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %skbpool, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 22, i32 1
  %27 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %qlen.i.i, align 4
  %timer = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 20
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @dummy_timer, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @aoedev_by_aoeaddr.__key.3) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %28, 100
  %expires = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 20, i32 1
  %29 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add, ptr %expires, align 8
  tail call void @add_timer(ptr noundef %timer) #10
  %bufpool = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 23
  %30 = ptrtoint ptr %bufpool to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %bufpool, align 4
  %31 = ptrtoint ptr %targets to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %targets, align 8
  %tgt = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 30
  %33 = ptrtoint ptr %tgt to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %tgt, align 8
  %ref53 = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 11
  %34 = ptrtoint ptr %ref53 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %ref53, align 8
  br label %for.body57

for.body57:                                       ; preds = %for.body57.for.body57_crit_edge, %if.end33
  %i.0124 = phi i32 [ 0, %if.end33 ], [ %inc59, %for.body57.for.body57_crit_edge ]
  %arrayidx = getelementptr %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 26, i32 %i.0124
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %arrayidx, ptr %arrayidx, align 8
  %prev.i115 = getelementptr %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 26, i32 %i.0124, i32 1
  %36 = ptrtoint ptr %prev.i115 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx, ptr %prev.i115, align 4
  %inc59 = add nuw nsw i32 %i.0124, 1
  %exitcond.not = icmp eq i32 %inc59, 61
  br i1 %exitcond.not, label %for.end60, label %for.body57.for.body57_crit_edge

for.body57.for.body57_crit_edge:                  ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body57

for.end60:                                        ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #12
  %rexmitq = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 27
  %37 = ptrtoint ptr %rexmitq to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %rexmitq, ptr %rexmitq, align 8
  %prev.i116 = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 27, i32 1
  %38 = ptrtoint ptr %prev.i116 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %rexmitq, ptr %prev.i116, align 4
  %sysminor61 = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %sysminor61 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sysminor.0, ptr %sysminor61, align 4
  %aoemajor62 = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %aoemajor62 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %maj, ptr %aoemajor62, align 8
  %conv63 = trunc i32 %min to i16
  %aoeminor64 = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %aoeminor64 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv63, ptr %aoeminor64, align 4
  %rttavg = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %rttavg to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 64000000, ptr %rttavg, align 4
  %rttdev = getelementptr inbounds %struct.aoedev, ptr %call7.i.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %rttdev to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 16000000, ptr %rttdev, align 8
  %44 = load ptr, ptr @devlist, align 4
  %45 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %call7.i.i.i, align 8
  store ptr %call7.i.i.i, ptr @devlist, align 4
  br label %out

out:                                              ; preds = %for.end60, %if.then32, %if.end24.out_crit_edge, %minor_get.exit.out_crit_edge, %do.end5.i.i, %do.end.i.i, %lor.lhs.false.critedge.out_crit_edge, %if.end, %if.then13
  %d.1 = phi ptr [ null, %if.then13 ], [ null, %minor_get.exit.out_crit_edge ], [ %call7.i.i.i, %for.end60 ], [ null, %if.then32 ], [ null, %if.end24.out_crit_edge ], [ null, %lor.lhs.false.critedge.out_crit_edge ], [ %d.0123, %if.end ], [ null, %do.end.i.i ], [ null, %do.end5.i.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devlist_lock, i32 noundef %call2) #10
  ret ptr %d.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aoecmd_sleepwork(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dummy_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %t, i32 -282
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %2 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %3, 100
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %4 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %expires, align 8
  tail call void @add_timer(ptr noundef %t) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aoedev_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  tail call void @flush_workqueue(ptr noundef %0) #10
  %call = tail call fastcc i32 @flush(ptr noundef null, i32 noundef 0, i32 noundef 1)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @aoedev_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @aoe_failbuf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aoe_freetframe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aoe_end_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aoedisk_rm_debugfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skbfree(ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %skb, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %dataref26 = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 10
  %call.i.i27 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref26, i32 noundef 4) #10
  %2 = ptrtoint ptr %dataref26 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %dataref26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp2.not28 = icmp eq i32 %3, 1
  br i1 %cmp2.not28, label %while.cond.preheader.if.end7_crit_edge, label %while.cond.preheader.land.rhs_crit_edge

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

while.cond.preheader.if.end7_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %i.029 = phi i32 [ %dec, %while.body.land.rhs_crit_edge ], [ 120, %while.cond.preheader.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.029)
  %cmp3.not = icmp eq i32 %i.029, 0
  br i1 %cmp3.not, label %do.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %dec = add nsw i32 %i.029, -1
  tail call void @msleep(i32 noundef 250) #10
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %dataref = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref, i32 noundef 4) #10
  %6 = ptrtoint ptr %dataref to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %dataref, align 4
  %cmp2.not = icmp eq i32 %7, 1
  br i1 %cmp2.not, label %while.body.if.end7_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

while.body.if.end7_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %8 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %tobool.not = icmp eq ptr %10, null
  %spec.select = select i1 %tobool.not, ptr @.str.13, ptr %10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.14) #15
  br label %cleanup

if.end7:                                          ; preds = %while.body.if.end7_crit_edge, %while.cond.preheader.if.end7_crit_edge
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %11 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %13 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %truesize, align 8
  %sub = sub i32 %14, %12
  store i32 %sub, ptr %truesize, align 8
  store i32 0, ptr %data_len, align 8
  %15 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %nr_frags to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %nr_frags, align 2
  tail call void @skb_trim(ptr noundef nonnull %skb, i32 noundef 0) #10
  tail call void @consume_skb(ptr noundef nonnull %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }
attributes #14 = { nobuiltin }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19, !21, !22, !24, !26, !27, !29, !31, !33, !34, !35, !36, !37, !38, !39, !41, !42, !44, !46, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62}
!llvm.named.register.sp = !{!63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__param_aoe_dyndevs, !1, !"__param_aoe_dyndevs", i1 false, i1 false}
!1 = !{!"../drivers/block/aoe/aoedev.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_aoe_dyndevstype371, !1, !"__UNIQUE_ID_aoe_dyndevstype371", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_aoe_dyndevs372, !4, !"__UNIQUE_ID_aoe_dyndevs372", i1 false, i1 false}
!4 = !{!"../drivers/block/aoe/aoedev.c", i32 23, i32 1}
!5 = !{ptr @aoedev_by_aoeaddr.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/block/aoe/aoedev.c", i32 472, i32 2}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @aoedev_by_aoeaddr.__key.1, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/block/aoe/aoedev.c", i32 473, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @aoedev_by_aoeaddr.__key.3, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/block/aoe/aoedev.c", i32 476, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @devlist, !15, !"devlist", i1 false, i1 false}
!15 = !{!"../drivers/block/aoe/aoedev.c", i32 25, i32 23}
!16 = !{ptr @__param_str_aoe_dyndevs, !1, !"__param_str_aoe_dyndevs", i1 false, i1 false}
!17 = !{ptr @aoe_dyndevs, !18, !"aoe_dyndevs", i1 false, i1 false}
!18 = !{!"../drivers/block/aoe/aoedev.c", i32 21, i32 12}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/block/aoe/aoedev.c", i32 26, i32 8}
!21 = !{ptr @devlist_lock, !20, !"devlist_lock", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/block/aoe/aoedev.c", i32 319, i32 23}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!26 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/block/aoe/aoedev.c", i32 414, i32 3}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @skbfree._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @skbfree._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/block/aoe/aoedev.c", i32 37, i32 8}
!41 = !{ptr @used_minors_lock, !40, !"used_minors_lock", i1 false, i1 false}
!42 = !{ptr @used_minors, !43, !"used_minors", i1 false, i1 false}
!43 = !{!"../drivers/block/aoe/aoedev.c", i32 38, i32 8}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/block/aoe/aoedev.c", i32 72, i32 3}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @minor_get_static._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @minor_get_static._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/block/aoe/aoedev.c", i32 81, i32 3}
!52 = !{ptr @minor_get_static._entry.19, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @minor_get_static._entry_ptr.21, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/block/aoe/aoedev.c", i32 90, i32 3}
!57 = !{ptr @minor_get_static._entry.23, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @minor_get_static._entry_ptr.25, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @skb_queue_head_init.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{!"sp"}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 2152318687, i64 2152318712}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{i64 4814242}
!76 = !{i64 4814439}
!77 = !{i64 2152299672}
!78 = !{i64 920197, i64 920258}
!79 = !{i64 922929}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{i64 923214}
!82 = !{i64 2156240857, i64 2156241348, i64 2156240894, i64 2156240950, i64 2156240984, i64 2156241008, i64 2156241049, i64 2156241070, i64 2156241098, i64 2156241132}
!83 = !{i64 2156242886, i64 2156243377, i64 2156242923, i64 2156242979, i64 2156243013, i64 2156243037, i64 2156243078, i64 2156243099, i64 2156243127, i64 2156243161}
