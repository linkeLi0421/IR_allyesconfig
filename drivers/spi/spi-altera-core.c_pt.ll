; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-altera-core.c_pt.bc'
source_filename = "../drivers/spi/spi-altera-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+altera_spi_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_altera_spi_irq\09\09\09\09"
module asm "\09.long\09__crc_altera_spi_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_altera_spi_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22altera_spi_irq\22\09\09\09\09\09"
module asm "__kstrtabns_altera_spi_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+altera_spi_init_master\22, \22a\22\09"
module asm "\09.weak\09__crc_altera_spi_init_master\09\09\09\09"
module asm "\09.long\09__crc_altera_spi_init_master\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_altera_spi_init_master:\09\09\09\09\09"
module asm "\09.asciz \09\22altera_spi_init_master\22\09\09\09\09\09"
module asm "__kstrtabns_altera_spi_init_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.altera_spi = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, ptr }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }

@__kstrtab_altera_spi_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_altera_spi_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_altera_spi_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @altera_spi_irq to i32), ptr @__kstrtab_altera_spi_irq, ptr @__kstrtabns_altera_spi_irq }, section "___ksymtab_gpl+altera_spi_irq", align 4
@__kstrtab_altera_spi_init_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_altera_spi_init_master = external dso_local constant [0 x i8], align 1
@__ksymtab_altera_spi_init_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @altera_spi_init_master to i32), ptr @__kstrtab_altera_spi_init_master, ptr @__kstrtabns_altera_spi_init_master }, section "___ksymtab_gpl+altera_spi_init_master", align 4
@__UNIQUE_ID_file234 = internal constant [49 x i8] c"spi_altera_core.file=drivers/spi/spi-altera-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [28 x i8] c"spi_altera_core.license=GPL\00", section ".modinfo", align 1
@altr_spi_writel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 51, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"fail to write reg 0x%x val 0x%x: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"altr_spi_writel\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/spi/spi-altera-core.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@altr_spi_writel._entry_ptr = internal global ptr @altr_spi_writel._entry, section ".printk_index", align 4
@altr_spi_readl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 63, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fail to read reg 0x%x: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"altr_spi_readl\00", [17 x i8] zeroinitializer }, align 32
@altr_spi_readl._entry_ptr = internal global ptr @altr_spi_readl._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 50, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [33 x i8] c"../drivers/spi/spi-altera-core.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 63, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__ksymtab_altera_spi_init_master, ptr @__ksymtab_altera_spi_irq, ptr @altr_spi_readl._entry, ptr @altr_spi_readl._entry_ptr, ptr @altr_spi_writel._entry, ptr @altr_spi_writel._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_spi_writel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_spi_readl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @altera_spi_irq(i32 %irq, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @altera_spi_rx_word(ptr noundef %1)
  %count = getelementptr inbounds %struct.altera_spi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %len = getelementptr inbounds %struct.altera_spi, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @altera_spi_tx_word(ptr noundef %1)
  br label %if.end

if.else:                                          ; preds = %entry
  %imr = getelementptr inbounds %struct.altera_spi, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %imr, align 4
  %and = and i32 %7, -129
  store i32 %and, ptr %imr, align 4
  %regmap.i = getelementptr inbounds %struct.altera_spi, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %regoff.i = getelementptr inbounds %struct.altera_spi, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %regoff.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %regoff.i, align 4
  %add.i = add i32 %11, 12
  %call.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %add.i, i32 noundef %and) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.altr_spi_writel.exit_crit_edge, label %do.end.i

if.else.altr_spi_writel.exit_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %altr_spi_writel.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.altera_spi, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str, i32 noundef 12, i32 noundef %and, i32 noundef %call.i) #7
  br label %altr_spi_writel.exit

altr_spi_writel.exit:                             ; preds = %do.end.i, %if.else.altr_spi_writel.exit_crit_edge
  tail call void @spi_finalize_current_transfer(ptr noundef %dev) #4
  br label %if.end

if.end:                                           ; preds = %altr_spi_writel.exit, %if.then
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @altera_spi_rx_word(ptr nocapture noundef %hw) unnamed_addr #0 align 64 {
entry:
  %rxd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rxd) #4
  %0 = ptrtoint ptr %rxd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rxd, align 4, !annotation !29
  %regmap.i = getelementptr inbounds %struct.altera_spi, ptr %hw, i32 0, i32 7
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %regoff.i = getelementptr inbounds %struct.altera_spi, ptr %hw, i32 0, i32 8
  %3 = ptrtoint ptr %regoff.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %regoff.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %rxd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.altr_spi_readl.exit_crit_edge, label %do.end.i

entry.altr_spi_readl.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %altr_spi_readl.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.altera_spi, ptr %hw, i32 0, i32 9
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef %call.i) #7
  br label %altr_spi_readl.exit

altr_spi_readl.exit:                              ; preds = %do.end.i, %entry.altr_spi_readl.exit_crit_edge
  %rx = getelementptr inbounds %struct.altera_spi, ptr %hw, i32 0, i32 6
  %7 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %altr_spi_readl.exit.if.end_crit_edge, label %if.then

altr_spi_readl.exit.if.end_crit_edge:             ; preds = %altr_spi_readl.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %altr_spi_readl.exit
  %bytes_per_word = getelementptr inbounds %struct.altera_spi, ptr %hw, i32 0, i32 3
  %9 = ptrtoint ptr %bytes_per_word to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bytes_per_word, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.then.if.end_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 4, label %sw.bb12
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %rxd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rxd, align 4
  %conv = trunc i32 %13 to i8
  %count = getelementptr inbounds %struct.altera_spi, ptr %hw, i32 0, i32 2
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 4
  %arrayidx = getelementptr i8, ptr %8, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %arrayidx, align 1
  br label %if.end

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %rxd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rxd, align 4
  %conv3 = trunc i32 %18 to i8
  %count5 = getelementptr inbounds %struct.altera_spi, ptr %hw, i32 0, i32 2
  %19 = ptrtoint ptr %count5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count5, align 4
  %mul = shl i32 %20, 1
  %arrayidx6 = getelementptr i8, ptr %8, i32 %mul
  %21 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv3, ptr %arrayidx6, align 1
  %22 = load i32, ptr %rxd, align 4
  %shr = lshr i32 %22, 8
  %conv7 = trunc i32 %shr to i8
  %23 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx, align 4
  %25 = load i32, ptr %count5, align 4
  %mul10 = shl i32 %25, 1
  %add = or i32 %mul10, 1
  %arrayidx11 = getelementptr i8, ptr %24, i32 %add
  %26 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv7, ptr %arrayidx11, align 1
  br label %if.end

sw.bb12:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %rxd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rxd, align 4
  %conv13 = trunc i32 %28 to i8
  %count15 = getelementptr inbounds %struct.altera_spi, ptr %hw, i32 0, i32 2
  %29 = ptrtoint ptr %count15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count15, align 4
  %mul16 = shl i32 %30, 2
  %arrayidx17 = getelementptr i8, ptr %8, i32 %mul16
  %31 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv13, ptr %arrayidx17, align 1
  %32 = load i32, ptr %rxd, align 4
  %shr18 = lshr i32 %32, 8
  %conv19 = trunc i32 %shr18 to i8
  %33 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx, align 4
  %35 = load i32, ptr %count15, align 4
  %mul22 = shl i32 %35, 2
  %add23 = or i32 %mul22, 1
  %arrayidx24 = getelementptr i8, ptr %34, i32 %add23
  %36 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv19, ptr %arrayidx24, align 1
  %37 = load i32, ptr %rxd, align 4
  %shr25 = lshr i32 %37, 16
  %conv26 = trunc i32 %shr25 to i8
  %38 = load ptr, ptr %rx, align 4
  %39 = load i32, ptr %count15, align 4
  %mul29 = shl i32 %39, 2
  %add30 = or i32 %mul29, 2
  %arrayidx31 = getelementptr i8, ptr %38, i32 %add30
  %40 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv26, ptr %arrayidx31, align 1
  %41 = load i32, ptr %rxd, align 4
  %shr32 = lshr i32 %41, 24
  %conv33 = trunc i32 %shr32 to i8
  %42 = load ptr, ptr %rx, align 4
  %43 = load i32, ptr %count15, align 4
  %mul36 = shl i32 %43, 2
  %add37 = or i32 %mul36, 3
  %arrayidx38 = getelementptr i8, ptr %42, i32 %add37
  %44 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv33, ptr %arrayidx38, align 1
  br label %if.end

if.end:                                           ; preds = %sw.bb12, %sw.bb2, %sw.bb, %if.then.if.end_crit_edge, %altr_spi_readl.exit.if.end_crit_edge
  %count39 = getelementptr inbounds %struct.altera_spi, ptr %hw, i32 0, i32 2
  %45 = ptrtoint ptr %count39 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count39, align 4
  %inc = add i32 %46, 1
  store i32 %inc, ptr %count39, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rxd) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @altera_spi_tx_word(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tx = getelementptr inbounds %struct.altera_spi, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %bytes_per_word = getelementptr inbounds %struct.altera_spi, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %bytes_per_word to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytes_per_word, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %3, label %if.then.if.end_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 4, label %sw.bb12
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %count = getelementptr inbounds %struct.altera_spi, ptr %hw, i32 0, i32 2
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  br label %if.end

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %count4 = getelementptr inbounds %struct.altera_spi, ptr %hw, i32 0, i32 2
  %9 = ptrtoint ptr %count4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count4, align 4
  %mul = shl i32 %10, 1
  %arrayidx5 = getelementptr i8, ptr %1, i32 %mul
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %12 to i32
  %add = or i32 %mul, 1
  %arrayidx10 = getelementptr i8, ptr %1, i32 %add
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %14 to i32
  %shl = shl nuw nsw i32 %conv11, 8
  %or = or i32 %shl, %conv6
  br label %if.end

sw.bb12:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %count14 = getelementptr inbounds %struct.altera_spi, ptr %hw, i32 0, i32 2
  %15 = ptrtoint ptr %count14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count14, align 4
  %mul15 = shl i32 %16, 2
  %arrayidx16 = getelementptr i8, ptr %1, i32 %mul15
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %18 to i32
  %add21 = or i32 %mul15, 1
  %arrayidx22 = getelementptr i8, ptr %1, i32 %add21
  %19 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %20 to i32
  %shl24 = shl nuw nsw i32 %conv23, 8
  %or25 = or i32 %shl24, %conv17
  %add29 = or i32 %mul15, 2
  %arrayidx30 = getelementptr i8, ptr %1, i32 %add29
  %21 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %22 to i32
  %shl32 = shl nuw nsw i32 %conv31, 16
  %or33 = or i32 %or25, %shl32
  %add37 = or i32 %mul15, 3
  %arrayidx38 = getelementptr i8, ptr %1, i32 %add37
  %23 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %24 to i32
  %shl40 = shl nuw i32 %conv39, 24
  %or41 = or i32 %or33, %shl40
  br label %if.end

if.end:                                           ; preds = %sw.bb12, %sw.bb2, %sw.bb, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %txd.0 = phi i32 [ 0, %if.then.if.end_crit_edge ], [ %or41, %sw.bb12 ], [ %or, %sw.bb2 ], [ %conv, %sw.bb ], [ 0, %entry.if.end_crit_edge ]
  %regmap.i = getelementptr inbounds %struct.altera_spi, ptr %hw, i32 0, i32 7
  %25 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i, align 4
  %regoff.i = getelementptr inbounds %struct.altera_spi, ptr %hw, i32 0, i32 8
  %27 = ptrtoint ptr %regoff.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %regoff.i, align 4
  %add.i = add i32 %28, 4
  %call.i = tail call i32 @regmap_write(ptr noundef %26, i32 noundef %add.i, i32 noundef %txd.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.altr_spi_writel.exit_crit_edge, label %do.end.i

if.end.altr_spi_writel.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %altr_spi_writel.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.altera_spi, ptr %hw, i32 0, i32 9
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str, i32 noundef 4, i32 noundef %txd.0, i32 noundef %call.i) #7
  br label %altr_spi_writel.exit

altr_spi_writel.exit:                             ; preds = %do.end.i, %if.end.altr_spi_writel.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @altera_spi_init_master(ptr nocapture noundef %master) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #4
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !29
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 51
  %3 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @altera_spi_txrx, ptr %transfer_one, align 4
  %set_cs = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 50
  %4 = ptrtoint ptr %set_cs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @altera_spi_set_cs, ptr %set_cs, align 8
  %imr = getelementptr inbounds %struct.altera_spi, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %imr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %imr, align 4
  %regmap.i = getelementptr inbounds %struct.altera_spi, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %regoff.i = getelementptr inbounds %struct.altera_spi, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %regoff.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %regoff.i, align 4
  %add.i = add i32 %9, 12
  %call.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %add.i, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.altr_spi_writel.exit_crit_edge, label %do.end.i

entry.altr_spi_writel.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %altr_spi_writel.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.altera_spi, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str, i32 noundef 12, i32 noundef 0, i32 noundef %call.i) #7
  br label %altr_spi_writel.exit

altr_spi_writel.exit:                             ; preds = %do.end.i, %entry.altr_spi_writel.exit_crit_edge
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %14 = ptrtoint ptr %regoff.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %regoff.i, align 4
  %add.i15 = add i32 %15, 8
  %call.i16 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %add.i15, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool.not.i17 = icmp eq i32 %call.i16, 0
  br i1 %tobool.not.i17, label %altr_spi_writel.exit.altr_spi_writel.exit20_crit_edge, label %do.end.i19

altr_spi_writel.exit.altr_spi_writel.exit20_crit_edge: ; preds = %altr_spi_writel.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %altr_spi_writel.exit20

do.end.i19:                                       ; preds = %altr_spi_writel.exit
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i18 = getelementptr inbounds %struct.altera_spi, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %dev.i18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str, i32 noundef 8, i32 noundef 0, i32 noundef %call.i16) #7
  br label %altr_spi_writel.exit20

altr_spi_writel.exit20:                           ; preds = %do.end.i19, %altr_spi_writel.exit.altr_spi_writel.exit20_crit_edge
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %20 = ptrtoint ptr %regoff.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %regoff.i, align 4
  %add.i23 = add i32 %21, 8
  %call.i24 = call i32 @regmap_read(ptr noundef %19, i32 noundef %add.i23, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool.not.i25 = icmp eq i32 %call.i24, 0
  br i1 %tobool.not.i25, label %altr_spi_writel.exit20.altr_spi_readl.exit_crit_edge, label %do.end.i27

altr_spi_writel.exit20.altr_spi_readl.exit_crit_edge: ; preds = %altr_spi_writel.exit20
  call void @__sanitizer_cov_trace_pc() #6
  br label %altr_spi_readl.exit

do.end.i27:                                       ; preds = %altr_spi_writel.exit20
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i26 = getelementptr inbounds %struct.altera_spi, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %dev.i26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i26, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.5, i32 noundef 8, i32 noundef %call.i24) #7
  br label %altr_spi_readl.exit

altr_spi_readl.exit:                              ; preds = %do.end.i27, %altr_spi_writel.exit20.altr_spi_readl.exit_crit_edge
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %and = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %altr_spi_readl.exit.if.end_crit_edge, label %if.then

altr_spi_readl.exit.if.end_crit_edge:             ; preds = %altr_spi_readl.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %altr_spi_readl.exit
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %28 = ptrtoint ptr %regoff.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %regoff.i, align 4
  %call.i30 = call i32 @regmap_read(ptr noundef %27, i32 noundef %29, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool.not.i31 = icmp eq i32 %call.i30, 0
  br i1 %tobool.not.i31, label %if.then.if.end_crit_edge, label %do.end.i33

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end.i33:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i32 = getelementptr inbounds %struct.altera_spi, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %dev.i32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i32, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef %call.i30) #7
  br label %if.end

if.end:                                           ; preds = %do.end.i33, %if.then.if.end_crit_edge, %altr_spi_readl.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_spi_txrx(ptr noundef %master, ptr nocapture noundef readnone %spi, ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #4
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !29
  %3 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %t, align 4
  %tx = getelementptr inbounds %struct.altera_spi, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %tx, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %6 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_buf, align 4
  %rx = getelementptr inbounds %struct.altera_spi, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %rx, align 4
  %count = getelementptr inbounds %struct.altera_spi, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %count, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %10 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bits_per_word, align 1
  %conv = zext i8 %11 to i32
  %sub = add nuw nsw i32 %conv, 7
  %div40 = lshr i32 %sub, 3
  %bytes_per_word = getelementptr inbounds %struct.altera_spi, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %bytes_per_word to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div40, ptr %bytes_per_word, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %div2 = udiv i32 %14, %div40
  %len3 = getelementptr inbounds %struct.altera_spi, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %len3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div2, ptr %len3, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp = icmp sgt i32 %17, -1
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 4
  %20 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp948 = icmp slt i32 %19, %21
  br i1 %cmp948, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %regmap.i41 = getelementptr inbounds %struct.altera_spi, ptr %1, i32 0, i32 7
  %regoff.i42 = getelementptr inbounds %struct.altera_spi, ptr %1, i32 0, i32 8
  %dev.i46 = getelementptr inbounds %struct.altera_spi, ptr %1, i32 0, i32 9
  br label %while.body

if.then:                                          ; preds = %entry
  %imr = getelementptr inbounds %struct.altera_spi, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %imr, align 4
  %or = or i32 %23, 128
  store i32 %or, ptr %imr, align 4
  %regmap.i = getelementptr inbounds %struct.altera_spi, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %regoff.i = getelementptr inbounds %struct.altera_spi, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %regoff.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %regoff.i, align 4
  %add.i = add i32 %27, 12
  %call.i = tail call i32 @regmap_write(ptr noundef %25, i32 noundef %add.i, i32 noundef %or) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.altr_spi_writel.exit_crit_edge, label %do.end.i

if.then.altr_spi_writel.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %altr_spi_writel.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.altera_spi, ptr %1, i32 0, i32 9
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str, i32 noundef 12, i32 noundef %or, i32 noundef %call.i) #7
  br label %altr_spi_writel.exit

altr_spi_writel.exit:                             ; preds = %do.end.i, %if.then.altr_spi_writel.exit_crit_edge
  tail call fastcc void @altera_spi_tx_word(ptr noundef %1)
  br label %cleanup

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  call fastcc void @altera_spi_tx_word(ptr noundef %1)
  br label %for.cond

for.cond:                                         ; preds = %do.end, %while.body
  %30 = ptrtoint ptr %regmap.i41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i41, align 4
  %32 = ptrtoint ptr %regoff.i42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %regoff.i42, align 4
  %add.i43 = add i32 %33, 8
  %call.i44 = call i32 @regmap_read(ptr noundef %31, i32 noundef %add.i43, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i45 = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i45, label %for.cond.altr_spi_readl.exit_crit_edge, label %do.end.i47

for.cond.altr_spi_readl.exit_crit_edge:           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %altr_spi_readl.exit

do.end.i47:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %dev.i46 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i46, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.5, i32 noundef 8, i32 noundef %call.i44) #7
  br label %altr_spi_readl.exit

altr_spi_readl.exit:                              ; preds = %do.end.i47, %for.cond.altr_spi_readl.exit_crit_edge
  %36 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val, align 4
  %and = and i32 %37, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %for.end

do.end:                                           ; preds = %altr_spi_readl.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !30
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !31
  br label %for.cond

for.end:                                          ; preds = %altr_spi_readl.exit
  call fastcc void @altera_spi_rx_word(ptr noundef %1)
  %38 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count, align 4
  %40 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len3, align 4
  %cmp9 = icmp slt i32 %39, %41
  br i1 %cmp9, label %for.end.while.body_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %for.end.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  call void @spi_finalize_current_transfer(ptr noundef %master) #4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %altr_spi_writel.exit
  %retval.0 = phi i32 [ 1, %altr_spi_writel.exit ], [ 0, %while.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_spi_set_cs(ptr nocapture noundef readonly %spi, i1 noundef zeroext %is_high) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  br i1 %is_high, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %imr = getelementptr inbounds %struct.altera_spi, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %imr, align 4
  %and = and i32 %5, -1025
  store i32 %and, ptr %imr, align 4
  %regmap.i = getelementptr inbounds %struct.altera_spi, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %regoff.i = getelementptr inbounds %struct.altera_spi, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %regoff.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %regoff.i, align 4
  %add.i = add i32 %9, 12
  %call.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %add.i, i32 noundef %and) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.altr_spi_writel.exit_crit_edge, label %do.end.i

if.then.altr_spi_writel.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %altr_spi_writel.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.altera_spi, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str, i32 noundef 12, i32 noundef %and, i32 noundef %call.i) #7
  br label %altr_spi_writel.exit

altr_spi_writel.exit:                             ; preds = %do.end.i, %if.then.altr_spi_writel.exit_crit_edge
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %14 = ptrtoint ptr %regoff.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %regoff.i, align 4
  %add.i18 = add i32 %15, 20
  %call.i19 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %add.i18, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool.not.i20 = icmp eq i32 %call.i19, 0
  br i1 %tobool.not.i20, label %altr_spi_writel.exit.if.end_crit_edge, label %do.end.i22

altr_spi_writel.exit.if.end_crit_edge:            ; preds = %altr_spi_writel.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end.i22:                                       ; preds = %altr_spi_writel.exit
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i21 = getelementptr inbounds %struct.altera_spi, ptr %3, i32 0, i32 9
  %16 = ptrtoint ptr %dev.i21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str, i32 noundef 20, i32 noundef 0, i32 noundef %call.i19) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %18 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %19 to i32
  %shl = shl nuw i32 1, %conv
  %regmap.i24 = getelementptr inbounds %struct.altera_spi, ptr %3, i32 0, i32 7
  %20 = ptrtoint ptr %regmap.i24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i24, align 4
  %regoff.i25 = getelementptr inbounds %struct.altera_spi, ptr %3, i32 0, i32 8
  %22 = ptrtoint ptr %regoff.i25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %regoff.i25, align 4
  %add.i26 = add i32 %23, 20
  %call.i27 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef %add.i26, i32 noundef %shl) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool.not.i28 = icmp eq i32 %call.i27, 0
  br i1 %tobool.not.i28, label %if.else.altr_spi_writel.exit31_crit_edge, label %do.end.i30

if.else.altr_spi_writel.exit31_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %altr_spi_writel.exit31

do.end.i30:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i29 = getelementptr inbounds %struct.altera_spi, ptr %3, i32 0, i32 9
  %24 = ptrtoint ptr %dev.i29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str, i32 noundef 20, i32 noundef %shl, i32 noundef %call.i27) #7
  br label %altr_spi_writel.exit31

altr_spi_writel.exit31:                           ; preds = %do.end.i30, %if.else.altr_spi_writel.exit31_crit_edge
  %imr5 = getelementptr inbounds %struct.altera_spi, ptr %3, i32 0, i32 4
  %26 = ptrtoint ptr %imr5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %imr5, align 4
  %or = or i32 %27, 1024
  store i32 %or, ptr %imr5, align 4
  %28 = ptrtoint ptr %regmap.i24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i24, align 4
  %30 = ptrtoint ptr %regoff.i25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %regoff.i25, align 4
  %add.i34 = add i32 %31, 12
  %call.i35 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef %add.i34, i32 noundef %or) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool.not.i36 = icmp eq i32 %call.i35, 0
  br i1 %tobool.not.i36, label %altr_spi_writel.exit31.if.end_crit_edge, label %do.end.i38

altr_spi_writel.exit31.if.end_crit_edge:          ; preds = %altr_spi_writel.exit31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end.i38:                                       ; preds = %altr_spi_writel.exit31
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i37 = getelementptr inbounds %struct.altera_spi, ptr %3, i32 0, i32 9
  %32 = ptrtoint ptr %dev.i37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i37, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str, i32 noundef 12, i32 noundef %or, i32 noundef %call.i35) #7
  br label %if.end

if.end:                                           ; preds = %do.end.i38, %altr_spi_writel.exit31.if.end_crit_edge, %do.end.i22, %altr_spi_writel.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__ksymtab_altera_spi_irq, !1, !"__ksymtab_altera_spi_irq", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-altera-core.c", i32 202, i32 1}
!2 = !{ptr @__ksymtab_altera_spi_init_master, !3, !"__ksymtab_altera_spi_init_master", i1 false, i1 false}
!3 = !{!"../drivers/spi/spi-altera-core.c", i32 220, i32 1}
!4 = !{ptr @__UNIQUE_ID_file234, !5, !"__UNIQUE_ID_file234", i1 false, i1 false}
!5 = !{!"../drivers/spi/spi-altera-core.c", i32 222, i32 1}
!6 = !{ptr @__UNIQUE_ID_license235, !5, !"__UNIQUE_ID_license235", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-altera-core.c", i32 50, i32 3}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @altr_spi_writel._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @altr_spi_writel._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/spi/spi-altera-core.c", i32 63, i32 3}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @altr_spi_readl._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @altr_spi_readl._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"auto-init"}
!30 = !{i64 2154358823}
!31 = !{i64 2154358665}
