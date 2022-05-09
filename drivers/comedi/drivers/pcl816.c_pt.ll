; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/pcl816.c_pt.bc'
source_filename = "../drivers/comedi/drivers/pcl816.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.pcl816_board = type { ptr, i32, i32 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.comedi_devconfig = type { [20 x i8], [32 x i32] }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.pcl816_private = type { ptr, i32, i8 }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.comedi_isadma = type { ptr, ptr, i32, i32, i32, i32 }
%struct.comedi_isadma_desc = type { ptr, i32, i32, i32, i32, i8 }

@__initcall__kmod_pcl816__236_690_pcl816_driver_init6 = internal global ptr @pcl816_driver_init, section ".initcall6.init", align 4
@pcl816_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @pcl816_attach, ptr @pcl816_detach, ptr null, i32 2, ptr @boardtypes, i32 12 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_pcl816_driver_exit = internal global ptr @pcl816_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [44 x i8] c"pcl816.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [43 x i8] c"pcl816.description=Comedi low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [42 x i8] c"pcl816.file=drivers/comedi/drivers/pcl816\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [19 x i8] c"pcl816.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcl816\00", [25 x i8] zeroinitializer }, align 32
@boardtypes = internal constant { [2 x %struct.pcl816_board], [40 x i8] } { [2 x %struct.pcl816_board] [%struct.pcl816_board { ptr @.str, i32 65535, i32 1024 }, %struct.pcl816_board { ptr @.str.9, i32 16383, i32 1024 }], [40 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@range_pcl816 = internal constant { { i32, [8 x %struct.comedi_krange] }, [60 x i8] } { { i32, [8 x %struct.comedi_krange] } { i32 8, [8 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }] }, [60 x i8] zeroinitializer }, align 32
@check_channel_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 287, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"range/channel list is empty!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"check_channel_list\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/comedi/drivers/pcl816.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@check_channel_list._entry_ptr = internal global ptr @check_channel_list._entry, section ".printk_index", align 4
@check_channel_list.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.7, i8 0, i8 76, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"channel list must be continuous! chanlist[%i]=%d but must be %d or %d!\0A\00", [56 x i8] zeroinitializer }, align 32
@check_channel_list.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 0, i8 80, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"bad channel or range number! chanlist[%i]=%d,%d,%d and not %d,%d,%d!\0A\00", [58 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pcl814b\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.11 = private unnamed_addr constant [14 x i8] c"pcl816_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 681, i32 29 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 682, i32 17 }
@___asan_gen_.17 = private unnamed_addr constant [11 x i8] c"boardtypes\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 91, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant [13 x i8] c"range_pcl816\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 72, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 287, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 302, i32 5 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 315, i32 5 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [35 x i8] c"../drivers/comedi/drivers/pcl816.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 97, i32 12 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_pcl816_driver_exit, ptr @__initcall__kmod_pcl816__236_690_pcl816_driver_init6, ptr @check_channel_list._entry, ptr @check_channel_list._entry_ptr, ptr @pcl816_driver_exit, ptr @pcl816_driver, ptr @.str, ptr @boardtypes, ptr @range_pcl816, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcl816_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boardtypes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_pcl816 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_channel_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl816_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @pcl816_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcl816_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @comedi_driver_unregister(ptr noundef nonnull @pcl816_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl816_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %call = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 12) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options, align 4
  %call1 = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %3, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %8 = add i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %9 = icmp ult i32 %8, 6
  br i1 %9, label %lor.lhs.false.i, label %if.end4.pcl816_alloc_irq_and_dma.exit_crit_edge

if.end4.pcl816_alloc_irq_and_dma.exit_crit_edge:  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcl816_alloc_irq_and_dma.exit

lor.lhs.false.i:                                  ; preds = %if.end4
  %arrayidx2.i = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %lor.lhs.false.i.pcl816_alloc_irq_and_dma.exit_crit_edge [
    i32 3, label %lor.lhs.false.i.if.end.i_crit_edge
    i32 1, label %lor.lhs.false.i.if.end.i_crit_edge84
  ]

lor.lhs.false.i.if.end.i_crit_edge84:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

lor.lhs.false.i.pcl816_alloc_irq_and_dma.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcl816_alloc_irq_and_dma.exit

if.end.i:                                         ; preds = %lor.lhs.false.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge84
  %board_name.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %13 = ptrtoint ptr %board_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %board_name.i, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %7, ptr noundef nonnull @pcl816_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %14, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end8.i, label %if.end.i.pcl816_alloc_irq_and_dma.exit_crit_edge

if.end.i.pcl816_alloc_irq_and_dma.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcl816_alloc_irq_and_dma.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %5, align 4
  %call13.i = tail call ptr @free_irq(i32 noundef %7, ptr noundef %dev) #6
  br label %pcl816_alloc_irq_and_dma.exit

pcl816_alloc_irq_and_dma.exit:                    ; preds = %if.end8.i, %if.end.i.pcl816_alloc_irq_and_dma.exit_crit_edge, %lor.lhs.false.i.pcl816_alloc_irq_and_dma.exit_crit_edge, %if.end4.pcl816_alloc_irq_and_dma.exit_crit_edge
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %add = add i32 %17, 4
  %call5 = tail call ptr @comedi_8254_init(i32 noundef %add, i32 noundef 100, i32 noundef 1, i32 noundef 0) #6
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %18 = ptrtoint ptr %pacer to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call5, ptr %pacer, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %pcl816_alloc_irq_and_dma.exit.cleanup_crit_edge, label %if.end9

pcl816_alloc_irq_and_dma.exit.cleanup_crit_edge:  ; preds = %pcl816_alloc_irq_and_dma.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %pcl816_alloc_irq_and_dma.exit
  %call10 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %19 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %20, i32 0, i32 4
  %22 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4227072, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16, ptr %n_chan, align 4
  %ai_maxdata = getelementptr inbounds %struct.pcl816_board, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %ai_maxdata to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ai_maxdata, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %20, i32 0, i32 13
  %26 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %20, i32 0, i32 15
  %27 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @range_pcl816, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %20, i32 0, i32 18
  %28 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @pcl816_ai_insn_read, ptr %insn_read, align 4
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool15.not = icmp eq i32 %30, 0
  br i1 %tobool15.not, label %if.end13.if.end18_crit_edge, label %if.then16

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %31 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %20, ptr %read_subdev, align 4
  %32 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %subdev_flags, align 4
  %or = or i32 %33, 32768
  store i32 %or, ptr %subdev_flags, align 4
  %ai_chanlist = getelementptr inbounds %struct.pcl816_board, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %ai_chanlist to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ai_chanlist, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %20, i32 0, i32 5
  %36 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %len_chanlist, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %20, i32 0, i32 23
  %37 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @pcl816_ai_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %20, i32 0, i32 22
  %38 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @pcl816_ai_cmd, ptr %do_cmd, align 4
  %poll = getelementptr inbounds %struct.comedi_subdevice, ptr %20, i32 0, i32 24
  %39 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @pcl816_ai_poll, ptr %poll, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %20, i32 0, i32 25
  %40 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @pcl816_ai_cancel, ptr %cancel, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13.if.end18_crit_edge
  %41 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %subdevices, align 4
  %type21 = getelementptr %struct.comedi_subdevice, ptr %42, i32 1, i32 2
  %43 = ptrtoint ptr %type21 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %type21, align 4
  %44 = load ptr, ptr %subdevices, align 4
  %type24 = getelementptr %struct.comedi_subdevice, ptr %44, i32 2, i32 2
  %45 = ptrtoint ptr %type24 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %type24, align 4
  %subdev_flags25 = getelementptr %struct.comedi_subdevice, ptr %44, i32 2, i32 4
  %46 = ptrtoint ptr %subdev_flags25 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 65536, ptr %subdev_flags25, align 4
  %n_chan26 = getelementptr %struct.comedi_subdevice, ptr %44, i32 2, i32 3
  %47 = ptrtoint ptr %n_chan26 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 16, ptr %n_chan26, align 4
  %maxdata27 = getelementptr %struct.comedi_subdevice, ptr %44, i32 2, i32 13
  %48 = ptrtoint ptr %maxdata27 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %maxdata27, align 4
  %range_table28 = getelementptr %struct.comedi_subdevice, ptr %44, i32 2, i32 15
  %49 = ptrtoint ptr %range_table28 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @range_unipolar5, ptr %range_table28, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %44, i32 2, i32 20
  %50 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @pcl816_di_insn_bits, ptr %insn_bits, align 4
  %51 = load ptr, ptr %subdevices, align 4
  %type31 = getelementptr %struct.comedi_subdevice, ptr %51, i32 3, i32 2
  %52 = ptrtoint ptr %type31 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4, ptr %type31, align 4
  %subdev_flags32 = getelementptr %struct.comedi_subdevice, ptr %51, i32 3, i32 4
  %53 = ptrtoint ptr %subdev_flags32 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 131072, ptr %subdev_flags32, align 4
  %n_chan33 = getelementptr %struct.comedi_subdevice, ptr %51, i32 3, i32 3
  %54 = ptrtoint ptr %n_chan33 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 16, ptr %n_chan33, align 4
  %maxdata34 = getelementptr %struct.comedi_subdevice, ptr %51, i32 3, i32 13
  %55 = ptrtoint ptr %maxdata34 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %maxdata34, align 4
  %range_table35 = getelementptr %struct.comedi_subdevice, ptr %51, i32 3, i32 15
  %56 = ptrtoint ptr %range_table35 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @range_unipolar5, ptr %range_table35, align 4
  %insn_bits36 = getelementptr %struct.comedi_subdevice, ptr %51, i32 3, i32 20
  %57 = ptrtoint ptr %insn_bits36 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @pcl816_do_insn_bits, ptr %insn_bits36, align 4
  tail call fastcc void @pcl816_reset(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end9.cleanup_crit_edge, %pcl816_alloc_irq_and_dma.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -12, %pcl816_alloc_irq_and_dma.exit.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcl816_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %ai_cmd_running.i = getelementptr inbounds %struct.pcl816_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ai_cmd_running.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %ai_cmd_running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then.pcl816_ai_cancel.exit_crit_edge, label %do.body.i

if.then.pcl816_ai_cancel.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcl816_ai_cancel.exit

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %4, 12
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 0) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i, align 4
  %add.i.i = add i32 %7, 10
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %8 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #6, !srcloc !44
  %pacer.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %9 = ptrtoint ptr %pacer.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pacer.i, align 4
  tail call void @comedi_8254_pacer_enable(ptr noundef %10, i32 noundef 1, i32 noundef 2, i1 noundef zeroext false) #6
  %11 = ptrtoint ptr %ai_cmd_running.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load3.i = load i8, ptr %ai_cmd_running.i, align 4
  %bf.clear5.i = and i8 %bf.load3.i, 63
  %bf.set6.i = or i8 %bf.clear5.i, 64
  store i8 %bf.set6.i, ptr %ai_cmd_running.i, align 4
  br label %pcl816_ai_cancel.exit

pcl816_ai_cancel.exit:                            ; preds = %do.body.i, %if.then.pcl816_ai_cancel.exit_crit_edge
  tail call fastcc void @pcl816_reset(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %pcl816_ai_cancel.exit, %entry.if.end_crit_edge
  tail call void @comedi_legacy_detach(ptr noundef %dev) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl816_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %shr = lshr i32 %1, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %add = add i32 %3, 12
  %and3 = and i32 %add, 1048575
  %add4 = or i32 %and3, -18874368
  %4 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 1) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %conv.i = trunc i32 %1 to i8
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %add.i = add i32 %6, 11
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %conv.i) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %conv4.i = trunc i32 %shr to i8
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase, align 4
  %add6.i = add i32 %9, 9
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %10 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv4.i) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %and = shl i32 %1, 4
  %or.i = or i32 %and, %1
  %conv.i36 = trunc i32 %or.i to i8
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase, align 4
  %add.i38 = add i32 %12, 11
  %and.i39 = and i32 %add.i38, 1048575
  %add1.i40 = or i32 %and.i39, -18874368
  %13 = inttoptr i32 %add1.i40 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv.i36) #6, !srcloc !44
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %14 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp60.not = icmp eq i32 %15, 0
  br i1 %cmp60.not, label %entry.do.body7_crit_edge, label %for.body.lr.ph

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

for.body.lr.ph:                                   ; preds = %entry
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.061 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %add.i42 = add i32 %17, 10
  %and.i43 = and i32 %add.i42, 1048575
  %add1.i44 = or i32 %and.i43, -18874368
  %18 = inttoptr i32 %add1.i44 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 0) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase, align 4
  %add.i46 = add i32 %20, 8
  %and.i47 = and i32 %add.i46, 1048575
  %add1.i48 = or i32 %and.i47, -18874368
  %21 = inttoptr i32 %add1.i48 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 0) #6, !srcloc !44
  %call5 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @pcl816_ai_eoc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %for.body.do.body7_crit_edge

for.body.do.body7_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

if.end:                                           ; preds = %for.body
  %22 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase, align 4
  %add.i50 = add i32 %23, 9
  %and.i51 = and i32 %add.i50, 1048575
  %add1.i52 = or i32 %and.i51, -18874368
  %24 = inttoptr i32 %add1.i52 to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %conv.i53 = zext i8 %25 to i32
  %shl.i54 = shl nuw nsw i32 %conv.i53, 8
  %26 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iobase, align 4
  %add5.i = add i32 %27, 8
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %28 = inttoptr i32 %add7.i to ptr
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %conv11.i = zext i8 %29 to i32
  %or.i55 = or i32 %shl.i54, %conv11.i
  %30 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %maxdata.i, align 4
  %and12.i = and i32 %or.i55, %31
  %arrayidx = getelementptr i32, ptr %data, i32 %i.061
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and12.i, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.061, 1
  %33 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %34
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.do.body7_crit_edge

if.end.do.body7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body7:                                         ; preds = %if.end.do.body7_crit_edge, %for.body.do.body7_crit_edge, %entry.do.body7_crit_edge
  %ret.1 = phi i32 [ 0, %entry.do.body7_crit_edge ], [ 0, %if.end.do.body7_crit_edge ], [ %call5, %for.body.do.body7_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase, align 4
  %add11 = add i32 %36, 12
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %37 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 0) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %iobase, align 4
  %add.i57 = add i32 %39, 10
  %and.i58 = and i32 %add.i57, 1048575
  %add1.i59 = or i32 %and.i58, -18874368
  %40 = inttoptr i32 %add1.i59 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 0) #6, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool15.not = icmp eq i32 %ret.1, 0
  br i1 %tobool15.not, label %cond.false, label %do.body7.cond.end_crit_edge

do.body7.cond.end_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %n, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.body7.cond.end_crit_edge
  %cond = phi i32 [ %42, %cond.false ], [ %ret.1, %do.body7.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl816_ai_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #2 align 64 {
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
  %and.i107 = and i32 %3, 4
  store i32 %and.i107, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i107)
  %cmp.i108 = icmp ne i32 %and.i107, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i107, i32 %3)
  %cmp1.not.i109 = icmp eq i32 %and.i107, %3
  %or.cond.i110 = and i1 %cmp.i108, %cmp1.not.i109
  %4 = select i1 %or.cond.i, i1 %or.cond.i110, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i112 = and i32 %6, 80
  store i32 %and.i112, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i112)
  %cmp.i113 = icmp ne i32 %and.i112, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i112, i32 %6)
  %cmp1.not.i114 = icmp eq i32 %and.i112, %6
  %or.cond.i115 = and i1 %cmp.i113, %cmp1.not.i114
  %7 = select i1 %4, i1 %or.cond.i115, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i117 = and i32 %9, 32
  store i32 %and.i117, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i117)
  %cmp.i118 = icmp ne i32 %and.i117, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i117, i32 %9)
  %cmp1.not.i119 = icmp eq i32 %and.i117, %9
  %or.cond.i120 = and i1 %cmp.i118, %cmp1.not.i119
  %10 = select i1 %7, i1 %or.cond.i120, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i122 = and i32 %12, 33
  store i32 %and.i122, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i122)
  %cmp.i123 = icmp ne i32 %and.i122, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i122, i32 %12)
  %cmp1.not.i124 = icmp eq i32 %and.i122, %12
  %or.cond.i125 = and i1 %cmp.i123, %cmp1.not.i124
  %13 = select i1 %10, i1 %or.cond.i125, i1 false
  br i1 %13, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = tail call i32 @llvm.ctpop.i32(i32 %6) #6, !range !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.not.i = icmp ult i32 %14, 2
  %15 = tail call i32 @llvm.ctpop.i32(i32 %12) #6, !range !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not.i127 = icmp ult i32 %15, 2
  %16 = select i1 %cmp.not.i, i1 %cmp.not.i127, i1 false
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
  %cmp.not.i129 = icmp eq i32 %18, 0
  br i1 %cmp.not.i129, label %if.end17.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

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
  %retval.0.i130 = phi i32 [ -22, %if.then.i ], [ 0, %if.end17.comedi_check_trigger_arg_is.exit_crit_edge ]
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %20 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i131 = icmp eq i32 %21, 0
  br i1 %cmp.not.i131, label %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit134_crit_edge, label %if.then.i132

comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit134_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit134

if.then.i132:                                     ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_is.exit134

comedi_check_trigger_arg_is.exit134:              ; preds = %if.then.i132, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit134_crit_edge
  %retval.0.i133 = phi i32 [ -22, %if.then.i132 ], [ 0, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit134_crit_edge ]
  %or21 = or i32 %retval.0.i133, %retval.0.i130
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp = icmp eq i32 %6, 16
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %23 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %convert_arg, align 4
  br i1 %cmp, label %if.then23, label %if.else

if.then23:                                        ; preds = %comedi_check_trigger_arg_is.exit134
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %24)
  %cmp.i135 = icmp ult i32 %24, 10000
  br i1 %cmp.i135, label %if.then23.if.end29.sink.split_crit_edge, label %if.then23.if.end29_crit_edge

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then23.if.end29.sink.split_crit_edge:          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not.i138 = icmp eq i32 %24, 0
  br i1 %cmp.not.i138, label %if.else.if.end29_crit_edge, label %if.else.if.end29.sink.split_crit_edge

if.else.if.end29.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.sink.split

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end29.sink.split:                              ; preds = %if.else.if.end29.sink.split_crit_edge, %if.then23.if.end29.sink.split_crit_edge
  %.sink = phi i32 [ 10000, %if.then23.if.end29.sink.split_crit_edge ], [ 0, %if.else.if.end29.sink.split_crit_edge ]
  %25 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %convert_arg, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %if.else.if.end29_crit_edge, %if.then23.if.end29_crit_edge
  %call24.pn = phi i32 [ 0, %if.then23.if.end29_crit_edge ], [ 0, %if.else.if.end29_crit_edge ], [ -22, %if.end29.sink.split ]
  %err.0 = or i32 %or21, %call24.pn
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %26 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chanlist_len, align 4
  %28 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %27)
  %cmp.not.i142 = icmp eq i32 %29, %27
  br i1 %cmp.not.i142, label %if.end29.comedi_check_trigger_arg_is.exit145_crit_edge, label %if.then.i143

if.end29.comedi_check_trigger_arg_is.exit145_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit145

if.then.i143:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit145

comedi_check_trigger_arg_is.exit145:              ; preds = %if.then.i143, %if.end29.comedi_check_trigger_arg_is.exit145_crit_edge
  %retval.0.i144 = phi i32 [ -22, %if.then.i143 ], [ 0, %if.end29.comedi_check_trigger_arg_is.exit145_crit_edge ]
  %or31 = or i32 %err.0, %retval.0.i144
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp33 = icmp eq i32 %12, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %31 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i146 = icmp eq i32 %32, 0
  br i1 %cmp33, label %if.then34, label %if.else37

if.then34:                                        ; preds = %comedi_check_trigger_arg_is.exit145
  br i1 %cmp.i146, label %if.then34.if.end41.sink.split_crit_edge, label %if.then34.if.end41_crit_edge

if.then34.if.end41_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then34.if.end41.sink.split_crit_edge:          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.sink.split

if.else37:                                        ; preds = %comedi_check_trigger_arg_is.exit145
  br i1 %cmp.i146, label %if.else37.if.end41_crit_edge, label %if.else37.if.end41.sink.split_crit_edge

if.else37.if.end41.sink.split_crit_edge:          ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.sink.split

if.else37.if.end41_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.end41.sink.split:                              ; preds = %if.else37.if.end41.sink.split_crit_edge, %if.then34.if.end41.sink.split_crit_edge
  %.sink160 = phi i32 [ 1, %if.then34.if.end41.sink.split_crit_edge ], [ 0, %if.else37.if.end41.sink.split_crit_edge ]
  %33 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink160, ptr %stop_arg, align 4
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
  br i1 %cmp, label %if.then47, label %if.end44.if.end55_crit_edge

if.end44.if.end55_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then47:                                        ; preds = %if.end44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #6
  %convert_arg48 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %34 = ptrtoint ptr %convert_arg48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %convert_arg48, align 4
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
  %43 = ptrtoint ptr %convert_arg48 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %convert_arg48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %42)
  %cmp.not.i154 = icmp eq i32 %44, %42
  br i1 %cmp.not.i154, label %comedi_check_trigger_arg_is.exit157.thread, label %comedi_check_trigger_arg_is.exit157

comedi_check_trigger_arg_is.exit157.thread:       ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  br label %if.end55

comedi_check_trigger_arg_is.exit157:              ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %convert_arg48 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %42, ptr %convert_arg48, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  br label %cleanup

if.end55:                                         ; preds = %comedi_check_trigger_arg_is.exit157.thread, %if.end44.if.end55_crit_edge
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %46 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chanlist, align 4
  %tobool56.not = icmp eq ptr %47, null
  br i1 %tobool56.not, label %if.end55.if.end64_crit_edge, label %if.then57

if.end55.if.end64_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then57:                                        ; preds = %if.end55
  %48 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chanlist_len, align 4
  %call60 = call fastcc i32 @check_channel_list(ptr noundef %dev, ptr noundef nonnull %47, i32 noundef %49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then57.cleanup_crit_edge, label %if.then57.if.end64_crit_edge

if.then57.if.end64_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end64:                                         ; preds = %if.then57.if.end64_crit_edge, %if.end55.if.end64_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.then57.cleanup_crit_edge, %comedi_check_trigger_arg_is.exit157, %if.end41.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end64 ], [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 3, %if.end41.cleanup_crit_edge ], [ 4, %comedi_check_trigger_arg_is.exit157 ], [ 5, %if.then57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl816_ai_cmd(ptr nocapture noundef readonly %dev, ptr noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %4 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async, align 4
  %ai_cmd_running = getelementptr inbounds %struct.pcl816_private, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %ai_cmd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 12
  %7 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chanlist, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 13
  %9 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chanlist_len, align 4
  %call = tail call fastcc i32 @check_channel_list(ptr noundef %dev, ptr noundef %8, i32 noundef %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %for.body.lr.ph.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end
  %11 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chanlist, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %iobase.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx1.i = getelementptr i32, ptr %12, i32 %i.018.i
  %15 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx1.i, align 4
  %shr.i = lshr i32 %16, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %conv.i.i = trunc i32 %16 to i8
  %17 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase.i.i, align 4
  %add.i.i = add i32 %18, 11
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %19 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %conv.i.i) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %conv4.i.i = trunc i32 %shr.i to i8
  %20 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase.i.i, align 4
  %add6.i.i = add i32 %21, 9
  %and7.i.i = and i32 %add6.i.i, 1048575
  %add8.i.i = or i32 %and7.i.i, -18874368
  %22 = inttoptr i32 %add8.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %conv4.i.i) #6, !srcloc !44
  %inc.i = add nuw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call
  br i1 %exitcond.not.i, label %pcl816_ai_setup_chanlist.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

pcl816_ai_setup_chanlist.exit:                    ; preds = %for.body.i
  %and2.le.i = shl i32 %16, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %or.i.i = or i32 %and2.le.i, %14
  %conv.i12.i = trunc i32 %or.i.i to i8
  %24 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iobase.i.i, align 4
  %add.i14.i = add i32 %25, 11
  %and.i15.i = and i32 %add.i14.i, 1048575
  %add1.i16.i = or i32 %and.i15.i, -18874368
  %26 = inttoptr i32 %add1.i16.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %conv.i12.i) #6, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #6
  %28 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load7 = load i8, ptr %ai_cmd_running, align 4
  %ai_poll_ptr = getelementptr inbounds %struct.pcl816_private, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %ai_poll_ptr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %ai_poll_ptr, align 4
  %bf.set = and i8 %bf.load7, 63
  %bf.clear9 = or i8 %bf.set, -128
  store i8 %bf.clear9, ptr %ai_cmd_running, align 4
  %cur_dma = getelementptr inbounds %struct.comedi_isadma, ptr %3, i32 0, i32 3
  %30 = ptrtoint ptr %cur_dma to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %cur_dma, align 4
  %31 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %desc2.i = getelementptr inbounds %struct.comedi_isadma, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %desc2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %desc2.i, align 4
  %cur_dma.i = getelementptr inbounds %struct.comedi_isadma, ptr %34, i32 0, i32 3
  %37 = ptrtoint ptr %cur_dma.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cur_dma.i, align 4
  %maxsize.i = getelementptr %struct.comedi_isadma_desc, ptr %36, i32 %38, i32 3
  %39 = ptrtoint ptr %maxsize.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %maxsize.i, align 4
  %subdev_flags.i.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 4
  %41 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i.i = and i32 %42, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 2
  %shr.i.i = lshr i32 %40, %cond.i.i.i
  %call4.i = tail call i32 @comedi_nsamples_left(ptr noundef %s, i32 noundef %shr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i.not = icmp eq i32 %call4.i, 0
  br i1 %cmp.i.not, label %pcl816_ai_setup_chanlist.exit.pcl816_ai_setup_dma.exit_crit_edge, label %if.then.i

pcl816_ai_setup_chanlist.exit.pcl816_ai_setup_dma.exit_crit_edge: ; preds = %pcl816_ai_setup_chanlist.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcl816_ai_setup_dma.exit

if.then.i:                                        ; preds = %pcl816_ai_setup_chanlist.exit
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i17.i = and i32 %44, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i)
  %tobool.not.i.i18.i = icmp eq i32 %and.i.i17.i, 0
  %cond.i.i19.i = select i1 %tobool.not.i.i18.i, i32 1, i32 2
  %shl.i.i = shl i32 %call4.i, %cond.i.i19.i
  %size.i = getelementptr %struct.comedi_isadma_desc, ptr %36, i32 %38, i32 4
  %45 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shl.i.i, ptr %size.i, align 4
  br label %pcl816_ai_setup_dma.exit

pcl816_ai_setup_dma.exit:                         ; preds = %if.then.i, %pcl816_ai_setup_chanlist.exit.pcl816_ai_setup_dma.exit_crit_edge
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %46 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pacer, align 4
  %call11 = tail call i32 @comedi_8254_set_mode(ptr noundef %47, i32 noundef 0, i32 noundef 2) #6
  %48 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_write(ptr noundef %49, i32 noundef 0, i32 noundef 255) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748) #6
  %51 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_update_divisors(ptr noundef %52) #6
  %53 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_pacer_enable(ptr noundef %54, i32 noundef 1, i32 noundef 2, i1 noundef zeroext true) #6
  %convert_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 6
  %55 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %56)
  %cmp15 = icmp eq i32 %56, 16
  %. = select i1 %cmp15, i8 50, i8 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %57 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %iobase.i.i, align 4
  %add = add i32 %58, 12
  %and = and i32 %add, 1048575
  %add19 = or i32 %and, -18874368
  %59 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 %.) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %chan = getelementptr inbounds %struct.comedi_isadma, ptr %3, i32 0, i32 4
  %60 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %chan, align 4
  %shl = shl i32 %61, 4
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %62 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq, align 4
  %or24 = or i32 %shl, %63
  %conv25 = trunc i32 %or24 to i8
  %64 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %iobase.i.i, align 4
  %add27 = add i32 %65, 13
  %and28 = and i32 %add27, 1048575
  %add29 = or i32 %and28, -18874368
  %66 = inttoptr i32 %add29 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 %conv25) #6, !srcloc !44
  br label %cleanup

cleanup:                                          ; preds = %pcl816_ai_setup_dma.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pcl816_ai_setup_dma.exit ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl816_ai_poll(ptr noundef %dev, ptr noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl816_ai_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %ai_cmd_running = getelementptr inbounds %struct.pcl816_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %ai_cmd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %add = add i32 %4, 12
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 0) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add.i = add i32 %7, 10
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #6, !srcloc !44
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %9 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_pacer_enable(ptr noundef %10, i32 noundef 1, i32 noundef 2, i1 noundef zeroext false) #6
  %11 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load3 = load i8, ptr %ai_cmd_running, align 4
  %bf.clear5 = and i8 %bf.load3, 63
  %bf.set6 = or i8 %bf.clear5, 64
  store i8 %bf.set6, ptr %ai_cmd_running, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl816_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %and = and i32 %1, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add5 = add i32 %5, 1
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %6 = inttoptr i32 %add7 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
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
define internal i32 @pcl816_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
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
  %and1 = and i32 %3, 1048575
  %add2 = or i32 %and1, -18874368
  %4 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %shr = lshr i32 %6, 8
  %conv7 = trunc i32 %shr to i8
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add9 = add i32 %8, 1
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %9 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv7) #6, !srcloc !44
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %state13 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %10 = ptrtoint ptr %state13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state13, align 4
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcl816_reset(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 12
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %add.i = add i32 %4, 11
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 0) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add6.i = add i32 %7, 9
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %8 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %add.i21 = add i32 %10, 10
  %and.i22 = and i32 %add.i21, 1048575
  %add1.i23 = or i32 %and.i22, -18874368
  %11 = inttoptr i32 %add1.i23 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 0) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase, align 4
  %and6 = and i32 %13, 1048575
  %add7 = or i32 %and6, -18874368
  %14 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase, align 4
  %add12 = add i32 %16, 1
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %17 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 0) #6, !srcloc !44
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl816_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %0 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_subdev, align 4
  %private = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %desc2 = getelementptr inbounds %struct.comedi_isadma, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc2, align 4
  %cur_dma = getelementptr inbounds %struct.comedi_isadma, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %cur_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_dma, align 4
  %arrayidx = getelementptr %struct.comedi_isadma_desc, ptr %7, i32 %9
  %attached = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 10
  %10 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %ai_cmd_running = getelementptr inbounds %struct.pcl816_private, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load3 = load i8, ptr %ai_cmd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load3)
  %tobool6.not = icmp sgt i8 %bf.load3, -1
  br i1 %tobool6.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %13, 10
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #6, !srcloc !44
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %15 = and i8 %bf.load3, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool10.not = icmp eq i8 %15, 0
  br i1 %tobool10.not, label %if.end15, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %bf.clear14 = and i8 %bf.load3, -65
  %16 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %bf.clear14, ptr %ai_cmd_running, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %iobase.i50 = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %17 = ptrtoint ptr %iobase.i50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase.i50, align 4
  %add.i51 = add i32 %18, 10
  %and.i52 = and i32 %add.i51, 1048575
  %add1.i53 = or i32 %and.i52, -18874368
  %19 = inttoptr i32 %add1.i53 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 0) #6, !srcloc !44
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %size = getelementptr %struct.comedi_isadma_desc, ptr %7, i32 %9, i32 4
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  %subdev_flags.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %subdev_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %subdev_flags.i.i, align 4
  %and.i.i = and i32 %23, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 2
  %shr.i = lshr i32 %21, %cond.i.i
  %ai_poll_ptr = getelementptr inbounds %struct.pcl816_private, ptr %3, i32 0, i32 1
  %24 = ptrtoint ptr %ai_poll_ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ai_poll_ptr, align 4
  %sub = sub i32 %shr.i, %25
  store i32 0, ptr %ai_poll_ptr, align 4
  %26 = ptrtoint ptr %cur_dma to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cur_dma, align 4
  %sub19 = sub i32 1, %27
  store i32 %sub19, ptr %cur_dma, align 4
  %28 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %private, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %desc2.i = getelementptr inbounds %struct.comedi_isadma, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %desc2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %desc2.i, align 4
  %cur_dma.i = getelementptr inbounds %struct.comedi_isadma, ptr %31, i32 0, i32 3
  %34 = ptrtoint ptr %cur_dma.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cur_dma.i, align 4
  %maxsize.i = getelementptr %struct.comedi_isadma_desc, ptr %33, i32 %35, i32 3
  %36 = ptrtoint ptr %maxsize.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %maxsize.i, align 4
  %38 = ptrtoint ptr %subdev_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %subdev_flags.i.i, align 4
  %and.i.i.i = and i32 %39, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 2
  %shr.i.i = lshr i32 %37, %cond.i.i.i
  %add.i54 = add i32 %shr.i.i, %sub
  %call4.i = tail call i32 @comedi_nsamples_left(ptr noundef %1, i32 noundef %add.i54) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i, i32 %sub)
  %cmp.i = icmp ugt i32 %call4.i, %sub
  br i1 %cmp.i, label %if.then.i, label %if.end15.pcl816_ai_setup_dma.exit_crit_edge

if.end15.pcl816_ai_setup_dma.exit_crit_edge:      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcl816_ai_setup_dma.exit

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub i32 %call4.i, %sub
  %40 = ptrtoint ptr %subdev_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %subdev_flags.i.i, align 4
  %and.i.i17.i = and i32 %41, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i)
  %tobool.not.i.i18.i = icmp eq i32 %and.i.i17.i, 0
  %cond.i.i19.i = select i1 %tobool.not.i.i18.i, i32 1, i32 2
  %shl.i.i = shl i32 %sub.i, %cond.i.i19.i
  %size.i = getelementptr %struct.comedi_isadma_desc, ptr %33, i32 %35, i32 4
  %42 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shl.i.i, ptr %size.i, align 4
  br label %pcl816_ai_setup_dma.exit

pcl816_ai_setup_dma.exit:                         ; preds = %if.then.i, %if.end15.pcl816_ai_setup_dma.exit_crit_edge
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %25)
  %cmp2.not.i = icmp eq i32 %shr.i, %25
  br i1 %cmp2.not.i, label %pcl816_ai_setup_dma.exit.transfer_from_dma_buf.exit_crit_edge, label %for.body.lr.ph.i

pcl816_ai_setup_dma.exit.transfer_from_dma_buf.exit_crit_edge: ; preds = %pcl816_ai_setup_dma.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %transfer_from_dma_buf.exit

for.body.lr.ph.i:                                 ; preds = %pcl816_ai_setup_dma.exit
  %async.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.04.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc2.i, %for.inc.i.for.body.i_crit_edge ]
  %bufptr.addr.03.i = phi i32 [ %25, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %44, i32 %bufptr.addr.03.i
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx.i, align 2
  %47 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %val.i, align 2
  %call.i = call i32 @comedi_buf_write_samples(ptr noundef %1, ptr noundef nonnull %val.i, i32 noundef 1) #6
  %48 = ptrtoint ptr %async.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %async.i.i, align 4
  %stop_src.i.i = getelementptr inbounds %struct.comedi_async, ptr %49, i32 0, i32 17, i32 10
  %50 = ptrtoint ptr %stop_src.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %stop_src.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %51)
  %cmp.i.i = icmp eq i32 %51, 32
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %scans_done.i.i = getelementptr inbounds %struct.comedi_async, ptr %49, i32 0, i32 11
  %52 = ptrtoint ptr %scans_done.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %scans_done.i.i, align 4
  %stop_arg.i.i = getelementptr inbounds %struct.comedi_async, ptr %49, i32 0, i32 17, i32 11
  %54 = ptrtoint ptr %stop_arg.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %stop_arg.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp3.not.i.i = icmp ult i32 %53, %55
  br i1 %cmp3.not.i.i, label %land.lhs.true.i.i.for.inc.i_crit_edge, label %pcl816_ai_next_chan.exit.i

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

pcl816_ai_next_chan.exit.i:                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %events.i.i = getelementptr inbounds %struct.comedi_async, ptr %49, i32 0, i32 16
  %56 = ptrtoint ptr %events.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %events.i.i, align 4
  %or.i.i = or i32 %57, 2
  store i32 %or.i.i, ptr %events.i.i, align 4
  br label %transfer_from_dma_buf.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add i32 %bufptr.addr.03.i, 1
  %inc2.i = add nuw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc2.i, %sub
  br i1 %exitcond.not.i, label %for.inc.i.transfer_from_dma_buf.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.transfer_from_dma_buf.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %transfer_from_dma_buf.exit

transfer_from_dma_buf.exit:                       ; preds = %for.inc.i.transfer_from_dma_buf.exit_crit_edge, %pcl816_ai_next_chan.exit.i, %pcl816_ai_setup_dma.exit.transfer_from_dma_buf.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  call void @arm_heavy_mb() #6
  %iobase.i55 = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %58 = ptrtoint ptr %iobase.i55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %iobase.i55, align 4
  %add.i56 = add i32 %59, 10
  %and.i57 = and i32 %add.i56, 1048575
  %add1.i58 = or i32 %and.i57, -18874368
  %60 = inttoptr i32 %add1.i58 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 0) #6, !srcloc !44
  %call21 = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %transfer_from_dma_buf.exit, %if.then11, %if.then
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_nsamples_left(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl816_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 13
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp sgt i8 %3, -1
  %. = select i1 %cmp, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_cascade_ns_to_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_channel_list(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %chanlist, i32 noundef %chanlen) unnamed_addr #2 align 64 {
entry:
  %chansegment = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %chansegment) #6
  %0 = getelementptr inbounds i8, ptr %chansegment, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 60)
  %2 = zext i32 %chanlen to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %chanlen, label %for.body.preheader [
    i32 0, label %do.end
    i32 1, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %3 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #9
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %5 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chanlist, align 4
  %7 = ptrtoint ptr %chansegment to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %chansegment, align 4
  br label %for.body

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %for.body.preheader
  %i.011 = phi i32 [ %inc, %if.end28.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %arrayidx6 = getelementptr i32, ptr %chanlist, i32 %i.011
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %9)
  %cmp7 = icmp eq i32 %6, %9
  br i1 %cmp7, label %for.body.for.end_crit_edge, label %if.end9

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end9:                                          ; preds = %for.body
  %sub = add i32 %i.011, -1
  %arrayidx10 = getelementptr [16 x i32], ptr %chansegment, i32 0, i32 %sub
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10, align 4
  %and = and i32 %11, 65535
  %add = add nuw nsw i32 %and, 1
  %rem = urem i32 %add, %chanlen
  %and12 = and i32 %9, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %and12)
  %cmp13.not = icmp eq i32 %rem, %and12
  br i1 %cmp13.not, label %if.end28, label %do.body15

do.body15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_channel_list.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@check_channel_list, %cleanup)) #6
          to label %if.then19 [label %cleanup], !srcloc !66

if.then19:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx6.le = getelementptr i32, ptr %chanlist, i32 %i.011
  %class_dev20 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %12 = ptrtoint ptr %class_dev20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %class_dev20, align 4
  %14 = ptrtoint ptr %arrayidx6.le to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6.le, align 4
  %and22 = and i32 %15, 65535
  %16 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chanlist, align 4
  %and24 = and i32 %17, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_channel_list.__UNIQUE_ID_ddebug234, ptr noundef %13, ptr noundef nonnull @.str.7, i32 noundef %i.011, i32 noundef %and22, i32 noundef %rem, i32 noundef %and24) #6
  br label %cleanup

if.end28:                                         ; preds = %if.end9
  %arrayidx30 = getelementptr [16 x i32], ptr %chansegment, i32 0, i32 %i.011
  %18 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %9, ptr %arrayidx30, align 4
  %inc = add nuw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %chanlen
  br i1 %exitcond.not, label %if.end28.for.end_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end28.for.end_crit_edge, %for.body.for.end_crit_edge
  %seglen.0.lcssa = phi i32 [ %chanlen, %if.end28.for.end_crit_edge ], [ %i.011, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chanlen)
  %cmp3313.not = icmp eq i32 %chanlen, 0
  br i1 %cmp3313.not, label %for.end.cleanup_crit_edge, label %for.end.for.body34_crit_edge

for.end.for.body34_crit_edge:                     ; preds = %for.end
  br label %for.body34

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body34:                                       ; preds = %for.inc78.for.body34_crit_edge, %for.end.for.body34_crit_edge
  %i.114 = phi i32 [ %inc79, %for.inc78.for.body34_crit_edge ], [ 0, %for.end.for.body34_crit_edge ]
  %arrayidx35 = getelementptr i32, ptr %chanlist, i32 %i.114
  %19 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx35, align 4
  %rem36 = urem i32 %i.114, %seglen.0.lcssa
  %arrayidx37 = getelementptr [16 x i32], ptr %chansegment, i32 0, i32 %rem36
  %21 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp38.not = icmp eq i32 %20, %22
  br i1 %cmp38.not, label %for.inc78, label %do.body40

do.body40:                                        ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_channel_list.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@check_channel_list, %cleanup)) #6
          to label %if.then54 [label %cleanup], !srcloc !66

if.then54:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev55 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %23 = ptrtoint ptr %class_dev55 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %class_dev55, align 4
  %arrayidx56 = getelementptr [16 x i32], ptr %chansegment, i32 0, i32 %i.114
  %25 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx56, align 4
  %and57 = and i32 %26, 65535
  %shr = lshr i32 %26, 16
  %and59 = and i32 %shr, 255
  %shr61 = lshr i32 %26, 24
  %and62 = and i32 %shr61, 3
  %arrayidx64 = getelementptr i32, ptr %chanlist, i32 %rem36
  %27 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx64, align 4
  %and65 = and i32 %28, 65535
  %shr68 = lshr i32 %28, 16
  %and69 = and i32 %shr68, 255
  %shr72 = lshr i32 %22, 24
  %and73 = and i32 %shr72, 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_channel_list.__UNIQUE_ID_ddebug235, ptr noundef %24, ptr noundef nonnull @.str.8, i32 noundef %i.114, i32 noundef %and57, i32 noundef %and59, i32 noundef %and62, i32 noundef %and65, i32 noundef %and69, i32 noundef %and73) #6
  br label %cleanup

for.inc78:                                        ; preds = %for.body34
  %inc79 = add nuw i32 %i.114, 1
  %exitcond19.not = icmp eq i32 %inc79, %chanlen
  br i1 %exitcond19.not, label %for.inc78.cleanup_crit_edge, label %for.inc78.for.body34_crit_edge

for.inc78.for.body34_crit_edge:                   ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body34

for.inc78.cleanup_crit_edge:                      ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc78.cleanup_crit_edge, %if.then54, %do.body40, %for.end.cleanup_crit_edge, %if.then19, %do.body15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %if.then19 ], [ 0, %if.then54 ], [ %chanlen, %entry.cleanup_crit_edge ], [ 0, %do.body15 ], [ 0, %do.body40 ], [ %seglen.0.lcssa, %for.end.cleanup_crit_edge ], [ %seglen.0.lcssa, %for.inc78.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %chansegment) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_8254_set_mode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_update_divisors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_pacer_enable(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_pcl816__236_690_pcl816_driver_init6, !1, !"__initcall__kmod_pcl816__236_690_pcl816_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/pcl816.c", i32 690, i32 1}
!2 = !{ptr @__exitcall_pcl816_driver_exit, !1, !"__exitcall_pcl816_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/pcl816.c", i32 692, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/pcl816.c", i32 693, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/pcl816.c", i32 694, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/pcl816.c", i32 682, i32 17}
!12 = !{ptr @pcl816_driver, !13, !"pcl816_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/pcl816.c", i32 681, i32 29}
!14 = !{ptr @range_pcl816, !15, !"range_pcl816", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/pcl816.c", i32 72, i32 35}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/pcl816.c", i32 287, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @check_channel_list._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @check_channel_list._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/pcl816.c", i32 302, i32 5}
!26 = !{ptr @check_channel_list.__UNIQUE_ID_ddebug234, !25, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/comedi/drivers/pcl816.c", i32 315, i32 5}
!29 = !{ptr @check_channel_list.__UNIQUE_ID_ddebug235, !28, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/comedi/drivers/pcl816.c", i32 97, i32 12}
!32 = !{ptr @boardtypes, !33, !"boardtypes", i1 false, i1 false}
!33 = !{!"../drivers/comedi/drivers/pcl816.c", i32 91, i32 34}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 2154232610}
!44 = !{i64 4551552}
!45 = !{i64 2154219784}
!46 = !{i64 2154233133}
!47 = !{i64 2154218023}
!48 = !{i64 2154218376}
!49 = !{i64 2154218812}
!50 = !{i64 2154220133}
!51 = !{i64 4551947}
!52 = !{i64 2154220562}
!53 = !{i64 2154220864}
!54 = !{i64 2154233482}
!55 = !{i32 0, i32 33}
!56 = !{i64 2154231526}
!57 = !{i64 2154231901}
!58 = !{i64 2154233911}
!59 = !{i64 2154234213}
!60 = !{i64 2154234449}
!61 = !{i64 2154234812}
!62 = !{i64 2154235161}
!63 = !{i64 2154235510}
!64 = !{i64 2154235859}
!65 = !{i64 2154221166}
!66 = !{i64 2148969440, i64 2148969445, i64 2148969458, i64 2148969502, i64 2148969536, i64 2148969557}
