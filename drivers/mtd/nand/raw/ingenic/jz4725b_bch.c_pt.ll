; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/ingenic/jz4725b_bch.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/ingenic/jz4725b_bch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ingenic_ecc_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ingenic_ecc = type { ptr, ptr, ptr, ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ingenic_ecc_params = type { i32, i32, i32 }

@__initcall__kmod_jz4725b_bch__170_291_jz4725b_bch_driver_init6 = internal global ptr @jz4725b_bch_driver_init, section ".initcall6.init", align 4
@jz4725b_bch_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ingenic_ecc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @jz4725b_bch_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_jz4725b_bch_driver_exit = internal global ptr @jz4725b_bch_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [56 x i8] c"jz4725b_bch.author=Paul Cercueil <paul@crapouillou.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [62 x i8] c"jz4725b_bch.description=Ingenic JZ4725B BCH controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [58 x i8] c"jz4725b_bch.file=drivers/mtd/nand/raw/ingenic/jz4725b_bch\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [27 x i8] c"jz4725b_bch.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jz4725b-bch\00", [20 x i8] zeroinitializer }, align 32
@jz4725b_bch_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4725b-bch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4725b_bch_ops }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@jz4725b_bch_ops = internal constant { %struct.ingenic_ecc_ops, [20 x i8] } { %struct.ingenic_ecc_ops { ptr @jz4725b_bch_disable, ptr @jz4725b_calculate, ptr @jz4725b_correct }, [20 x i8] zeroinitializer }, align 32
@jz4725b_calculate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 193, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unable to init BCH with given parameters\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"jz4725b_calculate\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/mtd/nand/raw/ingenic/jz4725b_bch.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@jz4725b_calculate._entry_ptr = internal global ptr @jz4725b_calculate._entry, section ".printk_index", align 4
@jz4725b_calculate._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 201, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"timed out while calculating ECC\0A\00", [63 x i8] zeroinitializer }, align 32
@jz4725b_calculate._entry_ptr.8 = internal global ptr @jz4725b_calculate._entry.6, section ".printk_index", align 4
@jz4725b_correct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.9, ptr @.str.3, i32 226, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jz4725b_correct\00", [16 x i8] zeroinitializer }, align 32
@jz4725b_correct._entry_ptr = internal global ptr @jz4725b_correct._entry, section ".printk_index", align 4
@jz4725b_correct._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 235, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"timed out while correcting data\0A\00", [63 x i8] zeroinitializer }, align 32
@jz4725b_correct._entry_ptr.12 = internal global ptr @jz4725b_correct._entry.10, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"jz4725b_bch_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 284, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 287, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [21 x i8] c"jz4725b_bch_dt_match\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 278, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"jz4725b_bch_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 272, i32 37 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 193, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 201, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 226, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [46 x i8] c"../drivers/mtd/nand/raw/ingenic/jz4725b_bch.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 235, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_jz4725b_bch_driver_exit, ptr @__initcall__kmod_jz4725b_bch__170_291_jz4725b_bch_driver_init6, ptr @jz4725b_bch_driver_exit, ptr @jz4725b_calculate._entry, ptr @jz4725b_calculate._entry.6, ptr @jz4725b_calculate._entry_ptr, ptr @jz4725b_calculate._entry_ptr.8, ptr @jz4725b_correct._entry, ptr @jz4725b_correct._entry.10, ptr @jz4725b_correct._entry_ptr, ptr @jz4725b_correct._entry_ptr.12, ptr @jz4725b_bch_driver, ptr @.str, ptr @jz4725b_bch_dt_match, ptr @jz4725b_bch_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4725b_bch_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4725b_bch_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4725b_bch_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4725b_calculate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4725b_calculate._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4725b_correct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4725b_correct._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4725b_bch_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @jz4725b_bch_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jz4725b_bch_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @jz4725b_bch_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ingenic_ecc_probe(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jz4725b_bch_disable(ptr nocapture noundef readonly %bch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %base = getelementptr inbounds %struct.ingenic_ecc, ptr %bch, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #5, !srcloc !50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4725b_calculate(ptr noundef %bch, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %buf, ptr nocapture noundef writeonly %ecc_code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ingenic_ecc, ptr %bch, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %call = tail call fastcc i32 @jz4725b_bch_reset(ptr noundef %bch, ptr noundef %params, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bch, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1) #8
  br label %out_disable

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not1.i = icmp eq i32 %3, 0
  br i1 %tobool.not1.i, label %if.end.jz4725b_bch_write_data.exit_crit_edge, label %do.body.lr.ph.i

if.end.jz4725b_bch_write_data.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %jz4725b_bch_write_data.exit

do.body.lr.ph.i:                                  ; preds = %if.end
  %base.i = getelementptr inbounds %struct.ingenic_ecc, ptr %bch, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %size.addr.03.i = phi i32 [ %3, %do.body.lr.ph.i ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %buf.addr.02.i = phi ptr [ %buf, %do.body.lr.ph.i ], [ %incdec.ptr.i, %do.body.i.do.body.i_crit_edge ]
  %dec.i = add i32 %size.addr.03.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %incdec.ptr.i = getelementptr i8, ptr %buf.addr.02.i, i32 1
  %4 = ptrtoint ptr %buf.addr.02.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buf.addr.02.i, align 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %5) #5, !srcloc !53
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.body.i.jz4725b_bch_write_data.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.i.jz4725b_bch_write_data.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %jz4725b_bch_write_data.exit

jz4725b_bch_write_data.exit:                      ; preds = %do.body.i.jz4725b_bch_write_data.exit_crit_edge, %if.end.jz4725b_bch_write_data.exit_crit_edge
  %call.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call.i, 100000000
  %base.i22 = getelementptr inbounds %struct.ingenic_ecc, ptr %bch, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %jz4725b_bch_write_data.exit
  %8 = ptrtoint ptr %base.i22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i22, align 4
  %add.ptr.i23 = getelementptr i8, ptr %9, i32 36
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #5, !srcloc !48
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  %and.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i24 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i, label %for.cond.i.if.end8_crit_edge

for.cond.i.if.end8_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call12.i = tail call i64 @ktime_get() #5
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %12 = ptrtoint ptr %base.i22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i22, align 4
  %add.ptr18.i = getelementptr i8, ptr %13, i32 36
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #5, !srcloc !48
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  %.pre.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %phi.cmp.i = icmp eq i32 %.pre.i, 0
  br i1 %phi.cmp.i, label %do.end6, label %for.end.i.if.end8_crit_edge

for.end.i.if.end8_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

do.end6:                                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bch, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.7) #8
  br label %out_disable

if.end8:                                          ; preds = %for.end.i.if.end8_crit_edge, %for.cond.i.if.end8_crit_edge
  %reg.059.i = phi i32 [ %15, %for.end.i.if.end8_crit_edge ], [ %11, %for.cond.i.if.end8_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %reg.059.i) #5
  %19 = ptrtoint ptr %base.i22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i22, align 4
  %add.ptr38.i = getelementptr i8, ptr %20, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 %18) #5, !srcloc !50
  %bytes = getelementptr inbounds %struct.ingenic_ecc_params, ptr %params, i32 0, i32 1
  %21 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bytes, align 4
  %rem.i = and i32 %22, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %tobool.not27.i = icmp ult i32 %22, 4
  br i1 %tobool.not27.i, label %if.end8.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end8.while.end.i_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end8
  %div26.i = lshr i32 %22, 2
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %size32.030.i = phi i32 [ %div26.i, %while.body.lr.ph.i ], [ %dec.i26, %while.body.i.while.body.i_crit_edge ]
  %dest32.029.i = phi ptr [ %ecc_code, %while.body.lr.ph.i ], [ %incdec.ptr.i28, %while.body.i.while.body.i_crit_edge ]
  %offset.028.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i26 = add nsw i32 %size32.030.i, -1
  %23 = ptrtoint ptr %base.i22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i22, align 4
  %add.ptr.i27 = getelementptr i8, ptr %24, i32 20
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i27, i32 %offset.028.i
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #5, !srcloc !48
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  %incdec.ptr.i28 = getelementptr i32, ptr %dest32.029.i, i32 1
  %27 = ptrtoint ptr %dest32.029.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %dest32.029.i, align 4
  %add.i = add nuw i32 %offset.028.i, 4
  %tobool.not.i29 = icmp eq i32 %dec.i26, 0
  br i1 %tobool.not.i29, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end8.while.end.i_crit_edge
  %offset.0.lcssa.i = phi i32 [ 0, %if.end8.while.end.i_crit_edge ], [ %add.i, %while.body.i.while.end.i_crit_edge ]
  %dest32.0.lcssa.i = phi ptr [ %ecc_code, %if.end8.while.end.i_crit_edge ], [ %incdec.ptr.i28, %while.body.i.while.end.i_crit_edge ]
  %28 = ptrtoint ptr %base.i22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i22, align 4
  %add.ptr4.i = getelementptr i8, ptr %29, i32 20
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 %offset.0.lcssa.i
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #5, !srcloc !48
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  %32 = zext i32 %rem.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rem.i, label %while.end.i.out_disable_crit_edge [
    i32 3, label %sw.bb.i
    i32 2, label %while.end.i.sw.bb8.i_crit_edge
    i32 1, label %while.end.i.sw.bb13.i_crit_edge
  ]

while.end.i.sw.bb13.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13.i

while.end.i.sw.bb8.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8.i

while.end.i.out_disable_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_disable

sw.bb.i:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i = lshr i32 %31, 16
  %conv.i = trunc i32 %shr.i to i8
  %arrayidx.i = getelementptr i8, ptr %dest32.0.lcssa.i, i32 2
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  br label %sw.bb8.i

sw.bb8.i:                                         ; preds = %sw.bb.i, %while.end.i.sw.bb8.i_crit_edge
  %shr9.i = lshr i32 %31, 8
  %conv11.i = trunc i32 %shr9.i to i8
  %arrayidx12.i = getelementptr i8, ptr %dest32.0.lcssa.i, i32 1
  %34 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv11.i, ptr %arrayidx12.i, align 1
  br label %sw.bb13.i

sw.bb13.i:                                        ; preds = %sw.bb8.i, %while.end.i.sw.bb13.i_crit_edge
  %conv15.i = trunc i32 %31 to i8
  %35 = ptrtoint ptr %dest32.0.lcssa.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv15.i, ptr %dest32.0.lcssa.i, align 1
  br label %out_disable

out_disable:                                      ; preds = %sw.bb13.i, %while.end.i.out_disable_crit_edge, %do.end6, %do.end
  %ret.0 = phi i32 [ %call, %do.end ], [ -110, %do.end6 ], [ 0, %while.end.i.out_disable_crit_edge ], [ 0, %sw.bb13.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %base.i30 = getelementptr inbounds %struct.ingenic_ecc, ptr %bch, i32 0, i32 2
  %36 = ptrtoint ptr %base.i30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i30, align 4
  %add.ptr.i31 = getelementptr i8, ptr %37, i32 36
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %39 = ptrtoint ptr %base.i30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i30, align 4
  %add.ptr3.i = getelementptr i8, ptr %40, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %38) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %41 = ptrtoint ptr %base.i30 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i30, align 4
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #5, !srcloc !50
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4725b_correct(ptr noundef %bch, ptr nocapture noundef readonly %params, ptr nocapture noundef %buf, ptr nocapture noundef readonly %ecc_code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ingenic_ecc, ptr %bch, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %call = tail call fastcc i32 @jz4725b_bch_reset(ptr noundef %bch, ptr noundef %params, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out.sink.split_crit_edge

entry.out.sink.split_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not1.i = icmp eq i32 %1, 0
  br i1 %tobool.not1.i, label %if.end.jz4725b_bch_write_data.exit_crit_edge, label %do.body.lr.ph.i

if.end.jz4725b_bch_write_data.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %jz4725b_bch_write_data.exit

do.body.lr.ph.i:                                  ; preds = %if.end
  %base.i = getelementptr inbounds %struct.ingenic_ecc, ptr %bch, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %size.addr.03.i = phi i32 [ %1, %do.body.lr.ph.i ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %buf.addr.02.i = phi ptr [ %buf, %do.body.lr.ph.i ], [ %incdec.ptr.i, %do.body.i.do.body.i_crit_edge ]
  %dec.i = add i32 %size.addr.03.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %incdec.ptr.i = getelementptr i8, ptr %buf.addr.02.i, i32 1
  %2 = ptrtoint ptr %buf.addr.02.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf.addr.02.i, align 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %3) #5, !srcloc !53
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.body.i.jz4725b_bch_write_data.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.i.jz4725b_bch_write_data.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %jz4725b_bch_write_data.exit

jz4725b_bch_write_data.exit:                      ; preds = %do.body.i.jz4725b_bch_write_data.exit_crit_edge, %if.end.jz4725b_bch_write_data.exit_crit_edge
  %bytes = getelementptr inbounds %struct.ingenic_ecc_params, ptr %params, i32 0, i32 1
  %6 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not1.i50 = icmp eq i32 %7, 0
  br i1 %tobool.not1.i50, label %jz4725b_bch_write_data.exit.jz4725b_bch_write_data.exit60_crit_edge, label %do.body.lr.ph.i52

jz4725b_bch_write_data.exit.jz4725b_bch_write_data.exit60_crit_edge: ; preds = %jz4725b_bch_write_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %jz4725b_bch_write_data.exit60

do.body.lr.ph.i52:                                ; preds = %jz4725b_bch_write_data.exit
  %base.i51 = getelementptr inbounds %struct.ingenic_ecc, ptr %bch, i32 0, i32 2
  br label %do.body.i59

do.body.i59:                                      ; preds = %do.body.i59.do.body.i59_crit_edge, %do.body.lr.ph.i52
  %size.addr.03.i53 = phi i32 [ %7, %do.body.lr.ph.i52 ], [ %dec.i55, %do.body.i59.do.body.i59_crit_edge ]
  %buf.addr.02.i54 = phi ptr [ %ecc_code, %do.body.lr.ph.i52 ], [ %incdec.ptr.i56, %do.body.i59.do.body.i59_crit_edge ]
  %dec.i55 = add i32 %size.addr.03.i53, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %incdec.ptr.i56 = getelementptr i8, ptr %buf.addr.02.i54, i32 1
  %8 = ptrtoint ptr %buf.addr.02.i54 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf.addr.02.i54, align 1
  %10 = ptrtoint ptr %base.i51 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i51, align 4
  %add.ptr.i57 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i57, i8 %9) #5, !srcloc !53
  %tobool.not.i58 = icmp eq i32 %dec.i55, 0
  br i1 %tobool.not.i58, label %do.body.i59.jz4725b_bch_write_data.exit60_crit_edge, label %do.body.i59.do.body.i59_crit_edge

do.body.i59.do.body.i59_crit_edge:                ; preds = %do.body.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i59

do.body.i59.jz4725b_bch_write_data.exit60_crit_edge: ; preds = %do.body.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %jz4725b_bch_write_data.exit60

jz4725b_bch_write_data.exit60:                    ; preds = %do.body.i59.jz4725b_bch_write_data.exit60_crit_edge, %jz4725b_bch_write_data.exit.jz4725b_bch_write_data.exit60_crit_edge
  %call.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call.i, 100000000
  %base.i61 = getelementptr inbounds %struct.ingenic_ecc, ptr %bch, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %jz4725b_bch_write_data.exit60
  %12 = ptrtoint ptr %base.i61 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i61, align 4
  %add.ptr.i62 = getelementptr i8, ptr %13, i32 36
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62) #5, !srcloc !48
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  %and.i = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i63 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i63, label %land.lhs.true.i, label %for.cond.i.if.end8_crit_edge

for.cond.i.if.end8_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call12.i = tail call i64 @ktime_get() #5
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %16 = ptrtoint ptr %base.i61 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i61, align 4
  %add.ptr18.i = getelementptr i8, ptr %17, i32 36
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #5, !srcloc !48
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  %.pre.i = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %phi.cmp.i = icmp eq i32 %.pre.i, 0
  br i1 %phi.cmp.i, label %for.end.i.out.sink.split_crit_edge, label %for.end.i.if.end8_crit_edge

for.end.i.if.end8_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

for.end.i.out.sink.split_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end8:                                          ; preds = %for.end.i.if.end8_crit_edge, %for.cond.i.if.end8_crit_edge
  %reg.059.i = phi i32 [ %19, %for.end.i.if.end8_crit_edge ], [ %15, %for.cond.i.if.end8_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %20 = tail call i32 @llvm.bswap.i32(i32 %reg.059.i) #5
  %21 = ptrtoint ptr %base.i61 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i61, align 4
  %add.ptr38.i = getelementptr i8, ptr %22, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 %20) #5, !srcloc !50
  %and = and i32 %reg.059.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end11, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end11:                                         ; preds = %if.end8
  %and12 = and i32 %reg.059.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %reg.059.i)
  %cmp72.not = icmp ult i32 %reg.059.i, 268435456
  br i1 %cmp72.not, label %if.end15.out_crit_edge, label %for.body.preheader

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.body.preheader:                               ; preds = %if.end15
  %shr = lshr i32 %reg.059.i, 28
  br label %for.body

for.body:                                         ; preds = %if.end27.for.body_crit_edge, %for.body.preheader
  %i.074 = phi i32 [ %inc, %if.end27.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %reg.173 = phi i32 [ %reg.2, %if.end27.for.body_crit_edge ], [ %reg.059.i, %for.body.preheader ]
  %and17 = and i32 %i.074, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %and20 = lshr i32 %reg.173, 16
  br label %if.end27

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %base.i61 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i61, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 40
  %mul = shl i32 %i.074, 2
  %add.ptr22 = getelementptr i8, ptr %add.ptr, i32 %mul
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #5, !srcloc !48
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then19
  %reg.2 = phi i32 [ %26, %if.else ], [ %reg.173, %if.then19 ]
  %bit.0.in = phi i32 [ %26, %if.else ], [ %and20, %if.then19 ]
  %and28 = and i32 %bit.0.in, 7
  %shl = shl nuw nsw i32 1, %and28
  %bit.0 = lshr i32 %bit.0.in, 3
  %shr29 = and i32 %bit.0, 1023
  %arrayidx = getelementptr i8, ptr %buf, i32 %shr29
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  %29 = trunc i32 %shl to i8
  %conv30 = xor i8 %28, %29
  store i8 %conv30, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.074, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %if.end27.out_crit_edge, label %if.end27.for.body_crit_edge

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out.sink.split:                                   ; preds = %for.end.i.out.sink.split_crit_edge, %entry.out.sink.split_crit_edge
  %.str.11.sink = phi ptr [ @.str.1, %entry.out.sink.split_crit_edge ], [ @.str.11, %for.end.i.out.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call, %entry.out.sink.split_crit_edge ], [ -110, %for.end.i.out.sink.split_crit_edge ]
  %30 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bch, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull %.str.11.sink) #8
  br label %out

out:                                              ; preds = %out.sink.split, %if.end27.out_crit_edge, %if.end15.out_crit_edge, %if.end11.out_crit_edge, %if.end8.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end8.out_crit_edge ], [ -74, %if.end11.out_crit_edge ], [ 0, %if.end15.out_crit_edge ], [ %ret.0.ph, %out.sink.split ], [ 0, %if.end27.out_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %base.i64 = getelementptr inbounds %struct.ingenic_ecc, ptr %bch, i32 0, i32 2
  %32 = ptrtoint ptr %base.i64 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i64, align 4
  %add.ptr.i65 = getelementptr i8, ptr %33, i32 36
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %35 = ptrtoint ptr %base.i64 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i64, align 4
  %add.ptr3.i = getelementptr i8, ptr %36, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %34) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %37 = ptrtoint ptr %base.i64 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i64, align 4
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #5, !srcloc !50
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jz4725b_bch_reset(ptr nocapture noundef readonly %bch, ptr nocapture noundef readonly %params, i1 noundef zeroext %calc_ecc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %base = getelementptr inbounds %struct.ingenic_ecc, ptr %bch, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 520093696) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr.i43 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 16777216) #5, !srcloc !50
  %strength = getelementptr inbounds %struct.ingenic_ecc_params, ptr %params, i32 0, i32 2
  %9 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %strength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp = icmp eq i32 %10, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i45 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 67108864) #5, !srcloc !50
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i47 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 67108864) #5, !srcloc !50
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  br i1 %calc_ecc, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i49 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 134217728) #5, !srcloc !50
  br label %if.end6

if.else5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i51 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 134217728) #5, !srcloc !50
  br label %if.end6

if.end6:                                          ; preds = %if.else5, %if.then4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr.i53 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 33554432) #5, !srcloc !50
  %17 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %18)
  %cmp7 = icmp ugt i32 %18, 1023
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %bytes = getelementptr inbounds %struct.ingenic_ecc_params, ptr %params, i32 0, i32 1
  %19 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bytes, align 4
  %add = add i32 %20, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %add)
  %cmp11 = icmp ugt i32 %add, 1023
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %shl18 = shl nuw nsw i32 %add, 16
  %or = or i32 %shl18, %18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %or)
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr23 = getelementptr i8, ptr %23, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %21) #5, !srcloc !50
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_jz4725b_bch__170_291_jz4725b_bch_driver_init6, !1, !"__initcall__kmod_jz4725b_bch__170_291_jz4725b_bch_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/ingenic/jz4725b_bch.c", i32 291, i32 1}
!2 = !{ptr @__exitcall_jz4725b_bch_driver_exit, !1, !"__exitcall_jz4725b_bch_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/ingenic/jz4725b_bch.c", i32 293, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/raw/ingenic/jz4725b_bch.c", i32 294, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/mtd/nand/raw/ingenic/jz4725b_bch.c", i32 295, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/ingenic/jz4725b_bch.c", i32 287, i32 11}
!12 = !{ptr @jz4725b_bch_driver, !13, !"jz4725b_bch_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/ingenic/jz4725b_bch.c", i32 284, i32 31}
!14 = !{ptr @jz4725b_bch_dt_match, !15, !"jz4725b_bch_dt_match", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/ingenic/jz4725b_bch.c", i32 278, i32 34}
!16 = !{ptr @jz4725b_bch_ops, !17, !"jz4725b_bch_ops", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/ingenic/jz4725b_bch.c", i32 272, i32 37}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/raw/ingenic/jz4725b_bch.c", i32 193, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @jz4725b_calculate._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @jz4725b_calculate._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/nand/raw/ingenic/jz4725b_bch.c", i32 201, i32 3}
!28 = !{ptr @jz4725b_calculate._entry.6, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @jz4725b_calculate._entry_ptr.8, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/nand/raw/ingenic/jz4725b_bch.c", i32 226, i32 3}
!32 = !{ptr @jz4725b_correct._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @jz4725b_correct._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/nand/raw/ingenic/jz4725b_bch.c", i32 235, i32 3}
!36 = !{ptr @jz4725b_correct._entry.10, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @jz4725b_correct._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 2152524561}
!48 = !{i64 4776572}
!49 = !{i64 2152525452}
!50 = !{i64 4776154}
!51 = !{i64 2152520613}
!52 = !{i64 2152525767}
!53 = !{i64 4775957}
!54 = !{i64 2152528563}
!55 = !{i64 2152536752}
!56 = !{i64 2152521734}
!57 = !{i64 2152522625}
!58 = !{i64 2152520055}
!59 = !{i64 2152523440}
