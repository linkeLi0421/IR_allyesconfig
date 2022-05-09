; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/fec_ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/fec_ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ifreq = type { %union.anon.19, %union.anon.20 }
%union.anon.19 = type { [16 x i8] }
%union.anon.20 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
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
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.timespec64 = type { i64, i32 }
%struct.ptp_clock_event = type { i32, i32, %union.anon.124 }
%union.anon.124 = type { %struct.pps_event_time }
%struct.pps_event_time = type { %struct.timespec64 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fec ptp\00", [24 x i8] zeroinitializer }, align 32
@fec_ptp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 603, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"clk_ptp clock rate is zero\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fec_ptp_init\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/freescale/fec_ptp.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fec_ptp_init._entry_ptr = internal global ptr @fec_ptp_init._entry, section ".printk_index", align 4
@fec_ptp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&fep->tmreg_lock\00", [47 x i8] zeroinitializer }, align 32
@fec_ptp_init.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&fep->time_keep)->work)\00", [52 x i8] zeroinitializer }, align 32
@fec_ptp_init.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&fep->time_keep)->timer\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pps\00", [28 x i8] zeroinitializer }, align 32
@fec_ptp_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 624, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"request for pps irq failed(%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@fec_ptp_init._entry_ptr.15 = internal global ptr @fec_ptp_init._entry.12, section ".printk_index", align 4
@fec_ptp_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 630, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ptp_clock_register failed\0A\00", [37 x i8] zeroinitializer }, align 32
@fec_ptp_init._entry_ptr.18 = internal global ptr @fec_ptp_init._entry.16, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 586, i32 30 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 603, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 607, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 611, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 613, i32 47 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 623, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private constant [44 x i8] c"../drivers/net/ethernet/freescale/fec_ptp.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 630, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 156, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @fec_ptp_init._entry, ptr @fec_ptp_init._entry.12, ptr @fec_ptp_init._entry.16, ptr @fec_ptp_init._entry_ptr, ptr @fec_ptp_init._entry_ptr.15, ptr @fec_ptp_init._entry_ptr.18, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @fec_ptp_init.__key, ptr @.str.6, ptr @fec_ptp_init.__key.7, ptr @.str.8, ptr @fec_ptp_init.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.21], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_ptp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_ptp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_ptp_init.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_ptp_init.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_ptp_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_ptp_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fec_ptp_start_cyclecounter(ptr noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %cycle_speed = getelementptr i8, ptr %ndev, i32 3048
  %0 = ptrtoint ptr %cycle_speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cycle_speed, align 8
  %div = udiv i32 1000000000, %1
  %tmreg_lock = getelementptr i8, ptr %ndev, i32 2932
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !46
  tail call void @arm_heavy_mb() #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %div)
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr13 = getelementptr i8, ptr %6, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 128) #8, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr18 = getelementptr i8, ptr %8, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 822083584) #8, !srcloc !47
  %cc = getelementptr i8, ptr %ndev, i32 2976
  %9 = ptrtoint ptr %cc to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %cc, align 8
  store ptr @fec_ptp_read, ptr %cc, align 8
  %mask = getelementptr i8, ptr %ndev, i32 2984
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 2147483647, ptr %mask, align 8
  %shift = getelementptr i8, ptr %ndev, i32 2996
  %11 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 31, ptr %shift, align 4
  %mult = getelementptr i8, ptr %ndev, i32 2992
  %12 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -2147483648, ptr %mult, align 8
  %tc = getelementptr i8, ptr %ndev, i32 3000
  tail call void @timecounter_init(ptr noundef %tc, ptr noundef %cc, i64 noundef 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @fec_ptp_read(ptr nocapture noundef readonly %cc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cc, i32 -672
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %add.ptr1 = getelementptr i8, ptr %1, i32 1024
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  %3 = or i32 %2, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %add.ptr5 = getelementptr i8, ptr %5, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %3) #8, !srcloc !47
  %quirks = getelementptr i8, ptr %cc, i32 -436
  %6 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks, align 4
  %and = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %add.ptr9 = getelementptr i8, ptr %10, i32 1028
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #8, !srcloc !50
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  %conv = zext i32 %12 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @timecounter_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @fec_ptp_disable_hwts(ptr nocapture noundef writeonly %ndev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwts_tx_en = getelementptr i8, ptr %ndev, i32 3056
  %0 = ptrtoint ptr %hwts_tx_en to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %hwts_tx_en, align 8
  %hwts_rx_en = getelementptr i8, ptr %ndev, i32 3052
  %1 = ptrtoint ptr %hwts_rx_en to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %hwts_rx_en, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fec_ptp_set(ptr nocapture noundef writeonly %ndev, ptr nocapture noundef readonly %ifr) local_unnamed_addr #0 align 64 {
entry:
  %config = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %config) #8
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %config, align 4, !annotation !54
  %1 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !54
  %3 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !54
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %5 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 12, i32 -1226833920) #11, !srcloc !55
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !56

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %config, i32 noundef 12) #8
  %8 = call i32 @llvm.read_register.i32(metadata !36) #8
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !57
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %config, ptr noundef %6, i32 noundef 12) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #8, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !56

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %entry.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %config, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %switch = icmp ult i32 %13, 2
  br i1 %switch, label %sw.epilog, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  %hwts_tx_en3 = getelementptr i8, ptr %ndev, i32 3056
  %14 = ptrtoint ptr %hwts_tx_en3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %hwts_tx_en3, align 8
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cond13 = icmp eq i32 %16, 0
  br i1 %cond13, label %sw.epilog.if.then.i21_crit_edge, label %sw.default5

sw.epilog.if.then.i21_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i21

sw.default5:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %3, align 4
  br label %if.then.i21

if.then.i21:                                      ; preds = %sw.default5, %sw.epilog.if.then.i21_crit_edge
  %.sink = phi i32 [ 1, %sw.default5 ], [ 0, %sw.epilog.if.then.i21_crit_edge ]
  %18 = getelementptr i8, ptr %ndev, i32 3052
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %18, align 4
  %20 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ifr_ifru, align 4
  call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 174) #8
  %call.i.i20 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i20, label %if.then.i21.cleanup_crit_edge, label %if.end.i.i24

if.then.i21.cleanup_crit_edge:                    ; preds = %if.then.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i24:                                     ; preds = %if.then.i21
  %22 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 12, i32 -1226833920) #11, !srcloc !60
  %asmresult.i.i22 = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i22)
  %cmp.i.i23 = icmp eq i32 %asmresult.i.i22, 0
  br i1 %cmp.i.i23, label %copy_to_user.exit, label %if.end.i.i24.cleanup_crit_edge

if.end.i.i24.cleanup_crit_edge:                   ; preds = %if.end.i.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i24
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i25 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %config, i32 noundef 12) #8
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %21, ptr noundef nonnull %config, i32 noundef 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool11.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool11.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i24.cleanup_crit_edge, %if.then.i21.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -34, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then.i21.cleanup_crit_edge ], [ -14, %if.end.i.i24.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %config) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fec_ptp_get(ptr nocapture noundef readonly %ndev, ptr nocapture noundef readonly %ifr) local_unnamed_addr #0 align 64 {
entry:
  %config = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %config) #8
  %0 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 1
  %1 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 2
  %2 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %config, align 4
  %hwts_tx_en = getelementptr i8, ptr %ndev, i32 3056
  %3 = ptrtoint ptr %hwts_tx_en to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwts_tx_en, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp ne i32 %4, 0
  %cond = zext i1 %tobool.not to i32
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %0, align 4
  %hwts_rx_en = getelementptr i8, ptr %ndev, i32 3052
  %6 = ptrtoint ptr %hwts_rx_en to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwts_rx_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp ne i32 %7, 0
  %cond2 = zext i1 %tobool1.not to i32
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond2, ptr %1, align 4
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %9 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 12, i32 -1226833920) #11, !srcloc !60
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %config, i32 noundef 12) #8
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %10, ptr noundef nonnull %config, i32 noundef 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool4.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool4.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %12 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %config) #8
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fec_ptp_init(ptr noundef %pdev, i32 noundef %irq_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %ptp_caps = getelementptr i8, ptr %1, i32 2820
  %2 = ptrtoint ptr %ptp_caps to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ptp_caps, align 4
  %name = getelementptr i8, ptr %1, i32 2824
  %call3 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 32) #8
  %max_adj = getelementptr i8, ptr %1, i32 2856
  %3 = ptrtoint ptr %max_adj to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 250000000, ptr %max_adj, align 4
  %n_alarm = getelementptr i8, ptr %1, i32 2860
  %pps = getelementptr i8, ptr %1, i32 2876
  %4 = call ptr @memset(ptr %n_alarm, i32 0, i32 16)
  %5 = ptrtoint ptr %pps to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %pps, align 4
  %adjfreq = getelementptr i8, ptr %1, i32 2888
  %6 = ptrtoint ptr %adjfreq to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @fec_ptp_adjfreq, ptr %adjfreq, align 4
  %adjtime = getelementptr i8, ptr %1, i32 2896
  %7 = ptrtoint ptr %adjtime to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @fec_ptp_adjtime, ptr %adjtime, align 4
  %gettime64 = getelementptr i8, ptr %1, i32 2900
  %8 = ptrtoint ptr %gettime64 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @fec_ptp_gettime, ptr %gettime64, align 4
  %settime64 = getelementptr i8, ptr %1, i32 2912
  %9 = ptrtoint ptr %settime64 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @fec_ptp_settime, ptr %settime64, align 4
  %enable = getelementptr i8, ptr %1, i32 2916
  %10 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @fec_ptp_enable, ptr %enable, align 4
  %clk_ptp = getelementptr i8, ptr %1, i32 2328
  %11 = ptrtoint ptr %clk_ptp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_ptp, align 8
  %call15 = tail call i32 @clk_get_rate(ptr noundef %12) #8
  %cycle_speed = getelementptr i8, ptr %1, i32 3048
  %13 = ptrtoint ptr %cycle_speed to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call15, ptr %cycle_speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %cycle_speed to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1000000000, ptr %cycle_speed, align 8
  %pdev18 = getelementptr i8, ptr %1, i32 2472
  %15 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev18, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %cycle_speed to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cycle_speed, align 8
  %div = udiv i32 1000000000, %18
  %ptp_inc = getelementptr i8, ptr %1, i32 3248
  %19 = ptrtoint ptr %ptp_inc to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div, ptr %ptp_inc, align 8
  %tmreg_lock = getelementptr i8, ptr %1, i32 2932
  tail call void @__raw_spin_lock_init(ptr noundef %tmreg_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @fec_ptp_init.__key, i16 noundef signext 3) #8
  %20 = ptrtoint ptr %cycle_speed to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cycle_speed, align 8
  %div.i = udiv i32 1000000000, %21
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !46
  tail call void @arm_heavy_mb() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %div.i) #8
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i117 = getelementptr i8, ptr %24, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 %22) #8, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr13.i = getelementptr i8, ptr %26, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 128) #8, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  tail call void @arm_heavy_mb() #8
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr18.i = getelementptr i8, ptr %28, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 822083584) #8, !srcloc !47
  %cc.i = getelementptr i8, ptr %1, i32 2976
  %29 = ptrtoint ptr %cc.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %cc.i, align 8
  store ptr @fec_ptp_read, ptr %cc.i, align 8
  %mask.i = getelementptr i8, ptr %1, i32 2984
  %30 = ptrtoint ptr %mask.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 2147483647, ptr %mask.i, align 8
  %shift.i = getelementptr i8, ptr %1, i32 2996
  %31 = ptrtoint ptr %shift.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 31, ptr %shift.i, align 4
  %mult.i = getelementptr i8, ptr %1, i32 2992
  %32 = ptrtoint ptr %mult.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -2147483648, ptr %mult.i, align 8
  %tc.i = getelementptr i8, ptr %1, i32 3000
  tail call void @timecounter_init(ptr noundef %tc.i, ptr noundef %cc.i, i64 noundef 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call3.i) #8
  %time_keep = getelementptr i8, ptr %1, i32 3060
  tail call void @__init_work(ptr noundef %time_keep, i32 noundef 0) #8
  %33 = ptrtoint ptr %time_keep to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -64, ptr %time_keep, align 4
  %lockdep_map = getelementptr i8, ptr %1, i32 3076
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @fec_ptp_init.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry32 = getelementptr i8, ptr %1, i32 3064
  %34 = ptrtoint ptr %entry32 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %entry32, ptr %entry32, align 4
  %prev.i = getelementptr i8, ptr %1, i32 3068
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %entry32, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %1, i32 3072
  %36 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @fec_time_keep, ptr %func, align 4
  %timer = getelementptr i8, ptr %1, i32 3104
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.10, ptr noundef nonnull @fec_ptp_init.__key.9) #8
  %call43 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %pdev, ptr noundef nonnull @.str.11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp = icmp slt i32 %call43, 0
  br i1 %cmp, label %if.end46, label %if.end.if.then48_crit_edge

if.end.if.then48_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48

if.end46:                                         ; preds = %if.end
  %call45 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef %irq_idx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call45)
  %cmp47 = icmp sgt i32 %call45, -1
  br i1 %cmp47, label %if.end46.if.then48_crit_edge, label %if.end46.if.end59_crit_edge

if.end46.if.end59_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end46.if.then48_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48

if.then48:                                        ; preds = %if.end46.if.then48_crit_edge, %if.end.if.then48_crit_edge
  %irq.0120 = phi i32 [ %call45, %if.end46.if.then48_crit_edge ], [ %call43, %if.end.if.then48_crit_edge ]
  %dev49 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %37 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev, align 8
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev49, i32 noundef %irq.0120, ptr noundef nonnull @fec_pps_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %38, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp52 = icmp slt i32 %call.i, 0
  br i1 %cmp52, label %do.end56, label %if.then48.if.end59_crit_edge

if.then48.if.end59_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

do.end56:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev49, ptr noundef nonnull @.str.13, i32 noundef %call.i) #12
  br label %if.end59

if.end59:                                         ; preds = %do.end56, %if.then48.if.end59_crit_edge, %if.end46.if.end59_crit_edge
  %dev61 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call62 = tail call ptr @ptp_clock_register(ptr noundef %ptp_caps, ptr noundef %dev61) #8
  %ptp_clock = getelementptr i8, ptr %1, i32 2816
  %39 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call62, ptr %ptp_clock, align 8
  %cmp.i = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then65, label %if.end59.if.end71_crit_edge

if.end59.if.end71_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then65:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %ptp_clock, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61, ptr noundef nonnull @.str.17) #12
  br label %if.end71

if.end71:                                         ; preds = %if.then65, %if.end59.if.end71_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %41 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %41, ptr noundef %time_keep, i32 noundef 100) #8
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_ptp_adjfreq(ptr noundef %ptp, i32 noundef %ppb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -516
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ppb)
  %cmp = icmp eq i32 %ppb, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ppb)
  %cmp2 = icmp slt i32 %ppb, 0
  %0 = tail call i32 @llvm.abs.i32(i32 %ppb, i1 false)
  %conv = sext i32 %0 to i64
  %ptp_inc = getelementptr i8, ptr %ptp, i32 428
  %1 = ptrtoint ptr %ptp_inc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ptp_inc, align 8
  %conv5 = zext i32 %2 to i64
  %mul = mul nsw i64 %conv5, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp7.not95 = icmp eq i32 %2, 0
  br i1 %cmp7.not95, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.097 = phi i32 [ %inc, %if.end14.for.body_crit_edge ], [ 1, %if.end.for.body_crit_edge ]
  %lhs.096 = phi i64 [ %add, %if.end14.for.body_crit_edge ], [ 1000000000, %if.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %lhs.096, i64 %mul)
  %cmp9.not = icmp ult i64 %lhs.096, %mul
  br i1 %cmp9.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %for.body
  %conv12 = trunc i64 %mul to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %lhs.096)
  %cmp164.i.i = icmp ult i64 %lhs.096, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !56

if.then168.i.i:                                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %lhs.096 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %conv12
  br label %for.end

if.else174.i.i:                                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv12, i64 %lhs.096) #11, !srcloc !61
  %asmresult1.i.i.i = extractvalue { i64, i64 } %3, 1
  %extract.t91 = trunc i64 %asmresult1.i.i.i to i32
  br label %for.end

if.end14:                                         ; preds = %for.body
  %add = add i64 %lhs.096, 1000000000
  %inc = add i32 %i.097, 1
  %cmp7.not = icmp ugt i32 %inc, %2
  br i1 %cmp7.not, label %if.end14.for.end_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %if.else174.i.i, %if.then168.i.i, %if.end.for.end_crit_edge
  %spec.select89 = phi i32 [ %i.097, %if.then168.i.i ], [ %i.097, %if.else174.i.i ], [ 0, %if.end.for.end_crit_edge ], [ %2, %if.end14.for.end_crit_edge ]
  %spec.select88 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t91, %if.else174.i.i ], [ 1, %if.end.for.end_crit_edge ], [ 1, %if.end14.for.end_crit_edge ]
  %4 = sub i32 0, %spec.select89
  %corr_ns.0.p = select i1 %cmp2, i32 %4, i32 %spec.select89
  %corr_ns.0 = add i32 %corr_ns.0.p, %2
  %tmreg_lock = getelementptr i8, ptr %ptp, i32 112
  %call32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #8
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %add.ptr35 = getelementptr i8, ptr %6, i32 1044
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #8, !srcloc !50
  %8 = lshr i32 %7, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  %and = and i32 %8, 127
  %shl = shl i32 %corr_ns.0, 8
  %or = or i32 %and, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %add.ptr43 = getelementptr i8, ptr %11, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %9) #8, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select88)
  %cmp44 = icmp ugt i32 %spec.select88, 1
  %sub46 = sext i1 %cmp44 to i32
  %cond = add i32 %spec.select88, %sub46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %cond)
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  %add.ptr51 = getelementptr i8, ptr %14, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %12) #8, !srcloc !47
  %tc = getelementptr i8, ptr %ptp, i32 180
  %call52 = tail call i64 @timecounter_read(ptr noundef %tc) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call32) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_ptp_adjtime(ptr noundef %ptp, i64 noundef %delta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tmreg_lock = getelementptr i8, ptr %ptp, i32 112
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #8
  %nsec.i = getelementptr i8, ptr %ptp, i32 196
  %0 = ptrtoint ptr %nsec.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %nsec.i, align 8
  %add.i = add i64 %1, %delta
  store i64 %add.i, ptr %nsec.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_ptp_gettime(ptr noundef %ptp, ptr nocapture noundef writeonly %ts) #0 align 64 {
entry:
  %tmp10 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_clk_mutex = getelementptr i8, ptr %ptp, i32 -480
  tail call void @mutex_lock_nested(ptr noundef %ptp_clk_mutex, i32 noundef 0) #8
  %ptp_clk_on = getelementptr i8, ptr %ptp, i32 -484
  %0 = ptrtoint ptr %ptp_clk_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ptp_clk_on, align 8, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %do.body2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %ptp_clk_mutex) #8
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tmreg_lock = getelementptr i8, ptr %ptp, i32 112
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #8
  %tc = getelementptr i8, ptr %ptp, i32 180
  %call7 = tail call i64 @timecounter_read(ptr noundef %tc) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call4) #8
  tail call void @mutex_unlock(ptr noundef %ptp_clk_mutex) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp10) #8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp10, i64 noundef %call7) #8
  %2 = call ptr @memcpy(ptr %ts, ptr %tmp10, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp10) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %if.then
  %retval.0 = phi i32 [ 0, %do.body2 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_ptp_settime(ptr noundef %ptp, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_clk_mutex = getelementptr i8, ptr %ptp, i32 -480
  tail call void @mutex_lock_nested(ptr noundef %ptp_clk_mutex, i32 noundef 0) #8
  %ptp_clk_on = getelementptr i8, ptr %ptp, i32 -484
  %0 = ptrtoint ptr %ptp_clk_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ptp_clk_on, align 8, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %ptp, i32 -516
  %2 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %3)
  %cmp.i = icmp sgt i64 %3, 9223372035
  br i1 %cmp.i, label %if.end.timespec64_to_ns.exit_crit_edge, label %if.end.i

if.end.timespec64_to_ns.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %timespec64_to_ns.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %3)
  %cmp2.i = icmp slt i64 %3, -9223372035
  br i1 %cmp2.i, label %if.end.i.timespec64_to_ns.exit_crit_edge, label %if.end4.i

if.end.i.timespec64_to_ns.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %timespec64_to_ns.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul nsw i64 %3, 1000000000
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %4 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = sext i32 %5 to i64
  %add.i = add i64 %mul.i, %conv.i
  br label %timespec64_to_ns.exit

timespec64_to_ns.exit:                            ; preds = %if.end4.i, %if.end.i.timespec64_to_ns.exit_crit_edge, %if.end.timespec64_to_ns.exit_crit_edge
  %retval.0.i = phi i64 [ %add.i, %if.end4.i ], [ 9223372036854775807, %if.end.timespec64_to_ns.exit_crit_edge ], [ -9223372036854775808, %if.end.i.timespec64_to_ns.exit_crit_edge ]
  %cc = getelementptr i8, ptr %ptp, i32 156
  %mask = getelementptr i8, ptr %ptp, i32 164
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %mask, align 8
  %and = and i64 %7, %retval.0.i
  %conv = trunc i64 %and to i32
  %tmreg_lock = getelementptr i8, ptr %ptp, i32 112
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %add.ptr12 = getelementptr i8, ptr %10, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %8) #8, !srcloc !47
  %tc = getelementptr i8, ptr %ptp, i32 180
  tail call void @timecounter_init(ptr noundef %tc, ptr noundef %cc, i64 noundef %retval.0.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call6) #8
  br label %cleanup

cleanup:                                          ; preds = %timespec64_to_ns.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %timespec64_to_ns.exit ], [ -22, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ptp_clk_mutex) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_ptp_enable(ptr noundef %ptp, ptr nocapture noundef readonly %rq, i32 noundef %on) #0 align 64 {
entry:
  %tmp65.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %ptp, i32 -516
  %pps_enable.i = getelementptr i8, ptr %ptp, i32 440
  %2 = ptrtoint ptr %pps_enable.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pps_enable.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %on)
  %cmp.i = icmp eq i32 %3, %on
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %pps_channel.i = getelementptr i8, ptr %ptp, i32 432
  %4 = ptrtoint ptr %pps_channel.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %pps_channel.i, align 4
  %reload_period.i = getelementptr i8, ptr %ptp, i32 436
  %5 = ptrtoint ptr %reload_period.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1000000000, ptr %reload_period.i, align 8
  %tmreg_lock.i = getelementptr i8, ptr %ptp, i32 112
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not.i = icmp eq i32 %on, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %8 = ptrtoint ptr %pps_channel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pps_channel.i, align 4
  %mul144.i = shl i32 %9, 3
  %add145.i = add i32 %mul144.i, 1544
  %add.ptr146.i = getelementptr i8, ptr %7, i32 %add145.i
  br i1 %tobool.not.i, label %do.body139.i, label %do.body7.i

do.body7.i:                                       ; preds = %if.end.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr146.i, i32 -2147483648) #8, !srcloc !47
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %12 = ptrtoint ptr %pps_channel.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pps_channel.i, align 4
  %mul13.i = shl i32 %13, 3
  %add14.i = add i32 %mul13.i, 1544
  %add.ptr15.i = getelementptr i8, ptr %11, i32 %add14.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #8, !srcloc !50
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  br label %do.body19.i

do.body19.i:                                      ; preds = %do.body19.i.do.body19.i_crit_edge, %do.body7.i
  %val.0.i = phi i32 [ %15, %do.body7.i ], [ %26, %do.body19.i.do.body19.i_crit_edge ]
  %and.i = and i32 %val.0.i, -61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  tail call void @arm_heavy_mb() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 8
  %19 = ptrtoint ptr %pps_channel.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pps_channel.i, align 4
  %mul25.i = shl i32 %20, 3
  %add26.i = add i32 %mul25.i, 1544
  %add.ptr27.i = getelementptr i8, ptr %18, i32 %add26.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %16) #8, !srcloc !47
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 8
  %23 = ptrtoint ptr %pps_channel.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pps_channel.i, align 4
  %mul32.i = shl i32 %24, 3
  %add33.i = add i32 %mul32.i, 1544
  %add.ptr34.i = getelementptr i8, ptr %22, i32 %add33.i
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #8, !srcloc !50
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  %and39.i = and i32 %26, 60
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %do.end41.i, label %do.body19.i.do.body19.i_crit_edge

do.body19.i.do.body19.i_crit_edge:                ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19.i

do.end41.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #10
  %tc.i = getelementptr i8, ptr %ptp, i32 180
  %call42.i = tail call i64 @timecounter_read(ptr noundef %tc.i) #8
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 8
  %add.ptr46.i = getelementptr i8, ptr %28, i32 1024
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i) #8, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %30 = or i32 %29, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 8
  %add.ptr54.i = getelementptr i8, ptr %32, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 %30) #8, !srcloc !47
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 8
  %add.ptr58.i = getelementptr i8, ptr %34, i32 1028
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.i) #8, !srcloc !50
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  %conv63.i = zext i32 %36 to i64
  %call64.i = tail call i64 @timecounter_cyc2time(ptr noundef %tc.i, i64 noundef %conv63.i) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp65.i) #8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp65.i, i64 noundef %call64.i) #8
  %ts.sroa.4.0.tmp65.sroa_idx.i = getelementptr inbounds i8, ptr %tmp65.i, i32 8
  %37 = ptrtoint ptr %ts.sroa.4.0.tmp65.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %ts.sroa.4.0.copyload155.i = load i32, ptr %ts.sroa.4.0.tmp65.sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp65.i) #8
  %add66.i = add i32 %36, 2000000000
  %add67.i = sub i32 %add66.i, %ts.sroa.4.0.copyload155.i
  %mask.i = getelementptr i8, ptr %ptp, i32 164
  %38 = ptrtoint ptr %mask.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %mask.i, align 8
  %40 = trunc i64 %39 to i32
  %conv70.i = and i32 %add67.i, %40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  call void @arm_heavy_mb() #8
  %41 = call i32 @llvm.bswap.i32(i32 %conv70.i) #8
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr, align 8
  %44 = ptrtoint ptr %pps_channel.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pps_channel.i, align 4
  %mul76.i = shl i32 %45, 3
  %add77.i = add i32 %mul76.i, 1548
  %add.ptr78.i = getelementptr i8, ptr %43, i32 %add77.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78.i, i32 %41) #8, !srcloc !47
  %46 = ptrtoint ptr %reload_period.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %reload_period.i, align 8
  %add80.i = add i32 %47, %conv70.i
  %48 = ptrtoint ptr %mask.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %mask.i, align 8
  %50 = trunc i64 %49 to i32
  %conv85.i = and i32 %add80.i, %50
  %next_counter.i = getelementptr i8, ptr %ptp, i32 444
  %51 = ptrtoint ptr %next_counter.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv85.i, ptr %next_counter.i, align 8
  %52 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr, align 8
  %add.ptr89.i = getelementptr i8, ptr %53, i32 1024
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89.i) #8, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  %55 = or i32 %54, -2147483648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  call void @arm_heavy_mb() #8
  %56 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr, align 8
  %add.ptr98.i = getelementptr i8, ptr %57, i32 1024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98.i, i32 %55) #8, !srcloc !47
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr, align 8
  %60 = ptrtoint ptr %pps_channel.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pps_channel.i, align 4
  %mul103.i = shl i32 %61, 3
  %add104.i = add i32 %mul103.i, 1544
  %add.ptr105.i = getelementptr i8, ptr %59, i32 %add104.i
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105.i) #8, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  %63 = and i32 %62, 50331647
  %64 = or i32 %63, -67108864
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  call void @arm_heavy_mb() #8
  %65 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr, align 8
  %67 = ptrtoint ptr %pps_channel.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pps_channel.i, align 4
  %mul118.i = shl i32 %68, 3
  %add119.i = add i32 %mul118.i, 1544
  %add.ptr120.i = getelementptr i8, ptr %66, i32 %add119.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120.i, i32 %64) #8, !srcloc !47
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  call void @arm_heavy_mb() #8
  %69 = ptrtoint ptr %next_counter.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %next_counter.i, align 8
  %71 = call i32 @llvm.bswap.i32(i32 %70) #8
  %72 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr, align 8
  %74 = ptrtoint ptr %pps_channel.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pps_channel.i, align 4
  %mul127.i = shl i32 %75, 3
  %add128.i = add i32 %mul127.i, 1548
  %add.ptr129.i = getelementptr i8, ptr %73, i32 %add128.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129.i, i32 %71) #8, !srcloc !47
  %76 = ptrtoint ptr %next_counter.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %next_counter.i, align 8
  %78 = ptrtoint ptr %reload_period.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %reload_period.i, align 8
  %add132.i = add i32 %79, %77
  %80 = ptrtoint ptr %mask.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %mask.i, align 8
  %82 = trunc i64 %81 to i32
  %conv137.i = and i32 %add132.i, %82
  store i32 %conv137.i, ptr %next_counter.i, align 8
  br label %if.end147.i

do.body139.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr146.i, i32 0) #8, !srcloc !47
  br label %if.end147.i

if.end147.i:                                      ; preds = %do.body139.i, %do.end41.i
  %83 = ptrtoint ptr %pps_enable.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %on, ptr %pps_enable.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock.i, i32 noundef %call3.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end147.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end147.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fec_time_keep(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_clk_mutex = getelementptr i8, ptr %work, i32 -720
  tail call void @mutex_lock_nested(ptr noundef %ptp_clk_mutex, i32 noundef 0) #8
  %ptp_clk_on = getelementptr i8, ptr %work, i32 -724
  %0 = ptrtoint ptr %ptp_clk_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ptp_clk_on, align 8, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tmreg_lock = getelementptr i8, ptr %work, i32 -128
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #8
  %tc = getelementptr i8, ptr %work, i32 -60
  %call7 = tail call i64 @timecounter_read(ptr noundef %tc) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call4) #8
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %ptp_clk_mutex) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work, i32 noundef 100) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_pps_interrupt(i32 noundef %irq, ptr nocapture noundef %dev_id) #0 align 64 {
entry:
  %event = alloca %struct.ptp_clock_event, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %pps_channel = getelementptr i8, ptr %dev_id, i32 3252
  %0 = ptrtoint ptr %pps_channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pps_channel, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %event) #8
  %2 = call ptr @memset(ptr %event, i32 255, i32 24)
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %conv1 = shl i32 %1, 3
  %mul = and i32 %conv1, 2040
  %add = add nuw nsw i32 %mul, 1544
  %add.ptr = getelementptr i8, ptr %4, i32 %add
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not = icmp sgt i32 %5, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void @arm_heavy_mb() #8
  %next_counter = getelementptr i8, ptr %dev_id, i32 3264
  %6 = ptrtoint ptr %next_counter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %next_counter, align 8
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %add7 = add nuw nsw i32 %mul, 1548
  %add.ptr8 = getelementptr i8, ptr %10, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %8) #8, !srcloc !47
  br label %do.body9

do.body9:                                         ; preds = %do.body9.do.body9_crit_edge, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr17 = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %5) #8, !srcloc !47
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr25 = getelementptr i8, ptr %14, i32 %add
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #8, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %tobool30.not = icmp sgt i32 %15, -1
  br i1 %tobool30.not, label %do.end31, label %do.body9.do.body9_crit_edge

do.body9.do.body9_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9

do.end31:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %next_counter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %next_counter, align 8
  %reload_period = getelementptr i8, ptr %dev_id, i32 3256
  %18 = ptrtoint ptr %reload_period to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reload_period, align 8
  %add33 = add i32 %19, %17
  %mask = getelementptr i8, ptr %dev_id, i32 2984
  %20 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %mask, align 8
  %22 = trunc i64 %21 to i32
  %conv36 = and i32 %add33, %22
  store i32 %conv36, ptr %next_counter, align 8
  %23 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %event, align 8
  %ptp_clock = getelementptr i8, ptr %dev_id, i32 2816
  %24 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ptp_clock, align 8
  call void @ptp_clock_event(ptr noundef %25, ptr noundef nonnull %event) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end31 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %event) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fec_ptp_stop(ptr nocapture noundef readonly %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %time_keep = getelementptr i8, ptr %1, i32 3060
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %time_keep) #8
  %ptp_clock = getelementptr i8, ptr %1, i32 2816
  %2 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_clock, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_cyc2time(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_clock_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !15, !16, !17, !18, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !34}
!llvm.named.register.sp = !{!36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/fec_ptp.c", i32 586, i32 30}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/freescale/fec_ptp.c", i32 603, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @fec_ptp_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @fec_ptp_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @fec_ptp_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/freescale/fec_ptp.c", i32 607, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @fec_ptp_init.__key.7, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/freescale/fec_ptp.c", i32 611, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @fec_ptp_init.__key.9, !14, !"__key", i1 false, i1 false}
!17 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/freescale/fec_ptp.c", i32 613, i32 47}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/freescale/fec_ptp.c", i32 623, i32 4}
!22 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @fec_ptp_init._entry.12, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @fec_ptp_init._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/freescale/fec_ptp.c", i32 630, i32 3}
!27 = !{ptr @fec_ptp_init._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @fec_ptp_init._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!31 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!36 = !{!"sp"}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 2157196414}
!47 = !{i64 6166816}
!48 = !{i64 2157196838}
!49 = !{i64 2157197291}
!50 = !{i64 6167234}
!51 = !{i64 2157194370}
!52 = !{i64 2157194604}
!53 = !{i64 2157195824}
!54 = !{!"auto-init"}
!55 = !{i64 2152146858, i64 2152146883}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i64 4638352}
!58 = !{i64 4638549}
!59 = !{i64 2152123782}
!60 = !{i64 2152147539, i64 2152147564}
!61 = !{i64 2148202453, i64 2148202733, i64 2148203067, i64 2148203401}
!62 = !{i64 2157200432}
!63 = !{i64 2157200664}
!64 = !{i64 2157201065}
!65 = !{i8 0, i8 2}
!66 = !{i64 2157206386}
!67 = !{i64 2157186648}
!68 = !{i64 2157186936}
!69 = !{i64 2157187768}
!70 = !{i64 2157188267}
!71 = !{i64 2157188501}
!72 = !{i64 2157189175}
!73 = !{i64 2157189476}
!74 = !{i64 2157190166}
!75 = !{i64 2157190396}
!76 = !{i64 2157191200}
!77 = !{i64 2157191501}
!78 = !{i64 2157191994}
!79 = !{i64 2157210148}
!80 = !{i64 2157210432}
!81 = !{i64 2157210926}
!82 = !{i64 2157211704}
