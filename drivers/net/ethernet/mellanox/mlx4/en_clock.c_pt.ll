; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx4/en_clock.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx4/en_clock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx4_ts_cqe = type <{ i32, i32, i32, i32, i16, i8, i8, i32, i16, i16, i8, i16, i8 }>
%struct.mlx4_en_dev = type { ptr, ptr, %struct.mutex, [3 x ptr], [3 x ptr], i32, i8, %struct.mlx4_en_profile, i32, ptr, ptr, ptr, %struct.mlx4_uar, %struct.mlx4_mr, i32, %struct.spinlock, [3 x i8], i32, %struct.cyclecounter, %struct.seqlock_t, %struct.timecounter, i32, ptr, %struct.ptp_clock_info, %struct.notifier_block }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx4_en_profile = type { i32, i8, i32, i32, i8, i8, [3 x %struct.mlx4_en_port_profile] }
%struct.mlx4_en_port_profile = type { i32, [2 x i32], i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, %struct.hwtstamp_config }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mlx4_uar = type { i32, i32, %struct.list_head, i32, ptr, ptr }
%struct.mlx4_mr = type { %struct.mlx4_mtt, i64, i64, i32, i32, i32, i32 }
%struct.mlx4_mtt = type { i32, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.101, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.101 = type { ptr }
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_phys_caps = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.mlx4_quotas = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.timespec64 = type { i64, i32 }

@mlx4_en_remove_timestamp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016mlx4_en %s: removed PHC\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx4_en_remove_timestamp\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/mellanox/mlx4/en_clock.c\00", [50 x i8] zeroinitializer }, align 32
@mlx4_en_remove_timestamp._entry_ptr = internal global ptr @mlx4_en_remove_timestamp._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mlx4_en_init_timestamp.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&mdev->clock_lock)->lock\00", [37 x i8] zeroinitializer }, align 32
@mlx4_en_init_timestamp.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&____s->seqcount\00", [47 x i8] zeroinitializer }, align 32
@mlx4_en_ptp_clock_info = internal constant { %struct.ptp_clock_info, [52 x i8] } { %struct.ptp_clock_info { ptr null, [32 x i8] zeroinitializer, i32 100000000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @mlx4_en_phc_adjfreq, ptr null, ptr @mlx4_en_phc_adjtime, ptr @mlx4_en_phc_gettime, ptr null, ptr null, ptr @mlx4_en_phc_settime, ptr @mlx4_en_phc_enable, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mlx4 ptp\00", [23 x i8] zeroinitializer }, align 32
@mlx4_en_init_timestamp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013mlx4_en %s: ptp_clock_register failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx4_en_init_timestamp\00", [41 x i8] zeroinitializer }, align 32
@mlx4_en_init_timestamp._entry_ptr = internal global ptr @mlx4_en_init_timestamp._entry, section ".printk_index", align 4
@mlx4_en_init_timestamp._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016mlx4_en %s: registered PHC clock\0A\00", [60 x i8] zeroinitializer }, align 32
@mlx4_en_init_timestamp._entry_ptr.11 = internal global ptr @mlx4_en_init_timestamp._entry.9, section ".printk_index", align 4
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 88, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 275, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [23 x i8] c"mlx4_en_ptp_clock_info\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 232, i32 36 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 292, i32 42 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 298, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [49 x i8] c"../drivers/net/ethernet/mellanox/mlx4/en_clock.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 300, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @mlx4_en_init_timestamp._entry, ptr @mlx4_en_init_timestamp._entry.9, ptr @mlx4_en_init_timestamp._entry_ptr, ptr @mlx4_en_init_timestamp._entry_ptr.11, ptr @mlx4_en_remove_timestamp._entry, ptr @mlx4_en_remove_timestamp._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mlx4_en_init_timestamp.__key, ptr @.str.3, ptr @mlx4_en_init_timestamp.__key.4, ptr @.str.5, ptr @mlx4_en_ptp_clock_info, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_remove_timestamp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_init_timestamp.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_init_timestamp.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_ptp_clock_info to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_init_timestamp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_init_timestamp._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @mlx4_en_get_cqe_ts(ptr nocapture noundef readonly %cqe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %timestamp_lo = getelementptr inbounds %struct.mlx4_ts_cqe, ptr %cqe, i32 0, i32 11
  %0 = ptrtoint ptr %timestamp_lo to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %timestamp_lo, align 1
  %conv = zext i16 %1 to i64
  %timestamp_hi = getelementptr inbounds %struct.mlx4_ts_cqe, ptr %cqe, i32 0, i32 3
  %2 = ptrtoint ptr %timestamp_hi to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %timestamp_hi, align 1
  %conv1 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  %4 = zext i1 %tobool.not to i64
  %add = add nuw nsw i64 %conv1, %4
  %shl = shl nuw nsw i64 %add, 16
  %or = or i64 %shl, %conv
  ret i64 %or
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_fill_hwtstamps(ptr noundef %mdev, ptr nocapture noundef writeonly %hwts, i64 noundef %timestamp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clock_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 19
  %dep_map.c48.i.i = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 19, i32 0, i32 0, i32 1
  %clock = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 20
  br label %do.body

do.body:                                          ; preds = %read_seqbegin.exit.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !33
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  %1 = tail call ptr @llvm.returnaddress(i32 0) #8
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %2) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call ptr @llvm.returnaddress(i32 0) #8
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #8
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !34
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !35

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #8, !srcloc !36
  %6 = ptrtoint ptr %clock_lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %clock_lock, align 4
  %and18.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %read_seqbegin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !38
  %8 = ptrtoint ptr %clock_lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %clock_lock, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.read_seqbegin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i.read_seqbegin.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %read_seqbegin.exit

read_seqbegin.exit:                               ; preds = %do.end.i.read_seqbegin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge ], [ %9, %do.end.i.read_seqbegin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  %call1 = tail call i64 @timecounter_cyc2time(ptr noundef %clock, i64 noundef %timestamp) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  %10 = ptrtoint ptr %clock_lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %clock_lock, align 4
  %cmp.i.i.i.not = icmp eq i32 %11, %.lcssa.i
  br i1 %cmp.i.i.i.not, label %do.end, label %read_seqbegin.exit.do.body_crit_edge

read_seqbegin.exit.do.body_crit_edge:             ; preds = %read_seqbegin.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %read_seqbegin.exit
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %hwts to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call1, ptr %hwts, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_cyc2time(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_remove_timestamp(ptr nocapture noundef %mdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_clock = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 22
  %0 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_clock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %1) #8
  %2 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ptp_clock, align 4
  %pdev = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 1
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %if.then.dev_name.exit_crit_edge ]
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %retval.0.i) #11
  br label %if.end

if.end:                                           ; preds = %dev_name.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_ptp_overflow_check(ptr noundef %mdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %last_overflow_check = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 21
  %0 = ptrtoint ptr %last_overflow_check to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_overflow_check, align 8
  %add = add i32 %1, 500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %clock_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 19
  %lock.i = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 19, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %3 = ptrtoint ptr %clock_lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %clock_lock, align 4
  %inc.i.i.i.i = add i32 %4, 1
  store i32 %inc.i.i.i.i, ptr %clock_lock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !41
  %dep_map.i.i.i = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 19, i32 0, i32 0, i32 1
  %5 = tail call ptr @llvm.returnaddress(i32 0) #8
  %6 = ptrtoint ptr %5 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %6) #8
  %clock = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 20
  %call1 = tail call i64 @timecounter_read(ptr noundef %clock) #8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !42
  %7 = ptrtoint ptr %clock_lock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clock_lock, align 4
  %inc.i.i.i = add i32 %8, 1
  store i32 %inc.i.i.i, ptr %clock_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %10 = ptrtoint ptr %last_overflow_check to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %last_overflow_check, align 8
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_init_timestamp(ptr noundef %mdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_clock = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 22
  %0 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_clock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body2:                                         ; preds = %entry
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  %clock_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 19
  %lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 19, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @mlx4_en_init_timestamp.__key, i16 noundef signext 3) #8
  %dep_map.i = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 19, i32 0, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @mlx4_en_init_timestamp.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %4 = ptrtoint ptr %clock_lock to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %clock_lock, align 4
  %lock11 = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 19, i32 0, i32 1
  %5 = ptrtoint ptr %lock11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %lock, ptr %lock11, align 4
  %cycles = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 18
  %6 = call ptr @memset(ptr %cycles, i32 0, i32 24)
  %7 = ptrtoint ptr %cycles to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mlx4_en_read_clock, ptr %cycles, align 8
  %mask = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 18, i32 1
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 281474976710655, ptr %mask, align 8
  %hca_core_clock = getelementptr inbounds %struct.mlx4_dev, ptr %3, i32 0, i32 3, i32 87
  %9 = ptrtoint ptr %hca_core_clock to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hca_core_clock, align 4
  %conv.i = zext i16 %10 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 1000
  %mul2.i = mul i32 %conv.i, 10000000
  %conv3.i = zext i32 %mul2.i to i64
  %sub.i = add nsw i64 %conv3.i, -1
  %shr.i.i = lshr i64 %sub.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool.not.i.i = icmp eq i32 %conv.i.i, 0
  %11 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 true) #8, !range !43
  %add.i.i = sub nuw nsw i32 64, %11
  %conv1.i.i = trunc i64 %sub.i to i32
  %12 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #8, !range !44
  %sub.i6.i.i = sub nuw nsw i32 32, %12
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %sub.i6.i.i, i32 %add.i.i
  %sh_prom.i = zext i32 %retval.0.i.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %call4.i = tail call i64 @div64_u64(i64 noundef -1, i64 noundef %shl.i) #8
  %conv5.i = zext i32 %mul.i to i64
  %mul6.i = mul i64 %call4.i, %conv5.i
  %13 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul6.i) #12, !srcloc !45
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul6.i, i64 %13, i32 0) #12, !srcloc !46
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %14, 0
  %shr.i.i.i = lshr i64 %asmresult10.i.i.i.i, 50
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %15 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i.i, i1 true) #8, !range !43
  %add.i.i.i = sub nuw nsw i32 64, %15
  br label %freq_to_shift.exit

if.end.i.i.i:                                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %div158.i.i10.i = lshr i64 %asmresult10.i.i.i.i, 18
  %conv1.i.i.i = trunc i64 %div158.i.i10.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i.i)
  %tobool.not.i5.i.i.i = icmp eq i32 %conv1.i.i.i, 0
  %16 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i.i, i1 true) #8, !range !43
  %sub.i6.i.i.i = sub nuw nsw i32 32, %16
  %cond.i7.i.i.i = select i1 %tobool.not.i5.i.i.i, i32 0, i32 %sub.i6.i.i.i
  br label %freq_to_shift.exit

freq_to_shift.exit:                               ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ %cond.i7.i.i.i, %if.end.i.i.i ]
  %sub.i.i = add nsw i32 %retval.0.i.i.i, -1
  %shift = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 18, i32 3
  %17 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub.i.i, ptr %shift, align 4
  %18 = ptrtoint ptr %hca_core_clock to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hca_core_clock, align 4
  %conv = zext i16 %19 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %sh_prom.i.i = zext i32 %sub.i.i to i64
  %shl.i.i = shl i64 1000000, %sh_prom.i.i
  %div1.i.i = lshr exact i32 %mul, 1
  %conv.i.i96 = zext i32 %div1.i.i to i64
  %add.i.i97 = add i64 %shl.i.i, %conv.i.i96
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i97)
  %cmp171.i.i = icmp ult i64 %add.i.i97, 4294967296
  br i1 %cmp171.i.i, label %if.then175.i.i, label %if.else181.i.i, !prof !47

if.then175.i.i:                                   ; preds = %freq_to_shift.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv176.i.i = trunc i64 %add.i.i97 to i32
  %div179.i.i = udiv i32 %conv176.i.i, %mul
  br label %clocksource_khz2mult.exit

if.else181.i.i:                                   ; preds = %freq_to_shift.exit
  call void @__sanitizer_cov_trace_pc() #10
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %add.i.i97) #12, !srcloc !48
  %asmresult1.i.i.i = extractvalue { i64, i64 } %20, 1
  %extract.t30.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %clocksource_khz2mult.exit

clocksource_khz2mult.exit:                        ; preds = %if.else181.i.i, %if.then175.i.i
  %tmp.0.off0.i.i = phi i32 [ %div179.i.i, %if.then175.i.i ], [ %extract.t30.i.i, %if.else181.i.i ]
  %mult = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 18, i32 2
  %21 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %tmp.0.off0.i.i, ptr %mult, align 8
  %nominal_c_mult = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 17
  %22 = ptrtoint ptr %nominal_c_mult to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %tmp.0.off0.i.i, ptr %nominal_c_mult, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %23 = ptrtoint ptr %clock_lock to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clock_lock, align 4
  %inc.i.i.i.i = add i32 %24, 1
  store i32 %inc.i.i.i.i, ptr %clock_lock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !41
  %25 = tail call ptr @llvm.returnaddress(i32 0) #8
  %26 = ptrtoint ptr %25 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %26) #8
  %clock = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 20
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #8
  tail call void @timecounter_init(ptr noundef %clock, ptr noundef %cycles, i64 noundef %call.i) #8
  tail call void @lock_release(ptr noundef %dep_map.i, i32 noundef %26) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !42
  %27 = ptrtoint ptr %clock_lock to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clock_lock, align 4
  %inc.i.i.i = add i32 %28, 1
  store i32 %inc.i.i.i, ptr %clock_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #8
  %ptp_clock_info = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 23
  %29 = call ptr @memcpy(ptr %ptp_clock_info, ptr @mlx4_en_ptp_clock_info, i32 108)
  %name = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 23, i32 1
  %30 = call ptr @memcpy(ptr %name, ptr @.str.6, i32 9)
  %pdev = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 1
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 4
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %call41 = tail call ptr @ptp_clock_register(ptr noundef %ptp_clock_info, ptr noundef %dev40) #8
  %33 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call41, ptr %ptp_clock, align 4
  %cmp.i = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then45, label %if.else

if.then45:                                        ; preds = %clocksource_khz2mult.exit
  %34 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %ptp_clock, align 4
  %35 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev, align 4
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44, i32 3
  %37 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then45.dev_name.exit_crit_edge

if.then45.dev_name.exit_crit_edge:                ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %39 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev51, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then45.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %40, %if.end.i ], [ %38, %if.then45.dev_name.exit_crit_edge ]
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %retval.0.i) #11
  br label %cleanup

if.else:                                          ; preds = %clocksource_khz2mult.exit
  %tobool55.not = icmp eq ptr %call41, null
  br i1 %tobool55.not, label %if.else.cleanup_crit_edge, label %do.end59

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end59:                                         ; preds = %if.else
  %41 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev, align 4
  %init_name.i101 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44, i32 3
  %43 = ptrtoint ptr %init_name.i101 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i101, align 8
  %tobool.not.i102 = icmp eq ptr %44, null
  br i1 %tobool.not.i102, label %if.end.i103, label %do.end59.dev_name.exit105_crit_edge

do.end59.dev_name.exit105_crit_edge:              ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit105

if.end.i103:                                      ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #10
  %dev62 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %45 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev62, align 4
  br label %dev_name.exit105

dev_name.exit105:                                 ; preds = %if.end.i103, %do.end59.dev_name.exit105_crit_edge
  %retval.0.i104 = phi ptr [ %46, %if.end.i103 ], [ %44, %do.end59.dev_name.exit105_crit_edge ]
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %retval.0.i104) #11
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit105, %if.else.cleanup_crit_edge, %dev_name.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlx4_en_read_clock(ptr nocapture noundef readonly %tc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %tc, i32 -456
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %call = tail call i64 @mlx4_read_clock(ptr noundef %1) #8
  %mask = getelementptr inbounds %struct.cyclecounter, ptr %tc, i32 0, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %mask, align 8
  %and = and i64 %3, %call
  ret i64 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @timecounter_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlx4_read_clock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_phc_adjfreq(ptr noundef %ptp, i32 noundef %delta) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta)
  %cmp = icmp slt i32 %delta, 0
  %0 = tail call i32 @llvm.abs.i32(i32 %delta, i1 false)
  %nominal_c_mult = getelementptr i8, ptr %ptp, i32 -156
  %1 = ptrtoint ptr %nominal_c_mult to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nominal_c_mult, align 4
  %conv = zext i32 %2 to i64
  %conv1 = sext i32 %0 to i64
  %mul = mul nsw i64 %conv, %conv1
  %3 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i32 0) #12, !srcloc !49
  %asmresult.i.i.i = extractvalue { i64, i32 } %3, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %3, 1
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #12, !srcloc !46
  %asmresult10.i.i.i = extractvalue { i64, i32 } %4, 0
  %div158.i.i19 = lshr i64 %asmresult10.i.i.i, 29
  %conv2 = trunc i64 %div158.i.i19 to i32
  %clock_lock = getelementptr i8, ptr %ptp, i32 -128
  %lock.i = getelementptr i8, ptr %ptp, i32 -92
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %5 = ptrtoint ptr %clock_lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %clock_lock, align 4
  %inc.i.i.i.i = add i32 %6, 1
  store i32 %inc.i.i.i.i, ptr %clock_lock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !41
  %dep_map.i.i.i = getelementptr i8, ptr %ptp, i32 -124
  %7 = tail call ptr @llvm.returnaddress(i32 0) #8
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %8) #8
  %clock = getelementptr i8, ptr %ptp, i32 -48
  %call4 = tail call i64 @timecounter_read(ptr noundef %clock) #8
  %9 = sub i32 0, %conv2
  %cond.p = select i1 %cmp, i32 %9, i32 %conv2
  %cond = add i32 %cond.p, %2
  %mult6 = getelementptr i8, ptr %ptp, i32 -136
  %10 = ptrtoint ptr %mult6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %mult6, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !42
  %11 = ptrtoint ptr %clock_lock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clock_lock, align 4
  %inc.i.i.i = add i32 %12, 1
  store i32 %inc.i.i.i, ptr %clock_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_phc_adjtime(ptr noundef %ptp, i64 noundef %delta) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clock_lock = getelementptr i8, ptr %ptp, i32 -128
  %lock.i = getelementptr i8, ptr %ptp, i32 -92
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %0 = ptrtoint ptr %clock_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clock_lock, align 4
  %inc.i.i.i.i = add i32 %1, 1
  store i32 %inc.i.i.i.i, ptr %clock_lock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !41
  %dep_map.i.i.i = getelementptr i8, ptr %ptp, i32 -124
  %2 = tail call ptr @llvm.returnaddress(i32 0) #8
  %3 = ptrtoint ptr %2 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %3) #8
  %nsec.i = getelementptr i8, ptr %ptp, i32 -32
  %4 = ptrtoint ptr %nsec.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %nsec.i, align 8
  %add.i = add i64 %5, %delta
  store i64 %add.i, ptr %nsec.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %3) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !42
  %6 = ptrtoint ptr %clock_lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clock_lock, align 4
  %inc.i.i.i = add i32 %7, 1
  store i32 %inc.i.i.i, ptr %clock_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_phc_gettime(ptr noundef %ptp, ptr nocapture noundef writeonly %ts) #2 align 64 {
entry:
  %tmp3 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clock_lock = getelementptr i8, ptr %ptp, i32 -128
  %lock.i = getelementptr i8, ptr %ptp, i32 -92
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %0 = ptrtoint ptr %clock_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clock_lock, align 4
  %inc.i.i.i.i = add i32 %1, 1
  store i32 %inc.i.i.i.i, ptr %clock_lock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !41
  %dep_map.i.i.i = getelementptr i8, ptr %ptp, i32 -124
  %2 = tail call ptr @llvm.returnaddress(i32 0) #8
  %3 = ptrtoint ptr %2 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %3) #8
  %clock = getelementptr i8, ptr %ptp, i32 -48
  %call1 = tail call i64 @timecounter_read(ptr noundef %clock) #8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %3) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !42
  %4 = ptrtoint ptr %clock_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clock_lock, align 4
  %inc.i.i.i = add i32 %5, 1
  store i32 %inc.i.i.i, ptr %clock_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp3) #8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp3, i64 noundef %call1) #8
  %6 = call ptr @memcpy(ptr %ts, ptr %tmp3, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_phc_settime(ptr noundef %ptp, ptr nocapture noundef readonly %ts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %1)
  %cmp.i = icmp sgt i64 %1, 9223372035
  br i1 %cmp.i, label %entry.timespec64_to_ns.exit_crit_edge, label %if.end.i

entry.timespec64_to_ns.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %timespec64_to_ns.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %1)
  %cmp2.i = icmp slt i64 %1, -9223372035
  br i1 %cmp2.i, label %if.end.i.timespec64_to_ns.exit_crit_edge, label %if.end4.i

if.end.i.timespec64_to_ns.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %timespec64_to_ns.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul nsw i64 %1, 1000000000
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %2 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = sext i32 %3 to i64
  %add.i = add i64 %mul.i, %conv.i
  br label %timespec64_to_ns.exit

timespec64_to_ns.exit:                            ; preds = %if.end4.i, %if.end.i.timespec64_to_ns.exit_crit_edge, %entry.timespec64_to_ns.exit_crit_edge
  %retval.0.i = phi i64 [ %add.i, %if.end4.i ], [ 9223372036854775807, %entry.timespec64_to_ns.exit_crit_edge ], [ -9223372036854775808, %if.end.i.timespec64_to_ns.exit_crit_edge ]
  %clock_lock = getelementptr i8, ptr %ptp, i32 -128
  %lock.i = getelementptr i8, ptr %ptp, i32 -92
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %4 = ptrtoint ptr %clock_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clock_lock, align 4
  %inc.i.i.i.i = add i32 %5, 1
  store i32 %inc.i.i.i.i, ptr %clock_lock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !41
  %dep_map.i.i.i = getelementptr i8, ptr %ptp, i32 -124
  %6 = tail call ptr @llvm.returnaddress(i32 0) #8
  %7 = ptrtoint ptr %6 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %7) #8
  %clock = getelementptr i8, ptr %ptp, i32 -48
  %cycles = getelementptr i8, ptr %ptp, i32 -152
  tail call void @timecounter_init(ptr noundef %clock, ptr noundef %cycles, i64 noundef %retval.0.i) #8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !42
  %8 = ptrtoint ptr %clock_lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clock_lock, align 4
  %inc.i.i.i = add i32 %9, 1
  store i32 %inc.i.i.i, ptr %clock_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx4_en_phc_enable(ptr nocapture noundef readnone %ptp, ptr nocapture noundef readnone %request, i32 noundef %on) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !15, !16, !17, !18, !20, !21, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_clock.c", i32 88, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mlx4_en_remove_timestamp._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mlx4_en_remove_timestamp._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @mlx4_en_init_timestamp.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_clock.c", i32 275, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mlx4_en_init_timestamp.__key.4, !7, !"__key", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_clock.c", i32 292, i32 42}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_clock.c", i32 298, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mlx4_en_init_timestamp._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @mlx4_en_init_timestamp._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_clock.c", i32 300, i32 3}
!20 = !{ptr @mlx4_en_init_timestamp._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @mlx4_en_init_timestamp._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @mlx4_en_ptp_clock_info, !23, !"mlx4_en_ptp_clock_info", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_clock.c", i32 232, i32 36}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 792347, i64 792408}
!34 = !{i64 795079}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i64 795364}
!37 = !{i64 2150327631}
!38 = !{i64 2150327473}
!39 = !{i64 2150327801}
!40 = !{i64 2150312872}
!41 = !{i64 2150313197}
!42 = !{i64 2150313522}
!43 = !{i32 0, i32 33}
!44 = !{i32 0, i32 26}
!45 = !{i64 1304569, i64 1304596}
!46 = !{i64 1305264, i64 1305291, i64 1305324, i64 1305345, i64 1305372, i64 1305398}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 2148790400, i64 2148790680, i64 2148791014, i64 2148791348}
!49 = !{i64 1304856, i64 1304883, i64 1304905, i64 1304933}
