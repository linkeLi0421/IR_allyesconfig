; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/pcl711.c_pt.bc'
source_filename = "../drivers/comedi/drivers/pcl711.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.pcl711_board = type { ptr, i32, i32, i32, ptr }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.comedi_devconfig = type { [20 x i8], [32 x i32] }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_pcl711__234_507_pcl711_driver_init6 = internal global ptr @pcl711_driver_init, section ".initcall6.init", align 4
@pcl711_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @pcl711_attach, ptr @comedi_legacy_detach, ptr null, i32 4, ptr @boardtypes, i32 20 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_pcl711_driver_exit = internal global ptr @pcl711_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [44 x i8] c"pcl711.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [63 x i8] c"pcl711.description=Comedi driver for PCL-711 compatible boards\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [42 x i8] c"pcl711.file=drivers/comedi/drivers/pcl711\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [19 x i8] c"pcl711.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcl711\00", [25 x i8] zeroinitializer }, align 32
@boardtypes = internal constant { [4 x %struct.pcl711_board], [48 x i8] } { [4 x %struct.pcl711_board] [%struct.pcl711_board { ptr @.str, i32 8, i32 1, i32 0, ptr @range_bipolar5 }, %struct.pcl711_board { ptr @.str.6, i32 8, i32 1, i32 7, ptr @range_pcl711b_ai }, %struct.pcl711_board { ptr @.str.7, i32 16, i32 2, i32 15, ptr @range_acl8112hg_ai }, %struct.pcl711_board { ptr @.str.8, i32 16, i32 2, i32 15, ptr @range_acl8112dg_ai }], [48 x i8] zeroinitializer }, align 32
@range_bipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@pcl711_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 188, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spurious interrupt\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcl711_interrupt\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/comedi/drivers/pcl711.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcl711_interrupt._entry_ptr = internal global ptr @pcl711_interrupt._entry, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pcl711b\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"acl8112hg\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"acl8112dg\00", [22 x i8] zeroinitializer }, align 32
@range_pcl711b_ai = internal constant { { i32, [5 x %struct.comedi_krange] }, [32 x i8] } { { i32, [5 x %struct.comedi_krange] } { i32 5, [5 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }, %struct.comedi_krange { i32 -312500, i32 312500, i32 0 }] }, [32 x i8] zeroinitializer }, align 32
@range_acl8112hg_ai = internal constant { { i32, [12 x %struct.comedi_krange] }, [44 x i8] } { { i32, [12 x %struct.comedi_krange] } { i32 12, [12 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -500000, i32 500000, i32 0 }, %struct.comedi_krange { i32 -50000, i32 50000, i32 0 }, %struct.comedi_krange { i32 -5000, i32 5000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 0 }, %struct.comedi_krange { i32 0, i32 100000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }, %struct.comedi_krange { i32 -100000, i32 100000, i32 0 }, %struct.comedi_krange { i32 -10000, i32 10000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range_acl8112dg_ai = internal constant { { i32, [9 x %struct.comedi_krange] }, [48 x i8] } { { i32, [9 x %struct.comedi_krange] } { i32 9, [9 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }] }, [48 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"pcl711_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 498, i32 29 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 499, i32 17 }
@___asan_gen_.18 = private unnamed_addr constant [11 x i8] c"boardtypes\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 118, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 188, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 125, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 131, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 137, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"range_pcl711b_ai\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 69, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant [19 x i8] c"range_acl8112hg_ai\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 79, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c"range_acl8112dg_ai\00", align 1
@___asan_gen_.55 = private constant [35 x i8] c"../drivers/comedi/drivers/pcl711.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 96, i32 35 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_pcl711_driver_exit, ptr @__initcall__kmod_pcl711__234_507_pcl711_driver_init6, ptr @pcl711_driver_exit, ptr @pcl711_interrupt._entry, ptr @pcl711_interrupt._entry_ptr, ptr @pcl711_driver, ptr @.str, ptr @boardtypes, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @range_pcl711b_ai, ptr @range_acl8112hg_ai, ptr @range_acl8112dg_ai], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcl711_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boardtypes to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcl711_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_pcl711b_ai to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_acl8112hg_ai to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_acl8112dg_ai to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl711_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @pcl711_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcl711_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @comedi_driver_unregister(ptr noundef nonnull @pcl711_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl711_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options, align 4
  %call = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %3, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %maxirq = getelementptr inbounds %struct.pcl711_board, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %maxirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxirq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp sgt i32 %5, %7
  br i1 %cmp.not, label %land.lhs.true.if.end15_crit_edge, label %if.then6

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then6:                                         ; preds = %land.lhs.true
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %8 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @pcl711_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %9, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10 = icmp eq i32 %call.i, 0
  br i1 %cmp10, label %if.then11, label %if.then6.if.end15_crit_edge

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2, align 4
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %irq, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.then6.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %13 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase, align 4
  %call16 = tail call ptr @comedi_8254_init(i32 noundef %14, i32 noundef 500, i32 noundef 1, i32 noundef 0) #6
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %15 = ptrtoint ptr %pacer to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call16, ptr %pacer, align 4
  %tobool18.not = icmp eq ptr %call16, null
  br i1 %tobool18.not, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %call21 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %16 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 4
  %19 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1114112, ptr %subdev_flags, align 4
  %n_aichan = getelementptr inbounds %struct.pcl711_board, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %n_aichan to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_aichan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %21)
  %cmp26 = icmp sgt i32 %21, 8
  %spec.store.select = select i1 %cmp26, i32 5308416, i32 1114112
  %22 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.store.select, ptr %subdev_flags, align 4
  %23 = ptrtoint ptr %n_aichan to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_aichan, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 3
  %25 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 13
  %26 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4095, ptr %maxdata, align 4
  %ai_range_type = getelementptr inbounds %struct.pcl711_board, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %ai_range_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ai_range_type, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 15
  %29 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 18
  %30 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @pcl711_ai_insn_read, ptr %insn_read, align 4
  %irq31 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %31 = ptrtoint ptr %irq31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool32.not = icmp eq i32 %32, 0
  br i1 %tobool32.not, label %if.end24.if.end36_crit_edge, label %if.then33

if.end24.if.end36_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then33:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %33 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %17, ptr %read_subdev, align 4
  %34 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %subdev_flags, align 4
  %or35 = or i32 %35, 32768
  store i32 %or35, ptr %subdev_flags, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 5
  %36 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %len_chanlist, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 23
  %37 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @pcl711_ai_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 22
  %38 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @pcl711_ai_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 25
  %39 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @pcl711_ai_cancel, ptr %cancel, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end24.if.end36_crit_edge
  %40 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %subdevices, align 4
  %arrayidx38 = getelementptr %struct.comedi_subdevice, ptr %41, i32 1
  %type39 = getelementptr %struct.comedi_subdevice, ptr %41, i32 1, i32 2
  %42 = ptrtoint ptr %type39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %type39, align 4
  %subdev_flags40 = getelementptr %struct.comedi_subdevice, ptr %41, i32 1, i32 4
  %43 = ptrtoint ptr %subdev_flags40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 131072, ptr %subdev_flags40, align 4
  %n_aochan = getelementptr inbounds %struct.pcl711_board, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %n_aochan to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %n_aochan, align 4
  %n_chan41 = getelementptr %struct.comedi_subdevice, ptr %41, i32 1, i32 3
  %46 = ptrtoint ptr %n_chan41 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %n_chan41, align 4
  %maxdata42 = getelementptr %struct.comedi_subdevice, ptr %41, i32 1, i32 13
  %47 = ptrtoint ptr %maxdata42 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 4095, ptr %maxdata42, align 4
  %range_table43 = getelementptr %struct.comedi_subdevice, ptr %41, i32 1, i32 15
  %48 = ptrtoint ptr %range_table43 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @range_bipolar5, ptr %range_table43, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %41, i32 1, i32 19
  %49 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @pcl711_ao_insn_write, ptr %insn_write, align 4
  %call44 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end47:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %subdevices, align 4
  %type50 = getelementptr %struct.comedi_subdevice, ptr %51, i32 2, i32 2
  %52 = ptrtoint ptr %type50 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3, ptr %type50, align 4
  %subdev_flags51 = getelementptr %struct.comedi_subdevice, ptr %51, i32 2, i32 4
  %53 = ptrtoint ptr %subdev_flags51 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 65536, ptr %subdev_flags51, align 4
  %n_chan52 = getelementptr %struct.comedi_subdevice, ptr %51, i32 2, i32 3
  %54 = ptrtoint ptr %n_chan52 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 16, ptr %n_chan52, align 4
  %maxdata53 = getelementptr %struct.comedi_subdevice, ptr %51, i32 2, i32 13
  %55 = ptrtoint ptr %maxdata53 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %maxdata53, align 4
  %range_table54 = getelementptr %struct.comedi_subdevice, ptr %51, i32 2, i32 15
  %56 = ptrtoint ptr %range_table54 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @range_unipolar5, ptr %range_table54, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %51, i32 2, i32 20
  %57 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @pcl711_di_insn_bits, ptr %insn_bits, align 4
  %58 = load ptr, ptr %subdevices, align 4
  %type57 = getelementptr %struct.comedi_subdevice, ptr %58, i32 3, i32 2
  %59 = ptrtoint ptr %type57 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 4, ptr %type57, align 4
  %subdev_flags58 = getelementptr %struct.comedi_subdevice, ptr %58, i32 3, i32 4
  %60 = ptrtoint ptr %subdev_flags58 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 131072, ptr %subdev_flags58, align 4
  %n_chan59 = getelementptr %struct.comedi_subdevice, ptr %58, i32 3, i32 3
  %61 = ptrtoint ptr %n_chan59 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 16, ptr %n_chan59, align 4
  %maxdata60 = getelementptr %struct.comedi_subdevice, ptr %58, i32 3, i32 13
  %62 = ptrtoint ptr %maxdata60 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %maxdata60, align 4
  %range_table61 = getelementptr %struct.comedi_subdevice, ptr %58, i32 3, i32 15
  %63 = ptrtoint ptr %range_table61 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @range_unipolar5, ptr %range_table61, align 4
  %insn_bits62 = getelementptr %struct.comedi_subdevice, ptr %58, i32 3, i32 20
  %64 = ptrtoint ptr %insn_bits62 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @pcl711_do_insn_bits, ptr %insn_bits62, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %65 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %iobase, align 4
  %add1.i = add i32 %66, 4
  %and2.i = and i32 %add1.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %67 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 0) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %68 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %iobase, align 4
  %add11.i = add i32 %69, 5
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %70 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 0) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %71 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %iobase, align 4
  %add1.i127 = add i32 %72, 6
  %and2.i128 = and i32 %add1.i127, 1048575
  %add3.i129 = or i32 %and2.i128, -18874368
  %73 = inttoptr i32 %add3.i129 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 0) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %74 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %iobase, align 4
  %add11.i130 = add i32 %75, 7
  %and12.i131 = and i32 %add11.i130, 1048575
  %add13.i132 = or i32 %and12.i131, -18874368
  %76 = inttoptr i32 %add13.i132 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %76, i8 0) #6, !srcloc !46
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end36.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ %call44, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl711_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %0 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_subdev, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #6
  %attached = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 10
  %4 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %5 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %8, 5
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add1.i to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  %conv.i = zext i8 %10 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i, align 4
  %add5.i = add i32 %12, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %13 = inttoptr i32 %add7.i to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  %conv11.i = zext i8 %14 to i32
  %or.i = or i32 %shl.i, %conv11.i
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %maxdata.i, align 4
  %and12.i = and i32 %or.i, %16
  %conv = trunc i32 %and12.i to i16
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %data, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase.i, align 4
  %add = add i32 %19, 8
  %and = and i32 %add, 1048575
  %add5 = or i32 %and, -18874368
  %20 = inttoptr i32 %add5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 0) #6, !srcloc !46
  %call7 = call i32 @comedi_buf_write_samples(ptr noundef %1, ptr noundef nonnull %data, i32 noundef 1) #6
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 10
  %21 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %22)
  %cmp = icmp eq i32 %22, 32
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %23 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %async, align 4
  %scans_done = getelementptr inbounds %struct.comedi_async, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %scans_done to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %scans_done, align 4
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 11
  %27 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp10.not = icmp ult i32 %26, %28
  br i1 %cmp10.not, label %land.lhs.true.if.end14_crit_edge, label %if.then12

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %events = getelementptr inbounds %struct.comedi_async, ptr %24, i32 0, i32 16
  %29 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %events, align 4
  %or = or i32 %30, 2
  store i32 %or, ptr %events, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %call15 = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl711_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and.i = and i32 %1, 65535
  %shr.i = lshr i32 %1, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %2 = trunc i32 %shr.i to i8
  %conv.i = and i8 %2, 15
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %4, 9
  %and5.i = and i32 %add.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %5 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv.i) #6, !srcloc !46
  %n_chan.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %6 = ptrtoint ptr %n_chan.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_chan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp.i = icmp sgt i32 %7, 8
  br i1 %cmp.i, label %if.then.i, label %entry.pcl711_set_changain.exit_crit_edge

entry.pcl711_set_changain.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcl711_set_changain.exit

if.then.i:                                        ; preds = %entry
  %8 = and i32 %1, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %8)
  %cmp8.i = icmp eq i32 %8, 33554432
  br i1 %cmp8.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %and11.i = and i32 %1, 7
  br label %pcl711_set_changain.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and.i)
  %cmp12.i = icmp ult i32 %and.i, 8
  %..i = select i1 %cmp12.i, i32 16, i32 32
  br label %pcl711_set_changain.exit

pcl711_set_changain.exit:                         ; preds = %if.else.i, %if.then10.i, %entry.pcl711_set_changain.exit_crit_edge
  %chan.0.i = phi i32 [ %and11.i, %if.then10.i ], [ %and.i, %entry.pcl711_set_changain.exit_crit_edge ], [ %and.i, %if.else.i ]
  %mux.0.i = phi i32 [ 48, %if.then10.i ], [ 0, %entry.pcl711_set_changain.exit_crit_edge ], [ %..i, %if.else.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %and23.i = and i32 %chan.0.i, 15
  %or25.i = or i32 %mux.0.i, %and23.i
  %conv26.i = trunc i32 %or25.i to i8
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase.i, align 4
  %add28.i = add i32 %10, 10
  %and29.i = and i32 %add28.i, 1048575
  %add30.i = or i32 %and29.i, -18874368
  %11 = inttoptr i32 %add30.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv26.i) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase.i, align 4
  %add.i20 = add i32 %13, 11
  %and2.i = and i32 %add.i20, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %14 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 1) #6, !srcloc !46
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %15 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp25.not = icmp eq i32 %16, 0
  br i1 %cmp25.not, label %pcl711_set_changain.exit.cleanup_crit_edge, label %do.body.lr.ph

pcl711_set_changain.exit.cleanup_crit_edge:       ; preds = %pcl711_set_changain.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.lr.ph:                                    ; preds = %pcl711_set_changain.exit
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %do.body.lr.ph
  %i.026 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %if.end.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase.i, align 4
  %add = add i32 %18, 12
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %19 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 0) #6, !srcloc !46
  %call2 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @pcl711_ai_eoc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %do.body
  %20 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase.i, align 4
  %add.i22 = add i32 %21, 5
  %and.i23 = and i32 %add.i22, 1048575
  %add1.i = or i32 %and.i23, -18874368
  %22 = inttoptr i32 %add1.i to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  %conv.i24 = zext i8 %23 to i32
  %shl.i = shl nuw nsw i32 %conv.i24, 8
  %24 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iobase.i, align 4
  %add5.i = add i32 %25, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %26 = inttoptr i32 %add7.i to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  %conv11.i = zext i8 %27 to i32
  %or.i = or i32 %shl.i, %conv11.i
  %28 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %maxdata.i, align 4
  %and12.i = and i32 %or.i, %29
  %arrayidx = getelementptr i32, ptr %data, i32 %i.026
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and12.i, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.026, 1
  %31 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %32
  br i1 %cmp, label %if.end.do.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %do.body.cleanup_crit_edge, %pcl711_set_changain.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pcl711_set_changain.exit.cleanup_crit_edge ], [ %32, %if.end.cleanup_crit_edge ], [ %call2, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl711_ai_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #2 align 64 {
entry:
  %arg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_src, align 4
  %and.i = and i32 %1, 2
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %1)
  %cmp1.not.i = icmp eq i32 %and.i, %1
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %2 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_begin_src, align 4
  %and.i94 = and i32 %3, 80
  store i32 %and.i94, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94)
  %cmp.i95 = icmp ne i32 %and.i94, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i94, i32 %3)
  %cmp1.not.i96 = icmp eq i32 %and.i94, %3
  %or.cond.i97 = and i1 %cmp.i95, %cmp1.not.i96
  %4 = select i1 %or.cond.i, i1 %or.cond.i97, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i99 = and i32 %6, 2
  store i32 %and.i99, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99)
  %cmp.i100 = icmp ne i32 %and.i99, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i99, i32 %6)
  %cmp1.not.i101 = icmp eq i32 %and.i99, %6
  %or.cond.i102 = and i1 %cmp.i100, %cmp1.not.i101
  %7 = select i1 %4, i1 %or.cond.i102, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i104 = and i32 %9, 32
  store i32 %and.i104, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104)
  %cmp.i105 = icmp ne i32 %and.i104, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i104, i32 %9)
  %cmp1.not.i106 = icmp eq i32 %and.i104, %9
  %or.cond.i107 = and i1 %cmp.i105, %cmp1.not.i106
  %10 = select i1 %7, i1 %or.cond.i107, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i109 = and i32 %12, 33
  store i32 %and.i109, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i109)
  %cmp.i110 = icmp ne i32 %and.i109, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i109, i32 %12)
  %cmp1.not.i111 = icmp eq i32 %and.i109, %12
  %or.cond.i112 = and i1 %cmp.i110, %cmp1.not.i111
  %13 = select i1 %10, i1 %or.cond.i112, i1 false
  br i1 %13, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = tail call i32 @llvm.ctpop.i32(i32 %3) #6, !range !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.not.i = icmp ult i32 %14, 2
  %15 = tail call i32 @llvm.ctpop.i32(i32 %12) #6, !range !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not.i114 = icmp ult i32 %15, 2
  %16 = select i1 %cmp.not.i, i1 %cmp.not.i114, i1 false
  br i1 %16, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %17 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i116 = icmp eq i32 %18, 0
  br i1 %cmp.not.i116, label %if.end17.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end17.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end17.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i117 = phi i32 [ -22, %if.then.i ], [ 0, %if.end17.comedi_check_trigger_arg_is.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %cmp = icmp eq i32 %3, 64
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %20 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %scan_begin_arg, align 4
  br i1 %cmp, label %if.then21, label %if.else

if.then21:                                        ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i118 = icmp eq i32 %21, 0
  br i1 %cmp.not.i118, label %if.then21.if.end27_crit_edge, label %if.then21.if.end27.sink.split_crit_edge

if.then21.if.end27.sink.split_crit_edge:          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.sink.split

if.then21.if.end27_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %21)
  %cmp.i122 = icmp ult i32 %21, 1000
  br i1 %cmp.i122, label %if.else.if.end27.sink.split_crit_edge, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.else.if.end27.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.sink.split

if.end27.sink.split:                              ; preds = %if.else.if.end27.sink.split_crit_edge, %if.then21.if.end27.sink.split_crit_edge
  %.sink = phi i32 [ 0, %if.then21.if.end27.sink.split_crit_edge ], [ 1000, %if.else.if.end27.sink.split_crit_edge ]
  %22 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %scan_begin_arg, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %if.else.if.end27_crit_edge, %if.then21.if.end27_crit_edge
  %call22.pn = phi i32 [ 0, %if.then21.if.end27_crit_edge ], [ 0, %if.else.if.end27_crit_edge ], [ -22, %if.end27.sink.split ]
  %err.0 = or i32 %call22.pn, %retval.0.i117
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %23 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not.i125 = icmp eq i32 %24, 0
  br i1 %cmp.not.i125, label %if.end27.comedi_check_trigger_arg_is.exit128_crit_edge, label %if.then.i126

if.end27.comedi_check_trigger_arg_is.exit128_crit_edge: ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit128

if.then.i126:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_is.exit128

comedi_check_trigger_arg_is.exit128:              ; preds = %if.then.i126, %if.end27.comedi_check_trigger_arg_is.exit128_crit_edge
  %retval.0.i127 = phi i32 [ -22, %if.then.i126 ], [ 0, %if.end27.comedi_check_trigger_arg_is.exit128_crit_edge ]
  %or29 = or i32 %err.0, %retval.0.i127
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %26 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chanlist_len, align 4
  %28 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %27)
  %cmp.not.i129 = icmp eq i32 %29, %27
  br i1 %cmp.not.i129, label %comedi_check_trigger_arg_is.exit128.comedi_check_trigger_arg_is.exit132_crit_edge, label %if.then.i130

comedi_check_trigger_arg_is.exit128.comedi_check_trigger_arg_is.exit132_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit128
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit132

if.then.i130:                                     ; preds = %comedi_check_trigger_arg_is.exit128
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit132

comedi_check_trigger_arg_is.exit132:              ; preds = %if.then.i130, %comedi_check_trigger_arg_is.exit128.comedi_check_trigger_arg_is.exit132_crit_edge
  %retval.0.i131 = phi i32 [ -22, %if.then.i130 ], [ 0, %comedi_check_trigger_arg_is.exit128.comedi_check_trigger_arg_is.exit132_crit_edge ]
  %or31 = or i32 %or29, %retval.0.i131
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp33 = icmp eq i32 %12, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %31 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i133 = icmp eq i32 %32, 0
  br i1 %cmp33, label %if.then34, label %if.else37

if.then34:                                        ; preds = %comedi_check_trigger_arg_is.exit132
  br i1 %cmp.i133, label %if.then34.if.end41.sink.split_crit_edge, label %if.then34.if.end41_crit_edge

if.then34.if.end41_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then34.if.end41.sink.split_crit_edge:          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.sink.split

if.else37:                                        ; preds = %comedi_check_trigger_arg_is.exit132
  br i1 %cmp.i133, label %if.else37.if.end41_crit_edge, label %if.else37.if.end41.sink.split_crit_edge

if.else37.if.end41.sink.split_crit_edge:          ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.sink.split

if.else37.if.end41_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.end41.sink.split:                              ; preds = %if.else37.if.end41.sink.split_crit_edge, %if.then34.if.end41.sink.split_crit_edge
  %.sink149 = phi i32 [ 1, %if.then34.if.end41.sink.split_crit_edge ], [ 0, %if.else37.if.end41.sink.split_crit_edge ]
  %33 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink149, ptr %stop_arg, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %if.else37.if.end41_crit_edge, %if.then34.if.end41_crit_edge
  %call35.pn = phi i32 [ 0, %if.then34.if.end41_crit_edge ], [ 0, %if.else37.if.end41_crit_edge ], [ -22, %if.end41.sink.split ]
  %err.1 = or i32 %or31, %call35.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool42.not = icmp eq i32 %err.1, 0
  br i1 %tobool42.not, label %if.end44, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp46 = icmp eq i32 %3, 16
  br i1 %cmp46, label %if.then47, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then47:                                        ; preds = %if.end44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #6
  %scan_begin_arg48 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %34 = ptrtoint ptr %scan_begin_arg48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %scan_begin_arg48, align 4
  %36 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arg, align 4
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %37 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pacer, align 4
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  call void @comedi_8254_cascade_ns_to_timer(ptr noundef %38, ptr noundef nonnull %arg, i32 noundef %40) #6
  %41 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arg, align 4
  %43 = ptrtoint ptr %scan_begin_arg48 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %scan_begin_arg48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %42)
  %cmp.not.i141 = icmp eq i32 %44, %42
  br i1 %cmp.not.i141, label %if.end52.thread146, label %if.end52

if.end52.thread146:                               ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  br label %cleanup

if.end52:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %scan_begin_arg48 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %42, ptr %scan_begin_arg48, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.end52.thread146, %if.end44.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 3, %if.end41.cleanup_crit_edge ], [ 4, %if.end52 ], [ 0, %if.end52.thread146 ], [ 0, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl711_ai_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async, align 4
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 12
  %2 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chanlist, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and.i = and i32 %5, 65535
  %shr.i = lshr i32 %5, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %6 = trunc i32 %shr.i to i8
  %conv.i = and i8 %6, 15
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %8, 9
  %and5.i = and i32 %add.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %9 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv.i) #6, !srcloc !46
  %n_chan.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %10 = ptrtoint ptr %n_chan.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_chan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %cmp.i = icmp sgt i32 %11, 8
  br i1 %cmp.i, label %if.then.i, label %entry.pcl711_set_changain.exit_crit_edge

entry.pcl711_set_changain.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcl711_set_changain.exit

if.then.i:                                        ; preds = %entry
  %12 = and i32 %5, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %12)
  %cmp8.i = icmp eq i32 %12, 33554432
  br i1 %cmp8.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %and11.i = and i32 %5, 7
  br label %pcl711_set_changain.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and.i)
  %cmp12.i = icmp ult i32 %and.i, 8
  %..i = select i1 %cmp12.i, i32 16, i32 32
  br label %pcl711_set_changain.exit

pcl711_set_changain.exit:                         ; preds = %if.else.i, %if.then10.i, %entry.pcl711_set_changain.exit_crit_edge
  %chan.0.i = phi i32 [ %and11.i, %if.then10.i ], [ %and.i, %entry.pcl711_set_changain.exit_crit_edge ], [ %and.i, %if.else.i ]
  %mux.0.i = phi i32 [ 48, %if.then10.i ], [ 0, %entry.pcl711_set_changain.exit_crit_edge ], [ %..i, %if.else.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %and23.i = and i32 %chan.0.i, 15
  %or25.i = or i32 %mux.0.i, %and23.i
  %conv26.i = trunc i32 %or25.i to i8
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase.i, align 4
  %add28.i = add i32 %14, 10
  %and29.i = and i32 %add28.i, 1048575
  %add30.i = or i32 %and29.i, -18874368
  %15 = inttoptr i32 %add30.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv26.i) #6, !srcloc !46
  %scan_begin_src = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 4
  %16 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %17)
  %cmp = icmp eq i32 %17, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %pcl711_set_changain.exit
  call void @__sanitizer_cov_trace_pc() #8
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %18 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_update_divisors(ptr noundef %19) #6
  %20 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_pacer_enable(ptr noundef %21, i32 noundef 1, i32 noundef 2, i1 noundef zeroext true) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase.i, align 4
  %add = add i32 %23, 8
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %24 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 0) #6, !srcloc !46
  %irq.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %25 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %.tr26 = trunc i32 %26 to i8
  %27 = shl i8 %.tr26, 4
  %28 = and i8 %27, 112
  %conv.i13 = or i8 %28, 6
  %29 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iobase.i, align 4
  %add.i15 = add i32 %30, 11
  %and2.i = and i32 %add.i15, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %31 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %conv.i13) #6, !srcloc !46
  br label %if.end

if.else:                                          ; preds = %pcl711_set_changain.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irq.i16 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %32 = ptrtoint ptr %irq.i16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq.i16, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %.tr = trunc i32 %33 to i8
  %34 = shl i8 %.tr, 4
  %35 = and i8 %34, 112
  %conv.i21 = or i8 %35, 3
  %36 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iobase.i, align 4
  %add.i23 = add i32 %37, 11
  %and2.i24 = and i32 %add.i23, 1048575
  %add3.i25 = or i32 %and2.i24, -18874368
  %38 = inttoptr i32 %add3.i25 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %conv.i21) #6, !srcloc !46
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl711_ai_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 8
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %add.i = add i32 %4, 11
  %and2.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %5 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 1) #6, !srcloc !46
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl711_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %2 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %readback, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13.not = icmp eq i32 %7, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %mul.i = shl nuw nsw i32 %and, 1
  %add.i = add nuw nsw i32 %mul.i, 4
  %add10.i = add nuw nsw i32 %mul.i, 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx1 = getelementptr i32, ptr %data, i32 %i.014
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %conv.i = trunc i32 %9 to i8
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase.i, align 4
  %add1.i = add i32 %add.i, %11
  %and2.i = and i32 %add1.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %12 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv.i) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %shr.i = lshr i32 %9, 8
  %conv7.i = trunc i32 %shr.i to i8
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase.i, align 4
  %add11.i = add i32 %add10.i, %14
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %15 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv7.i) #6, !srcloc !46
  %inc = add nuw i32 %i.014, 1
  %16 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %val.0.lcssa = phi i32 [ %5, %entry.for.end_crit_edge ], [ %9, %for.body.for.end_crit_edge ]
  %18 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %readback, align 4
  %arrayidx3 = getelementptr i32, ptr %19, i32 %and
  %20 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %val.0.lcssa, ptr %arrayidx3, align 4
  %21 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n, align 4
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl711_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 6
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add5 = add i32 %5, 7
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %6 = inttoptr i32 %add7 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %conv11 = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv11, 8
  %or = or i32 %shl, %conv
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl711_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then:                                          ; preds = %entry
  %and = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %do.body

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %conv = trunc i32 %1 to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %add = add i32 %3, 13
  %and4 = and i32 %add, 1048575
  %add5 = or i32 %and4, -18874368
  %4 = inttoptr i32 %add5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv) #6, !srcloc !46
  br label %if.end

if.end:                                           ; preds = %do.body, %if.then.if.end_crit_edge
  %and7 = and i32 %call, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end21_crit_edge, label %do.body10

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.body10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %state13 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %5 = ptrtoint ptr %state13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state13, align 4
  %shr = lshr i32 %6, 8
  %conv14 = trunc i32 %shr to i8
  %iobase15 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %7 = ptrtoint ptr %iobase15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase15, align 4
  %add16 = add i32 %8, 14
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %9 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv14) #6, !srcloc !46
  br label %if.end21

if.end21:                                         ; preds = %do.body10, %if.end.if.end21_crit_edge, %entry.if.end21_crit_edge
  %state22 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %10 = ptrtoint ptr %state22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state22, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %13 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n, align 4
  ret i32 %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl711_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 5
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  %4 = and i8 %3, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  %. = select i1 %cmp, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_cascade_ns_to_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_update_divisors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_pacer_enable(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_pcl711__234_507_pcl711_driver_init6, !1, !"__initcall__kmod_pcl711__234_507_pcl711_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/pcl711.c", i32 507, i32 1}
!2 = !{ptr @__exitcall_pcl711_driver_exit, !1, !"__exitcall_pcl711_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/pcl711.c", i32 509, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/pcl711.c", i32 510, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/pcl711.c", i32 511, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/pcl711.c", i32 499, i32 17}
!12 = !{ptr @pcl711_driver, !13, !"pcl711_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/pcl711.c", i32 498, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/pcl711.c", i32 188, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pcl711_interrupt._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pcl711_interrupt._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/pcl711.c", i32 125, i32 12}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/pcl711.c", i32 131, i32 12}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/comedi/drivers/pcl711.c", i32 137, i32 12}
!28 = !{ptr @boardtypes, !29, !"boardtypes", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/pcl711.c", i32 118, i32 34}
!30 = !{ptr @range_pcl711b_ai, !31, !"range_pcl711b_ai", i1 false, i1 false}
!31 = !{!"../drivers/comedi/drivers/pcl711.c", i32 69, i32 35}
!32 = !{ptr @range_acl8112hg_ai, !33, !"range_acl8112hg_ai", i1 false, i1 false}
!33 = !{!"../drivers/comedi/drivers/pcl711.c", i32 79, i32 35}
!34 = !{ptr @range_acl8112dg_ai, !35, !"range_acl8112dg_ai", i1 false, i1 false}
!35 = !{!"../drivers/comedi/drivers/pcl711.c", i32 96, i32 35}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 2154214530}
!46 = !{i64 4634187}
!47 = !{i64 2154214952}
!48 = !{i64 4634582}
!49 = !{i64 2154209011}
!50 = !{i64 2154209313}
!51 = !{i64 2154211523}
!52 = !{i64 2154212015}
!53 = !{i64 2154212783}
!54 = !{i64 2154208582}
!55 = !{i64 2154213571}
!56 = !{i32 0, i32 33}
!57 = !{i64 2154214062}
!58 = !{i64 2154209551}
!59 = !{i64 2154215430}
!60 = !{i64 2154215732}
!61 = !{i64 2154215968}
!62 = !{i64 2154216331}
!63 = !{i64 2154213212}
