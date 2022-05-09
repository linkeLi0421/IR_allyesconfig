; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/nand_micron.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/nand_micron.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nand_manufacturer_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.49, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.anon.49 = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.onfi_params = type { i32, i16, i16, i16, i16, i8, i16, i16, i16, [88 x i8] }
%struct.micron_on_die_ecc = type { i8, i8, ptr }
%struct.nand_onfi_params = type <{ [4 x i8], i16, i16, i16, [2 x i8], i16, i8, [17 x i8], [12 x i8], [20 x i8], i8, i16, [13 x i8], i32, i16, i32, i16, i32, i32, i8, i8, i8, i16, i16, i8, i16, i8, i8, i8, i8, i8, [13 x i8], i8, i16, i16, i16, i16, i16, i16, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, [8 x i8], i16, [88 x i8], i16 }>
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.mtd_oob_region = type { i32, i32 }

@micron_nand_manuf_ops = dso_local constant { %struct.nand_manufacturer_ops, [16 x i8] } { %struct.nand_manufacturer_ops { ptr null, ptr @micron_nand_init, ptr @micron_nand_cleanup, ptr @micron_fixup_onfi_param_page }, [16 x i8] zeroinitializer }, align 32
@micron_nand_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013On-die ECC forcefully enabled, not supported\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"micron_nand_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/mtd/nand/raw/nand_micron.c\00", [61 x i8] zeroinitializer }, align 32
@micron_nand_init._entry_ptr = internal global ptr @micron_nand_init._entry, section ".printk_index", align 4
@micron_nand_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013On-die ECC selected but not supported\0A\00", [55 x i8] zeroinitializer }, align 32
@micron_nand_init._entry_ptr.5 = internal global ptr @micron_nand_init._entry.3, section ".printk_index", align 4
@micron_nand_on_die_4_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @micron_nand_on_die_4_ooblayout_ecc, ptr @micron_nand_on_die_4_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@micron_nand_on_die_8_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @micron_nand_on_die_8_ooblayout_ecc, ptr @micron_nand_on_die_8_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 8, i64 16, i64 24]
@___asan_gen_.7 = private unnamed_addr constant [22 x i8] c"micron_nand_manuf_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 595, i32 36 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 506, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 513, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant [35 x i8] c"micron_nand_on_die_4_ooblayout_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 126, i32 39 }
@___asan_gen_.31 = private unnamed_addr constant [35 x i8] c"micron_nand_on_die_8_ooblayout_ops\00", align 1
@___asan_gen_.32 = private constant [38 x i8] c"../drivers/mtd/nand/raw/nand_micron.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 161, i32 39 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @micron_nand_init._entry, ptr @micron_nand_init._entry.3, ptr @micron_nand_init._entry_ptr, ptr @micron_nand_init._entry_ptr.5, ptr @micron_nand_manuf_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @micron_nand_on_die_4_ooblayout_ops, ptr @micron_nand_on_die_8_ooblayout_ops], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @micron_nand_manuf_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @micron_nand_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @micron_nand_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @micron_nand_on_die_4_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @micron_nand_on_die_8_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @micron_nand_init(ptr noundef %chip) #0 align 64 {
entry:
  %feature.i.i = alloca [4 x i8], align 4
  %id.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %priv1.i, align 4
  %onfi.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %onfi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %onfi.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.if.end.i126_crit_edge, label %if.then.i125

if.end.if.end.i126_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i126

if.then.i125:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %read_retry_options.i = getelementptr inbounds %struct.onfi_params, ptr %3, i32 0, i32 9, i32 14
  %4 = ptrtoint ptr %read_retry_options.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %read_retry_options.i, align 1
  %conv.i = zext i8 %5 to i32
  %read_retries.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 29
  %6 = ptrtoint ptr %read_retries.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv.i, ptr %read_retries.i, align 8
  %setup_read_retry.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %setup_read_retry.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @micron_nand_setup_read_retry, ptr %setup_read_retry.i, align 8
  br label %if.end.i126

if.end.i126:                                      ; preds = %if.then.i125, %if.end.if.end.i126_crit_edge
  %supports_set_get_features.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %supports_set_get_features.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %supports_set_get_features.i, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not.i = icmp eq i8 %9, 0
  br i1 %tobool2.not.i, label %if.end.i126.micron_nand_onfi_init.exit_crit_edge, label %if.then3.i

if.end.i126.micron_nand_onfi_init.exit_crit_edge: ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #11
  br label %micron_nand_onfi_init.exit

if.then3.i:                                       ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #11
  %set_feature_list.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 2, i32 2
  tail call void @_set_bit(i32 noundef 137, ptr noundef %set_feature_list.i) #9
  tail call void @_set_bit(i32 noundef 144, ptr noundef %set_feature_list.i) #9
  %get_feature_list.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 2, i32 3
  tail call void @_set_bit(i32 noundef 137, ptr noundef %get_feature_list.i) #9
  tail call void @_set_bit(i32 noundef 144, ptr noundef %get_feature_list.i) #9
  br label %micron_nand_onfi_init.exit

micron_nand_onfi_init.exit:                       ; preds = %if.then3.i, %if.end.i126.micron_nand_onfi_init.exit_crit_edge
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %10 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %options, align 8
  %or = or i32 %11, 16777216
  store i32 %or, ptr %options, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %12 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %13)
  %cmp = icmp eq i32 %13, 2048
  br i1 %cmp, label %if.then8, label %micron_nand_onfi_init.exit.if.end11_crit_edge

micron_nand_onfi_init.exit.if.end11_crit_edge:    ; preds = %micron_nand_onfi_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %micron_nand_onfi_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %or10 = or i32 %11, 50331648
  %14 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or10, ptr %options, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %micron_nand_onfi_init.exit.if.end11_crit_edge
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %id.i) #9
  %15 = getelementptr inbounds [5 x i8], ptr %id.i, i32 0, i32 4
  %16 = call ptr @memset(ptr %id.i, i32 255, i32 5)
  %17 = ptrtoint ptr %onfi.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %onfi.i, align 4
  %tobool.not.i128 = icmp eq ptr %18, null
  br i1 %tobool.not.i128, label %if.end11.if.end17_crit_edge, label %if.end.i129

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end.i129:                                      ; preds = %if.end11
  %memorg.i.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1
  %19 = ptrtoint ptr %memorg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %memorg.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.not.i = icmp eq i32 %20, 1
  br i1 %cmp.not.i, label %if.end4.i130, label %if.end.i129.if.end17_crit_edge

if.end.i129.if.end17_crit_edge:                   ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end4.i130:                                     ; preds = %if.end.i129
  %strength.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 3
  %21 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %strength.i, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %if.end4.i130.if.end17_crit_edge [
    i32 4, label %if.end4.i130.if.end9.i_crit_edge
    i32 8, label %if.end4.i130.if.end9.i_crit_edge156
  ]

if.end4.i130.if.end9.i_crit_edge156:              ; preds = %if.end4.i130
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.end4.i130.if.end9.i_crit_edge:                 ; preds = %if.end4.i130
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.end4.i130.if.end17_crit_edge:                  ; preds = %if.end4.i130
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end9.i:                                        ; preds = %if.end4.i130.if.end9.i_crit_edge, %if.end4.i130.if.end9.i_crit_edge156
  %len.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %25)
  %cmp11.not.i = icmp eq i32 %25, 5
  br i1 %cmp11.not.i, label %lor.lhs.false.i, label %if.end9.i.if.end17_crit_edge

if.end9.i.if.end17_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

lor.lhs.false.i:                                  ; preds = %if.end9.i
  %arrayidx.i = getelementptr %struct.nand_chip, ptr %chip, i32 0, i32 1, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 4
  %28 = and i8 %27, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp13.not.i = icmp eq i8 %28, 2
  br i1 %cmp13.not.i, label %if.end16.i, label %lor.lhs.false.i.if.end17_crit_edge

lor.lhs.false.i.if.end17_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end16.i:                                       ; preds = %lor.lhs.false.i
  %29 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %feature.i.i) #9
  %31 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %feature.i.i, align 4
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %30, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i131 = icmp eq i8 %33, 0
  br i1 %tobool.not.i.i131, label %if.end.i.i133, label %if.end16.i.if.end20.i_crit_edge

if.end16.i.if.end20.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.end.i.i133:                                    ; preds = %if.end16.i
  %enabled.i.i = getelementptr inbounds %struct.micron_on_die_ecc, ptr %30, i32 0, i32 1
  %34 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %enabled.i.i, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp.i.i132 = icmp eq i8 %35, 1
  br i1 %cmp.i.i132, label %if.end.i.i133.if.end20.i_crit_edge, label %if.end7.i.i

if.end.i.i133.if.end20.i_crit_edge:               ; preds = %if.end.i.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.end7.i.i:                                      ; preds = %if.end.i.i133
  %36 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %feature.i.i, align 4
  %38 = or i8 %37, 8
  store i8 %38, ptr %feature.i.i, align 4
  %call13.i.i = call i32 @nand_set_features(ptr noundef %chip, i32 noundef 144, ptr noundef nonnull %feature.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.then15.i.i, label %micron_nand_on_die_ecc_setup.exit.i

if.then15.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %enabled.i.i, align 1
  br label %if.end20.i

micron_nand_on_die_ecc_setup.exit.i:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature.i.i) #9
  br label %if.end17

if.end20.i:                                       ; preds = %if.then15.i.i, %if.end.i.i133.if.end20.i_crit_edge, %if.end16.i.if.end20.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature.i.i) #9
  %call21.i = call i32 @nand_readid_op(ptr noundef %chip, i8 noundef zeroext 0, ptr noundef nonnull %id.i, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end20.i.if.end17_crit_edge

if.end20.i.if.end17_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end24.i:                                       ; preds = %if.end20.i
  %call25.i = call fastcc i32 @micron_nand_on_die_ecc_setup(ptr noundef %chip, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end24.i.if.end17_crit_edge

if.end24.i.if.end17_crit_edge:                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end28.i:                                       ; preds = %if.end24.i
  %40 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %41)
  %tobool32.not.i = icmp sgt i8 %41, -1
  br i1 %tobool32.not.i, label %if.end28.i.if.end17_crit_edge, label %if.end34.i

if.end28.i.if.end17_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end34.i:                                       ; preds = %if.end28.i
  %call36.i = call i32 @nand_readid_op(ptr noundef %chip, i8 noundef zeroext 0, ptr noundef nonnull %id.i, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %if.end34.i.if.end17_crit_edge

if.end34.i.if.end17_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end39.i:                                       ; preds = %if.end34.i
  %42 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %43)
  %tobool43.not.i = icmp sgt i8 %43, -1
  br i1 %tobool43.not.i, label %if.end45.i, label %land.lhs.true

if.end45.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %strength.i, align 4
  %46 = add i32 %45, -4
  %switch.and.i = and i32 %46, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  %47 = zext i1 %switch.selectcmp.i to i32
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end39.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %id.i) #9
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %48 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %49)
  %cmp14.not = icmp eq i32 %49, 4
  br i1 %cmp14.not, label %if.end17.thread, label %land.lhs.true.err_free_manuf_data.sink.split_crit_edge

land.lhs.true.err_free_manuf_data.sink.split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_manuf_data.sink.split

if.end17:                                         ; preds = %if.end45.i, %if.end34.i.if.end17_crit_edge, %if.end28.i.if.end17_crit_edge, %if.end24.i.if.end17_crit_edge, %if.end20.i.if.end17_crit_edge, %micron_nand_on_die_ecc_setup.exit.i, %lor.lhs.false.i.if.end17_crit_edge, %if.end9.i.if.end17_crit_edge, %if.end4.i130.if.end17_crit_edge, %if.end.i129.if.end17_crit_edge, %if.end11.if.end17_crit_edge
  %retval.0.i.ph = phi i32 [ %47, %if.end45.i ], [ 0, %if.end34.i.if.end17_crit_edge ], [ 0, %if.end28.i.if.end17_crit_edge ], [ 0, %if.end24.i.if.end17_crit_edge ], [ 0, %if.end20.i.if.end17_crit_edge ], [ 0, %micron_nand_on_die_ecc_setup.exit.i ], [ 0, %if.end9.i.if.end17_crit_edge ], [ 0, %lor.lhs.false.i.if.end17_crit_edge ], [ 0, %if.end4.i130.if.end17_crit_edge ], [ 0, %if.end.i129.if.end17_crit_edge ], [ 0, %if.end11.if.end17_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %id.i) #9
  %ecc18 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %50 = ptrtoint ptr %ecc18 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ecc18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %51)
  %cmp20 = icmp eq i32 %51, 4
  br i1 %cmp20, label %if.then21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17.thread:                                  ; preds = %land.lhs.true
  %ecc18145 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %52 = ptrtoint ptr %ecc18145 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ecc18145, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %53)
  %cmp20146 = icmp eq i32 %53, 4
  br i1 %cmp20146, label %if.then31, label %if.end17.thread.cleanup_crit_edge

if.end17.thread.cleanup_crit_edge:                ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.ph)
  %cmp22 = icmp eq i32 %retval.0.i.ph, 0
  br i1 %cmp22, label %if.then21.err_free_manuf_data.sink.split_crit_edge, label %if.then21.if.end34_crit_edge

if.then21.if.end34_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then21.err_free_manuf_data.sink.split_crit_edge: ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_manuf_data.sink.split

if.then31:                                        ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %call7.i.i, align 8
  %enabled = getelementptr inbounds %struct.micron_on_die_ecc, ptr %call7.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %enabled, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.then21.if.end34_crit_edge
  %cmp13138147152154 = phi i1 [ true, %if.then31 ], [ false, %if.then21.if.end34_crit_edge ]
  %strength = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 3
  %56 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %strength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %57)
  %cmp35 = icmp eq i32 %57, 4
  br i1 %cmp35, label %if.end8.i, label %if.end34.if.else_crit_edge

if.end34.if.else_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end8.i:                                        ; preds = %if.end34
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %58 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %oobsize, align 4
  %60 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %writesize, align 4
  %add = add i32 %59, %61
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #13
  %rawbuf = getelementptr inbounds %struct.micron_on_die_ecc, ptr %call7.i.i, i32 0, i32 2
  %62 = ptrtoint ptr %rawbuf to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call9.i, ptr %rawbuf, align 4
  %tobool42.not = icmp eq ptr %call9.i, null
  br i1 %tobool42.not, label %if.end8.i.err_free_manuf_data_crit_edge, label %if.end45

if.end8.i.err_free_manuf_data_crit_edge:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_manuf_data

if.end45:                                         ; preds = %if.end8.i
  %63 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pr = load i32, ptr %strength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp47 = icmp eq i32 %.pr, 4
  br i1 %cmp47, label %if.end45.if.end49_crit_edge, label %if.end45.if.else_crit_edge

if.end45.if.else_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.else:                                          ; preds = %if.end45.if.else_crit_edge, %if.end34.if.else_crit_edge
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.end45.if.end49_crit_edge
  %micron_nand_on_die_8_ooblayout_ops.sink = phi ptr [ @micron_nand_on_die_8_ooblayout_ops, %if.else ], [ @micron_nand_on_die_4_ooblayout_ops, %if.end45.if.end49_crit_edge ]
  %ooblayout1.i134 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %64 = ptrtoint ptr %ooblayout1.i134 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %micron_nand_on_die_8_ooblayout_ops.sink, ptr %ooblayout1.i134, align 8
  %65 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %strength, align 4
  %mul = shl i32 %66, 1
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %67 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %mul, ptr %bytes, align 4
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %68 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 512, ptr %size, align 8
  %strength55 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %69 = ptrtoint ptr %strength55 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %66, ptr %strength55, align 4
  %algo = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %70 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %algo, align 8
  %read_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 18
  %71 = ptrtoint ptr %read_page to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @micron_nand_read_page_on_die_ecc, ptr %read_page, align 8
  %write_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 21
  %72 = ptrtoint ptr %write_page to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @micron_nand_write_page_on_die_ecc, ptr %write_page, align 4
  %read_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 16
  br i1 %cmp13138147152154, label %if.then60, label %if.else63

if.then60:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %read_page_raw to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @nand_read_page_raw_notsupp, ptr %read_page_raw, align 8
  %write_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 17
  %74 = ptrtoint ptr %write_page_raw to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @nand_write_page_raw_notsupp, ptr %write_page_raw, align 4
  br label %cleanup

if.else63:                                        ; preds = %if.end49
  %75 = ptrtoint ptr %read_page_raw to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read_page_raw, align 8
  %tobool66.not = icmp eq ptr %76, null
  br i1 %tobool66.not, label %if.then67, label %if.else63.if.end70_crit_edge

if.else63.if.end70_crit_edge:                     ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then67:                                        ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %read_page_raw to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @nand_read_page_raw, ptr %read_page_raw, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.else63.if.end70_crit_edge
  %write_page_raw72 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 17
  %78 = ptrtoint ptr %write_page_raw72 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write_page_raw72, align 4
  %tobool73.not = icmp eq ptr %79, null
  br i1 %tobool73.not, label %if.then74, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %write_page_raw72 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @nand_write_page_raw, ptr %write_page_raw72, align 4
  br label %cleanup

err_free_manuf_data.sink.split:                   ; preds = %if.then21.err_free_manuf_data.sink.split_crit_edge, %land.lhs.true.err_free_manuf_data.sink.split_crit_edge
  %.str.4.sink = phi ptr [ @.str, %land.lhs.true.err_free_manuf_data.sink.split_crit_edge ], [ @.str.4, %if.then21.err_free_manuf_data.sink.split_crit_edge ]
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink) #14
  br label %err_free_manuf_data

err_free_manuf_data:                              ; preds = %err_free_manuf_data.sink.split, %if.end8.i.err_free_manuf_data_crit_edge
  %ret.0 = phi i32 [ -12, %if.end8.i.err_free_manuf_data_crit_edge ], [ -22, %err_free_manuf_data.sink.split ]
  %rawbuf81 = getelementptr inbounds %struct.micron_on_die_ecc, ptr %call7.i.i, i32 0, i32 2
  %81 = ptrtoint ptr %rawbuf81 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rawbuf81, align 4
  call void @kfree(ptr noundef %82) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_free_manuf_data, %if.then74, %if.end70.cleanup_crit_edge, %if.then60, %if.end17.thread.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_free_manuf_data ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then60 ], [ 0, %if.then74 ], [ 0, %if.end70.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %if.end17.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @micron_nand_cleanup(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %rawbuf = getelementptr inbounds %struct.micron_on_die_ecc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rawbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rawbuf, align 4
  tail call void @kfree(ptr noundef %3) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @micron_fixup_onfi_param_page(ptr nocapture noundef readnone %chip, ptr nocapture noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %revision = getelementptr inbounds %struct.nand_onfi_params, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %revision to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %revision, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 512, ptr %revision, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @micron_nand_read_page_on_die_ecc(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #0 align 64 {
entry:
  %feature.i88 = alloca [4 x i8], align 4
  %feature.i = alloca [4 x i8], align 4
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #9
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %status, align 1, !annotation !26
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %feature.i) #9
  %3 = ptrtoint ptr %feature.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %feature.i, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %2, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %enabled.i = getelementptr inbounds %struct.micron_on_die_ecc, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled.i, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.i = icmp eq i8 %7, 1
  br i1 %cmp.i, label %if.end.i.if.end_crit_edge, label %if.end7.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end7.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %feature.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %feature.i, align 4
  %10 = or i8 %9, 8
  store i8 %10, ptr %feature.i, align 4
  %call13.i = call i32 @nand_set_features(ptr noundef %chip, i32 noundef 144, ptr noundef nonnull %feature.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %micron_nand_on_die_ecc_setup.exit

if.then15.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %enabled.i, align 1
  br label %if.end

micron_nand_on_die_ecc_setup.exit:                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.then15.i, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature.i) #9
  %call2 = call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @nand_status_op(ptr noundef %chip, ptr noundef nonnull %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end9:                                          ; preds = %if.end5
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %12 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %controller.i, align 4
  %tobool.not.i86 = icmp eq ptr %13, null
  br i1 %tobool.not.i86, label %if.end9.if.then13_crit_edge, label %lor.lhs.false.i

if.end9.if.then13_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

lor.lhs.false.i:                                  ; preds = %if.end9
  %ops.i = getelementptr inbounds %struct.nand_controller, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %tobool2.not.i = icmp eq ptr %15, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.then13_crit_edge, label %nand_has_exec_op.exit

lor.lhs.false.i.if.then13_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

nand_has_exec_op.exit:                            ; preds = %lor.lhs.false.i
  %exec_op.i = getelementptr inbounds %struct.nand_controller_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %exec_op.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %exec_op.i, align 4
  %tobool6.not.i.not = icmp eq ptr %17, null
  br i1 %tobool6.not.i.not, label %nand_has_exec_op.exit.if.then13_crit_edge, label %lor.lhs.false

nand_has_exec_op.exit.if.then13_crit_edge:        ; preds = %nand_has_exec_op.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

lor.lhs.false:                                    ; preds = %nand_has_exec_op.exit
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %18 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %writesize, align 4
  %call11 = call i32 @nand_read_data_op(ptr noundef %chip, ptr noundef %buf, i32 noundef %19, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %lor.lhs.false.if.then13_crit_edge, label %if.else

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %nand_has_exec_op.exit.if.then13_crit_edge, %lor.lhs.false.i.if.then13_crit_edge, %if.end9.if.then13_crit_edge
  %call17 = call i32 @nand_exit_status_op(ptr noundef %chip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then13.out_crit_edge

if.then13.out_crit_edge:                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end20:                                         ; preds = %if.then13
  %writesize21 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %20 = ptrtoint ptr %writesize21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %writesize21, align 4
  %call22 = call i32 @nand_read_data_op(ptr noundef %chip, ptr noundef %buf, i32 noundef %21, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true, label %if.end20.if.end39_crit_edge

if.end20.if.end39_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool24.not = icmp eq i32 %oob_required, 0
  br i1 %tobool24.not, label %land.lhs.true.if.end39_crit_edge, label %if.then25

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %22 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %24 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %oobsize, align 4
  %call26 = call i32 @nand_read_data_op(ptr noundef %chip, ptr noundef %23, i32 noundef %25, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end39

if.else:                                          ; preds = %lor.lhs.false
  %26 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %writesize, align 4
  %call29 = call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef 0, ptr noundef %buf, i32 noundef %27, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true31, label %if.else.if.end39_crit_edge

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

land.lhs.true31:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool32.not = icmp eq i32 %oob_required, 0
  br i1 %tobool32.not, label %land.lhs.true31.if.end39_crit_edge, label %if.then33

land.lhs.true31.if.end39_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then33:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %writesize, align 4
  %oob_poi35 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %30 = ptrtoint ptr %oob_poi35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %oob_poi35, align 4
  %oobsize36 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %32 = ptrtoint ptr %oobsize36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %oobsize36, align 4
  %call37 = call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %29, ptr noundef %31, i32 noundef %33, i1 noundef zeroext false) #9
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %land.lhs.true31.if.end39_crit_edge, %if.else.if.end39_crit_edge, %if.then25, %land.lhs.true.if.end39_crit_edge, %if.end20.if.end39_crit_edge
  %ret.0 = phi i32 [ %call22, %if.end20.if.end39_crit_edge ], [ %call26, %if.then25 ], [ 0, %land.lhs.true.if.end39_crit_edge ], [ %call29, %if.else.if.end39_crit_edge ], [ %call37, %if.then33 ], [ 0, %land.lhs.true31.if.end39_crit_edge ]
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %34 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %strength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp = icmp eq i32 %35, 4
  %36 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %status, align 1
  br i1 %cmp, label %if.then40, label %if.else42

if.then40:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %call41 = call fastcc i32 @micron_nand_on_die_ecc_status_4(ptr noundef %chip, i8 noundef zeroext %37, ptr noundef %buf, i32 noundef %page, i32 noundef %oob_required)
  br label %out

if.else42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = call fastcc i32 @micron_nand_on_die_ecc_status_8(ptr noundef %chip, i8 noundef zeroext %37)
  br label %out

out:                                              ; preds = %if.else42, %if.then40, %if.then13.out_crit_edge, %if.end5.out_crit_edge, %if.end.out_crit_edge
  %ret.1 = phi i32 [ %call2, %if.end.out_crit_edge ], [ %call6, %if.end5.out_crit_edge ], [ %call17, %if.then13.out_crit_edge ], [ %ret.0, %if.then40 ], [ %ret.0, %if.else42 ]
  %max_bitflips.0 = phi i32 [ 0, %if.end.out_crit_edge ], [ 0, %if.end5.out_crit_edge ], [ 0, %if.then13.out_crit_edge ], [ %call41, %if.then40 ], [ %call43, %if.else42 ]
  %38 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %feature.i88) #9
  %40 = ptrtoint ptr %feature.i88 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %feature.i88, align 4
  %41 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %39, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i90 = icmp eq i8 %42, 0
  br i1 %tobool.not.i90, label %if.end.i93, label %out.micron_nand_on_die_ecc_setup.exit99_crit_edge

out.micron_nand_on_die_ecc_setup.exit99_crit_edge: ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %micron_nand_on_die_ecc_setup.exit99

if.end.i93:                                       ; preds = %out
  %enabled.i91 = getelementptr inbounds %struct.micron_on_die_ecc, ptr %39, i32 0, i32 1
  %43 = ptrtoint ptr %enabled.i91 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %enabled.i91, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp.i92 = icmp eq i8 %44, 0
  br i1 %cmp.i92, label %if.end.i93.micron_nand_on_die_ecc_setup.exit99_crit_edge, label %if.end7.i94

if.end.i93.micron_nand_on_die_ecc_setup.exit99_crit_edge: ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %micron_nand_on_die_ecc_setup.exit99

if.end7.i94:                                      ; preds = %if.end.i93
  %call13.i95 = call i32 @nand_set_features(ptr noundef %chip, i32 noundef 144, ptr noundef nonnull %feature.i88) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i95)
  %tobool14.not.i96 = icmp eq i32 %call13.i95, 0
  br i1 %tobool14.not.i96, label %if.then15.i97, label %if.end7.i94.micron_nand_on_die_ecc_setup.exit99_crit_edge

if.end7.i94.micron_nand_on_die_ecc_setup.exit99_crit_edge: ; preds = %if.end7.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %micron_nand_on_die_ecc_setup.exit99

if.then15.i97:                                    ; preds = %if.end7.i94
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %enabled.i91 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %enabled.i91, align 1
  br label %micron_nand_on_die_ecc_setup.exit99

micron_nand_on_die_ecc_setup.exit99:              ; preds = %if.then15.i97, %if.end7.i94.micron_nand_on_die_ecc_setup.exit99_crit_edge, %if.end.i93.micron_nand_on_die_ecc_setup.exit99_crit_edge, %out.micron_nand_on_die_ecc_setup.exit99_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature.i88) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool46.not = icmp eq i32 %ret.1, 0
  %max_bitflips.0.ret.1 = select i1 %tobool46.not, i32 %max_bitflips.0, i32 %ret.1
  br label %cleanup

cleanup:                                          ; preds = %micron_nand_on_die_ecc_setup.exit99, %micron_nand_on_die_ecc_setup.exit
  %retval.0 = phi i32 [ %max_bitflips.0.ret.1, %micron_nand_on_die_ecc_setup.exit99 ], [ %call13.i, %micron_nand_on_die_ecc_setup.exit ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @micron_nand_write_page_on_die_ecc(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #0 align 64 {
entry:
  %feature.i7 = alloca [4 x i8], align 4
  %feature.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %feature.i) #9
  %2 = ptrtoint ptr %feature.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %feature.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %enabled.i = getelementptr inbounds %struct.micron_on_die_ecc, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enabled.i, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.i = icmp eq i8 %6, 1
  br i1 %cmp.i, label %if.end.i.if.end_crit_edge, label %if.end7.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end7.i:                                        ; preds = %if.end.i
  %7 = ptrtoint ptr %feature.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %feature.i, align 4
  %9 = or i8 %8, 8
  store i8 %9, ptr %feature.i, align 4
  %call13.i = call i32 @nand_set_features(ptr noundef %chip, i32 noundef 144, ptr noundef nonnull %feature.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %micron_nand_on_die_ecc_setup.exit

if.then15.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %enabled.i, align 1
  br label %if.end

micron_nand_on_die_ecc_setup.exit:                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.then15.i, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature.i) #9
  %call1 = call i32 @nand_write_page_raw(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #9
  %11 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %feature.i7) #9
  %13 = ptrtoint ptr %feature.i7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %feature.i7, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %12, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i9 = icmp eq i8 %15, 0
  br i1 %tobool.not.i9, label %if.end.i12, label %if.end.micron_nand_on_die_ecc_setup.exit18_crit_edge

if.end.micron_nand_on_die_ecc_setup.exit18_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %micron_nand_on_die_ecc_setup.exit18

if.end.i12:                                       ; preds = %if.end
  %enabled.i10 = getelementptr inbounds %struct.micron_on_die_ecc, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %enabled.i10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %enabled.i10, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.i11 = icmp eq i8 %17, 0
  br i1 %cmp.i11, label %if.end.i12.micron_nand_on_die_ecc_setup.exit18_crit_edge, label %if.end7.i13

if.end.i12.micron_nand_on_die_ecc_setup.exit18_crit_edge: ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %micron_nand_on_die_ecc_setup.exit18

if.end7.i13:                                      ; preds = %if.end.i12
  %call13.i14 = call i32 @nand_set_features(ptr noundef %chip, i32 noundef 144, ptr noundef nonnull %feature.i7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i14)
  %tobool14.not.i15 = icmp eq i32 %call13.i14, 0
  br i1 %tobool14.not.i15, label %if.then15.i16, label %if.end7.i13.micron_nand_on_die_ecc_setup.exit18_crit_edge

if.end7.i13.micron_nand_on_die_ecc_setup.exit18_crit_edge: ; preds = %if.end7.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %micron_nand_on_die_ecc_setup.exit18

if.then15.i16:                                    ; preds = %if.end7.i13
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %enabled.i10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %enabled.i10, align 1
  br label %micron_nand_on_die_ecc_setup.exit18

micron_nand_on_die_ecc_setup.exit18:              ; preds = %if.then15.i16, %if.end7.i13.micron_nand_on_die_ecc_setup.exit18_crit_edge, %if.end.i12.micron_nand_on_die_ecc_setup.exit18_crit_edge, %if.end.micron_nand_on_die_ecc_setup.exit18_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature.i7) #9
  br label %cleanup

cleanup:                                          ; preds = %micron_nand_on_die_ecc_setup.exit18, %micron_nand_on_die_ecc_setup.exit
  %retval.0 = phi i32 [ %call1, %micron_nand_on_die_ecc_setup.exit18 ], [ %call13.i, %micron_nand_on_die_ecc_setup.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_raw_notsupp(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_write_page_raw_notsupp(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_raw(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_write_page_raw(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @micron_nand_setup_read_retry(ptr noundef %chip, i32 noundef %retry_mode) #0 align 64 {
entry:
  %feature = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %feature) #9
  %0 = getelementptr inbounds [4 x i8], ptr %feature, i32 0, i32 1
  %conv = trunc i32 %retry_mode to i8
  %1 = ptrtoint ptr %feature to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %feature, align 1
  %2 = call ptr @memset(ptr %0, i32 0, i32 3)
  %call = call i32 @nand_set_features(ptr noundef %chip, i32 noundef 137, ptr noundef nonnull %feature) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_set_features(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @micron_nand_on_die_ecc_setup(ptr noundef %chip, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  %feature = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %feature) #9
  %2 = ptrtoint ptr %feature to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %feature, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled = getelementptr inbounds %struct.micron_on_die_ecc, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enabled, align 1, !range !25
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %frombool)
  %cmp = icmp eq i8 %6, %frombool
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  br i1 %enable, label %if.then9, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %feature to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %feature, align 4
  %9 = or i8 %8, 8
  store i8 %9, ptr %feature, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge
  %call13 = call i32 @nand_set_features(ptr noundef %chip, i32 noundef 144, ptr noundef nonnull %feature) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then15 ], [ %call13, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_readid_op(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @micron_nand_on_die_4_ooblayout_ecc(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %section)
  %cmp = icmp sgt i32 %section, 3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul = shl i32 %section, 4
  %add = or i32 %mul, 8
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @micron_nand_on_die_4_ooblayout_free(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %section)
  %cmp = icmp sgt i32 %section, 3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul = shl i32 %section, 4
  %add = or i32 %mul, 2
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 6, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @micron_nand_on_die_8_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %0 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oobsize, align 4
  %total = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 6
  %2 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %total, align 8
  %sub = sub i32 %1, %3
  %4 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %oobregion, align 4
  %5 = load i32, ptr %total, align 8
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @micron_nand_on_die_8_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %oobregion, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %1 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %oobsize, align 4
  %total = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 6
  %3 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %total, align 8
  %sub = add i32 %2, -2
  %sub1 = sub i32 %sub, %4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub1, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_status_op(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_data_op(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_exit_status_op(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_read_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @micron_nand_on_die_ecc_status_4(ptr noundef %chip, i8 noundef zeroext %status, ptr nocapture noundef readonly %buf, i32 noundef %page, i32 noundef %oob_required) unnamed_addr #0 align 64 {
entry:
  %feature.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %conv = zext i8 %status to i32
  %and = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %and3 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then.cleanup341_crit_edge, label %if.then5

if.then.cleanup341_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup341

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %failed = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  %2 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %failed, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %failed, align 4
  br label %cleanup341

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool7.not = icmp eq i32 %oob_required, 0
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end26_crit_edge

if.end6.if.end26_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then8:                                         ; preds = %if.end6
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %4 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controller.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then8.if.then12_crit_edge, label %lor.lhs.false.i

if.then8.if.then12_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

lor.lhs.false.i:                                  ; preds = %if.then8
  %ops.i = getelementptr inbounds %struct.nand_controller, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.then12_crit_edge, label %nand_has_exec_op.exit

lor.lhs.false.i.if.then12_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

nand_has_exec_op.exit:                            ; preds = %lor.lhs.false.i
  %exec_op.i = getelementptr inbounds %struct.nand_controller_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %exec_op.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %exec_op.i, align 4
  %tobool6.not.i.not = icmp eq ptr %9, null
  br i1 %tobool6.not.i.not, label %nand_has_exec_op.exit.if.then12_crit_edge, label %lor.lhs.false

nand_has_exec_op.exit.if.then12_crit_edge:        ; preds = %nand_has_exec_op.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

lor.lhs.false:                                    ; preds = %nand_has_exec_op.exit
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %10 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %12 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %oobsize, align 4
  %call10 = tail call i32 @nand_read_data_op(ptr noundef %chip, ptr noundef %11, i32 noundef %13, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %lor.lhs.false.if.then12_crit_edge, label %if.else

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %nand_has_exec_op.exit.if.then12_crit_edge, %lor.lhs.false.i.if.then12_crit_edge, %if.then8.if.then12_crit_edge
  %oob_poi16 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %14 = ptrtoint ptr %oob_poi16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %oob_poi16, align 4
  %oobsize17 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %16 = ptrtoint ptr %oobsize17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oobsize17, align 4
  %call18 = tail call i32 @nand_read_data_op(ptr noundef %chip, ptr noundef %15, i32 noundef %17, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end22

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %18 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %writesize, align 4
  %20 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %oob_poi, align 4
  %22 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %oobsize, align 4
  %call21 = tail call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %19, ptr noundef %21, i32 noundef %23, i1 noundef zeroext false) #9
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then12
  %ret.0 = phi i32 [ %call18, %if.then12 ], [ %call21, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool23.not = icmp eq i32 %ret.0, 0
  br i1 %tobool23.not, label %if.end22.if.end26_crit_edge, label %if.end22.cleanup341_crit_edge

if.end22.cleanup341_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup341

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end26:                                         ; preds = %if.end22.if.end26_crit_edge, %if.end6.if.end26_crit_edge
  %24 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %feature.i) #9
  %26 = ptrtoint ptr %feature.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %feature.i, align 4
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %25, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i486 = icmp eq i8 %28, 0
  br i1 %tobool.not.i486, label %if.end.i, label %if.end26.micron_nand_on_die_ecc_setup.exit_crit_edge

if.end26.micron_nand_on_die_ecc_setup.exit_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %micron_nand_on_die_ecc_setup.exit

if.end.i:                                         ; preds = %if.end26
  %enabled.i = getelementptr inbounds %struct.micron_on_die_ecc, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %enabled.i, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp.i = icmp eq i8 %30, 0
  br i1 %cmp.i, label %if.end.i.micron_nand_on_die_ecc_setup.exit_crit_edge, label %if.end7.i

if.end.i.micron_nand_on_die_ecc_setup.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %micron_nand_on_die_ecc_setup.exit

if.end7.i:                                        ; preds = %if.end.i
  %call13.i = call i32 @nand_set_features(ptr noundef %chip, i32 noundef 144, ptr noundef nonnull %feature.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end7.i.micron_nand_on_die_ecc_setup.exit_crit_edge

if.end7.i.micron_nand_on_die_ecc_setup.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %micron_nand_on_die_ecc_setup.exit

if.then15.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %enabled.i, align 1
  br label %micron_nand_on_die_ecc_setup.exit

micron_nand_on_die_ecc_setup.exit:                ; preds = %if.then15.i, %if.end7.i.micron_nand_on_die_ecc_setup.exit_crit_edge, %if.end.i.micron_nand_on_die_ecc_setup.exit_crit_edge, %if.end26.micron_nand_on_die_ecc_setup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature.i) #9
  %rawbuf = getelementptr inbounds %struct.micron_on_die_ecc, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %rawbuf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rawbuf, align 4
  %writesize28 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %34 = ptrtoint ptr %writesize28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %writesize28, align 4
  %oobsize29 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %36 = ptrtoint ptr %oobsize29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %oobsize29, align 4
  %add = add i32 %37, %35
  %call30 = call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef %33, i32 noundef %add) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %for.cond.preheader, label %micron_nand_on_die_ecc_setup.exit.cleanup341_crit_edge

micron_nand_on_die_ecc_setup.exit.cleanup341_crit_edge: ; preds = %micron_nand_on_die_ecc_setup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup341

for.cond.preheader:                               ; preds = %micron_nand_on_die_ecc_setup.exit
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %38 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp500.not = icmp eq i32 %39, 0
  br i1 %cmp500.not, label %for.cond.preheader.cleanup341_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup341_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup341

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %oob_poi165 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %ecc_stats332 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  br label %for.body

for.body:                                         ; preds = %for.inc338.for.body_crit_edge, %for.body.lr.ph
  %max_bitflips.0502 = phi i32 [ 0, %for.body.lr.ph ], [ %66, %for.inc338.for.body_crit_edge ]
  %step.0501 = phi i32 [ 0, %for.body.lr.ph ], [ %inc339, %for.inc338.for.body_crit_edge ]
  %40 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size, align 8
  %mul = mul i32 %41, %step.0501
  %42 = ptrtoint ptr %rawbuf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rawbuf, align 4
  %add.ptr = getelementptr i8, ptr %43, i32 %mul
  %add.ptr40 = getelementptr i8, ptr %buf, i32 %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp44492.not = icmp eq i32 %41, 0
  br i1 %cmp44492.not, label %for.body.for.end_crit_edge, label %for.body.cond.false_crit_edge

for.body.cond.false_crit_edge:                    ; preds = %for.body
  br label %cond.false

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cond.false:                                       ; preds = %cond.false.cond.false_crit_edge, %for.body.cond.false_crit_edge
  %nbitflips.0494 = phi i32 [ %add156, %cond.false.cond.false_crit_edge ], [ 0, %for.body.cond.false_crit_edge ]
  %i.0493 = phi i32 [ %inc157, %cond.false.cond.false_crit_edge ], [ 0, %for.body.cond.false_crit_edge ]
  %arrayidx48 = getelementptr i8, ptr %add.ptr, i32 %i.0493
  %44 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx48, align 1
  %arrayidx = getelementptr i8, ptr %add.ptr40, i32 %i.0493
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx, align 1
  %xor479 = xor i8 %45, %47
  %xor = zext i8 %xor479 to i32
  %call.i = call i32 @__sw_hweight8(i32 noundef %xor) #9
  %add156 = add i32 %call.i, %nbitflips.0494
  %inc157 = add nuw i32 %i.0493, 1
  %48 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size, align 8
  %cmp44 = icmp ult i32 %inc157, %49
  br i1 %cmp44, label %cond.false.cond.false_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cond.false.cond.false_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %for.body.for.end_crit_edge
  %nbitflips.0.lcssa = phi i32 [ 0, %for.body.for.end_crit_edge ], [ %add156, %cond.false.for.end_crit_edge ]
  %mul158 = shl i32 %step.0501, 4
  %add159 = or i32 %mul158, 4
  %50 = ptrtoint ptr %rawbuf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rawbuf, align 4
  %52 = ptrtoint ptr %writesize28 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %writesize28, align 4
  %add.ptr163 = getelementptr i8, ptr %51, i32 %53
  %add.ptr164 = getelementptr i8, ptr %add.ptr163, i32 %add159
  %54 = ptrtoint ptr %oob_poi165 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %oob_poi165, align 4
  %add.ptr166 = getelementptr i8, ptr %55, i32 %add159
  %56 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %57)
  %cmp170496.not = icmp eq i32 %57, -4
  br i1 %cmp170496.not, label %for.end.for.end294_crit_edge, label %for.end.cond.false282_crit_edge

for.end.cond.false282_crit_edge:                  ; preds = %for.end
  br label %cond.false282

for.end.for.end294_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end294

cond.false282:                                    ; preds = %cond.false282.cond.false282_crit_edge, %for.end.cond.false282_crit_edge
  %nbitflips.1498 = phi i32 [ %add291, %cond.false282.cond.false282_crit_edge ], [ %nbitflips.0.lcssa, %for.end.cond.false282_crit_edge ]
  %i.1497 = phi i32 [ %inc293, %cond.false282.cond.false282_crit_edge ], [ 0, %for.end.cond.false282_crit_edge ]
  %arrayidx175 = getelementptr i8, ptr %add.ptr164, i32 %i.1497
  %58 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx175, align 1
  %arrayidx173 = getelementptr i8, ptr %add.ptr166, i32 %i.1497
  %60 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx173, align 1
  %xor177473 = xor i8 %59, %61
  %xor177 = zext i8 %xor177473 to i32
  %call.i488 = call i32 @__sw_hweight8(i32 noundef %xor177) #9
  %add291 = add i32 %call.i488, %nbitflips.1498
  %inc293 = add nuw i32 %i.1497, 1
  %62 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bytes, align 4
  %add169 = add i32 %63, 4
  %cmp170 = icmp ult i32 %inc293, %add169
  br i1 %cmp170, label %cond.false282.cond.false282_crit_edge, label %cond.false282.for.end294_crit_edge

cond.false282.for.end294_crit_edge:               ; preds = %cond.false282
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end294

cond.false282.cond.false282_crit_edge:            ; preds = %cond.false282
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false282

for.end294:                                       ; preds = %cond.false282.for.end294_crit_edge, %for.end.for.end294_crit_edge
  %nbitflips.1.lcssa = phi i32 [ %nbitflips.0.lcssa, %for.end.for.end294_crit_edge ], [ %add291, %cond.false282.for.end294_crit_edge ]
  %64 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %strength, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %nbitflips.1.lcssa, i32 %65)
  %cmp296 = icmp ugt i32 %nbitflips.1.lcssa, %65
  br i1 %cmp296, label %cleanup.thread, label %for.inc338, !prof !27

cleanup.thread:                                   ; preds = %for.end294
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 265, i32 noundef 9, ptr noundef null) #9
  br label %cleanup341

for.inc338:                                       ; preds = %for.end294
  %66 = call i32 @llvm.umax.i32(i32 %nbitflips.1.lcssa, i32 %max_bitflips.0502)
  %67 = ptrtoint ptr %ecc_stats332 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ecc_stats332, align 4
  %add333 = add i32 %68, %nbitflips.1.lcssa
  store i32 %add333, ptr %ecc_stats332, align 4
  %inc339 = add nuw i32 %step.0501, 1
  %69 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %steps, align 4
  %cmp = icmp ult i32 %inc339, %70
  br i1 %cmp, label %for.inc338.for.body_crit_edge, label %for.inc338.cleanup341_crit_edge

for.inc338.cleanup341_crit_edge:                  ; preds = %for.inc338
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup341

for.inc338.for.body_crit_edge:                    ; preds = %for.inc338
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup341:                                       ; preds = %for.inc338.cleanup341_crit_edge, %cleanup.thread, %for.cond.preheader.cleanup341_crit_edge, %micron_nand_on_die_ecc_setup.exit.cleanup341_crit_edge, %if.end22.cleanup341_crit_edge, %if.then5, %if.then.cleanup341_crit_edge
  %retval.2 = phi i32 [ 0, %if.then5 ], [ 0, %if.then.cleanup341_crit_edge ], [ %ret.0, %if.end22.cleanup341_crit_edge ], [ %call30, %micron_nand_on_die_ecc_setup.exit.cleanup341_crit_edge ], [ -22, %cleanup.thread ], [ 0, %for.cond.preheader.cleanup341_crit_edge ], [ %66, %for.inc338.cleanup341_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @micron_nand_on_die_ecc_status_8(ptr nocapture noundef %chip, i8 noundef zeroext %status) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %status, 25
  %and = zext i8 %0 to i32
  %1 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 16, label %sw.bb1
    i32 8, label %sw.bb3
    i32 24, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %failed = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  br label %cleanup.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ecc_stats2 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ecc_stats4 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  br label %cleanup.sink.split

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ecc_stats8 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb7, %sw.bb3, %sw.bb1, %sw.bb
  %ecc_stats8.sink15 = phi ptr [ %ecc_stats8, %sw.bb7 ], [ %ecc_stats4, %sw.bb3 ], [ %ecc_stats2, %sw.bb1 ], [ %failed, %sw.bb ]
  %.sink14 = phi i32 [ 8, %sw.bb7 ], [ 6, %sw.bb3 ], [ 3, %sw.bb1 ], [ 1, %sw.bb ]
  %retval.0.ph = phi i32 [ 8, %sw.bb7 ], [ 6, %sw.bb3 ], [ 3, %sw.bb1 ], [ 0, %sw.bb ]
  %2 = ptrtoint ptr %ecc_stats8.sink15 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ecc_stats8.sink15, align 4
  %add10 = add i32 %3, %.sink14
  store i32 %add10, ptr %ecc_stats8.sink15, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @micron_nand_manuf_ops, !1, !"micron_nand_manuf_ops", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/nand_micron.c", i32 595, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/raw/nand_micron.c", i32 506, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @micron_nand_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @micron_nand_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/nand_micron.c", i32 513, i32 4}
!10 = !{ptr @micron_nand_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @micron_nand_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @micron_nand_on_die_4_ooblayout_ops, !13, !"micron_nand_on_die_4_ooblayout_ops", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/nand_micron.c", i32 126, i32 39}
!14 = !{ptr @micron_nand_on_die_8_ooblayout_ops, !15, !"micron_nand_on_die_8_ooblayout_ops", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/nand_micron.c", i32 161, i32 39}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i8 0, i8 2}
!26 = !{!"auto-init"}
!27 = !{!"branch_weights", i32 1, i32 2000}
