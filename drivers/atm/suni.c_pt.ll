; ModuleID = '/llk/IR_all_yes/drivers/atm/suni.c_pt.bc'
source_filename = "../drivers/atm/suni.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+suni_init\22, \22a\22\09"
module asm "\09.weak\09__crc_suni_init\09\09\09\09"
module asm "\09.long\09__crc_suni_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_suni_init:\09\09\09\09\09"
module asm "\09.asciz \09\22suni_init\22\09\09\09\09\09"
module asm "__kstrtabns_suni_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atmphy_ops = type { ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atm_dev = type { ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, %struct.list_head, [6 x i8], %struct.atm_cirange, %struct.k_atm_dev_stats, i8, i32, %struct.refcount_struct, %struct.spinlock, ptr, ptr, %struct.device, %struct.list_head }
%struct.atm_cirange = type { i8, i8 }
%struct.k_atm_dev_stats = type { %struct.k_atm_aal_stats, %struct.k_atm_aal_stats, %struct.k_atm_aal_stats }
%struct.k_atm_aal_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.suni_priv = type { %struct.k_sonet_stats, i32, i32, ptr, ptr }
%struct.k_sonet_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.atmdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sonet_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@suni_ops = internal constant { %struct.atmphy_ops, [16 x i8] } { %struct.atmphy_ops { ptr @suni_start, ptr @suni_ioctl, ptr @suni_int, ptr @suni_stop }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_suni_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_suni_init = external dso_local constant [0 x i8], align 1
@__ksymtab_suni_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @suni_init to i32), ptr @__kstrtab_suni_init, ptr @__kstrtabns_suni_init }, section "___ksymtab+suni_init", align 4
@__UNIQUE_ID_file457 = internal constant [27 x i8] c"suni.file=drivers/atm/suni\00", section ".modinfo", align 1
@__UNIQUE_ID_license458 = internal constant [17 x i8] c"suni.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sunis_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.7 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@sunis = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@suni_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014%s(itf %d): no signal\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"suni_start\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drivers/atm/suni.c\00", [45 x i8] zeroinitializer }, align 32
@suni_start._entry_ptr = internal global ptr @suni_start._entry, section ".printk_index", align 4
@suni_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@poll_timer = internal global { %struct.timer_list, [48 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&poll_timer)\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sunis_lock\00", [21 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@suni_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\015%s(itf %d): signal %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"suni_int\00", [23 x i8] zeroinitializer }, align 32
@suni_int._entry_ptr = internal global ptr @suni_int._entry, section ".printk_index", align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lost\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"detected again\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 1074028821, i64 1074553170, i64 1074553171, i64 1074553172, i64 2147770644, i64 2147770646, i64 2147901719, i64 2149867792, i64 2149867793, i64 3221512466, i64 3221512467]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 8, i64 2048]
@___asan_gen_.14 = private unnamed_addr constant [9 x i8] c"suni_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 358, i32 32 }
@___asan_gen_.17 = private unnamed_addr constant [11 x i8] c"sunis_lock\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"sunis\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 47, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 322, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [11 x i8] c"poll_timer\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 46, i32 26 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 328, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 48, i32 8 }
@___asan_gen_.48 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 174, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [22 x i8] c"../drivers/atm/suni.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 302, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_file457, ptr @__UNIQUE_ID_license458, ptr @__ksymtab_suni_init, ptr @suni_int._entry, ptr @suni_int._entry_ptr, ptr @suni_start._entry, ptr @suni_start._entry_ptr, ptr @suni_ops, ptr @sunis_lock, ptr @sunis, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @suni_start.__key, ptr @poll_timer, ptr @.str.3, ptr @.str.4, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suni_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunis_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunis to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suni_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suni_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poll_timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suni_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @suni_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 52) #10
  %phy_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %phy_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i, ptr %phy_data, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.suni_priv, ptr %call7.i, i32 0, i32 3
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev2, align 4
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %phy_get = getelementptr inbounds %struct.atmdev_ops, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %phy_get to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy_get, align 4
  %call3 = tail call zeroext i8 %6(ptr noundef %dev, i32 noundef 0) #7
  %7 = lshr i8 %call3, 4
  %8 = and i8 %7, 7
  %9 = zext i8 %8 to i32
  %10 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_data, align 4
  %type = getelementptr inbounds %struct.suni_priv, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %type, align 4
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %phy_put = getelementptr inbounds %struct.atmdev_ops, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %phy_put to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy_put, align 4
  %or = or i8 %call3, -128
  tail call void %16(ptr noundef %dev, i8 noundef zeroext %or, i32 noundef 0) #7
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %phy_put9 = getelementptr inbounds %struct.atmdev_ops, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %phy_put9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy_put9, align 4
  tail call void %20(ptr noundef %dev, i8 noundef zeroext %call3, i32 noundef 0) #7
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %phy_put11 = getelementptr inbounds %struct.atmdev_ops, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %phy_put11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phy_put11, align 4
  %phy_get13 = getelementptr inbounds %struct.atmdev_ops, ptr %22, i32 0, i32 8
  %25 = ptrtoint ptr %phy_get13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy_get13, align 4
  %call14 = tail call zeroext i8 %26(ptr noundef %dev, i32 noundef 128) #7
  %27 = and i8 %call14, -128
  tail call void %24(ptr noundef %dev, i8 noundef zeroext %27, i32 noundef 128) #7
  %28 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phy_data, align 4
  %type.i = getelementptr inbounds %struct.suni_priv, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i = icmp eq i32 %31, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.set_sonet.exit_crit_edge

if.end.set_sonet.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_sonet.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  %phy_put.i = getelementptr inbounds %struct.atmdev_ops, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %phy_put.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %phy_put.i, align 4
  %phy_get.i = getelementptr inbounds %struct.atmdev_ops, ptr %33, i32 0, i32 8
  %36 = ptrtoint ptr %phy_get.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phy_get.i, align 4
  %call.i = tail call zeroext i8 %37(ptr noundef %dev, i32 noundef 61) #7
  %38 = and i8 %call.i, -65
  tail call void %35(ptr noundef %dev, i8 noundef zeroext %38, i32 noundef 61) #7
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 8
  %phy_put4.i = getelementptr inbounds %struct.atmdev_ops, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %phy_put4.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %phy_put4.i, align 4
  %phy_get6.i = getelementptr inbounds %struct.atmdev_ops, ptr %40, i32 0, i32 8
  %43 = ptrtoint ptr %phy_get6.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phy_get6.i, align 4
  %call7.i53 = tail call zeroext i8 %44(ptr noundef %dev, i32 noundef 40) #7
  %45 = and i8 %call7.i53, -2
  tail call void %42(ptr noundef %dev, i8 noundef zeroext %45, i32 noundef 40) #7
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 8
  %phy_put12.i = getelementptr inbounds %struct.atmdev_ops, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %phy_put12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %phy_put12.i, align 4
  %phy_get14.i = getelementptr inbounds %struct.atmdev_ops, ptr %47, i32 0, i32 8
  %50 = ptrtoint ptr %phy_get14.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %phy_get14.i, align 4
  %call15.i = tail call zeroext i8 %51(ptr noundef %dev, i32 noundef 104) #7
  %52 = and i8 %call15.i, -2
  tail call void %49(ptr noundef %dev, i8 noundef zeroext %52, i32 noundef 104) #7
  br label %set_sonet.exit

set_sonet.exit:                                   ; preds = %if.then.i, %if.end.set_sonet.exit_crit_edge
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 8
  %phy_put20.i = getelementptr inbounds %struct.atmdev_ops, ptr %54, i32 0, i32 7
  %55 = ptrtoint ptr %phy_put20.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %phy_put20.i, align 4
  %phy_get22.i = getelementptr inbounds %struct.atmdev_ops, ptr %54, i32 0, i32 8
  %57 = ptrtoint ptr %phy_get22.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %phy_get22.i, align 4
  %call23.i = tail call zeroext i8 %58(ptr noundef %dev, i32 noundef 70) #7
  %59 = and i8 %call23.i, -13
  tail call void %56(ptr noundef %dev, i8 noundef zeroext %59, i32 noundef 70) #7
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 8
  %phy_put20 = getelementptr inbounds %struct.atmdev_ops, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %phy_put20 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %phy_put20, align 4
  %phy_get22 = getelementptr inbounds %struct.atmdev_ops, ptr %61, i32 0, i32 8
  %64 = ptrtoint ptr %phy_get22 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %phy_get22, align 4
  %call23 = tail call zeroext i8 %65(ptr noundef %dev, i32 noundef 97) #7
  %66 = or i8 %call23, 1
  tail call void %63(ptr noundef %dev, i8 noundef zeroext %66, i32 noundef 97) #7
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 8
  %phy_put29 = getelementptr inbounds %struct.atmdev_ops, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %phy_put29 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %phy_put29, align 4
  tail call void %70(ptr noundef %dev, i8 noundef zeroext 106, i32 noundef 98) #7
  %phy = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 1
  %71 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @suni_ops, ptr %phy, align 4
  br label %cleanup

cleanup:                                          ; preds = %set_sonet.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %set_sonet.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @suni_start(ptr noundef %dev) #0 align 64 {
entry:
  %tmp.i = alloca %struct.sonet_stats, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @sunis_lock) #7
  %0 = load ptr, ptr @sunis, align 4
  %tobool.not = icmp eq ptr %0, null
  %phy_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy_data, align 4
  %next = getelementptr inbounds %struct.suni_priv, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %0, ptr %next, align 4
  %4 = load ptr, ptr %phy_data, align 4
  store ptr %4, ptr @sunis, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @sunis_lock, i32 noundef %call2) #7
  %5 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy_data, align 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 36)
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %phy_put = getelementptr inbounds %struct.atmdev_ops, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %phy_put to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_put, align 4
  %phy_get = getelementptr inbounds %struct.atmdev_ops, ptr %9, i32 0, i32 8
  %12 = ptrtoint ptr %phy_get to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_get, align 4
  %call8 = tail call zeroext i8 %13(ptr noundef %dev, i32 noundef 16) #7
  %14 = or i8 %call8, 4
  tail call void %11(ptr noundef %dev, i8 noundef zeroext %14, i32 noundef 16) #7
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %phy_get.i = getelementptr inbounds %struct.atmdev_ops, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %phy_get.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy_get.i, align 4
  %call.i = tail call zeroext i8 %18(ptr noundef %dev, i32 noundef 17) #7
  %19 = lshr i8 %call.i, 1
  %20 = and i8 %19, 2
  %21 = xor i8 %20, 2
  tail call void @atm_dev_signal_change(ptr noundef %dev, i8 noundef zeroext %21) #7
  %signal = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 12
  %22 = ptrtoint ptr %signal to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %signal, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp12 = icmp eq i8 %23, 0
  br i1 %cmp12, label %do.end16, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %type = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 2
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %type, align 8
  %number = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 3
  %26 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %number, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %25, i32 noundef %27) #11
  br label %if.end

if.end:                                           ; preds = %do.end16, %entry.if.end_crit_edge
  %28 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phy_data, align 4
  %loop_mode = getelementptr inbounds %struct.suni_priv, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %loop_mode to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %loop_mode, align 4
  tail call void @suni_hz(ptr noundef null)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tmp.i) #7
  %31 = call ptr @memset(ptr %tmp.i, i32 255, i32 36)
  %32 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phy_data, align 4
  call void @sonet_copy_stats(ptr noundef %33, ptr noundef nonnull %tmp.i) #7
  %34 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %phy_data, align 4
  call void @sonet_subtract_stats(ptr noundef %35, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tmp.i) #7
  br i1 %tobool.not, label %do.body23, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.body23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @init_timer_key(ptr noundef nonnull @poll_timer, ptr noundef nonnull @suni_hz, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @suni_start.__key) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %36, 100
  store i32 %add, ptr getelementptr inbounds (%struct.timer_list, ptr @poll_timer, i32 0, i32 1), align 4
  call void @add_timer(ptr noundef nonnull @poll_timer) #7
  br label %if.end26

if.end26:                                         ; preds = %do.body23, %if.end.if.end26_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @suni_ioctl(ptr noundef %dev, i32 noundef %cmd, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.default [
    i32 -2145099503, label %entry.sw.bb_crit_edge
    i32 -2145099504, label %entry.sw.bb_crit_edge76
    i32 -1073454830, label %sw.bb1
    i32 -1073454829, label %sw.bb3
    i32 -2147196652, label %sw.bb5
    i32 1074028821, label %sw.bb7
    i32 -2147196650, label %sw.bb10
    i32 -2147065577, label %entry.return_crit_edge
    i32 1074553171, label %sw.bb13
    i32 1074553170, label %sw.bb18
    i32 1074553172, label %sw.bb21
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.sw.bb_crit_edge76:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge76
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2145099503, i32 %cmd)
  %cmp = icmp eq i32 %cmd, -2145099503
  %conv = zext i1 %cmp to i32
  %call = tail call fastcc i32 @fetch_stats(ptr noundef %dev, ptr noundef %arg, i32 noundef %conv)
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call fastcc i32 @change_diag(ptr noundef %dev, ptr noundef %arg, i32 noundef 1)
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call fastcc i32 @change_diag(ptr noundef %dev, ptr noundef %arg, i32 noundef 0)
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %phy_get.i = getelementptr inbounds %struct.atmdev_ops, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %phy_get.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy_get.i, align 4
  %call.i = tail call zeroext i8 %4(ptr noundef %dev, i32 noundef 21) #7
  %5 = lshr i8 %call.i, 1
  %.lobit.i = and i8 %5, 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %phy_get2.i = getelementptr inbounds %struct.atmdev_ops, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %phy_get2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_get2.i, align 4
  %call3.i = tail call zeroext i8 %9(ptr noundef %dev, i32 noundef 33) #7
  %10 = shl i8 %call3.i, 1
  %11 = and i8 %10, 2
  %12 = or i8 %11, %.lobit.i
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %phy_get11.i = getelementptr inbounds %struct.atmdev_ops, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %phy_get11.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy_get11.i, align 4
  %call12.i = tail call zeroext i8 %16(ptr noundef %dev, i32 noundef 64) #7
  %17 = shl i8 %call12.i, 1
  %18 = and i8 %17, 4
  %19 = or i8 %12, %18
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %phy_get20.i = getelementptr inbounds %struct.atmdev_ops, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %phy_get20.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy_get20.i, align 4
  %call21.i = tail call zeroext i8 %23(ptr noundef %dev, i32 noundef 20) #7
  %24 = shl i8 %call21.i, 5
  %25 = and i8 %24, 32
  %26 = or i8 %19, %25
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %phy_get29.i = getelementptr inbounds %struct.atmdev_ops, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %phy_get29.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %phy_get29.i, align 4
  %call30.i = tail call zeroext i8 %30(ptr noundef %dev, i32 noundef 64) #7
  %31 = shl i8 %call30.i, 6
  %32 = and i8 %31, 64
  %33 = or i8 %26, %32
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 8
  %phy_get38.i = getelementptr inbounds %struct.atmdev_ops, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %phy_get38.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phy_get38.i, align 4
  %call39.i = tail call zeroext i8 %37(ptr noundef %dev, i32 noundef 21) #7
  %38 = shl i8 %call39.i, 2
  %39 = and i8 %38, 16
  %40 = or i8 %33, %39
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 8
  %phy_get47.i = getelementptr inbounds %struct.atmdev_ops, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %phy_get47.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phy_get47.i, align 4
  %call48.i = tail call zeroext i8 %44(ptr noundef %dev, i32 noundef 96) #7
  %45 = shl i8 %call48.i, 3
  %46 = and i8 %45, -128
  %47 = or i8 %40, %46
  %48 = zext i8 %47 to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 148) #7
  %49 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 4
  %51 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #6, !srcloc !47
  %and.i.i = and i32 %51, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %52 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arg, i32 %48, i32 -1226833921) #7, !srcloc !50
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool57.not.i = icmp eq i32 %52, 0
  %cond.i = select i1 %tobool57.not.i, i32 0, i32 -14
  br label %return

sw.bb7:                                           ; preds = %entry
  %call8 = tail call zeroext i1 @capable(i32 noundef 12) #7
  br i1 %call8, label %if.end, label %sw.bb7.return_crit_edge

sw.bb7.return_crit_edge:                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %sw.bb7
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 243) #7
  %53 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i.i59 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i59 to ptr
  %cpu_domain.i.i.i60 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 4
  %55 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i60) #6, !srcloc !47
  %and.i.i61 = and i32 %55, -13
  %or.i.i62 = or i32 %and.i.i61, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i62) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %56 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arg, i32 -1226833921) #7, !srcloc !51
  %asmresult.i = extractvalue { i32, i32 } %56, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i:                                         ; preds = %if.end
  %asmresult1.i = extractvalue { i32, i32 } %56, 1
  %57 = zext i32 %asmresult1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %asmresult1.i, label %if.end.i.return_crit_edge [
    i32 0, label %if.then3.i
    i32 1, label %if.then6.i
  ]

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then3.i:                                       ; preds = %if.end.i
  %phy_data.i.i = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 5
  %58 = ptrtoint ptr %phy_data.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %phy_data.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.suni_priv, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp.i.i = icmp eq i32 %61, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then3.i.set_sonet.exit.i_crit_edge

if.then3.i.set_sonet.exit.i_crit_edge:            ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_sonet.exit.i

if.then.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 8
  %phy_put.i.i = getelementptr inbounds %struct.atmdev_ops, ptr %63, i32 0, i32 7
  %64 = ptrtoint ptr %phy_put.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %phy_put.i.i, align 4
  %phy_get.i.i = getelementptr inbounds %struct.atmdev_ops, ptr %63, i32 0, i32 8
  %66 = ptrtoint ptr %phy_get.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %phy_get.i.i, align 4
  %call.i.i = tail call zeroext i8 %67(ptr noundef %dev, i32 noundef 61) #7
  %68 = and i8 %call.i.i, -65
  tail call void %65(ptr noundef %dev, i8 noundef zeroext %68, i32 noundef 61) #7
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 8
  %phy_put4.i.i = getelementptr inbounds %struct.atmdev_ops, ptr %70, i32 0, i32 7
  %71 = ptrtoint ptr %phy_put4.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %phy_put4.i.i, align 4
  %phy_get6.i.i = getelementptr inbounds %struct.atmdev_ops, ptr %70, i32 0, i32 8
  %73 = ptrtoint ptr %phy_get6.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %phy_get6.i.i, align 4
  %call7.i.i = tail call zeroext i8 %74(ptr noundef %dev, i32 noundef 40) #7
  %75 = and i8 %call7.i.i, -2
  tail call void %72(ptr noundef %dev, i8 noundef zeroext %75, i32 noundef 40) #7
  %76 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev, align 8
  %phy_put12.i.i = getelementptr inbounds %struct.atmdev_ops, ptr %77, i32 0, i32 7
  %78 = ptrtoint ptr %phy_put12.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %phy_put12.i.i, align 4
  %phy_get14.i.i = getelementptr inbounds %struct.atmdev_ops, ptr %77, i32 0, i32 8
  %80 = ptrtoint ptr %phy_get14.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %phy_get14.i.i, align 4
  %call15.i.i = tail call zeroext i8 %81(ptr noundef %dev, i32 noundef 104) #7
  %82 = and i8 %call15.i.i, -2
  tail call void %79(ptr noundef %dev, i8 noundef zeroext %82, i32 noundef 104) #7
  br label %set_sonet.exit.i

set_sonet.exit.i:                                 ; preds = %if.then.i.i, %if.then3.i.set_sonet.exit.i_crit_edge
  %83 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev, align 8
  %phy_put20.i.i = getelementptr inbounds %struct.atmdev_ops, ptr %84, i32 0, i32 7
  %85 = ptrtoint ptr %phy_put20.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %phy_put20.i.i, align 4
  %phy_get22.i.i = getelementptr inbounds %struct.atmdev_ops, ptr %84, i32 0, i32 8
  %87 = ptrtoint ptr %phy_get22.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %phy_get22.i.i, align 4
  %call23.i.i = tail call zeroext i8 %88(ptr noundef %dev, i32 noundef 70) #7
  %89 = and i8 %call23.i.i, -13
  tail call void %86(ptr noundef %dev, i8 noundef zeroext %89, i32 noundef 70) #7
  br label %return

if.then6.i:                                       ; preds = %if.end.i
  %phy_data.i12.i = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 5
  %90 = ptrtoint ptr %phy_data.i12.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %phy_data.i12.i, align 4
  %type.i13.i = getelementptr inbounds %struct.suni_priv, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %type.i13.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %type.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %93)
  %cmp.i14.i = icmp eq i32 %93, 1
  br i1 %cmp.i14.i, label %if.then.i24.i, label %if.then6.i.set_sdh.exit.i_crit_edge

if.then6.i.set_sdh.exit.i_crit_edge:              ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_sdh.exit.i

if.then.i24.i:                                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev, align 8
  %phy_put.i15.i = getelementptr inbounds %struct.atmdev_ops, ptr %95, i32 0, i32 7
  %96 = ptrtoint ptr %phy_put.i15.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %phy_put.i15.i, align 4
  %phy_get.i16.i = getelementptr inbounds %struct.atmdev_ops, ptr %95, i32 0, i32 8
  %98 = ptrtoint ptr %phy_get.i16.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %phy_get.i16.i, align 4
  %call.i17.i = tail call zeroext i8 %99(ptr noundef %dev, i32 noundef 61) #7
  %100 = or i8 %call.i17.i, 64
  tail call void %97(ptr noundef %dev, i8 noundef zeroext %100, i32 noundef 61) #7
  %101 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev, align 8
  %phy_put4.i18.i = getelementptr inbounds %struct.atmdev_ops, ptr %102, i32 0, i32 7
  %103 = ptrtoint ptr %phy_put4.i18.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %phy_put4.i18.i, align 4
  %phy_get6.i19.i = getelementptr inbounds %struct.atmdev_ops, ptr %102, i32 0, i32 8
  %105 = ptrtoint ptr %phy_get6.i19.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %phy_get6.i19.i, align 4
  %call7.i20.i = tail call zeroext i8 %106(ptr noundef %dev, i32 noundef 40) #7
  %107 = or i8 %call7.i20.i, 1
  tail call void %104(ptr noundef %dev, i8 noundef zeroext %107, i32 noundef 40) #7
  %108 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev, align 8
  %phy_put12.i21.i = getelementptr inbounds %struct.atmdev_ops, ptr %109, i32 0, i32 7
  %110 = ptrtoint ptr %phy_put12.i21.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %phy_put12.i21.i, align 4
  %phy_get14.i22.i = getelementptr inbounds %struct.atmdev_ops, ptr %109, i32 0, i32 8
  %112 = ptrtoint ptr %phy_get14.i22.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %phy_get14.i22.i, align 4
  %call15.i23.i = tail call zeroext i8 %113(ptr noundef %dev, i32 noundef 104) #7
  %114 = or i8 %call15.i23.i, 1
  tail call void %111(ptr noundef %dev, i8 noundef zeroext %114, i32 noundef 104) #7
  br label %set_sdh.exit.i

set_sdh.exit.i:                                   ; preds = %if.then.i24.i, %if.then6.i.set_sdh.exit.i_crit_edge
  %115 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev, align 8
  %phy_put20.i25.i = getelementptr inbounds %struct.atmdev_ops, ptr %116, i32 0, i32 7
  %117 = ptrtoint ptr %phy_put20.i25.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %phy_put20.i25.i, align 4
  %phy_get22.i26.i = getelementptr inbounds %struct.atmdev_ops, ptr %116, i32 0, i32 8
  %119 = ptrtoint ptr %phy_get22.i26.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %phy_get22.i26.i, align 4
  %call23.i27.i = tail call zeroext i8 %120(ptr noundef %dev, i32 noundef 70) #7
  %121 = and i8 %call23.i27.i, -13
  %122 = or i8 %121, 8
  tail call void %118(ptr noundef %dev, i8 noundef zeroext %122, i32 noundef 70) #7
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %123 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev, align 8
  %phy_get.i63 = getelementptr inbounds %struct.atmdev_ops, ptr %124, i32 0, i32 8
  %125 = ptrtoint ptr %phy_get.i63 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %phy_get.i63, align 4
  %call.i64 = tail call zeroext i8 %126(ptr noundef %dev, i32 noundef 70) #7
  %127 = and i8 %call.i64, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %cmp.i = icmp ne i8 %127, 0
  %..i = zext i1 %cmp.i to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 236) #7
  %128 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i.i65 = and i32 %128, -16384
  %129 = inttoptr i32 %and.i.i.i.i65 to ptr
  %cpu_domain.i.i.i66 = getelementptr inbounds %struct.thread_info, ptr %129, i32 0, i32 4
  %130 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i66) #6, !srcloc !47
  %and.i.i67 = and i32 %130, -13
  %or.i.i68 = or i32 %and.i.i67, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i68) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %131 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arg, i32 %..i, i32 -1226833921) #7, !srcloc !52
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %130) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.not.i69 = icmp eq i32 %131, 0
  %cond.i70 = select i1 %tobool.not.i69, i32 0, i32 -14
  br label %return

sw.bb13:                                          ; preds = %entry
  %call14 = tail call zeroext i1 @capable(i32 noundef 12) #7
  br i1 %call14, label %if.end16, label %sw.bb13.return_crit_edge

sw.bb13.return_crit_edge:                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end16:                                         ; preds = %sw.bb13
  %132 = ptrtoint ptr %arg to i32
  %phy_data.i = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 5
  %133 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %phy_data.i, align 4
  %type.i = getelementptr inbounds %struct.suni_priv, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %136)
  %cmp.i71 = icmp eq i32 %136, 1
  %..i72 = select i1 %cmp.i71, i32 4, i32 5
  %137 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev, align 8
  %phy_get.i73 = getelementptr inbounds %struct.atmdev_ops, ptr %138, i32 0, i32 8
  %139 = ptrtoint ptr %phy_get.i73 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %phy_get.i73, align 4
  %call.i74 = tail call zeroext i8 %140(ptr noundef %dev, i32 noundef %..i72) #7
  %141 = select i1 %cmp.i71, i8 -49, i8 -7
  %conv1.i = and i8 %call.i74, %141
  %142 = zext i32 %132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %132, label %if.end16.return_crit_edge [
    i32 0, label %if.end16.sw.epilog.i_crit_edge
    i32 8, label %sw.bb.i
    i32 2048, label %sw.bb5.i
  ]

if.end16.sw.epilog.i_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end16.return_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb.i:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %143 = select i1 %cmp.i71, i8 16, i8 2
  %conv4.i = or i8 %conv1.i, %143
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %144 = select i1 %cmp.i71, i8 32, i8 4
  %conv8.i = or i8 %conv1.i, %144
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb5.i, %sw.bb.i, %if.end16.sw.epilog.i_crit_edge
  %control.0.i = phi i8 [ %conv8.i, %sw.bb5.i ], [ %conv4.i, %sw.bb.i ], [ %conv1.i, %if.end16.sw.epilog.i_crit_edge ]
  %145 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev, align 8
  %phy_put.i = getelementptr inbounds %struct.atmdev_ops, ptr %146, i32 0, i32 7
  %147 = ptrtoint ptr %phy_put.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %phy_put.i, align 4
  tail call void %148(ptr noundef %dev, i8 noundef zeroext %control.0.i, i32 noundef %..i72) #7
  %149 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %phy_data.i, align 4
  %loop_mode.i = getelementptr inbounds %struct.suni_priv, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %loop_mode.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %132, ptr %loop_mode.i, align 4
  br label %return

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %phy_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 5
  %152 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %phy_data, align 4
  %loop_mode = getelementptr inbounds %struct.suni_priv, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %loop_mode to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %loop_mode, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 280) #7
  %156 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i = and i32 %156, -16384
  %157 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 4
  %158 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !47
  %and.i = and i32 %158, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %159 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arg, i32 %155, i32 -1226833921) #7, !srcloc !53
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %158) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool.not = icmp eq i32 %159, 0
  %cond = select i1 %tobool.not, i32 0, i32 -14
  br label %return

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 284) #7
  %160 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i55 = and i32 %160, -16384
  %161 = inttoptr i32 %and.i.i.i55 to ptr
  %cpu_domain.i.i56 = getelementptr inbounds %struct.thread_info, ptr %161, i32 0, i32 4
  %162 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i56) #6, !srcloc !47
  %and.i57 = and i32 %162, -13
  %or.i58 = or i32 %and.i57, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i58) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %163 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arg, i32 2056, i32 -1226833921) #7, !srcloc !54
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %162) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool37.not = icmp eq i32 %163, 0
  %cond38 = select i1 %tobool37.not, i32 0, i32 -14
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %sw.bb21, %sw.bb18, %sw.epilog.i, %if.end16.return_crit_edge, %sw.bb13.return_crit_edge, %sw.bb10, %set_sdh.exit.i, %set_sonet.exit.i, %if.end.i.return_crit_edge, %if.end.return_crit_edge, %sw.bb7.return_crit_edge, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ -515, %sw.default ], [ %cond38, %sw.bb21 ], [ %cond, %sw.bb18 ], [ %cond.i70, %sw.bb10 ], [ %cond.i, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -1, %sw.bb7.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -1, %sw.bb13.return_crit_edge ], [ 0, %set_sonet.exit.i ], [ 0, %set_sdh.exit.i ], [ -14, %if.end.return_crit_edge ], [ -22, %if.end.i.return_crit_edge ], [ 0, %sw.epilog.i ], [ -22, %if.end16.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @suni_int(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %phy_get.i = getelementptr inbounds %struct.atmdev_ops, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %phy_get.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_get.i, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %dev, i32 noundef 17) #7
  %4 = lshr i8 %call.i, 1
  %5 = and i8 %4, 2
  %6 = xor i8 %5, 2
  tail call void @atm_dev_signal_change(ptr noundef %dev, i8 noundef zeroext %6) #7
  %type = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 2
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %type, align 8
  %number = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 3
  %9 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %number, align 4
  %signal = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 12
  %11 = ptrtoint ptr %signal to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %signal, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp = icmp eq i8 %12, 0
  %cond = select i1 %cmp, ptr @.str.10, ptr @.str.11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %8, i32 noundef %10, ptr noundef nonnull %cond) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @suni_stop(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @sunis_lock) #7
  %phy_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data, align 4
  %2 = load ptr, ptr @sunis, align 4
  %cmp5.not18 = icmp eq ptr %2, %1
  br i1 %cmp5.not18, label %entry.for.end_crit_edge, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  br label %for.inc

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %entry.for.inc_crit_edge
  %3 = phi ptr [ %9, %for.inc.for.inc_crit_edge ], [ %2, %entry.for.inc_crit_edge ]
  %dev7 = getelementptr inbounds %struct.suni_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev7, align 4
  %phy_data8 = getelementptr inbounds %struct.atm_dev, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %phy_data8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_data8, align 4
  %next = getelementptr inbounds %struct.suni_priv, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %next, align 4
  %cmp5.not = icmp eq ptr %9, %1
  br i1 %cmp5.not, label %for.end.loopexit, label %for.inc.for.inc_crit_edge

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %next.le = getelementptr inbounds %struct.suni_priv, ptr %7, i32 0, i32 4
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %walk.0.lcssa = phi ptr [ @sunis, %entry.for.end_crit_edge ], [ %next.le, %for.end.loopexit ]
  %dev9 = getelementptr inbounds %struct.suni_priv, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev9, align 4
  %phy_data10 = getelementptr inbounds %struct.atm_dev, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %phy_data10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_data10, align 4
  %next11 = getelementptr inbounds %struct.suni_priv, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %next11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %next11, align 4
  %16 = ptrtoint ptr %walk.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %walk.0.lcssa, align 4
  %17 = load ptr, ptr @sunis, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 @del_timer_sync(ptr noundef nonnull @poll_timer) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @sunis_lock, i32 noundef %call2) #7
  %18 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_data, align 4
  tail call void @kfree(ptr noundef %19) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @suni_hz(ptr noundef readnone %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %walk.0278 = load ptr, ptr @sunis, align 4
  %tobool.not279 = icmp eq ptr %walk.0278, null
  br i1 %tobool.not279, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %walk.0280 = phi ptr [ %walk.0, %for.inc.for.body_crit_edge ], [ %walk.0278, %entry.for.body_crit_edge ]
  %dev1 = getelementptr inbounds %struct.suni_priv, ptr %walk.0280, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %phy_put = getelementptr inbounds %struct.atmdev_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %phy_put to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_put, align 4
  tail call void %5(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #7
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %phy_get = getelementptr inbounds %struct.atmdev_ops, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %phy_get to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy_get, align 4
  %call = tail call zeroext i8 %10(ptr noundef %1, i32 noundef 18) #7
  %conv = zext i8 %call to i32
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %phy_get4 = getelementptr inbounds %struct.atmdev_ops, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %phy_get4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy_get4, align 4
  %call5 = tail call zeroext i8 %14(ptr noundef %1, i32 noundef 19) #7
  %conv6 = zext i8 %call5 to i32
  %shl = shl nuw nsw i32 %conv6, 8
  %or = or i32 %shl, %conv
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %walk.0280, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull %walk.0280, i32 1, i32 3, i32 1) #7
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %walk.0280, ptr nonnull %walk.0280, i32 %or, ptr nonnull elementtype(i32) %walk.0280) #7, !srcloc !55
  %call.i.i252 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %walk.0280, i32 noundef 4) #7
  %16 = ptrtoint ptr %walk.0280 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %walk.0280, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp slt i32 %17, 0
  br i1 %cmp, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i253 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %walk.0280, i32 noundef 4) #7
  %18 = ptrtoint ptr %walk.0280 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 2147483647, ptr %walk.0280, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %phy_get13 = getelementptr inbounds %struct.atmdev_ops, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %phy_get13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy_get13, align 4
  %call14 = tail call zeroext i8 %22(ptr noundef %1, i32 noundef 26) #7
  %conv15 = zext i8 %call14 to i32
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %phy_get18 = getelementptr inbounds %struct.atmdev_ops, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %phy_get18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy_get18, align 4
  %call19 = tail call zeroext i8 %26(ptr noundef %1, i32 noundef 27) #7
  %conv20 = zext i8 %call19 to i32
  %shl22 = shl nuw nsw i32 %conv20, 8
  %or23 = or i32 %shl22, %conv15
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %phy_get25 = getelementptr inbounds %struct.atmdev_ops, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %phy_get25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %phy_get25, align 4
  %call26 = tail call zeroext i8 %30(ptr noundef %1, i32 noundef 28) #7
  %31 = and i8 %call26, 15
  %and28 = zext i8 %31 to i32
  %shl29 = shl nuw nsw i32 %and28, 16
  %or30 = or i32 %shl29, %or23
  %line_bip = getelementptr inbounds %struct.k_sonet_stats, ptr %walk.0280, i32 0, i32 1
  %call.i.i254 = tail call zeroext i1 @__kasan_check_write(ptr noundef %line_bip, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %line_bip, i32 1, i32 3, i32 1) #7
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %line_bip, ptr %line_bip, i32 %or30, ptr elementtype(i32) %line_bip) #7, !srcloc !55
  %call.i.i255 = tail call zeroext i1 @__kasan_check_read(ptr noundef %line_bip, i32 noundef 4) #7
  %33 = ptrtoint ptr %line_bip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %line_bip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp33 = icmp slt i32 %34, 0
  br i1 %cmp33, label %if.then35, label %if.end.if.end37_crit_edge

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then35:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i256 = tail call zeroext i1 @__kasan_check_write(ptr noundef %line_bip, i32 noundef 4) #7
  %35 = ptrtoint ptr %line_bip to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 2147483647, ptr %line_bip, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end.if.end37_crit_edge
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  %phy_get39 = getelementptr inbounds %struct.atmdev_ops, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %phy_get39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phy_get39, align 4
  %call40 = tail call zeroext i8 %39(ptr noundef %1, i32 noundef 56) #7
  %conv41 = zext i8 %call40 to i32
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  %phy_get44 = getelementptr inbounds %struct.atmdev_ops, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %phy_get44 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phy_get44, align 4
  %call45 = tail call zeroext i8 %43(ptr noundef %1, i32 noundef 57) #7
  %conv46 = zext i8 %call45 to i32
  %shl48 = shl nuw nsw i32 %conv46, 8
  %or49 = or i32 %shl48, %conv41
  %path_bip = getelementptr inbounds %struct.k_sonet_stats, ptr %walk.0280, i32 0, i32 2
  %call.i.i257 = tail call zeroext i1 @__kasan_check_write(ptr noundef %path_bip, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %path_bip, i32 1, i32 3, i32 1) #7
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %path_bip, ptr %path_bip, i32 %or49, ptr elementtype(i32) %path_bip) #7, !srcloc !55
  %call.i.i258 = tail call zeroext i1 @__kasan_check_read(ptr noundef %path_bip, i32 noundef 4) #7
  %45 = ptrtoint ptr %path_bip to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %path_bip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp52 = icmp slt i32 %46, 0
  br i1 %cmp52, label %if.then54, label %if.end37.if.end56_crit_edge

if.end37.if.end56_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then54:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i259 = tail call zeroext i1 @__kasan_check_write(ptr noundef %path_bip, i32 noundef 4) #7
  %47 = ptrtoint ptr %path_bip to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 2147483647, ptr %path_bip, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end37.if.end56_crit_edge
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %phy_get58 = getelementptr inbounds %struct.atmdev_ops, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %phy_get58 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %phy_get58, align 4
  %call59 = tail call zeroext i8 %51(ptr noundef %1, i32 noundef 29) #7
  %conv60 = zext i8 %call59 to i32
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  %phy_get63 = getelementptr inbounds %struct.atmdev_ops, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %phy_get63 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %phy_get63, align 4
  %call64 = tail call zeroext i8 %55(ptr noundef %1, i32 noundef 30) #7
  %conv65 = zext i8 %call64 to i32
  %shl67 = shl nuw nsw i32 %conv65, 8
  %or68 = or i32 %shl67, %conv60
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 8
  %phy_get70 = getelementptr inbounds %struct.atmdev_ops, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %phy_get70 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %phy_get70, align 4
  %call71 = tail call zeroext i8 %59(ptr noundef %1, i32 noundef 31) #7
  %60 = and i8 %call71, 15
  %and73 = zext i8 %60 to i32
  %shl74 = shl nuw nsw i32 %and73, 16
  %or75 = or i32 %shl74, %or68
  %line_febe = getelementptr inbounds %struct.k_sonet_stats, ptr %walk.0280, i32 0, i32 3
  %call.i.i260 = tail call zeroext i1 @__kasan_check_write(ptr noundef %line_febe, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %line_febe, i32 1, i32 3, i32 1) #7
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %line_febe, ptr %line_febe, i32 %or75, ptr elementtype(i32) %line_febe) #7, !srcloc !55
  %call.i.i261 = tail call zeroext i1 @__kasan_check_read(ptr noundef %line_febe, i32 noundef 4) #7
  %62 = ptrtoint ptr %line_febe to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %line_febe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp78 = icmp slt i32 %63, 0
  br i1 %cmp78, label %if.then80, label %if.end56.if.end82_crit_edge

if.end56.if.end82_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then80:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i262 = tail call zeroext i1 @__kasan_check_write(ptr noundef %line_febe, i32 noundef 4) #7
  %64 = ptrtoint ptr %line_febe to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 2147483647, ptr %line_febe, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end56.if.end82_crit_edge
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 8
  %phy_get84 = getelementptr inbounds %struct.atmdev_ops, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %phy_get84 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %phy_get84, align 4
  %call85 = tail call zeroext i8 %68(ptr noundef %1, i32 noundef 58) #7
  %conv86 = zext i8 %call85 to i32
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 8
  %phy_get89 = getelementptr inbounds %struct.atmdev_ops, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %phy_get89 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %phy_get89, align 4
  %call90 = tail call zeroext i8 %72(ptr noundef %1, i32 noundef 59) #7
  %conv91 = zext i8 %call90 to i32
  %shl93 = shl nuw nsw i32 %conv91, 8
  %or94 = or i32 %shl93, %conv86
  %path_febe = getelementptr inbounds %struct.k_sonet_stats, ptr %walk.0280, i32 0, i32 4
  %call.i.i263 = tail call zeroext i1 @__kasan_check_write(ptr noundef %path_febe, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %path_febe, i32 1, i32 3, i32 1) #7
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %path_febe, ptr %path_febe, i32 %or94, ptr elementtype(i32) %path_febe) #7, !srcloc !55
  %call.i.i264 = tail call zeroext i1 @__kasan_check_read(ptr noundef %path_febe, i32 noundef 4) #7
  %74 = ptrtoint ptr %path_febe to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %path_febe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp97 = icmp slt i32 %75, 0
  br i1 %cmp97, label %if.then99, label %if.end82.if.end101_crit_edge

if.end82.if.end101_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then99:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i265 = tail call zeroext i1 @__kasan_check_write(ptr noundef %path_febe, i32 noundef 4) #7
  %76 = ptrtoint ptr %path_febe to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 2147483647, ptr %path_febe, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %if.end82.if.end101_crit_edge
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 8
  %phy_get103 = getelementptr inbounds %struct.atmdev_ops, ptr %78, i32 0, i32 8
  %79 = ptrtoint ptr %phy_get103 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %phy_get103, align 4
  %call104 = tail call zeroext i8 %80(ptr noundef %1, i32 noundef 84) #7
  %conv105 = zext i8 %call104 to i32
  %corr_hcs = getelementptr inbounds %struct.k_sonet_stats, ptr %walk.0280, i32 0, i32 5
  %call.i.i266 = tail call zeroext i1 @__kasan_check_write(ptr noundef %corr_hcs, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %corr_hcs, i32 1, i32 3, i32 1) #7
  %81 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %corr_hcs, ptr %corr_hcs, i32 %conv105, ptr elementtype(i32) %corr_hcs) #7, !srcloc !55
  %call.i.i267 = tail call zeroext i1 @__kasan_check_read(ptr noundef %corr_hcs, i32 noundef 4) #7
  %82 = ptrtoint ptr %corr_hcs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %corr_hcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp109 = icmp slt i32 %83, 0
  br i1 %cmp109, label %if.then111, label %if.end101.if.end113_crit_edge

if.end101.if.end113_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

if.then111:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i268 = tail call zeroext i1 @__kasan_check_write(ptr noundef %corr_hcs, i32 noundef 4) #7
  %84 = ptrtoint ptr %corr_hcs to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 2147483647, ptr %corr_hcs, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.end101.if.end113_crit_edge
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 8
  %phy_get115 = getelementptr inbounds %struct.atmdev_ops, ptr %86, i32 0, i32 8
  %87 = ptrtoint ptr %phy_get115 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %phy_get115, align 4
  %call116 = tail call zeroext i8 %88(ptr noundef %1, i32 noundef 85) #7
  %conv117 = zext i8 %call116 to i32
  %uncorr_hcs = getelementptr inbounds %struct.k_sonet_stats, ptr %walk.0280, i32 0, i32 6
  %call.i.i269 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uncorr_hcs, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %uncorr_hcs, i32 1, i32 3, i32 1) #7
  %89 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uncorr_hcs, ptr %uncorr_hcs, i32 %conv117, ptr elementtype(i32) %uncorr_hcs) #7, !srcloc !55
  %call.i.i270 = tail call zeroext i1 @__kasan_check_read(ptr noundef %uncorr_hcs, i32 noundef 4) #7
  %90 = ptrtoint ptr %uncorr_hcs to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %uncorr_hcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp121 = icmp slt i32 %91, 0
  br i1 %cmp121, label %if.then123, label %if.end113.if.end125_crit_edge

if.end113.if.end125_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125

if.then123:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i271 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uncorr_hcs, i32 noundef 4) #7
  %92 = ptrtoint ptr %uncorr_hcs to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile i32 2147483647, ptr %uncorr_hcs, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %if.end113.if.end125_crit_edge
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 8
  %phy_get127 = getelementptr inbounds %struct.atmdev_ops, ptr %94, i32 0, i32 8
  %95 = ptrtoint ptr %phy_get127 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %phy_get127, align 4
  %call128 = tail call zeroext i8 %96(ptr noundef %1, i32 noundef 86) #7
  %conv129 = zext i8 %call128 to i32
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 8
  %phy_get132 = getelementptr inbounds %struct.atmdev_ops, ptr %98, i32 0, i32 8
  %99 = ptrtoint ptr %phy_get132 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %phy_get132, align 4
  %call133 = tail call zeroext i8 %100(ptr noundef %1, i32 noundef 87) #7
  %conv134 = zext i8 %call133 to i32
  %shl136 = shl nuw nsw i32 %conv134, 8
  %or137 = or i32 %shl136, %conv129
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %1, align 8
  %phy_get139 = getelementptr inbounds %struct.atmdev_ops, ptr %102, i32 0, i32 8
  %103 = ptrtoint ptr %phy_get139 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %phy_get139, align 4
  %call140 = tail call zeroext i8 %104(ptr noundef %1, i32 noundef 88) #7
  %105 = and i8 %call140, 7
  %and142 = zext i8 %105 to i32
  %shl143 = shl nuw nsw i32 %and142, 16
  %or144 = or i32 %shl143, %or137
  %rx_cells = getelementptr inbounds %struct.k_sonet_stats, ptr %walk.0280, i32 0, i32 8
  %call.i.i272 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_cells, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %rx_cells, i32 1, i32 3, i32 1) #7
  %106 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_cells, ptr %rx_cells, i32 %or144, ptr elementtype(i32) %rx_cells) #7, !srcloc !55
  %call.i.i273 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_cells, i32 noundef 4) #7
  %107 = ptrtoint ptr %rx_cells to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %rx_cells, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp147 = icmp slt i32 %108, 0
  br i1 %cmp147, label %if.then149, label %if.end125.if.end151_crit_edge

if.end125.if.end151_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151

if.then149:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i274 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_cells, i32 noundef 4) #7
  %109 = ptrtoint ptr %rx_cells to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile i32 2147483647, ptr %rx_cells, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then149, %if.end125.if.end151_crit_edge
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 8
  %phy_get153 = getelementptr inbounds %struct.atmdev_ops, ptr %111, i32 0, i32 8
  %112 = ptrtoint ptr %phy_get153 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %phy_get153, align 4
  %call154 = tail call zeroext i8 %113(ptr noundef %1, i32 noundef 100) #7
  %conv155 = zext i8 %call154 to i32
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %1, align 8
  %phy_get158 = getelementptr inbounds %struct.atmdev_ops, ptr %115, i32 0, i32 8
  %116 = ptrtoint ptr %phy_get158 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %phy_get158, align 4
  %call159 = tail call zeroext i8 %117(ptr noundef %1, i32 noundef 101) #7
  %conv160 = zext i8 %call159 to i32
  %shl162 = shl nuw nsw i32 %conv160, 8
  %or163 = or i32 %shl162, %conv155
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 8
  %phy_get165 = getelementptr inbounds %struct.atmdev_ops, ptr %119, i32 0, i32 8
  %120 = ptrtoint ptr %phy_get165 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %phy_get165, align 4
  %call166 = tail call zeroext i8 %121(ptr noundef %1, i32 noundef 102) #7
  %122 = and i8 %call166, 7
  %and168 = zext i8 %122 to i32
  %shl169 = shl nuw nsw i32 %and168, 16
  %or170 = or i32 %shl169, %or163
  %tx_cells = getelementptr inbounds %struct.k_sonet_stats, ptr %walk.0280, i32 0, i32 7
  %call.i.i275 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_cells, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %tx_cells, i32 1, i32 3, i32 1) #7
  %123 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_cells, ptr %tx_cells, i32 %or170, ptr elementtype(i32) %tx_cells) #7, !srcloc !55
  %call.i.i276 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_cells, i32 noundef 4) #7
  %124 = ptrtoint ptr %tx_cells to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %tx_cells, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp173 = icmp slt i32 %125, 0
  br i1 %cmp173, label %if.then175, label %if.end151.for.inc_crit_edge

if.end151.for.inc_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then175:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i277 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_cells, i32 noundef 4) #7
  %126 = ptrtoint ptr %tx_cells to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile i32 2147483647, ptr %tx_cells, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then175, %if.end151.for.inc_crit_edge
  %next = getelementptr inbounds %struct.suni_priv, ptr %walk.0280, i32 0, i32 4
  %127 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %127)
  %walk.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %walk.0, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %tobool178.not = icmp eq ptr %timer, null
  br i1 %tobool178.not, label %for.end.if.end181_crit_edge, label %if.then179

for.end.if.end181_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end181

if.then179:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %128 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %128, 100
  %call180 = tail call i32 @mod_timer(ptr noundef nonnull @poll_timer, i32 noundef %add) #7
  br label %if.end181

if.end181:                                        ; preds = %if.then179, %for.end.if.end181_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fetch_stats(ptr nocapture noundef readonly %dev, ptr noundef %arg, i32 noundef %zero) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.sonet_stats, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tmp) #7
  %0 = call ptr @memset(ptr %tmp, i32 255, i32 36)
  %phy_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy_data, align 4
  call void @sonet_copy_stats(ptr noundef %2, ptr noundef nonnull %tmp) #7
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %if.end.thread, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #7
  %call.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.if.end6.thread_crit_edge, label %if.end.i.i

if.then.i.if.end6.thread_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.thread

if.end.i.i:                                       ; preds = %if.then.i
  %3 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %arg, i32 36, i32 -1226833920) #12, !srcloc !56
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %if.end.i.i.if.end6.thread_crit_edge

if.end.i.i.if.end6.thread_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.thread

if.end:                                           ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tmp, i32 noundef 36) #7
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef nonnull %arg, ptr noundef nonnull %tmp, i32 noundef 36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %phi.cmp = icmp eq i32 %call.i1.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zero)
  %tobool1.not = icmp ne i32 %zero, 0
  %or.cond = select i1 %tobool1.not, i1 %phi.cmp, i1 false
  br i1 %or.cond, label %if.end.if.then3_crit_edge, label %if.end6

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zero)
  %tobool1.not18.not = icmp eq i32 %zero, 0
  br i1 %tobool1.not18.not, label %if.end.thread.if.end6.thread21_crit_edge, label %if.end.thread.if.then3_crit_edge

if.end.thread.if.then3_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.end.thread.if.end6.thread21_crit_edge:         ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.thread21

if.then3:                                         ; preds = %if.end.thread.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %4 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_data, align 4
  call void @sonet_subtract_stats(ptr noundef %5, ptr noundef nonnull %tmp) #7
  br label %if.end6.thread21

if.end6:                                          ; preds = %if.end
  br i1 %phi.cmp, label %if.end6.if.end6.thread21_crit_edge, label %if.end6.if.end6.thread_crit_edge

if.end6.if.end6.thread_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.thread

if.end6.if.end6.thread21_crit_edge:               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.thread21

if.end6.thread21:                                 ; preds = %if.end6.if.end6.thread21_crit_edge, %if.then3, %if.end.thread.if.end6.thread21_crit_edge
  br label %if.end6.thread

if.end6.thread:                                   ; preds = %if.end6.thread21, %if.end6.if.end6.thread_crit_edge, %if.end.i.i.if.end6.thread_crit_edge, %if.then.i.if.end6.thread_crit_edge
  %6 = phi i32 [ 0, %if.end6.thread21 ], [ -14, %if.end6.if.end6.thread_crit_edge ], [ -14, %if.end.i.i.if.end6.thread_crit_edge ], [ -14, %if.then.i.if.end6.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tmp) #7
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @atm_dev_signal_change(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sonet_copy_stats(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sonet_subtract_stats(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @change_diag(ptr noundef %dev, ptr noundef %arg, i32 noundef %set) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 119) #7
  %0 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !47
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arg, i32 -1226833921) #7, !srcloc !57
  %asmresult = extractvalue { i32, i32 } %3, 0
  %asmresult1 = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %asmresult1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end20_crit_edge, label %if.then4

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool5.not = icmp eq i32 %set, 0
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %phy_put11 = getelementptr inbounds %struct.atmdev_ops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %phy_put11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_put11, align 4
  %phy_get13 = getelementptr inbounds %struct.atmdev_ops, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %phy_get13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_get13, align 4
  %call14 = tail call zeroext i8 %9(ptr noundef %dev, i32 noundef 21) #7
  %10 = and i8 %call14, -3
  %masksel = select i1 %tobool5.not, i8 0, i8 2
  %.sink = or i8 %10, %masksel
  tail call void %7(ptr noundef %dev, i8 noundef zeroext %.sink, i32 noundef 21) #7
  %and19 = and i32 %asmresult1, -2
  br label %if.end20

if.end20:                                         ; preds = %if.then4, %if.end.if.end20_crit_edge
  %todo.0 = phi i32 [ %and19, %if.then4 ], [ %asmresult1, %if.end.if.end20_crit_edge ]
  %and21 = and i32 %todo.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end45_crit_edge, label %if.then23

if.end20.if.end45_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool24.not = icmp ne i32 %set, 0
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %phy_put36 = getelementptr inbounds %struct.atmdev_ops, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %phy_put36 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy_put36, align 4
  %phy_get38 = getelementptr inbounds %struct.atmdev_ops, ptr %12, i32 0, i32 8
  %15 = ptrtoint ptr %phy_get38 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy_get38, align 4
  %call39 = tail call zeroext i8 %16(ptr noundef %dev, i32 noundef 33) #7
  %17 = and i8 %call39, -2
  %masksel304 = zext i1 %tobool24.not to i8
  %.sink297 = or i8 %17, %masksel304
  tail call void %14(ptr noundef %dev, i8 noundef zeroext %.sink297, i32 noundef 33) #7
  %and44 = and i32 %todo.0, -3
  br label %if.end45

if.end45:                                         ; preds = %if.then23, %if.end20.if.end45_crit_edge
  %todo.1 = phi i32 [ %and44, %if.then23 ], [ %todo.0, %if.end20.if.end45_crit_edge ]
  %and46 = and i32 %todo.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end45.if.end70_crit_edge, label %if.then48

if.end45.if.end70_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool49.not = icmp eq i32 %set, 0
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %phy_put61 = getelementptr inbounds %struct.atmdev_ops, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %phy_put61 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy_put61, align 4
  %phy_get63 = getelementptr inbounds %struct.atmdev_ops, ptr %19, i32 0, i32 8
  %22 = ptrtoint ptr %phy_get63 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy_get63, align 4
  %call64 = tail call zeroext i8 %23(ptr noundef %dev, i32 noundef 64) #7
  %24 = and i8 %call64, -3
  %masksel305 = select i1 %tobool49.not, i8 0, i8 2
  %.sink298 = or i8 %24, %masksel305
  tail call void %21(ptr noundef %dev, i8 noundef zeroext %.sink298, i32 noundef 64) #7
  %and69 = and i32 %todo.1, -5
  br label %if.end70

if.end70:                                         ; preds = %if.then48, %if.end45.if.end70_crit_edge
  %todo.2 = phi i32 [ %and69, %if.then48 ], [ %todo.1, %if.end45.if.end70_crit_edge ]
  %and71 = and i32 %todo.2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end70.if.end95_crit_edge, label %if.then73

if.end70.if.end95_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool74.not = icmp eq i32 %set, 0
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 8
  %phy_put86 = getelementptr inbounds %struct.atmdev_ops, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %phy_put86 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy_put86, align 4
  %phy_get88 = getelementptr inbounds %struct.atmdev_ops, ptr %26, i32 0, i32 8
  %29 = ptrtoint ptr %phy_get88 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %phy_get88, align 4
  %call89 = tail call zeroext i8 %30(ptr noundef %dev, i32 noundef 16) #7
  %31 = and i8 %call89, -33
  %masksel306 = select i1 %tobool74.not, i8 0, i8 32
  %.sink299 = or i8 %31, %masksel306
  tail call void %28(ptr noundef %dev, i8 noundef zeroext %.sink299, i32 noundef 16) #7
  %and94 = and i32 %todo.2, -9
  br label %if.end95

if.end95:                                         ; preds = %if.then73, %if.end70.if.end95_crit_edge
  %todo.3 = phi i32 [ %and94, %if.then73 ], [ %todo.2, %if.end70.if.end95_crit_edge ]
  %and96 = and i32 %todo.3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end95.if.end120_crit_edge, label %if.then98

if.end95.if.end120_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool99.not = icmp ne i32 %set, 0
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  %phy_put111 = getelementptr inbounds %struct.atmdev_ops, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %phy_put111 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %phy_put111, align 4
  %phy_get113 = getelementptr inbounds %struct.atmdev_ops, ptr %33, i32 0, i32 8
  %36 = ptrtoint ptr %phy_get113 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phy_get113, align 4
  %call114 = tail call zeroext i8 %37(ptr noundef %dev, i32 noundef 20) #7
  %38 = and i8 %call114, -2
  %masksel307 = zext i1 %tobool99.not to i8
  %.sink300 = or i8 %38, %masksel307
  tail call void %35(ptr noundef %dev, i8 noundef zeroext %.sink300, i32 noundef 20) #7
  %and119 = and i32 %todo.3, -33
  br label %if.end120

if.end120:                                        ; preds = %if.then98, %if.end95.if.end120_crit_edge
  %todo.4 = phi i32 [ %and119, %if.then98 ], [ %todo.3, %if.end95.if.end120_crit_edge ]
  %and121 = and i32 %todo.4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end120.if.end145_crit_edge, label %if.then123

if.end120.if.end145_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145

if.then123:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool124.not = icmp ne i32 %set, 0
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 8
  %phy_put136 = getelementptr inbounds %struct.atmdev_ops, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %phy_put136 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %phy_put136, align 4
  %phy_get138 = getelementptr inbounds %struct.atmdev_ops, ptr %40, i32 0, i32 8
  %43 = ptrtoint ptr %phy_get138 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phy_get138, align 4
  %call139 = tail call zeroext i8 %44(ptr noundef %dev, i32 noundef 64) #7
  %45 = and i8 %call139, -2
  %masksel308 = zext i1 %tobool124.not to i8
  %.sink301 = or i8 %45, %masksel308
  tail call void %42(ptr noundef %dev, i8 noundef zeroext %.sink301, i32 noundef 64) #7
  %and144 = and i32 %todo.4, -65
  br label %if.end145

if.end145:                                        ; preds = %if.then123, %if.end120.if.end145_crit_edge
  %todo.5 = phi i32 [ %and144, %if.then123 ], [ %todo.4, %if.end120.if.end145_crit_edge ]
  %and146 = and i32 %todo.5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %if.end145.if.end170_crit_edge, label %if.then148

if.end145.if.end170_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end170

if.then148:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool149.not = icmp eq i32 %set, 0
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 8
  %phy_put161 = getelementptr inbounds %struct.atmdev_ops, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %phy_put161 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %phy_put161, align 4
  %phy_get163 = getelementptr inbounds %struct.atmdev_ops, ptr %47, i32 0, i32 8
  %50 = ptrtoint ptr %phy_get163 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %phy_get163, align 4
  %call164 = tail call zeroext i8 %51(ptr noundef %dev, i32 noundef 21) #7
  %52 = and i8 %call164, -5
  %masksel309 = select i1 %tobool149.not, i8 0, i8 4
  %.sink302 = or i8 %52, %masksel309
  tail call void %49(ptr noundef %dev, i8 noundef zeroext %.sink302, i32 noundef 21) #7
  %and169 = and i32 %todo.5, -17
  br label %if.end170

if.end170:                                        ; preds = %if.then148, %if.end145.if.end170_crit_edge
  %todo.6 = phi i32 [ %and169, %if.then148 ], [ %todo.5, %if.end145.if.end170_crit_edge ]
  %and171 = and i32 %todo.6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %if.end170.if.end195_crit_edge, label %if.then173

if.end170.if.end195_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end195

if.then173:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool174.not = icmp eq i32 %set, 0
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 8
  %phy_put186 = getelementptr inbounds %struct.atmdev_ops, ptr %54, i32 0, i32 7
  %55 = ptrtoint ptr %phy_put186 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %phy_put186, align 4
  %phy_get188 = getelementptr inbounds %struct.atmdev_ops, ptr %54, i32 0, i32 8
  %57 = ptrtoint ptr %phy_get188 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %phy_get188, align 4
  %call189 = tail call zeroext i8 %58(ptr noundef %dev, i32 noundef 96) #7
  %59 = and i8 %call189, -17
  %masksel310 = select i1 %tobool174.not, i8 0, i8 16
  %.sink303 = or i8 %59, %masksel310
  tail call void %56(ptr noundef %dev, i8 noundef zeroext %.sink303, i32 noundef 96) #7
  %and194 = and i32 %todo.6, -129
  br label %if.end195

if.end195:                                        ; preds = %if.then173, %if.end170.if.end195_crit_edge
  %todo.7 = phi i32 [ %and194, %if.then173 ], [ %todo.6, %if.end170.if.end195_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 128) #7
  %60 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i293 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i293 to ptr
  %cpu_domain.i.i294 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 4
  %62 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i294) #6, !srcloc !47
  %and.i295 = and i32 %62, -13
  %or.i296 = or i32 %and.i295, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i296) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %63 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arg, i32 %todo.7, i32 -1226833921) #7, !srcloc !58
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool205.not = icmp eq i32 %63, 0
  %cond = select i1 %tobool205.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end195, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end195 ], [ -14, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !19, !21, !23, !24, !26, !28, !30, !32, !33, !34, !35, !36}
!llvm.named.register.sp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__ksymtab_suni_init, !1, !"__ksymtab_suni_init", i1 false, i1 false}
!1 = !{!"../drivers/atm/suni.c", i32 388, i32 1}
!2 = !{ptr @__UNIQUE_ID_file457, !3, !"__UNIQUE_ID_file457", i1 false, i1 false}
!3 = !{!"../drivers/atm/suni.c", i32 390, i32 1}
!4 = !{ptr @__UNIQUE_ID_license458, !3, !"__UNIQUE_ID_license458", i1 false, i1 false}
!5 = !{ptr @suni_ops, !6, !"suni_ops", i1 false, i1 false}
!6 = !{!"../drivers/atm/suni.c", i32 358, i32 32}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/atm/suni.c", i32 322, i32 3}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @suni_start._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @suni_start._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @suni_start.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/atm/suni.c", i32 328, i32 3}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/atm/suni.c", i32 48, i32 8}
!18 = !{ptr @sunis_lock, !17, !"sunis_lock", i1 false, i1 false}
!19 = !{ptr @sunis, !20, !"sunis", i1 false, i1 false}
!20 = !{!"../drivers/atm/suni.c", i32 47, i32 26}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!23 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!28 = !{ptr @poll_timer, !29, !"poll_timer", i1 false, i1 false}
!29 = !{!"../drivers/atm/suni.c", i32 46, i32 26}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/atm/suni.c", i32 302, i32 2}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @suni_int._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @suni_int._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!37 = !{!"sp"}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 5466592}
!48 = !{i64 5466789}
!49 = !{i64 2152952022}
!50 = !{i64 2156914470, i64 2156914750, i64 2156915084, i64 2156915418}
!51 = !{i64 2156936824, i64 2156937104, i64 2156937438, i64 2156937772}
!52 = !{i64 2156925287, i64 2156925567, i64 2156925901, i64 2156926235}
!53 = !{i64 2156959428, i64 2156959708, i64 2156960042, i64 2156960376}
!54 = !{i64 2156969255, i64 2156969535, i64 2156969869, i64 2156970203}
!55 = !{i64 2148348091, i64 2148348117, i64 2148348146, i64 2148348180, i64 2148348211, i64 2148348234}
!56 = !{i64 2152971718, i64 2152971743}
!57 = !{i64 2156891494, i64 2156891774, i64 2156892108, i64 2156892442}
!58 = !{i64 2156905141, i64 2156905421, i64 2156905755, i64 2156906089}
