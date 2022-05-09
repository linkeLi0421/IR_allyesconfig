; ModuleID = '/llk/IR_all_yes/drivers/base/regmap/regmap-spi-avmm.c_pt.bc'
source_filename = "../drivers/base/regmap/regmap-spi-avmm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__regmap_init_spi_avmm\22, \22a\22\09"
module asm "\09.weak\09__crc___regmap_init_spi_avmm\09\09\09\09"
module asm "\09.long\09__crc___regmap_init_spi_avmm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___regmap_init_spi_avmm:\09\09\09\09\09"
module asm "\09.asciz \09\22__regmap_init_spi_avmm\22\09\09\09\09\09"
module asm "__kstrtabns___regmap_init_spi_avmm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__devm_regmap_init_spi_avmm\22, \22a\22\09"
module asm "\09.weak\09__crc___devm_regmap_init_spi_avmm\09\09\09\09"
module asm "\09.long\09__crc___devm_regmap_init_spi_avmm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_regmap_init_spi_avmm:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_regmap_init_spi_avmm\22\09\09\09\09\09"
module asm "__kstrtabns___devm_regmap_init_spi_avmm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_avmm_bridge = type { ptr, i8, i32, i32, [1024 x i8], [28 x i8], ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@regmap_spi_avmm_bus = internal constant { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr @regmap_spi_avmm_write, ptr @regmap_spi_avmm_gather_write, ptr null, ptr null, ptr null, ptr @regmap_spi_avmm_read, ptr null, ptr @spi_avmm_bridge_ctx_free, ptr null, i8 0, i32 3, i32 3, i32 1024, i32 4, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab___regmap_init_spi_avmm = external dso_local constant [0 x i8], align 1
@__kstrtabns___regmap_init_spi_avmm = external dso_local constant [0 x i8], align 1
@__ksymtab___regmap_init_spi_avmm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__regmap_init_spi_avmm to i32), ptr @__kstrtab___regmap_init_spi_avmm, ptr @__kstrtabns___regmap_init_spi_avmm }, section "___ksymtab_gpl+__regmap_init_spi_avmm", align 4
@__kstrtab___devm_regmap_init_spi_avmm = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_regmap_init_spi_avmm = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_regmap_init_spi_avmm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_regmap_init_spi_avmm to i32), ptr @__kstrtab___devm_regmap_init_spi_avmm, ptr @__kstrtabns___devm_regmap_init_spi_avmm }, section "___ksymtab_gpl+__devm_regmap_init_spi_avmm", align 4
@__UNIQUE_ID_file230 = internal constant [57 x i8] c"regmap_spi_avmm.file=drivers/base/regmap/regmap-spi-avmm\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [31 x i8] c"regmap_spi_avmm.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@br_do_rx_and_pkt_phy_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 405, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s channel num != 0\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"br_do_rx_and_pkt_phy_parse\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/base/regmap/regmap-spi-avmm.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@br_do_rx_and_pkt_phy_parse._entry_ptr = internal global ptr @br_do_rx_and_pkt_phy_parse._entry, section ".printk_index", align 4
@br_do_rx_and_pkt_phy_parse._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 497, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s transfer buffer is full but rx doesn't end\0A\00", [49 x i8] zeroinitializer }, align 32
@br_do_rx_and_pkt_phy_parse._entry_ptr.7 = internal global ptr @br_do_rx_and_pkt_phy_parse._entry.5, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 74, i64 77, i64 122, i64 123, i64 124, i64 125]
@__sancov_gen_cov_switch_values.8 = internal global [7 x i64] [i64 5, i64 8, i64 77, i64 122, i64 123, i64 124, i64 125]
@___asan_gen_.9 = private unnamed_addr constant [20 x i8] c"regmap_spi_avmm_bus\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 662, i32 32 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 404, i32 6 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [41 x i8] c"../drivers/base/regmap/regmap-spi-avmm.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 496, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__ksymtab___devm_regmap_init_spi_avmm, ptr @__ksymtab___regmap_init_spi_avmm, ptr @br_do_rx_and_pkt_phy_parse._entry, ptr @br_do_rx_and_pkt_phy_parse._entry.5, ptr @br_do_rx_and_pkt_phy_parse._entry_ptr, ptr @br_do_rx_and_pkt_phy_parse._entry_ptr.7, ptr @regmap_spi_avmm_bus, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_spi_avmm_bus to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_do_rx_and_pkt_phy_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_do_rx_and_pkt_phy_parse._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__regmap_init_spi_avmm(ptr noundef %spi, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %spi, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %mode.i, align 8
  %bits_per_word.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %1 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 32, ptr %bits_per_word.i, align 1
  %call1.i = tail call i32 @spi_setup(ptr noundef nonnull %spi) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then3.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then3.i:                                       ; preds = %if.end.i
  %2 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %bits_per_word.i, align 1
  %call5.i = tail call i32 @spi_setup(ptr noundef nonnull %spi) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then3.i.if.end10.i_crit_edge, label %if.then3.i.cleanup_crit_edge

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i.if.end10.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then3.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1072) #11
  %tobool12.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool12.not.i, label %if.end10.i.cleanup_crit_edge, label %if.end15.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15.i:                                       ; preds = %if.end10.i
  %4 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spi, ptr %call7.i.i.i, align 8
  %5 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bits_per_word.i, align 1
  %7 = lshr i8 %6, 3
  %word_len.i = getelementptr inbounds %struct.spi_avmm_bridge, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %word_len.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %word_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %cmp.i = icmp eq i8 %7, 4
  br i1 %cmp.i, label %if.then22.i, label %if.end15.i.spi_avmm_bridge_ctx_gen.exit_crit_edge

if.end15.i.spi_avmm_bridge_ctx_gen.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_avmm_bridge_ctx_gen.exit

if.then22.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %swap_words.i = getelementptr inbounds %struct.spi_avmm_bridge, ptr %call7.i.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %swap_words.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @br_swap_words_32, ptr %swap_words.i, align 4
  br label %spi_avmm_bridge_ctx_gen.exit

spi_avmm_bridge_ctx_gen.exit:                     ; preds = %if.then22.i, %if.end15.i.spi_avmm_bridge_ctx_gen.exit_crit_edge
  %cmp.i15 = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i15, label %spi_avmm_bridge_ctx_gen.exit.cleanup_crit_edge, label %if.end

spi_avmm_bridge_ctx_gen.exit.cleanup_crit_edge:   ; preds = %spi_avmm_bridge_ctx_gen.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %spi_avmm_bridge_ctx_gen.exit
  %call3 = tail call ptr @__regmap_init(ptr noundef nonnull %spi, ptr noundef nonnull @regmap_spi_avmm_bus, ptr noundef nonnull %call7.i.i.i, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #8
  %cmp.i16 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i16, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %spi_avmm_bridge_ctx_gen.exit.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.then3.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.then5 ], [ %call3, %if.end.cleanup_crit_edge ], [ %call7.i.i.i, %spi_avmm_bridge_ctx_gen.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end10.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then3.i.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_avmm_bridge_ctx_free(ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %context) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__devm_regmap_init_spi_avmm(ptr noundef %spi, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %spi, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %mode.i, align 8
  %bits_per_word.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %1 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 32, ptr %bits_per_word.i, align 1
  %call1.i = tail call i32 @spi_setup(ptr noundef nonnull %spi) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then3.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then3.i:                                       ; preds = %if.end.i
  %2 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %bits_per_word.i, align 1
  %call5.i = tail call i32 @spi_setup(ptr noundef nonnull %spi) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then3.i.if.end10.i_crit_edge, label %if.then3.i.cleanup_crit_edge

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i.if.end10.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then3.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1072) #11
  %tobool12.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool12.not.i, label %if.end10.i.cleanup_crit_edge, label %if.end15.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15.i:                                       ; preds = %if.end10.i
  %4 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spi, ptr %call7.i.i.i, align 8
  %5 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bits_per_word.i, align 1
  %7 = lshr i8 %6, 3
  %word_len.i = getelementptr inbounds %struct.spi_avmm_bridge, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %word_len.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %word_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %cmp.i = icmp eq i8 %7, 4
  br i1 %cmp.i, label %if.then22.i, label %if.end15.i.spi_avmm_bridge_ctx_gen.exit_crit_edge

if.end15.i.spi_avmm_bridge_ctx_gen.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_avmm_bridge_ctx_gen.exit

if.then22.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %swap_words.i = getelementptr inbounds %struct.spi_avmm_bridge, ptr %call7.i.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %swap_words.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @br_swap_words_32, ptr %swap_words.i, align 4
  br label %spi_avmm_bridge_ctx_gen.exit

spi_avmm_bridge_ctx_gen.exit:                     ; preds = %if.then22.i, %if.end15.i.spi_avmm_bridge_ctx_gen.exit_crit_edge
  %cmp.i15 = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i15, label %spi_avmm_bridge_ctx_gen.exit.cleanup_crit_edge, label %if.end

spi_avmm_bridge_ctx_gen.exit.cleanup_crit_edge:   ; preds = %spi_avmm_bridge_ctx_gen.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %spi_avmm_bridge_ctx_gen.exit
  %call3 = tail call ptr @__devm_regmap_init(ptr noundef nonnull %spi, ptr noundef nonnull @regmap_spi_avmm_bus, ptr noundef nonnull %call7.i.i.i, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #8
  %cmp.i16 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i16, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %spi_avmm_bridge_ctx_gen.exit.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.then3.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.then5 ], [ %call3, %if.end.cleanup_crit_edge ], [ %call7.i.i.i, %spi_avmm_bridge_ctx_gen.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end10.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then3.i.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @br_swap_words_32(ptr nocapture noundef %buf, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %tobool.not4 = icmp ult i32 %len, 4
  br i1 %tobool.not4, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %div3 = lshr i32 %len, 2
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %count.06 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %div3, %while.body.preheader ]
  %p.05 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %buf, %while.body.preheader ]
  %dec = add nsw i32 %count.06, -1
  %0 = ptrtoint ptr %p.05 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p.05, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  %3 = ptrtoint ptr %p.05 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %p.05, align 4
  %incdec.ptr = getelementptr i32, ptr %p.05, i32 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_spi_avmm_write(ptr noundef %context, ptr nocapture noundef %data, i32 noundef %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %bytes)
  %cmp = icmp ugt i32 %bytes, 7
  %and.i = and i32 %bytes, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 0
  %or.cond = and i1 %cmp, %cmp1.i
  br i1 %or.cond, label %if.end3.i, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %bytes, -4
  %add.ptr = getelementptr i8, ptr %data, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %div5.i = lshr i32 %sub, 2
  %call.i = tail call fastcc i32 @do_reg_access(ptr noundef %context, i1 noundef zeroext false, i32 noundef %1, ptr noundef %add.ptr, i32 noundef %div5.i) #8
  br label %return

return:                                           ; preds = %if.end3.i, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %call.i, %if.end3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_spi_avmm_gather_write(ptr noundef %context, ptr nocapture noundef readonly %reg_buf, i32 noundef %reg_len, ptr nocapture noundef %val_buf, i32 noundef %val_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %reg_len)
  %cmp.not = icmp eq i32 %reg_len, 4
  %and = and i32 %val_len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1 = icmp eq i32 %and, 0
  %or.cond = and i1 %cmp.not, %cmp1
  br i1 %or.cond, label %if.end3, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %reg_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_buf, align 4
  %div5 = lshr i32 %val_len, 2
  %call = tail call fastcc i32 @do_reg_access(ptr noundef %context, i1 noundef zeroext false, i32 noundef %1, ptr noundef %val_buf, i32 noundef %div5)
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_spi_avmm_read(ptr noundef %context, ptr nocapture noundef readonly %reg_buf, i32 noundef %reg_len, ptr nocapture noundef %val_buf, i32 noundef %val_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %reg_len)
  %cmp.not = icmp eq i32 %reg_len, 4
  %and = and i32 %val_len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1 = icmp eq i32 %and, 0
  %or.cond = and i1 %cmp.not, %cmp1
  br i1 %or.cond, label %if.end3, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %reg_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_buf, align 4
  %div5 = lshr i32 %val_len, 2
  %call = tail call fastcc i32 @do_reg_access(ptr noundef %context, i1 noundef zeroext true, i32 noundef %1, ptr noundef %val_buf, i32 noundef %div5)
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_reg_access(ptr noundef %context, i1 noundef zeroext %is_read, i32 noundef %reg, ptr nocapture noundef %value, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i48 = alloca %struct.spi_message, align 4
  %t.i.i49 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_len = getelementptr inbounds %struct.spi_avmm_bridge, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %trans_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %trans_len, align 4
  %phy_len = getelementptr inbounds %struct.spi_avmm_bridge, ptr %context, i32 0, i32 3
  %1 = ptrtoint ptr %phy_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %phy_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp.i = icmp eq i32 %count, 1
  %..i = select i1 %cmp.i, i8 16, i8 20
  %.42.i = select i1 %cmp.i, i8 0, i8 4
  %code.0.i = select i1 %is_read, i8 %..i, i8 %.42.i
  %trans_buf.i = getelementptr inbounds %struct.spi_avmm_bridge, ptr %context, i32 0, i32 4
  %2 = ptrtoint ptr %trans_buf.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %code.0.i, ptr %trans_buf.i, align 1
  %rsvd.i = getelementptr inbounds %struct.spi_avmm_bridge, ptr %context, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %rsvd.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %rsvd.i, align 1
  %count.tr.i = trunc i32 %count to i16
  %conv10.i = shl i16 %count.tr.i, 2
  %size.i = getelementptr inbounds %struct.spi_avmm_bridge, ptr %context, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %conv10.i, ptr %size.i, align 1
  %addr.i = getelementptr inbounds %struct.spi_avmm_bridge, ptr %context, i32 0, i32 4, i32 4
  %5 = ptrtoint ptr %addr.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %reg, ptr %addr.i, align 1
  br i1 %is_read, label %entry.if.end_crit_edge, label %if.then12.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then12.i:                                      ; preds = %entry
  %mul13.i = shl i32 %count, 2
  %add.i = add i32 %mul13.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add.i)
  %cmp14.i = icmp ugt i32 %add.i, 1024
  br i1 %cmp14.i, label %if.then12.i.cleanup_crit_edge, label %if.end17.i

if.then12.i.cleanup_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp2043.not.i = icmp eq i32 %count, 0
  br i1 %cmp2043.not.i, label %if.end17.i.if.end_crit_edge, label %for.body.preheader.i

if.end17.i.if.end_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.preheader.i:                             ; preds = %if.end17.i
  %add.ptr.i = getelementptr %struct.spi_avmm_bridge, ptr %context, i32 0, i32 4, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.046.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %data.045.i = phi ptr [ %incdec.ptr22.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i, %for.body.preheader.i ]
  %wr_val.addr.044.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %value, %for.body.preheader.i ]
  %incdec.ptr.i = getelementptr i32, ptr %wr_val.addr.044.i, i32 1
  %6 = ptrtoint ptr %wr_val.addr.044.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wr_val.addr.044.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %incdec.ptr22.i = getelementptr i32, ptr %data.045.i, i32 1
  %9 = ptrtoint ptr %data.045.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %data.045.i, align 4
  %inc.i = add nuw i32 %i.046.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %count
  br i1 %exitcond.not.i, label %for.body.i.if.end_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.end17.i.if.end_crit_edge, %entry.if.end_crit_edge
  %trans_len.0.i = phi i32 [ 8, %entry.if.end_crit_edge ], [ %add.i, %if.end17.i.if.end_crit_edge ], [ %add.i, %for.body.i.if.end_crit_edge ]
  %10 = ptrtoint ptr %trans_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %trans_len.0.i, ptr %trans_len, align 4
  %add.ptr.i38 = getelementptr i8, ptr %trans_buf.i, i32 %trans_len.0.i
  %phy_buf.i = getelementptr inbounds %struct.spi_avmm_bridge, ptr %context, i32 0, i32 5
  %add.ptr2.i = getelementptr %struct.spi_avmm_bridge, ptr %context, i32 0, i32 6
  %incdec.ptr.i39 = getelementptr %struct.spi_avmm_bridge, ptr %context, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %phy_buf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 122, ptr %phy_buf.i, align 1
  %incdec.ptr3.i = getelementptr %struct.spi_avmm_bridge, ptr %context, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %incdec.ptr.i39 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 124, ptr %incdec.ptr.i39, align 1
  %incdec.ptr4.i = getelementptr %struct.spi_avmm_bridge, ptr %context, i32 0, i32 5, i32 3
  %13 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %incdec.ptr3.i, align 1
  %cmp103.i = icmp ult ptr %incdec.ptr4.i, %add.ptr2.i
  %cmp5104.i = icmp ult ptr %trans_buf.i, %add.ptr.i38
  %or.cond105.i = and i1 %cmp103.i, %cmp5104.i
  br i1 %or.cond105.i, label %for.body.lr.ph.i, label %if.end.for.end.i_crit_edge

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i38, i32 -1
  br label %for.body.i40

for.body.i40:                                     ; preds = %for.inc.i.for.body.i40_crit_edge, %for.body.lr.ph.i
  %need_esc.0.off0110.i = phi i1 [ false, %for.body.lr.ph.i ], [ %need_esc.1.off0.i, %for.inc.i.for.body.i40_crit_edge ]
  %pb_eop.0109.i = phi ptr [ null, %for.body.lr.ph.i ], [ %pb_eop.1.i, %for.inc.i.for.body.i40_crit_edge ]
  %pb.0107.i = phi ptr [ %incdec.ptr4.i, %for.body.lr.ph.i ], [ %incdec.ptr17.i, %for.inc.i.for.body.i40_crit_edge ]
  %tb.0106.i = phi ptr [ %trans_buf.i, %for.body.lr.ph.i ], [ %tb.1.i, %for.inc.i.for.body.i40_crit_edge ]
  br i1 %need_esc.0.off0110.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr6.i = getelementptr i8, ptr %tb.0106.i, i32 1
  %14 = ptrtoint ptr %tb.0106.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tb.0106.i, align 1
  %16 = xor i8 %15, 32
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i40
  %cmp9.i = icmp eq ptr %tb.0106.i, %add.ptr8.i
  %tobool11.not.i = icmp eq ptr %pb_eop.0109.i, null
  %or.cond102.i = select i1 %cmp9.i, i1 %tobool11.not.i, i1 false
  br i1 %or.cond102.i, label %if.end.i.for.inc.i_crit_edge, label %if.end13.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.end.i
  %17 = ptrtoint ptr %tb.0106.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tb.0106.i, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i8 %18, label %sw.default.i [
    i8 122, label %if.end13.i.for.inc.i_crit_edge
    i8 123, label %if.end13.i.for.inc.i_crit_edge104
    i8 124, label %if.end13.i.for.inc.i_crit_edge105
    i8 125, label %if.end13.i.for.inc.i_crit_edge106
    i8 74, label %if.end13.i.sw.bb15.i_crit_edge
    i8 77, label %if.end13.i.sw.bb15.i_crit_edge107
  ]

if.end13.i.sw.bb15.i_crit_edge107:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb15.i

if.end13.i.sw.bb15.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb15.i

if.end13.i.for.inc.i_crit_edge106:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end13.i.for.inc.i_crit_edge105:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end13.i.for.inc.i_crit_edge104:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

sw.bb15.i:                                        ; preds = %if.end13.i.sw.bb15.i_crit_edge, %if.end13.i.sw.bb15.i_crit_edge107
  br label %for.inc.i

sw.default.i:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr16.i = getelementptr i8, ptr %tb.0106.i, i32 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.default.i, %sw.bb15.i, %if.end13.i.for.inc.i_crit_edge, %if.end13.i.for.inc.i_crit_edge104, %if.end13.i.for.inc.i_crit_edge105, %if.end13.i.for.inc.i_crit_edge106, %if.end.i.for.inc.i_crit_edge, %if.then.i
  %.sink.i = phi i8 [ 77, %sw.bb15.i ], [ %18, %sw.default.i ], [ %16, %if.then.i ], [ 123, %if.end.i.for.inc.i_crit_edge ], [ 125, %if.end13.i.for.inc.i_crit_edge ], [ 125, %if.end13.i.for.inc.i_crit_edge104 ], [ 125, %if.end13.i.for.inc.i_crit_edge105 ], [ 125, %if.end13.i.for.inc.i_crit_edge106 ]
  %tb.1.i = phi ptr [ %tb.0106.i, %sw.bb15.i ], [ %incdec.ptr16.i, %sw.default.i ], [ %incdec.ptr6.i, %if.then.i ], [ %add.ptr8.i, %if.end.i.for.inc.i_crit_edge ], [ %tb.0106.i, %if.end13.i.for.inc.i_crit_edge ], [ %tb.0106.i, %if.end13.i.for.inc.i_crit_edge104 ], [ %tb.0106.i, %if.end13.i.for.inc.i_crit_edge105 ], [ %tb.0106.i, %if.end13.i.for.inc.i_crit_edge106 ]
  %pb_eop.1.i = phi ptr [ %pb_eop.0109.i, %sw.bb15.i ], [ %pb_eop.0109.i, %sw.default.i ], [ %pb_eop.0109.i, %if.then.i ], [ %pb.0107.i, %if.end.i.for.inc.i_crit_edge ], [ %pb_eop.0109.i, %if.end13.i.for.inc.i_crit_edge ], [ %pb_eop.0109.i, %if.end13.i.for.inc.i_crit_edge104 ], [ %pb_eop.0109.i, %if.end13.i.for.inc.i_crit_edge105 ], [ %pb_eop.0109.i, %if.end13.i.for.inc.i_crit_edge106 ]
  %need_esc.1.off0.i = phi i1 [ true, %sw.bb15.i ], [ false, %sw.default.i ], [ false, %if.then.i ], [ false, %if.end.i.for.inc.i_crit_edge ], [ true, %if.end13.i.for.inc.i_crit_edge ], [ true, %if.end13.i.for.inc.i_crit_edge104 ], [ true, %if.end13.i.for.inc.i_crit_edge105 ], [ true, %if.end13.i.for.inc.i_crit_edge106 ]
  %20 = ptrtoint ptr %pb.0107.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink.i, ptr %pb.0107.i, align 1
  %incdec.ptr17.i = getelementptr i8, ptr %pb.0107.i, i32 1
  %cmp.i41 = icmp ult ptr %incdec.ptr17.i, %add.ptr2.i
  %cmp5.i = icmp ult ptr %tb.1.i, %add.ptr.i38
  %or.cond.i = select i1 %cmp.i41, i1 %cmp5.i, i1 false
  br i1 %or.cond.i, label %for.inc.i.for.body.i40_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i.for.body.i40_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i40

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %pb.0.lcssa.i = phi ptr [ %incdec.ptr4.i, %if.end.for.end.i_crit_edge ], [ %incdec.ptr17.i, %for.inc.i.for.end.i_crit_edge ]
  %pb_eop.0.lcssa.i = phi ptr [ null, %if.end.for.end.i_crit_edge ], [ %pb_eop.1.i, %for.inc.i.for.end.i_crit_edge ]
  %cmp5.lcssa.i = phi i1 [ %cmp5104.i, %if.end.for.end.i_crit_edge ], [ %cmp5.i, %for.inc.i.for.end.i_crit_edge ]
  br i1 %cmp5.lcssa.i, label %for.end.i.cleanup_crit_edge, label %if.end21.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21.i:                                       ; preds = %for.end.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %pb.0.lcssa.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %phy_buf.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %21 = ptrtoint ptr %phy_len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub.ptr.sub.i, ptr %phy_len, align 4
  %word_len.i = getelementptr inbounds %struct.spi_avmm_bridge, ptr %context, i32 0, i32 1
  %22 = ptrtoint ptr %word_len.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %word_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp25.i = icmp eq i8 %23, 1
  br i1 %cmp25.i, label %if.end21.i.if.end5_crit_edge, label %if.end28.i

if.end21.i.if.end5_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end28.i:                                       ; preds = %if.end21.i
  %conv24.i = zext i8 %23 to i32
  %sub.i = add i32 %sub.ptr.sub.i, -1
  %add.i42 = add i32 %sub.i, %conv24.i
  %neg.i = sub nsw i32 0, %conv24.i
  %and.i = and i32 %add.i42, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %and.i)
  %cmp35.i = icmp ugt i32 %and.i, 28
  br i1 %cmp35.i, label %if.end28.i.cleanup_crit_edge, label %if.end38.i

if.end28.i.cleanup_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %sub.ptr.sub.i)
  %cmp40.i = icmp eq i32 %and.i, %sub.ptr.sub.i
  br i1 %cmp40.i, label %if.end38.i.if.end5_crit_edge, label %if.end43.i

if.end38.i.if.end5_crit_edge:                     ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end43.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.ptr.rhs.cast45.i = ptrtoint ptr %pb_eop.0.lcssa.i to i32
  %sub.ptr.sub46.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast45.i
  %sub48.i = sub i32 %and.i, %sub.ptr.sub46.i
  %arrayidx.i = getelementptr %struct.spi_avmm_bridge, ptr %context, i32 0, i32 5, i32 %sub48.i
  %24 = call ptr @memmove(ptr %arrayidx.i, ptr %pb_eop.0.lcssa.i, i32 %sub.ptr.sub46.i)
  %25 = ptrtoint ptr %phy_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phy_len, align 4
  %sub50.i = sub i32 %and.i, %26
  %27 = call ptr @memset(ptr %pb_eop.0.lcssa.i, i32 74, i32 %sub50.i)
  store i32 %and.i, ptr %phy_len, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end43.i, %if.end38.i.if.end5_crit_edge, %if.end21.i.if.end5_crit_edge
  %28 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr2.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end5.if.end.i47_crit_edge, label %if.then.i46

if.end5.if.end.i47_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i47

if.then.i46:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %phy_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %phy_len, align 4
  tail call void %29(ptr noundef %phy_buf.i, i32 noundef %31) #8
  br label %if.end.i47

if.end.i47:                                       ; preds = %if.then.i46, %if.end5.if.end.i47_crit_edge
  %32 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %context, align 4
  %34 = ptrtoint ptr %phy_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %phy_len, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %36 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %37 = call ptr @memset(ptr %36, i32 0, i32 92)
  %38 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %phy_buf.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %35, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %40 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %41 = call ptr @memset(ptr %40, i32 0, i32 40)
  %42 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %44 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %45 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.i47.br_do_tx.exit_crit_edge

if.end.i47.br_do_tx.exit_crit_edge:               ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #10
  br label %br_do_tx.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %47 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %49 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %br_do_tx.exit

br_do_tx.exit:                                    ; preds = %if.end.i.i.i.i.i.i.i, %if.end.i47.br_do_tx.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %33, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool7.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool7.not, label %if.end9, label %br_do_tx.exit.cleanup_crit_edge

br_do_tx.exit.cleanup_crit_edge:                  ; preds = %br_do_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %br_do_tx.exit
  %50 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %context, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %cmp194.not.i = icmp eq ptr %phy_buf.i, null
  br i1 %cmp194.not.i, label %if.end9.do.end87.i_crit_edge, label %while.body.lr.ph.i

if.end9.do.end87.i_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end87.i

while.body.lr.ph.i:                               ; preds = %if.end9
  %add.i52 = add i32 %52, 20
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i49, i32 0, i32 1
  %len1.i.i54 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i49, i32 0, i32 2
  %53 = getelementptr inbounds i8, ptr %msg.i.i.i48, i32 8
  %prev.i.i.i.i.i.i.i55 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i48, i32 0, i32 1
  %resources.i.i.i.i.i.i56 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i48, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i57 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i48, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i58 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i49, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i59 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i49, i32 0, i32 18, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end84.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %poll_timeout.0200.i = phi i32 [ %add.i52, %while.body.lr.ph.i ], [ %poll_timeout.1.i, %if.end84.i.while.body.i_crit_edge ]
  %tb.0199.i = phi ptr [ null, %while.body.lr.ph.i ], [ %tb.1.lcssa213.i, %if.end84.i.while.body.i_crit_edge ]
  %last_try.0.off0198.i = phi i1 [ false, %while.body.lr.ph.i ], [ %last_try.1.off0.i, %if.end84.i.while.body.i_crit_edge ]
  %esc_found.0.off0197.i = phi i1 [ false, %while.body.lr.ph.i ], [ %esc_found.1.off0.lcssa211.i, %if.end84.i.while.body.i_crit_edge ]
  %channel_found.0.off0196.i = phi i1 [ false, %while.body.lr.ph.i ], [ %channel_found.1.off0.lcssa209.i, %if.end84.i.while.body.i_crit_edge ]
  %eop_found.0.off0195.i = phi i1 [ false, %while.body.lr.ph.i ], [ %eop_found.1.off0.lcssa207.i, %if.end84.i.while.body.i_crit_edge ]
  %54 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %context, align 4
  %56 = ptrtoint ptr %word_len.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %word_len.i, align 4
  %conv.i = zext i8 %57 to i32
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i49) #8
  %58 = call ptr @memset(ptr %t.i.i49, i32 0, i32 96)
  %59 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %phy_buf.i, ptr %rx_buf.i.i, align 4
  %60 = ptrtoint ptr %len1.i.i54 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv.i, ptr %len1.i.i54, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i48) #8
  %61 = call ptr @memset(ptr %53, i32 0, i32 40)
  %62 = ptrtoint ptr %msg.i.i.i48 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %msg.i.i.i48, ptr %msg.i.i.i48, align 4
  %63 = ptrtoint ptr %prev.i.i.i.i.i.i.i55 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %msg.i.i.i48, ptr %prev.i.i.i.i.i.i.i55, align 4
  %64 = ptrtoint ptr %resources.i.i.i.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %resources.i.i.i.i.i.i56, ptr %resources.i.i.i.i.i.i56, align 4
  %65 = ptrtoint ptr %prev.i2.i.i.i.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %resources.i.i.i.i.i.i56, ptr %prev.i2.i.i.i.i.i.i57, align 4
  %call.i.i.i.i.i.i.i61 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i58, ptr noundef nonnull %msg.i.i.i48, ptr noundef nonnull %msg.i.i.i48) #8
  br i1 %call.i.i.i.i.i.i.i61, label %if.end.i.i.i.i.i.i.i62, label %while.body.i.spi_read.exit.i_crit_edge

while.body.i.spi_read.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_read.exit.i

if.end.i.i.i.i.i.i.i62:                           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %prev.i.i.i.i.i.i.i55 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %transfer_list.i.i.i.i.i58, ptr %prev.i.i.i.i.i.i.i55, align 4
  %67 = ptrtoint ptr %transfer_list.i.i.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %msg.i.i.i48, ptr %transfer_list.i.i.i.i.i58, align 4
  %68 = ptrtoint ptr %prev3.i.i.i.i.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %msg.i.i.i48, ptr %prev3.i.i.i.i.i.i.i59, align 4
  %69 = ptrtoint ptr %msg.i.i.i48 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %transfer_list.i.i.i.i.i58, ptr %msg.i.i.i48, align 4
  br label %spi_read.exit.i

spi_read.exit.i:                                  ; preds = %if.end.i.i.i.i.i.i.i62, %while.body.i.spi_read.exit.i_crit_edge
  %call.i.i.i63 = call i32 @spi_sync(ptr noundef %55, ptr noundef nonnull %msg.i.i.i48) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i48) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i49) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i63)
  %tobool.not.i64 = icmp eq i32 %call.i.i.i63, 0
  br i1 %tobool.not.i64, label %if.end.i65, label %spi_read.exit.i.cleanup_crit_edge

spi_read.exit.i.cleanup_crit_edge:                ; preds = %spi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i65:                                       ; preds = %spi_read.exit.i
  %70 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr2.i, align 4
  %tobool5.not.i = icmp eq ptr %71, null
  br i1 %tobool5.not.i, label %if.end.i65.if.end10.i_crit_edge, label %if.then6.i

if.end.i65.if.end10.i_crit_edge:                  ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %word_len.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %word_len.i, align 4
  %conv9.i = zext i8 %73 to i32
  call void %71(ptr noundef nonnull %phy_buf.i, i32 noundef %conv9.i) #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end.i65.if.end10.i_crit_edge
  %74 = ptrtoint ptr %word_len.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %word_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp13180.not.i = icmp eq i8 %75, 0
  br i1 %cmp13180.not.i, label %if.end10.i.if.else76.i_crit_edge, label %if.end10.i.for.body.i66_crit_edge

if.end10.i.for.body.i66_crit_edge:                ; preds = %if.end10.i
  br label %for.body.i66

if.end10.i.if.else76.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else76.i

for.body.i66:                                     ; preds = %for.inc.i74.for.body.i66_crit_edge, %if.end10.i.for.body.i66_crit_edge
  %i.0188.i = phi i32 [ %inc.i73, %for.inc.i74.for.body.i66_crit_edge ], [ 0, %if.end10.i.for.body.i66_crit_edge ]
  %tb.1187.i = phi ptr [ %tb.3.i, %for.inc.i74.for.body.i66_crit_edge ], [ %tb.0199.i, %if.end10.i.for.body.i66_crit_edge ]
  %valid_word.0.off0185.i = phi i1 [ %valid_word.1.off0.i, %for.inc.i74.for.body.i66_crit_edge ], [ false, %if.end10.i.for.body.i66_crit_edge ]
  %esc_found.1.off0184.i = phi i1 [ %esc_found.3.off0.i, %for.inc.i74.for.body.i66_crit_edge ], [ %esc_found.0.off0197.i, %if.end10.i.for.body.i66_crit_edge ]
  %channel_found.1.off0182.i = phi i1 [ %channel_found.2.off0.i, %for.inc.i74.for.body.i66_crit_edge ], [ %channel_found.0.off0196.i, %if.end10.i.for.body.i66_crit_edge ]
  %eop_found.1.off0181.i = phi i1 [ %eop_found.2.off0.i, %for.inc.i74.for.body.i66_crit_edge ], [ %eop_found.0.off0195.i, %if.end10.i.for.body.i66_crit_edge ]
  %tobool15.not.i = icmp eq ptr %tb.1187.i, null
  br i1 %tobool15.not.i, label %land.lhs.true.i, label %for.body.i66.if.end20.i_crit_edge

for.body.i66.if.end20.i_crit_edge:                ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %for.body.i66
  %arrayidx.i67 = getelementptr i8, ptr %phy_buf.i, i32 %i.0188.i
  %76 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.i67, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 122, i8 %77)
  %cmp17.not.i = icmp eq i8 %77, 122
  br i1 %cmp17.not.i, label %land.lhs.true.i.if.end20.i_crit_edge, label %land.lhs.true.i.for.inc.i74_crit_edge

land.lhs.true.i.for.inc.i74_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i74

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.end20.i:                                       ; preds = %land.lhs.true.i.if.end20.i_crit_edge, %for.body.i66.if.end20.i_crit_edge
  %arrayidx21.i = getelementptr i8, ptr %phy_buf.i, i32 %i.0188.i
  %78 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx21.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 74, i8 %79)
  %cmp23.i = icmp eq i8 %79, 74
  br i1 %cmp23.i, label %if.end20.i.for.inc.i74_crit_edge, label %if.end26.i

if.end20.i.for.inc.i74_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i74

if.end26.i:                                       ; preds = %if.end20.i
  br i1 %channel_found.1.off0182.i, label %if.then28.i, label %if.end35.i

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %cmp31.not.i = icmp eq i8 %79, 0
  br i1 %cmp31.not.i, label %if.then28.i.for.inc.i74_crit_edge, label %do.end.i

if.then28.i.for.inc.i74_crit_edge:                ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i74

do.end.i:                                         ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end35.i:                                       ; preds = %if.end26.i
  %80 = zext i8 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %79, label %sw.default.i68 [
    i8 122, label %if.end35.i.for.inc.i74_crit_edge
    i8 123, label %sw.bb40.i
    i8 124, label %sw.bb47.i
    i8 125, label %if.end35.i.sw.bb55.i_crit_edge
    i8 77, label %if.end35.i.sw.bb55.i_crit_edge108
  ]

if.end35.i.sw.bb55.i_crit_edge108:                ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb55.i

if.end35.i.sw.bb55.i_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb55.i

if.end35.i.for.inc.i74_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i74

sw.bb40.i:                                        ; preds = %if.end35.i
  %brmerge.i = select i1 %esc_found.1.off0184.i, i1 true, i1 %eop_found.1.off0181.i
  br i1 %brmerge.i, label %sw.bb40.i.cleanup_crit_edge, label %sw.bb40.i.for.inc.i74_crit_edge

sw.bb40.i.for.inc.i74_crit_edge:                  ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i74

sw.bb40.i.cleanup_crit_edge:                      ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb47.i:                                        ; preds = %if.end35.i
  %brmerge162.i = select i1 %esc_found.1.off0184.i, i1 true, i1 %eop_found.1.off0181.i
  br i1 %brmerge162.i, label %sw.bb47.i.cleanup_crit_edge, label %sw.bb47.i.for.inc.i74_crit_edge

sw.bb47.i.for.inc.i74_crit_edge:                  ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i74

sw.bb47.i.cleanup_crit_edge:                      ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb55.i:                                        ; preds = %if.end35.i.sw.bb55.i_crit_edge, %if.end35.i.sw.bb55.i_crit_edge108
  br i1 %esc_found.1.off0184.i, label %sw.bb55.i.cleanup_crit_edge, label %sw.bb55.i.for.inc.i74_crit_edge

sw.bb55.i.for.inc.i74_crit_edge:                  ; preds = %sw.bb55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i74

sw.bb55.i.cleanup_crit_edge:                      ; preds = %sw.bb55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.default.i68:                                   ; preds = %if.end35.i
  %xor.i = xor i8 %79, 32
  %storemerge.i = select i1 %esc_found.1.off0184.i, i8 %xor.i, i8 %79
  %tb.2.i = getelementptr i8, ptr %tb.1187.i, i32 1
  %81 = ptrtoint ptr %tb.1187.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %storemerge.i, ptr %tb.1187.i, align 1
  br i1 %eop_found.1.off0181.i, label %if.end13, label %sw.default.i68.for.inc.i74_crit_edge

sw.default.i68.for.inc.i74_crit_edge:             ; preds = %sw.default.i68
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i74

for.inc.i74:                                      ; preds = %sw.default.i68.for.inc.i74_crit_edge, %sw.bb55.i.for.inc.i74_crit_edge, %sw.bb47.i.for.inc.i74_crit_edge, %sw.bb40.i.for.inc.i74_crit_edge, %if.end35.i.for.inc.i74_crit_edge, %if.then28.i.for.inc.i74_crit_edge, %if.end20.i.for.inc.i74_crit_edge, %land.lhs.true.i.for.inc.i74_crit_edge
  %eop_found.2.off0.i = phi i1 [ %eop_found.1.off0181.i, %if.end20.i.for.inc.i74_crit_edge ], [ false, %sw.default.i68.for.inc.i74_crit_edge ], [ %eop_found.1.off0181.i, %land.lhs.true.i.for.inc.i74_crit_edge ], [ %eop_found.1.off0181.i, %if.then28.i.for.inc.i74_crit_edge ], [ false, %if.end35.i.for.inc.i74_crit_edge ], [ true, %sw.bb40.i.for.inc.i74_crit_edge ], [ false, %sw.bb47.i.for.inc.i74_crit_edge ], [ %eop_found.1.off0181.i, %sw.bb55.i.for.inc.i74_crit_edge ]
  %channel_found.2.off0.i = phi i1 [ %channel_found.1.off0182.i, %if.end20.i.for.inc.i74_crit_edge ], [ false, %sw.default.i68.for.inc.i74_crit_edge ], [ %channel_found.1.off0182.i, %land.lhs.true.i.for.inc.i74_crit_edge ], [ false, %if.then28.i.for.inc.i74_crit_edge ], [ false, %if.end35.i.for.inc.i74_crit_edge ], [ false, %sw.bb40.i.for.inc.i74_crit_edge ], [ true, %sw.bb47.i.for.inc.i74_crit_edge ], [ false, %sw.bb55.i.for.inc.i74_crit_edge ]
  %esc_found.3.off0.i = phi i1 [ %esc_found.1.off0184.i, %if.end20.i.for.inc.i74_crit_edge ], [ false, %sw.default.i68.for.inc.i74_crit_edge ], [ %esc_found.1.off0184.i, %land.lhs.true.i.for.inc.i74_crit_edge ], [ %esc_found.1.off0184.i, %if.then28.i.for.inc.i74_crit_edge ], [ false, %if.end35.i.for.inc.i74_crit_edge ], [ false, %sw.bb40.i.for.inc.i74_crit_edge ], [ false, %sw.bb47.i.for.inc.i74_crit_edge ], [ true, %sw.bb55.i.for.inc.i74_crit_edge ]
  %valid_word.1.off0.i = phi i1 [ %valid_word.0.off0185.i, %if.end20.i.for.inc.i74_crit_edge ], [ true, %sw.default.i68.for.inc.i74_crit_edge ], [ %valid_word.0.off0185.i, %land.lhs.true.i.for.inc.i74_crit_edge ], [ true, %if.then28.i.for.inc.i74_crit_edge ], [ true, %if.end35.i.for.inc.i74_crit_edge ], [ true, %sw.bb40.i.for.inc.i74_crit_edge ], [ true, %sw.bb47.i.for.inc.i74_crit_edge ], [ true, %sw.bb55.i.for.inc.i74_crit_edge ]
  %tb.3.i = phi ptr [ %tb.1187.i, %if.end20.i.for.inc.i74_crit_edge ], [ %tb.2.i, %sw.default.i68.for.inc.i74_crit_edge ], [ null, %land.lhs.true.i.for.inc.i74_crit_edge ], [ %tb.1187.i, %if.then28.i.for.inc.i74_crit_edge ], [ %trans_buf.i, %if.end35.i.for.inc.i74_crit_edge ], [ %tb.1187.i, %sw.bb40.i.for.inc.i74_crit_edge ], [ %tb.1187.i, %sw.bb47.i.for.inc.i74_crit_edge ], [ %tb.1187.i, %sw.bb55.i.for.inc.i74_crit_edge ]
  %inc.i73 = add nuw nsw i32 %i.0188.i, 1
  %82 = ptrtoint ptr %word_len.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %word_len.i, align 4
  %conv12.i = zext i8 %83 to i32
  %cmp13.i = icmp ult i32 %inc.i73, %conv12.i
  br i1 %cmp13.i, label %for.inc.i74.for.body.i66_crit_edge, label %for.end.i75

for.inc.i74.for.body.i66_crit_edge:               ; preds = %for.inc.i74
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i66

for.end.i75:                                      ; preds = %for.inc.i74
  br i1 %valid_word.1.off0.i, label %if.then73.i, label %for.end.i75.if.else76.i_crit_edge

for.end.i75.if.else76.i_crit_edge:                ; preds = %for.end.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else76.i

if.then73.i:                                      ; preds = %for.end.i75
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %84 = load volatile i32, ptr @jiffies, align 128
  %add75.i = add i32 %84, 20
  br label %if.end84.i

if.else76.i:                                      ; preds = %for.end.i75.if.else76.i_crit_edge, %if.end10.i.if.else76.i_crit_edge
  %tb.1.lcssa214.i = phi ptr [ %tb.3.i, %for.end.i75.if.else76.i_crit_edge ], [ %tb.0199.i, %if.end10.i.if.else76.i_crit_edge ]
  %esc_found.1.off0.lcssa212.i = phi i1 [ %esc_found.3.off0.i, %for.end.i75.if.else76.i_crit_edge ], [ %esc_found.0.off0197.i, %if.end10.i.if.else76.i_crit_edge ]
  %channel_found.1.off0.lcssa210.i = phi i1 [ %channel_found.2.off0.i, %for.end.i75.if.else76.i_crit_edge ], [ %channel_found.0.off0196.i, %if.end10.i.if.else76.i_crit_edge ]
  %eop_found.1.off0.lcssa208.i = phi i1 [ %eop_found.2.off0.i, %for.end.i75.if.else76.i_crit_edge ], [ %eop_found.0.off0195.i, %if.end10.i.if.else76.i_crit_edge ]
  br i1 %last_try.0.off0198.i, label %if.else76.i.cleanup_crit_edge, label %if.end79.i

if.else76.i.cleanup_crit_edge:                    ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end79.i:                                       ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %85 = load volatile i32, ptr @jiffies, align 128
  %sub.i76 = sub i32 %poll_timeout.0200.i, %85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i76)
  %cmp80.i = icmp slt i32 %sub.i76, 0
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.end79.i, %if.then73.i
  %tb.1.lcssa213.i = phi ptr [ %tb.3.i, %if.then73.i ], [ %tb.1.lcssa214.i, %if.end79.i ]
  %esc_found.1.off0.lcssa211.i = phi i1 [ %esc_found.3.off0.i, %if.then73.i ], [ %esc_found.1.off0.lcssa212.i, %if.end79.i ]
  %channel_found.1.off0.lcssa209.i = phi i1 [ %channel_found.2.off0.i, %if.then73.i ], [ %channel_found.1.off0.lcssa210.i, %if.end79.i ]
  %eop_found.1.off0.lcssa207.i = phi i1 [ %eop_found.2.off0.i, %if.then73.i ], [ %eop_found.1.off0.lcssa208.i, %if.end79.i ]
  %last_try.1.off0.i = phi i1 [ false, %if.then73.i ], [ %cmp80.i, %if.end79.i ]
  %poll_timeout.1.i = phi i32 [ %add75.i, %if.then73.i ], [ %poll_timeout.0200.i, %if.end79.i ]
  %cmp.i77 = icmp ult ptr %tb.1.lcssa213.i, %phy_buf.i
  br i1 %cmp.i77, label %if.end84.i.while.body.i_crit_edge, label %if.end84.i.do.end87.i_crit_edge

if.end84.i.do.end87.i_crit_edge:                  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end87.i

if.end84.i.while.body.i_crit_edge:                ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

do.end87.i:                                       ; preds = %if.end84.i.do.end87.i_crit_edge, %if.end9.do.end87.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end13:                                         ; preds = %sw.default.i68
  %sub.ptr.lhs.cast.i69 = ptrtoint ptr %tb.2.i to i32
  %sub.ptr.rhs.cast.i70 = ptrtoint ptr %trans_buf.i to i32
  %sub.ptr.sub.i71 = sub i32 %sub.ptr.lhs.cast.i69, %sub.ptr.rhs.cast.i70
  %86 = ptrtoint ptr %trans_len to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %sub.ptr.sub.i71, ptr %trans_len, align 4
  br i1 %is_read, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end13
  %87 = ptrtoint ptr %trans_len to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %trans_len, align 4
  %mul.i = shl i32 %count, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %88)
  %cmp.not.i = icmp eq i32 %mul.i, %88
  br i1 %cmp.not.i, label %if.end.i79, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i79:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp29.not.i = icmp eq i32 %count, 0
  br i1 %cmp29.not.i, label %if.end.i79.cleanup_crit_edge, label %if.end.i79.for.body.i86_crit_edge

if.end.i79.for.body.i86_crit_edge:                ; preds = %if.end.i79
  br label %for.body.i86

if.end.i79.cleanup_crit_edge:                     ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i86:                                     ; preds = %for.body.i86.for.body.i86_crit_edge, %if.end.i79.for.body.i86_crit_edge
  %data.012.i = phi ptr [ %incdec.ptr.i82, %for.body.i86.for.body.i86_crit_edge ], [ %trans_buf.i, %if.end.i79.for.body.i86_crit_edge ]
  %i.011.i = phi i32 [ %inc.i84, %for.body.i86.for.body.i86_crit_edge ], [ 0, %if.end.i79.for.body.i86_crit_edge ]
  %val.addr.010.i = phi ptr [ %incdec.ptr3.i83, %for.body.i86.for.body.i86_crit_edge ], [ %value, %if.end.i79.for.body.i86_crit_edge ]
  %incdec.ptr.i82 = getelementptr i32, ptr %data.012.i, i32 1
  %89 = ptrtoint ptr %data.012.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %data.012.i, align 4
  %91 = call i32 @llvm.bswap.i32(i32 %90) #8
  %incdec.ptr3.i83 = getelementptr i32, ptr %val.addr.010.i, i32 1
  %92 = ptrtoint ptr %val.addr.010.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %val.addr.010.i, align 4
  %inc.i84 = add nuw i32 %i.011.i, 1
  %exitcond.not.i85 = icmp eq i32 %inc.i84, %count
  br i1 %exitcond.not.i85, label %for.body.i86.cleanup_crit_edge, label %for.body.i86.for.body.i86_crit_edge

for.body.i86.for.body.i86_crit_edge:              ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i86

for.body.i86.cleanup_crit_edge:                   ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = call fastcc i32 @br_wr_trans_rx_parse(ptr noundef %context, i32 noundef %count)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %for.body.i86.cleanup_crit_edge, %if.end.i79.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %do.end87.i, %if.else76.i.cleanup_crit_edge, %sw.bb55.i.cleanup_crit_edge, %sw.bb47.i.cleanup_crit_edge, %sw.bb40.i.cleanup_crit_edge, %do.end.i, %spi_read.exit.i.cleanup_crit_edge, %br_do_tx.exit.cleanup_crit_edge, %if.end28.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %if.then12.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.else ], [ %call.i.i.i, %br_do_tx.exit.cleanup_crit_edge ], [ -12, %if.then12.i.cleanup_crit_edge ], [ -12, %for.end.i.cleanup_crit_edge ], [ -12, %if.end28.i.cleanup_crit_edge ], [ -14, %if.then15.cleanup_crit_edge ], [ 0, %if.end.i79.cleanup_crit_edge ], [ -14, %do.end87.i ], [ -14, %do.end.i ], [ 0, %for.body.i86.cleanup_crit_edge ], [ -14, %sw.bb40.i.cleanup_crit_edge ], [ -14, %sw.bb47.i.cleanup_crit_edge ], [ -14, %sw.bb55.i.cleanup_crit_edge ], [ -110, %if.else76.i.cleanup_crit_edge ], [ %call.i.i.i63, %spi_read.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @br_wr_trans_rx_parse(ptr nocapture noundef readonly %br, i32 noundef %expected_count) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_len1 = getelementptr inbounds %struct.spi_avmm_bridge, ptr %br, i32 0, i32 2
  %0 = ptrtoint ptr %trans_len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trans_len1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %trans_buf = getelementptr inbounds %struct.spi_avmm_bridge, ptr %br, i32 0, i32 4
  %2 = ptrtoint ptr %trans_buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %trans_buf, align 1
  %4 = xor i8 %3, -128
  %size = getelementptr inbounds %struct.spi_avmm_bridge, ptr %br, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %size, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp ne i16 %6, 0
  %conv3 = zext i16 %6 to i32
  %mul = shl i32 %expected_count, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv3)
  %cmp4.not = icmp eq i32 %mul, %conv3
  %or.cond = and i1 %tobool.not, %cmp4.not
  br i1 %or.cond, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %cmp9 = icmp ne i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp12.not = icmp eq i8 %4, 0
  %or.cond33 = select i1 %cmp9, i1 true, i1 %cmp12.not
  br i1 %or.cond33, label %lor.lhs.false14, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false14:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %6)
  %cmp16 = icmp ult i16 %6, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %cmp20.not = icmp eq i8 %4, 4
  %or.cond34 = select i1 %cmp16, i1 true, i1 %cmp20.not
  %spec.select = select i1 %or.cond34, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false14, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.end7.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !15, !16, !17, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__ksymtab___regmap_init_spi_avmm, !1, !"__ksymtab___regmap_init_spi_avmm", i1 false, i1 false}
!1 = !{!"../drivers/base/regmap/regmap-spi-avmm.c", i32 694, i32 1}
!2 = !{ptr @__ksymtab___devm_regmap_init_spi_avmm, !3, !"__ksymtab___devm_regmap_init_spi_avmm", i1 false, i1 false}
!3 = !{!"../drivers/base/regmap/regmap-spi-avmm.c", i32 717, i32 1}
!4 = !{ptr @__UNIQUE_ID_file230, !5, !"__UNIQUE_ID_file230", i1 false, i1 false}
!5 = !{!"../drivers/base/regmap/regmap-spi-avmm.c", i32 719, i32 1}
!6 = !{ptr @__UNIQUE_ID_license231, !5, !"__UNIQUE_ID_license231", i1 false, i1 false}
!7 = !{ptr @regmap_spi_avmm_bus, !8, !"regmap_spi_avmm_bus", i1 false, i1 false}
!8 = !{!"../drivers/base/regmap/regmap-spi-avmm.c", i32 662, i32 32}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/base/regmap/regmap-spi-avmm.c", i32 404, i32 6}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @br_do_rx_and_pkt_phy_parse._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @br_do_rx_and_pkt_phy_parse._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/base/regmap/regmap-spi-avmm.c", i32 496, i32 2}
!19 = !{ptr @br_do_rx_and_pkt_phy_parse._entry.5, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @br_do_rx_and_pkt_phy_parse._entry_ptr.7, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
