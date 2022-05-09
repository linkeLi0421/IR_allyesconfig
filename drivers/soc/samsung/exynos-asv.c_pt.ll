; ModuleID = '/llk/IR_all_yes/drivers/soc/samsung/exynos-asv.c_pt.bc'
source_filename = "../drivers/soc/samsung/exynos-asv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.exynos_asv = type { ptr, ptr, [2 x %struct.exynos_asv_subsys], ptr, i32, i32, i8, i32 }
%struct.exynos_asv_subsys = type { ptr, ptr, i32, %struct.exynos_asv_table, i32, i32, i32 }
%struct.exynos_asv_table = type { i32, i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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

@exynos_asv_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 128, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot read revision from ChipID: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"exynos_asv_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/soc/samsung/exynos-asv.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exynos_asv_init._entry_ptr = internal global ptr @exynos_asv_init._entry, section ".printk_index", align 4
@exynos_asv_init.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"exynos_chipid\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No ASV support for this SoC\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"samsung,asv-bin\00", [16 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@exynos_asv_update_opps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 102, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't udate OPPs for cpu%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"exynos_asv_update_opps\00", [41 x i8] zeroinitializer }, align 32
@exynos_asv_update_opps._entry_ptr = internal global ptr @exynos_asv_update_opps._entry, section ".printk_index", align 4
@exynos_asv_update_cpu_opps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 52, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cpu%d opp%d, freq: %u missing\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"exynos_asv_update_cpu_opps\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@exynos_asv_update_cpu_opps._entry_ptr = internal global ptr @exynos_asv_update_cpu_opps._entry, section ".printk_index", align 4
@exynos_asv_update_cpu_opps._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.2, i32 69, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to adjust OPP %u Hz/%u uV for cpu%d\0A\00", [52 x i8] zeroinitializer }, align 32
@exynos_asv_update_cpu_opps._entry_ptr.15 = internal global ptr @exynos_asv_update_cpu_opps._entry.13, section ".printk_index", align 4
@exynos_asv_update_cpu_opps.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.11, ptr @.str.2, ptr @.str.16, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Adjusted OPP %u Hz/%u -> %u uV, cpu%d\0A\00", [57 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 128, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 137, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 147, i32 43 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 101, i32 5 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 51, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 67, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [36 x i8] c"../drivers/soc/samsung/exynos-asv.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 71, i32 4 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @exynos_asv_init._entry, ptr @exynos_asv_init._entry_ptr, ptr @exynos_asv_update_cpu_opps._entry, ptr @exynos_asv_update_cpu_opps._entry.13, ptr @exynos_asv_update_cpu_opps._entry_ptr, ptr @exynos_asv_update_cpu_opps._entry_ptr.15, ptr @exynos_asv_update_opps._entry, ptr @exynos_asv_update_opps._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_asv_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_asv_update_opps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_asv_update_cpu_opps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_asv_update_cpu_opps._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos_asv_init(ptr noundef %dev, ptr noundef %regmap) local_unnamed_addr #0 align 64 {
entry:
  %product_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %product_id) #5
  %0 = ptrtoint ptr %product_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %product_id, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 100, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %chipid_regmap = getelementptr inbounds %struct.exynos_asv, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %chipid_regmap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %regmap, ptr %chipid_regmap, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %call3 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 0, ptr noundef nonnull %product_id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %call3) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %product_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %product_id, align 4
  %and = and i32 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -448651264, i32 %and)
  %cond = icmp eq i32 %and, -448651264
  br i1 %cond, label %sw.bb, label %do.body6

sw.bb:                                            ; preds = %if.end5
  %call15 = call ptr @get_cpu_device(i32 noundef 0) #5
  %call16 = call i32 @dev_pm_opp_get_opp_count(ptr noundef %call15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %sw.bb.cleanup_crit_edge, label %if.end19

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body6:                                         ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_asv_init.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos_asv_init, %if.then11)) #5
          to label %do.end14 [label %if.then11], !srcloc !41

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos_asv_init.__UNIQUE_ID_ddebug171, ptr noundef %dev, ptr noundef nonnull @.str.6) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body6
  call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %call.i) #5
  br label %cleanup

if.end19:                                         ; preds = %sw.bb
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %of_bin = getelementptr inbounds %struct.exynos_asv, ptr %call.i, i32 0, i32 7
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.7, ptr noundef %of_bin, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp21 = icmp slt i32 %call.i.i, 0
  br i1 %cmp21, label %if.then22, label %if.end19.if.end24_crit_edge

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %of_bin to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -22, ptr %of_bin, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end19.if.end24_crit_edge
  %arrayidx = getelementptr %struct.exynos_asv, ptr %call.i, i32 0, i32 2, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.exynos_asv, ptr %call.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %arrayidx.1, align 4
  %call27 = call i32 @exynos5422_asv_init(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end24.cleanup_crit_edge, label %if.end30

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  %call3.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %10)
  %cmp4.i = icmp ult i32 %call3.i, %10
  br i1 %cmp4.i, label %if.end30.for.body.i_crit_edge, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30.for.body.i_crit_edge:                    ; preds = %if.end30
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end30.for.body.i_crit_edge
  %call6.i = phi i32 [ %call.i59, %cleanup.i.for.body.i_crit_edge ], [ %call3.i, %if.end30.for.body.i_crit_edge ]
  %last_opp_table.05.i = phi ptr [ %last_opp_table.2.i, %cleanup.i.for.body.i_crit_edge ], [ null, %if.end30.for.body.i_crit_edge ]
  %call1.i = call ptr @get_cpu_device(i32 noundef %call6.i) #5
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %call2.i = call ptr @dev_pm_opp_get_opp_table(ptr noundef nonnull %call1.i) #5
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.cleanup.i_crit_edge, label %if.end5.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end5.i:                                        ; preds = %if.end.i
  %tobool6.not.i = icmp ne ptr %last_opp_table.05.i, null
  %cmp7.not.i = icmp eq ptr %call2.i, %last_opp_table.05.i
  %or.cond.i = and i1 %tobool6.not.i, %cmp7.not.i
  br i1 %or.cond.i, label %if.end5.i.if.end13.i_crit_edge, label %if.then8.i

if.end5.i.if.end13.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.then8.i:                                       ; preds = %if.end5.i
  %call9.i = call fastcc i32 @exynos_asv_update_cpu_opps(ptr noundef nonnull %call.i, ptr noundef nonnull %call1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %do.end.i, label %if.then8.i.if.end13.i_crit_edge

if.then8.i.if.end13.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

do.end.i:                                         ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.8, i32 noundef %call6.i) #8
  br label %if.end13.i

if.end13.i:                                       ; preds = %do.end.i, %if.then8.i.if.end13.i_crit_edge, %if.end5.i.if.end13.i_crit_edge
  %last_opp_table.1.i = phi ptr [ %call2.i, %do.end.i ], [ %call2.i, %if.then8.i.if.end13.i_crit_edge ], [ %last_opp_table.05.i, %if.end5.i.if.end13.i_crit_edge ]
  call void @dev_pm_opp_put_opp_table(ptr noundef %call2.i) #5
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end13.i, %if.end.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %last_opp_table.2.i = phi ptr [ %last_opp_table.1.i, %if.end13.i ], [ %last_opp_table.05.i, %for.body.i.cleanup.i_crit_edge ], [ %last_opp_table.05.i, %if.end.i.cleanup.i_crit_edge ]
  %call.i59 = call i32 @cpumask_next(i32 noundef %call6.i, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i59, %13
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.cleanup_crit_edge

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

cleanup:                                          ; preds = %cleanup.i.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end14, %sw.bb.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %do.end14 ], [ -12, %entry.cleanup_crit_edge ], [ -517, %sw.bb.cleanup_crit_edge ], [ %call27, %if.end24.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ], [ 0, %cleanup.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %product_id) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos5422_asv_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_opp_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_get_opp_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exynos_asv_update_cpu_opps(ptr noundef %asv, ptr noundef %cpu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %cpu, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %cpu_dt_compat = getelementptr %struct.exynos_asv, ptr %asv, i32 0, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %cpu_dt_compat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_dt_compat, align 4
  %call = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %entry
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %cpu_dt_compat.1 = getelementptr %struct.exynos_asv, ptr %asv, i32 0, i32 2, i32 1, i32 1
  %6 = ptrtoint ptr %cpu_dt_compat.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpu_dt_compat.1, align 4
  %call.1 = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.cleanup46_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.cleanup46_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup46

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %i.089.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ]
  %arrayidx = getelementptr %struct.exynos_asv, ptr %asv, i32 0, i32 2, i32 %i.089.lcssa
  %tobool4.not = icmp eq ptr %arrayidx, null
  br i1 %tobool4.not, label %for.end.cleanup46_crit_edge, label %for.cond7.preheader

for.end.cleanup46_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup46

for.cond7.preheader:                              ; preds = %for.end
  %table = getelementptr %struct.exynos_asv, ptr %asv, i32 0, i32 2, i32 %i.089.lcssa, i32 3
  %8 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp890.not = icmp eq i32 %9, 0
  br i1 %cmp890.not, label %for.cond7.preheader.cleanup46_crit_edge, label %for.body9.lr.ph

for.cond7.preheader.cleanup46_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup46

for.body9.lr.ph:                                  ; preds = %for.cond7.preheader
  %buf.i.i = getelementptr %struct.exynos_asv, ptr %asv, i32 0, i32 2, i32 %i.089.lcssa, i32 3, i32 2
  %num_cols.i.i = getelementptr %struct.exynos_asv, ptr %asv, i32 0, i32 2, i32 %i.089.lcssa, i32 3, i32 1
  %opp_get_voltage = getelementptr inbounds %struct.exynos_asv, ptr %asv, i32 0, i32 3
  %id36 = getelementptr inbounds %struct.device, ptr %cpu, i32 0, i32 30
  br label %for.body9

for.body9:                                        ; preds = %cleanup.for.body9_crit_edge, %for.body9.lr.ph
  %i.191 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc44, %cleanup.for.body9_crit_edge ]
  %10 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf.i.i, align 4
  %12 = ptrtoint ptr %num_cols.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_cols.i.i, align 4
  %mul.i.i = mul i32 %13, %i.191
  %arrayidx.i.i = getelementptr i32, ptr %11, i32 %mul.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %mul = mul i32 %15, 1000000
  %call11 = tail call ptr @dev_pm_opp_find_freq_exact(ptr noundef %cpu, i32 noundef %mul, i1 noundef zeroext true) #5
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end14

do.end:                                           ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %asv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %asv, align 4
  %18 = ptrtoint ptr %id36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id36, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.10, i32 noundef %19, i32 noundef %i.191, i32 noundef %15) #8
  br label %cleanup

if.end14:                                         ; preds = %for.body9
  %call15 = tail call i32 @dev_pm_opp_get_voltage(ptr noundef %call11) #5
  %20 = ptrtoint ptr %opp_get_voltage to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %opp_get_voltage, align 4
  %call16 = tail call i32 %21(ptr noundef nonnull %arrayidx, i32 noundef %i.191, i32 noundef %call15) #5
  tail call void @dev_pm_opp_put(ptr noundef %call11) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call16, i32 %call15)
  %cmp17 = icmp eq i32 %call16, %call15
  br i1 %cmp17, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %call21 = tail call i32 @dev_pm_opp_adjust_voltage(ptr noundef %cpu, i32 noundef %mul, i32 noundef %call16, i32 noundef %call16, i32 noundef %call16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end26, label %do.body29

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %asv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %asv, align 4
  %24 = ptrtoint ptr %id36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.14, i32 noundef %15, i32 noundef %call16, i32 noundef %25) #8
  br label %cleanup

do.body29:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_asv_update_cpu_opps.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos_asv_update_cpu_opps, %if.then34)) #5
          to label %cleanup [label %if.then34], !srcloc !41

if.then34:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %asv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %asv, align 4
  %28 = ptrtoint ptr %id36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id36, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos_asv_update_cpu_opps.__UNIQUE_ID_ddebug170, ptr noundef %27, ptr noundef nonnull @.str.16, i32 noundef %15, i32 noundef %call15, i32 noundef %call16, i32 noundef %29) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %do.body29, %do.end26, %if.end14.cleanup_crit_edge, %do.end
  %inc44 = add nuw i32 %i.191, 1
  %30 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %table, align 4
  %cmp8 = icmp ult i32 %inc44, %31
  br i1 %cmp8, label %cleanup.for.body9_crit_edge, label %cleanup.cleanup46_crit_edge

cleanup.cleanup46_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup46

cleanup.for.body9_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body9

cleanup46:                                        ; preds = %cleanup.cleanup46_crit_edge, %for.cond7.preheader.cleanup46_crit_edge, %for.end.cleanup46_crit_edge, %for.inc.cleanup46_crit_edge
  %retval.0 = phi i32 [ -22, %for.end.cleanup46_crit_edge ], [ 0, %for.cond7.preheader.cleanup46_crit_edge ], [ -22, %for.inc.cleanup46_crit_edge ], [ 0, %cleanup.cleanup46_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put_opp_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_exact(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_voltage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_adjust_voltage(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/soc/samsung/exynos-asv.c", i32 128, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @exynos_asv_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @exynos_asv_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/soc/samsung/exynos-asv.c", i32 137, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @exynos_asv_init.__UNIQUE_ID_ddebug171, !9, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soc/samsung/exynos-asv.c", i32 147, i32 43}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/samsung/exynos-asv.c", i32 101, i32 5}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @exynos_asv_update_opps._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @exynos_asv_update_opps._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/soc/samsung/exynos-asv.c", i32 51, i32 4}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @exynos_asv_update_cpu_opps._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @exynos_asv_update_cpu_opps._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/soc/samsung/exynos-asv.c", i32 67, i32 4}
!27 = !{ptr @exynos_asv_update_cpu_opps._entry.13, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @exynos_asv_update_cpu_opps._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/soc/samsung/exynos-asv.c", i32 71, i32 4}
!31 = !{ptr @exynos_asv_update_cpu_opps.__UNIQUE_ID_ddebug170, !30, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i64 2148291379, i64 2148291384, i64 2148291397, i64 2148291441, i64 2148291475, i64 2148291496}
