; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/ingenic/jz4780_bch.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/ingenic/jz4780_bch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ingenic_ecc_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ingenic_ecc = type { ptr, ptr, ptr, ptr, %struct.mutex }
%struct.ingenic_ecc_params = type { i32, i32, i32 }

@__initcall__kmod_jz4780_bch__170_266_jz4780_bch_driver_init6 = internal global ptr @jz4780_bch_driver_init, section ".initcall6.init", align 4
@jz4780_bch_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @jz4780_bch_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @jz4780_bch_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_jz4780_bch_driver_exit = internal global ptr @jz4780_bch_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [53 x i8] c"jz4780_bch.author=Alex Smith <alex@alex-smith.me.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [58 x i8] c"jz4780_bch.author=Harvey Hunt <harveyhuntnexus@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [66 x i8] c"jz4780_bch.description=Ingenic JZ4780 BCH error correction driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [56 x i8] c"jz4780_bch.file=drivers/mtd/nand/raw/ingenic/jz4780_bch\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [26 x i8] c"jz4780_bch.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"jz4780-bch\00", [21 x i8] zeroinitializer }, align 32
@jz4780_bch_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4780-bch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4780_bch_ops }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@jz4780_bch_ops = internal constant { %struct.ingenic_ecc_ops, [20 x i8] } { %struct.ingenic_ecc_ops { ptr @jz4780_bch_disable, ptr @jz4780_calculate, ptr @jz4780_correct }, [20 x i8] zeroinitializer }, align 32
@jz4780_calculate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 174, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"timed out while calculating ECC\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"jz4780_calculate\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/mtd/nand/raw/ingenic/jz4780_bch.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@jz4780_calculate._entry_ptr = internal global ptr @jz4780_calculate._entry, section ".printk_index", align 4
@jz4780_correct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 197, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"timed out while correcting data\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jz4780_correct\00", [17 x i8] zeroinitializer }, align 32
@jz4780_correct._entry_ptr = internal global ptr @jz4780_correct._entry, section ".printk_index", align 4
@jz4780_correct._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 203, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"uncorrectable ECC error\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@jz4780_correct._entry_ptr.11 = internal global ptr @jz4780_correct._entry.8, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"jz4780_bch_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 259, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 262, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [20 x i8] c"jz4780_bch_dt_match\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 253, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"jz4780_bch_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 247, i32 37 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 174, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 197, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [45 x i8] c"../drivers/mtd/nand/raw/ingenic/jz4780_bch.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 203, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_jz4780_bch_driver_exit, ptr @__initcall__kmod_jz4780_bch__170_266_jz4780_bch_driver_init6, ptr @jz4780_bch_driver_exit, ptr @jz4780_calculate._entry, ptr @jz4780_calculate._entry_ptr, ptr @jz4780_correct._entry, ptr @jz4780_correct._entry.8, ptr @jz4780_correct._entry_ptr, ptr @jz4780_correct._entry_ptr.11, ptr @jz4780_bch_driver, ptr @.str, ptr @jz4780_bch_dt_match, ptr @jz4780_bch_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_bch_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_bch_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_bch_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_calculate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_correct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_correct._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_bch_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @jz4780_bch_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jz4780_bch_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @jz4780_bch_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_bch_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ingenic_ecc_probe(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.ingenic_ecc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call2 = tail call i32 @clk_set_rate(ptr noundef %3, i32 noundef 200000000) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ingenic_ecc_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jz4780_bch_disable(ptr nocapture noundef readonly %bch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %base = getelementptr inbounds %struct.ingenic_ecc, ptr %bch, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 388
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 16777216) #5, !srcloc !50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_calculate(ptr noundef %bch, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %buf, ptr nocapture noundef writeonly %ecc_code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ingenic_ecc, ptr %bch, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %base.i = getelementptr inbounds %struct.ingenic_ecc, ptr %bch, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 388
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %4, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %2) #5, !srcloc !50
  %5 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %params, align 4
  %bytes.i = getelementptr inbounds %struct.ingenic_ecc_params, ptr %params, i32 0, i32 1
  %7 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bytes.i, align 4
  %shl4.i = shl i32 %8, 16
  %or.i = or i32 %shl4.i, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %9) #5, !srcloc !50
  %strength.i = getelementptr inbounds %struct.ingenic_ecc_params, ptr %params, i32 0, i32 2
  %12 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %strength.i, align 4
  %shl10.i = shl i32 %13, 4
  %spec.select.i = or i32 %shl10.i, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #5
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #5, !srcloc !50
  %17 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %params, align 4
  %rem.i = and i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %tobool.not16.i = icmp ult i32 %18, 4
  br i1 %tobool.not16.i, label %entry.while.cond1.preheader.i_crit_edge, label %do.body.lr.ph.i

entry.while.cond1.preheader.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond1.preheader.i

do.body.lr.ph.i:                                  ; preds = %entry
  %div15.i = lshr i32 %18, 2
  br label %do.body.i

while.cond1.preheader.i:                          ; preds = %do.body.i.while.cond1.preheader.i_crit_edge, %entry.while.cond1.preheader.i_crit_edge
  %src32.0.lcssa.i = phi ptr [ %buf, %entry.while.cond1.preheader.i_crit_edge ], [ %incdec.ptr.i, %do.body.i.while.cond1.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool3.not19.i = icmp eq i32 %rem.i, 0
  br i1 %tobool3.not19.i, label %while.cond1.preheader.i.jz4780_bch_write_data.exit_crit_edge, label %do.body5.i

while.cond1.preheader.i.jz4780_bch_write_data.exit_crit_edge: ; preds = %while.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %jz4780_bch_write_data.exit

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %src32.018.i = phi ptr [ %buf, %do.body.lr.ph.i ], [ %incdec.ptr.i, %do.body.i.do.body.i_crit_edge ]
  %size32.017.i = phi i32 [ %div15.i, %do.body.lr.ph.i ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %dec.i = add nsw i32 %size32.017.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %incdec.ptr.i = getelementptr i32, ptr %src32.018.i, i32 1
  %19 = ptrtoint ptr %src32.018.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %src32.018.i, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %21) #5, !srcloc !50
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.body.i.while.cond1.preheader.i_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.i.while.cond1.preheader.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond1.preheader.i

do.body5.i:                                       ; preds = %while.cond1.preheader.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %src32.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %src32.0.lcssa.i, align 1
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %27, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i, i8 %25) #5, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rem.i)
  %tobool3.not.i = icmp eq i32 %rem.i, 1
  br i1 %tobool3.not.i, label %do.body5.i.jz4780_bch_write_data.exit_crit_edge, label %do.body5.i.1

do.body5.i.jz4780_bch_write_data.exit_crit_edge:  ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %jz4780_bch_write_data.exit

do.body5.i.1:                                     ; preds = %do.body5.i
  %incdec.ptr8.i = getelementptr i8, ptr %src32.0.lcssa.i, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %incdec.ptr8.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr8.i, align 1
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr10.i.1 = getelementptr i8, ptr %31, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i.1, i8 %29) #5, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem.i)
  %tobool3.not.i.1 = icmp eq i32 %rem.i, 2
  br i1 %tobool3.not.i.1, label %do.body5.i.1.jz4780_bch_write_data.exit_crit_edge, label %do.body5.i.2

do.body5.i.1.jz4780_bch_write_data.exit_crit_edge: ; preds = %do.body5.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %jz4780_bch_write_data.exit

do.body5.i.2:                                     ; preds = %do.body5.i.1
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr8.i.1 = getelementptr i8, ptr %src32.0.lcssa.i, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %incdec.ptr8.i.1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr8.i.1, align 1
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr10.i.2 = getelementptr i8, ptr %35, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i.2, i8 %33) #5, !srcloc !58
  br label %jz4780_bch_write_data.exit

jz4780_bch_write_data.exit:                       ; preds = %do.body5.i.2, %do.body5.i.1.jz4780_bch_write_data.exit_crit_edge, %do.body5.i.jz4780_bch_write_data.exit_crit_edge, %while.cond1.preheader.i.jz4780_bch_write_data.exit_crit_edge
  %call.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call.i, 100000000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %jz4780_bch_write_data.exit
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %37, i32 388
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #5, !srcloc !48
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %and.i = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp10.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp10.i.not, label %land.lhs.true.i, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call13.i = tail call i64 @ktime_get() #5
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then16.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %41, i32 388
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #5, !srcloc !48
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  br label %for.end.i

for.end.i:                                        ; preds = %if.then16.i, %for.cond.i.for.end.i_crit_edge
  %reg.0.i = phi i32 [ %43, %if.then16.i ], [ %39, %for.cond.i.for.end.i_crit_edge ]
  %and29.i = and i32 %reg.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %cmp30.i.not = icmp eq i32 %and29.i, 0
  br i1 %cmp30.i.not, label %do.end, label %if.then

if.then:                                          ; preds = %for.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %44 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #5
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i, align 4
  %add.ptr41.i = getelementptr i8, ptr %46, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i, i32 %44) #5, !srcloc !50
  %47 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bytes.i, align 4
  %rem.i15 = and i32 %48, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %tobool.not30.i = icmp ult i32 %48, 4
  br i1 %tobool.not30.i, label %if.then.while.end.i_crit_edge, label %while.body.lr.ph.i

if.then.while.end.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.then
  %div29.i = lshr i32 %48, 2
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %size32.033.i = phi i32 [ %div29.i, %while.body.lr.ph.i ], [ %dec.i17, %while.body.i.while.body.i_crit_edge ]
  %dest32.032.i = phi ptr [ %ecc_code, %while.body.lr.ph.i ], [ %incdec.ptr.i19, %while.body.i.while.body.i_crit_edge ]
  %offset.031.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i17 = add nsw i32 %size32.033.i, -1
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %50, i32 20
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i18, i32 %offset.031.i
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #5, !srcloc !48
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  %incdec.ptr.i19 = getelementptr i32, ptr %dest32.032.i, i32 1
  %53 = ptrtoint ptr %dest32.032.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %dest32.032.i, align 4
  %add.i = add nuw i32 %offset.031.i, 4
  %tobool.not.i20 = icmp eq i32 %dec.i17, 0
  br i1 %tobool.not.i20, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.then.while.end.i_crit_edge
  %offset.0.lcssa.i = phi i32 [ 0, %if.then.while.end.i_crit_edge ], [ %add.i, %while.body.i.while.end.i_crit_edge ]
  %dest32.0.lcssa.i = phi ptr [ %ecc_code, %if.then.while.end.i_crit_edge ], [ %incdec.ptr.i19, %while.body.i.while.end.i_crit_edge ]
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %55, i32 20
  %add.ptr7.i = getelementptr i8, ptr %add.ptr6.i, i32 %offset.0.lcssa.i
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #5, !srcloc !48
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %58 = zext i32 %rem.i15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rem.i15, label %while.end.i.if.end_crit_edge [
    i32 3, label %sw.bb.i
    i32 2, label %while.end.i.sw.bb11.i_crit_edge
    i32 1, label %while.end.i.sw.bb16.i_crit_edge
  ]

while.end.i.sw.bb16.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb16.i

while.end.i.sw.bb11.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11.i

while.end.i.if.end_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb.i:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i = lshr i32 %57, 16
  %conv.i = trunc i32 %shr.i to i8
  %arrayidx.i = getelementptr i8, ptr %dest32.0.lcssa.i, i32 2
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  br label %sw.bb11.i

sw.bb11.i:                                        ; preds = %sw.bb.i, %while.end.i.sw.bb11.i_crit_edge
  %shr12.i = lshr i32 %57, 8
  %conv14.i = trunc i32 %shr12.i to i8
  %arrayidx15.i = getelementptr i8, ptr %dest32.0.lcssa.i, i32 1
  %60 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv14.i, ptr %arrayidx15.i, align 1
  br label %sw.bb16.i

sw.bb16.i:                                        ; preds = %sw.bb11.i, %while.end.i.sw.bb16.i_crit_edge
  %conv18.i = trunc i32 %57 to i8
  %61 = ptrtoint ptr %dest32.0.lcssa.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv18.i, ptr %dest32.0.lcssa.i, align 1
  br label %if.end

do.end:                                           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bch, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.1) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb16.i, %while.end.i.if.end_crit_edge
  %ret.0 = phi i32 [ -110, %do.end ], [ 0, %while.end.i.if.end_crit_edge ], [ 0, %sw.bb16.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %65, i32 388
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i, align 4
  %add.ptr3.i23 = getelementptr i8, ptr %68, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i23, i32 %66) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %69 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i, align 4
  %add.ptr7.i24 = getelementptr i8, ptr %70, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i24, i32 16777216) #5, !srcloc !50
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_correct(ptr noundef %bch, ptr nocapture noundef readonly %params, ptr nocapture noundef %buf, ptr nocapture noundef readonly %ecc_code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ingenic_ecc, ptr %bch, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %base.i = getelementptr inbounds %struct.ingenic_ecc, ptr %bch, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 388
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %4, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %2) #5, !srcloc !50
  %5 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %params, align 4
  %bytes.i = getelementptr inbounds %struct.ingenic_ecc_params, ptr %params, i32 0, i32 1
  %7 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bytes.i, align 4
  %shl4.i = shl i32 %8, 16
  %or.i = or i32 %shl4.i, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %9) #5, !srcloc !50
  %strength.i = getelementptr inbounds %struct.ingenic_ecc_params, ptr %params, i32 0, i32 2
  %12 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %strength.i, align 4
  %shl10.i = shl i32 %13, 4
  %spec.select.i = or i32 %shl10.i, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #5
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #5, !srcloc !50
  %17 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %params, align 4
  %rem.i = and i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %tobool.not16.i = icmp ult i32 %18, 4
  br i1 %tobool.not16.i, label %entry.while.cond1.preheader.i_crit_edge, label %do.body.lr.ph.i

entry.while.cond1.preheader.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond1.preheader.i

do.body.lr.ph.i:                                  ; preds = %entry
  %div15.i = lshr i32 %18, 2
  br label %do.body.i

while.cond1.preheader.i:                          ; preds = %do.body.i.while.cond1.preheader.i_crit_edge, %entry.while.cond1.preheader.i_crit_edge
  %src32.0.lcssa.i = phi ptr [ %buf, %entry.while.cond1.preheader.i_crit_edge ], [ %incdec.ptr.i, %do.body.i.while.cond1.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool3.not19.i = icmp eq i32 %rem.i, 0
  br i1 %tobool3.not19.i, label %while.cond1.preheader.i.jz4780_bch_write_data.exit_crit_edge, label %do.body5.i

while.cond1.preheader.i.jz4780_bch_write_data.exit_crit_edge: ; preds = %while.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %jz4780_bch_write_data.exit

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %src32.018.i = phi ptr [ %buf, %do.body.lr.ph.i ], [ %incdec.ptr.i, %do.body.i.do.body.i_crit_edge ]
  %size32.017.i = phi i32 [ %div15.i, %do.body.lr.ph.i ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %dec.i = add nsw i32 %size32.017.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %incdec.ptr.i = getelementptr i32, ptr %src32.018.i, i32 1
  %19 = ptrtoint ptr %src32.018.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %src32.018.i, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %21) #5, !srcloc !50
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.body.i.while.cond1.preheader.i_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.i.while.cond1.preheader.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond1.preheader.i

do.body5.i:                                       ; preds = %while.cond1.preheader.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %src32.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %src32.0.lcssa.i, align 1
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %27, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i, i8 %25) #5, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rem.i)
  %tobool3.not.i = icmp eq i32 %rem.i, 1
  br i1 %tobool3.not.i, label %do.body5.i.jz4780_bch_write_data.exit_crit_edge, label %do.body5.i.1

do.body5.i.jz4780_bch_write_data.exit_crit_edge:  ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %jz4780_bch_write_data.exit

do.body5.i.1:                                     ; preds = %do.body5.i
  %incdec.ptr8.i = getelementptr i8, ptr %src32.0.lcssa.i, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %incdec.ptr8.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr8.i, align 1
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr10.i.1 = getelementptr i8, ptr %31, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i.1, i8 %29) #5, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem.i)
  %tobool3.not.i.1 = icmp eq i32 %rem.i, 2
  br i1 %tobool3.not.i.1, label %do.body5.i.1.jz4780_bch_write_data.exit_crit_edge, label %do.body5.i.2

do.body5.i.1.jz4780_bch_write_data.exit_crit_edge: ; preds = %do.body5.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %jz4780_bch_write_data.exit

do.body5.i.2:                                     ; preds = %do.body5.i.1
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr8.i.1 = getelementptr i8, ptr %src32.0.lcssa.i, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %incdec.ptr8.i.1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr8.i.1, align 1
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr10.i.2 = getelementptr i8, ptr %35, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i.2, i8 %33) #5, !srcloc !58
  br label %jz4780_bch_write_data.exit

jz4780_bch_write_data.exit:                       ; preds = %do.body5.i.2, %do.body5.i.1.jz4780_bch_write_data.exit_crit_edge, %do.body5.i.jz4780_bch_write_data.exit_crit_edge, %while.cond1.preheader.i.jz4780_bch_write_data.exit_crit_edge
  %36 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bytes.i, align 4
  %rem.i50 = and i32 %37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %37)
  %tobool.not16.i51 = icmp ult i32 %37, 4
  br i1 %tobool.not16.i51, label %jz4780_bch_write_data.exit.while.cond1.preheader.i57_crit_edge, label %do.body.lr.ph.i54

jz4780_bch_write_data.exit.while.cond1.preheader.i57_crit_edge: ; preds = %jz4780_bch_write_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond1.preheader.i57

do.body.lr.ph.i54:                                ; preds = %jz4780_bch_write_data.exit
  %div15.i52 = lshr i32 %37, 2
  br label %do.body.i66

while.cond1.preheader.i57:                        ; preds = %do.body.i66.while.cond1.preheader.i57_crit_edge, %jz4780_bch_write_data.exit.while.cond1.preheader.i57_crit_edge
  %src32.0.lcssa.i55 = phi ptr [ %ecc_code, %jz4780_bch_write_data.exit.while.cond1.preheader.i57_crit_edge ], [ %incdec.ptr.i63, %do.body.i66.while.cond1.preheader.i57_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i50)
  %tobool3.not19.i56 = icmp eq i32 %rem.i50, 0
  br i1 %tobool3.not19.i56, label %while.cond1.preheader.i57.jz4780_bch_write_data.exit74_crit_edge, label %do.body5.i73

while.cond1.preheader.i57.jz4780_bch_write_data.exit74_crit_edge: ; preds = %while.cond1.preheader.i57
  call void @__sanitizer_cov_trace_pc() #7
  br label %jz4780_bch_write_data.exit74

do.body.i66:                                      ; preds = %do.body.i66.do.body.i66_crit_edge, %do.body.lr.ph.i54
  %src32.018.i60 = phi ptr [ %ecc_code, %do.body.lr.ph.i54 ], [ %incdec.ptr.i63, %do.body.i66.do.body.i66_crit_edge ]
  %size32.017.i61 = phi i32 [ %div15.i52, %do.body.lr.ph.i54 ], [ %dec.i62, %do.body.i66.do.body.i66_crit_edge ]
  %dec.i62 = add nsw i32 %size32.017.i61, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %incdec.ptr.i63 = getelementptr i32, ptr %src32.018.i60, i32 1
  %38 = ptrtoint ptr %src32.018.i60 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %src32.018.i60, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %42, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %40) #5, !srcloc !50
  %tobool.not.i65 = icmp eq i32 %dec.i62, 0
  br i1 %tobool.not.i65, label %do.body.i66.while.cond1.preheader.i57_crit_edge, label %do.body.i66.do.body.i66_crit_edge

do.body.i66.do.body.i66_crit_edge:                ; preds = %do.body.i66
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i66

do.body.i66.while.cond1.preheader.i57_crit_edge:  ; preds = %do.body.i66
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond1.preheader.i57

do.body5.i73:                                     ; preds = %while.cond1.preheader.i57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %43 = ptrtoint ptr %src32.0.lcssa.i55 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %src32.0.lcssa.i55, align 1
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i, align 4
  %add.ptr10.i71 = getelementptr i8, ptr %46, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i71, i8 %44) #5, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rem.i50)
  %tobool3.not.i72 = icmp eq i32 %rem.i50, 1
  br i1 %tobool3.not.i72, label %do.body5.i73.jz4780_bch_write_data.exit74_crit_edge, label %do.body5.i73.1

do.body5.i73.jz4780_bch_write_data.exit74_crit_edge: ; preds = %do.body5.i73
  call void @__sanitizer_cov_trace_pc() #7
  br label %jz4780_bch_write_data.exit74

do.body5.i73.1:                                   ; preds = %do.body5.i73
  %incdec.ptr8.i70 = getelementptr i8, ptr %src32.0.lcssa.i55, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %47 = ptrtoint ptr %incdec.ptr8.i70 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %incdec.ptr8.i70, align 1
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 4
  %add.ptr10.i71.1 = getelementptr i8, ptr %50, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i71.1, i8 %48) #5, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem.i50)
  %tobool3.not.i72.1 = icmp eq i32 %rem.i50, 2
  br i1 %tobool3.not.i72.1, label %do.body5.i73.1.jz4780_bch_write_data.exit74_crit_edge, label %do.body5.i73.2

do.body5.i73.1.jz4780_bch_write_data.exit74_crit_edge: ; preds = %do.body5.i73.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %jz4780_bch_write_data.exit74

do.body5.i73.2:                                   ; preds = %do.body5.i73.1
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr8.i70.1 = getelementptr i8, ptr %src32.0.lcssa.i55, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %51 = ptrtoint ptr %incdec.ptr8.i70.1 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %incdec.ptr8.i70.1, align 1
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 4
  %add.ptr10.i71.2 = getelementptr i8, ptr %54, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i71.2, i8 %52) #5, !srcloc !58
  br label %jz4780_bch_write_data.exit74

jz4780_bch_write_data.exit74:                     ; preds = %do.body5.i73.2, %do.body5.i73.1.jz4780_bch_write_data.exit74_crit_edge, %do.body5.i73.jz4780_bch_write_data.exit74_crit_edge, %while.cond1.preheader.i57.jz4780_bch_write_data.exit74_crit_edge
  %call.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call.i, 100000000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %jz4780_bch_write_data.exit74
  %55 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i, align 4
  %add.ptr.i76 = getelementptr i8, ptr %56, i32 388
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76) #5, !srcloc !48
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %and.i = and i32 %58, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp10.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp10.i.not, label %land.lhs.true.i, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call13.i = tail call i64 @ktime_get() #5
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then16.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %60, i32 388
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #5, !srcloc !48
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  br label %for.end.i

for.end.i:                                        ; preds = %if.then16.i, %for.cond.i.for.end.i_crit_edge
  %reg.0.i = phi i32 [ %62, %if.then16.i ], [ %58, %for.cond.i.for.end.i_crit_edge ]
  %and29.i = and i32 %reg.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %cmp30.i.not = icmp eq i32 %and29.i, 0
  br i1 %cmp30.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bch, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.6) #8
  br label %out

if.end:                                           ; preds = %for.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %65 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #5
  %66 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i, align 4
  %add.ptr41.i = getelementptr i8, ptr %67, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i, i32 %65) #5, !srcloc !50
  %and = and i32 %reg.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %do.end4

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bch, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %69, ptr noundef nonnull @.str.9) #8
  br label %out

if.end6:                                          ; preds = %if.end
  %and7 = and i32 %reg.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.out_crit_edge, label %if.then9

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then9:                                         ; preds = %if.end6
  %and10 = lshr i32 %reg.0.i, 24
  %shr = and i32 %and10, 127
  %and11 = lshr i32 %reg.0.i, 16
  %shr12 = and i32 %and11, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp83.not = icmp eq i32 %shr, 0
  br i1 %cmp83.not, label %if.then9.out_crit_edge, label %if.then9.for.body_crit_edge

if.then9.for.body_crit_edge:                      ; preds = %if.then9
  br label %for.body

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then9.for.body_crit_edge
  %i.084 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then9.for.body_crit_edge ]
  %70 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %71, i32 132
  %mul = shl i32 %i.084, 2
  %add.ptr13 = getelementptr i8, ptr %add.ptr, i32 %mul
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #5, !srcloc !48
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  %shr17 = lshr i32 %73, 16
  %and18 = shl i32 %73, 1
  %mul20 = and i32 %and18, 4094
  %arrayidx = getelementptr i8, ptr %buf, i32 %mul20
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx, align 1
  %76 = trunc i32 %shr17 to i8
  %conv21 = xor i8 %75, %76
  store i8 %conv21, ptr %arrayidx, align 1
  %shr22 = lshr i32 %73, 24
  %add24 = or i32 %mul20, 1
  %arrayidx25 = getelementptr i8, ptr %buf, i32 %add24
  %77 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx25, align 1
  %79 = trunc i32 %shr22 to i8
  %conv28 = xor i8 %78, %79
  store i8 %conv28, ptr %arrayidx25, align 1
  %inc = add nuw nsw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %for.body.out_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out:                                              ; preds = %for.body.out_crit_edge, %if.then9.out_crit_edge, %if.end6.out_crit_edge, %do.end4, %do.end
  %ret.0 = phi i32 [ -74, %do.end4 ], [ -110, %do.end ], [ 0, %if.end6.out_crit_edge ], [ %shr12, %if.then9.out_crit_edge ], [ %shr12, %for.body.out_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %80 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %81, i32 388
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %83 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i, align 4
  %add.ptr3.i79 = getelementptr i8, ptr %84, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i79, i32 %82) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %85 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %86, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 16777216) #5, !srcloc !50
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_jz4780_bch__170_266_jz4780_bch_driver_init6, !1, !"__initcall__kmod_jz4780_bch__170_266_jz4780_bch_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/ingenic/jz4780_bch.c", i32 266, i32 1}
!2 = !{ptr @__exitcall_jz4780_bch_driver_exit, !1, !"__exitcall_jz4780_bch_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/ingenic/jz4780_bch.c", i32 268, i32 1}
!5 = !{ptr @__UNIQUE_ID_author172, !6, !"__UNIQUE_ID_author172", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/raw/ingenic/jz4780_bch.c", i32 269, i32 1}
!7 = !{ptr @__UNIQUE_ID_description173, !8, !"__UNIQUE_ID_description173", i1 false, i1 false}
!8 = !{!"../drivers/mtd/nand/raw/ingenic/jz4780_bch.c", i32 270, i32 1}
!9 = !{ptr @__UNIQUE_ID_file174, !10, !"__UNIQUE_ID_file174", i1 false, i1 false}
!10 = !{!"../drivers/mtd/nand/raw/ingenic/jz4780_bch.c", i32 271, i32 1}
!11 = !{ptr @__UNIQUE_ID_license175, !10, !"__UNIQUE_ID_license175", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/ingenic/jz4780_bch.c", i32 262, i32 11}
!14 = !{ptr @jz4780_bch_driver, !15, !"jz4780_bch_driver", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/ingenic/jz4780_bch.c", i32 259, i32 31}
!16 = !{ptr @jz4780_bch_dt_match, !17, !"jz4780_bch_dt_match", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/ingenic/jz4780_bch.c", i32 253, i32 34}
!18 = !{ptr @jz4780_bch_ops, !19, !"jz4780_bch_ops", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/raw/ingenic/jz4780_bch.c", i32 247, i32 37}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/raw/ingenic/jz4780_bch.c", i32 174, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @jz4780_calculate._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @jz4780_calculate._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/nand/raw/ingenic/jz4780_bch.c", i32 197, i32 3}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @jz4780_correct._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @jz4780_correct._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mtd/nand/raw/ingenic/jz4780_bch.c", i32 203, i32 3}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @jz4780_correct._entry.8, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @jz4780_correct._entry_ptr.11, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 2152554504}
!48 = !{i64 4807556}
!49 = !{i64 2152555399}
!50 = !{i64 4807138}
!51 = !{i64 2152555733}
!52 = !{i64 2152551610}
!53 = !{i64 2152552505}
!54 = !{i64 2152552738}
!55 = !{i64 2152553375}
!56 = !{i64 2152556201}
!57 = !{i64 2152556612}
!58 = !{i64 4806941}
!59 = !{i64 2152559391}
!60 = !{i64 2152559877}
!61 = !{i64 2152560101}
!62 = !{i64 2152557191}
!63 = !{i64 2152557714}
!64 = !{i64 2152566297}
