; ModuleID = '/llk/IR_all_yes/drivers/firmware/smccc/soc_id.c_pt.bc'
source_filename = "../drivers/firmware/smccc/soc_id.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_soc_id__198_106_smccc_soc_init6 = internal global ptr @smccc_soc_init, section ".initcall6.init", align 4
@soc_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@soc_dev_attr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__exitcall_smccc_soc_exit = internal global ptr @smccc_soc_exit, section ".exitcall.exit", align 4
@smccc_soc_init.soc_id_str = internal global { [20 x i8], [44 x i8] } zeroinitializer, align 32
@smccc_soc_init.soc_id_rev_str = internal global { [12 x i8], [20 x i8] } zeroinitializer, align 32
@smccc_soc_init.soc_id_jep106_id_str = internal global { [12 x i8], [20 x i8] } zeroinitializer, align 32
@smccc_soc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013SMCCC: SOC_ID: %s: invalid SMCCC conduit\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"smccc_soc_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/firmware/smccc/soc_id.c\00", [32 x i8] zeroinitializer }, align 32
@smccc_soc_init._entry_ptr = internal global ptr @smccc_soc_init._entry, section ".printk_index", align 4
@smccc_soc_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016SMCCC: SOC_ID: ARCH_SOC_ID not implemented, skipping ....\0A\00", [35 x i8] zeroinitializer }, align 32
@smccc_soc_init._entry_ptr.5 = internal global ptr @smccc_soc_init._entry.3, section ".printk_index", align 4
@smccc_soc_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016SMCCC: SOC_ID: ARCH_FEATURES(ARCH_SOC_ID) returned error: %lx\0A\00", [63 x i8] zeroinitializer }, align 32
@smccc_soc_init._entry_ptr.8 = internal global ptr @smccc_soc_init._entry.6, section ".printk_index", align 4
@smccc_soc_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013SMCCC: SOC_ID: ARCH_SOC_ID(0) returned error: %lx\0A\00", [43 x i8] zeroinitializer }, align 32
@smccc_soc_init._entry_ptr.11 = internal global ptr @smccc_soc_init._entry.9, section ".printk_index", align 4
@smccc_soc_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013SMCCC: SOC_ID: ARCH_SOC_ID(1) returned error: %lx\0A\00", [43 x i8] zeroinitializer }, align 32
@smccc_soc_init._entry_ptr.14 = internal global ptr @smccc_soc_init._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0x%08x\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jep106:%02x%02x\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s:%04x\00", [24 x i8] zeroinitializer }, align 32
@smccc_soc_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016SMCCC: SOC_ID: ID = %s Revision = %s\0A\00", [56 x i8] zeroinitializer }, align 32
@smccc_soc_init._entry_ptr.20 = internal global ptr @smccc_soc_init._entry.18, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.23 = private unnamed_addr constant [8 x i8] c"soc_dev\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 32, i32 27 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"soc_dev_attr\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 33, i32 37 }
@___asan_gen_.29 = private unnamed_addr constant [11 x i8] c"soc_id_str\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 39, i32 14 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"soc_id_rev_str\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 39, i32 30 }
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"soc_id_jep106_id_str\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 40, i32 14 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 46, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 54, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 59, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 66, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 74, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 84, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 85, i32 32 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 88, i32 22 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [35 x i8] c"../drivers/firmware/smccc/soc_id.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 101, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__exitcall_smccc_soc_exit, ptr @__initcall__kmod_soc_id__198_106_smccc_soc_init6, ptr @smccc_soc_exit, ptr @smccc_soc_init._entry, ptr @smccc_soc_init._entry.12, ptr @smccc_soc_init._entry.18, ptr @smccc_soc_init._entry.3, ptr @smccc_soc_init._entry.6, ptr @smccc_soc_init._entry.9, ptr @smccc_soc_init._entry_ptr, ptr @smccc_soc_init._entry_ptr.11, ptr @smccc_soc_init._entry_ptr.14, ptr @smccc_soc_init._entry_ptr.20, ptr @smccc_soc_init._entry_ptr.5, ptr @smccc_soc_init._entry_ptr.8, ptr @soc_dev, ptr @soc_dev_attr, ptr @smccc_soc_init.soc_id_str, ptr @smccc_soc_init.soc_id_rev_str, ptr @smccc_soc_init.soc_id_jep106_id_str, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_dev_attr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smccc_soc_init.soc_id_str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smccc_soc_init.soc_id_rev_str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smccc_soc_init.soc_id_jep106_id_str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smccc_soc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smccc_soc_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smccc_soc_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smccc_soc_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smccc_soc_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smccc_soc_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smccc_soc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @arm_smccc_get_version() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65538, i32 %call)
  %cmp = icmp ult i32 %call, 65538
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @arm_smccc_1_1_get_conduit() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @arm_smccc_1_1_get_conduit() #5
  %0 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call6, label %sw.epilog.thread [
    i32 2, label %do.body7
    i32 1, label %do.body16
  ]

do.body7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %1 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ( (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) << 24) & 0xFF000000) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) << 8) & 0x00FF0000) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) >> 8) & 0x0000FF00) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) >> 24) & 0x000000FF) )\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},~{memory}"(i32 -2147483647, i32 -2147483646) #5, !srcloc !55
  br label %sw.epilog

do.body16:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %2 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ( (((0xE1600070 | (((0) & 0xF) << 0)) << 24) & 0xFF000000) | (((0xE1600070 | (((0) & 0xF) << 0)) << 8) & 0x00FF0000) | (((0xE1600070 | (((0) & 0xF) << 0)) >> 8) & 0x0000FF00) | (((0xE1600070 | (((0) & 0xF) << 0)) >> 24) & 0x000000FF) )\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},~{memory}"(i32 -2147483647, i32 -2147483646) #5, !srcloc !56
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "{r0},{r1},~{memory}"(i32 -2147483647, i32 -2147483646) #5, !srcloc !57
  br label %do.end56

sw.epilog:                                        ; preds = %do.body16, %do.body7
  %.pn = phi { i32, i32, i32, i32 } [ %2, %do.body16 ], [ %1, %do.body7 ]
  %res.sroa.0.0 = extractvalue { i32, i32, i32, i32 } %.pn, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %res.sroa.0.0)
  %cmp52 = icmp eq i32 %res.sroa.0.0, -1
  br i1 %cmp52, label %sw.epilog.do.end56_crit_edge, label %if.end59

sw.epilog.do.end56_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end56

do.end56:                                         ; preds = %sw.epilog.do.end56_crit_edge, %sw.epilog.thread
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end59:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.sroa.0.0)
  %cmp61 = icmp slt i32 %res.sroa.0.0, 0
  br i1 %cmp61, label %do.end65, label %if.end69

do.end65:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %res.sroa.0.0) #8
  br label %cleanup

if.end69:                                         ; preds = %if.end59
  %call71 = tail call i32 @arm_smccc_1_1_get_conduit() #5
  %3 = zext i32 %call71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call71, label %sw.epilog132.thread [
    i32 2, label %do.body73
    i32 1, label %do.body97
  ]

do.body73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %4 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ( (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) << 24) & 0xFF000000) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) << 8) & 0x00FF0000) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) >> 8) & 0x0000FF00) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) >> 24) & 0x000000FF) )\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},~{memory}"(i32 -2147483646, i32 0) #5, !srcloc !58
  br label %sw.epilog132

do.body97:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %5 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ( (((0xE1600070 | (((0) & 0xF) << 0)) << 24) & 0xFF000000) | (((0xE1600070 | (((0) & 0xF) << 0)) << 8) & 0x00FF0000) | (((0xE1600070 | (((0) & 0xF) << 0)) >> 8) & 0x0000FF00) | (((0xE1600070 | (((0) & 0xF) << 0)) >> 24) & 0x000000FF) )\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},~{memory}"(i32 -2147483646, i32 0) #5, !srcloc !59
  br label %sw.epilog132

sw.epilog132.thread:                              ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "{r0},{r1},~{memory}"(i32 -2147483646, i32 0) #5, !srcloc !60
  br label %do.end139

sw.epilog132:                                     ; preds = %do.body97, %do.body73
  %.pn325 = phi { i32, i32, i32, i32 } [ %5, %do.body97 ], [ %4, %do.body73 ]
  %res.sroa.0.1 = extractvalue { i32, i32, i32, i32 } %.pn325, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.sroa.0.1)
  %cmp135 = icmp slt i32 %res.sroa.0.1, 0
  br i1 %cmp135, label %sw.epilog132.do.end139_crit_edge, label %if.end143

sw.epilog132.do.end139_crit_edge:                 ; preds = %sw.epilog132
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end139

do.end139:                                        ; preds = %sw.epilog132.do.end139_crit_edge, %sw.epilog132.thread
  %res.sroa.0.1321 = phi i32 [ -1, %sw.epilog132.thread ], [ %res.sroa.0.1, %sw.epilog132.do.end139_crit_edge ]
  %call142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %res.sroa.0.1321) #8
  br label %cleanup

if.end143:                                        ; preds = %sw.epilog132
  %call146 = tail call i32 @arm_smccc_1_1_get_conduit() #5
  %6 = zext i32 %call146 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call146, label %sw.epilog207.thread [
    i32 2, label %do.body148
    i32 1, label %do.body172
  ]

do.body148:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #7
  %7 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ( (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) << 24) & 0xFF000000) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) << 8) & 0x00FF0000) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) >> 8) & 0x0000FF00) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) >> 24) & 0x000000FF) )\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},~{memory}"(i32 -2147483646, i32 1) #5, !srcloc !61
  br label %sw.epilog207

do.body172:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #7
  %8 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ( (((0xE1600070 | (((0) & 0xF) << 0)) << 24) & 0xFF000000) | (((0xE1600070 | (((0) & 0xF) << 0)) << 8) & 0x00FF0000) | (((0xE1600070 | (((0) & 0xF) << 0)) >> 8) & 0x0000FF00) | (((0xE1600070 | (((0) & 0xF) << 0)) >> 24) & 0x000000FF) )\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},~{memory}"(i32 -2147483646, i32 1) #5, !srcloc !62
  br label %sw.epilog207

sw.epilog207.thread:                              ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "{r0},{r1},~{memory}"(i32 -2147483646, i32 1) #5, !srcloc !63
  br label %do.end214

sw.epilog207:                                     ; preds = %do.body172, %do.body148
  %.pn326 = phi { i32, i32, i32, i32 } [ %8, %do.body172 ], [ %7, %do.body148 ]
  %res.sroa.0.2 = extractvalue { i32, i32, i32, i32 } %.pn326, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.sroa.0.2)
  %cmp210 = icmp slt i32 %res.sroa.0.2, 0
  br i1 %cmp210, label %sw.epilog207.do.end214_crit_edge, label %if.end218

sw.epilog207.do.end214_crit_edge:                 ; preds = %sw.epilog207
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end214

do.end214:                                        ; preds = %sw.epilog207.do.end214_crit_edge, %sw.epilog207.thread
  %res.sroa.0.2324 = phi i32 [ -1, %sw.epilog207.thread ], [ %res.sroa.0.2, %sw.epilog207.do.end214_crit_edge ]
  %call217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %res.sroa.0.2324) #8
  br label %cleanup

if.end218:                                        ; preds = %sw.epilog207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 28) #9
  store ptr %call7.i.i, ptr @soc_dev_attr, align 4
  %tobool221.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool221.not, label %if.end218.cleanup_crit_edge, label %if.end223

if.end218.cleanup_crit_edge:                      ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end223:                                        ; preds = %if.end218
  %call224 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @smccc_soc_init.soc_id_rev_str, ptr noundef nonnull @.str.15, i32 noundef %res.sroa.0.2)
  %and = lshr i32 %res.sroa.0.1, 24
  %and258 = lshr i32 %res.sroa.0.1, 16
  %conv260 = and i32 %and258, 127
  %call262 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @smccc_soc_init.soc_id_jep106_id_str, ptr noundef nonnull @.str.16, i32 noundef %and, i32 noundef %conv260)
  %conv282 = and i32 %res.sroa.0.1, 65535
  %call283 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @smccc_soc_init.soc_id_str, ptr noundef nonnull @.str.17, ptr noundef nonnull @smccc_soc_init.soc_id_jep106_id_str, i32 noundef %conv282)
  %10 = load ptr, ptr @soc_dev_attr, align 4
  %soc_id = getelementptr inbounds %struct.soc_device_attribute, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %soc_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @smccc_soc_init.soc_id_str, ptr %soc_id, align 4
  %revision = getelementptr inbounds %struct.soc_device_attribute, ptr %10, i32 0, i32 2
  %12 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @smccc_soc_init.soc_id_rev_str, ptr %revision, align 4
  %family = getelementptr inbounds %struct.soc_device_attribute, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %family to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @smccc_soc_init.soc_id_jep106_id_str, ptr %family, align 4
  %call284 = tail call ptr @soc_device_register(ptr noundef %10) #5
  store ptr %call284, ptr @soc_dev, align 4
  %cmp.i = icmp ugt ptr %call284, inttoptr (i32 -4096 to ptr)
  %14 = load ptr, ptr @soc_dev_attr, align 4
  br i1 %cmp.i, label %if.then286, label %do.end291

if.then286:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef %14) #5
  %15 = load ptr, ptr @soc_dev, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

do.end291:                                        ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #7
  %soc_id293 = getelementptr inbounds %struct.soc_device_attribute, ptr %14, i32 0, i32 4
  %17 = ptrtoint ptr %soc_id293 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %soc_id293, align 4
  %revision294 = getelementptr inbounds %struct.soc_device_attribute, ptr %14, i32 0, i32 2
  %19 = ptrtoint ptr %revision294 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %revision294, align 4
  %call295 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %18, ptr noundef %20) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end291, %if.then286, %if.end218.cleanup_crit_edge, %do.end214, %do.end139, %do.end65, %do.end56, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end ], [ 0, %do.end56 ], [ -22, %do.end65 ], [ -22, %do.end139 ], [ -22, %do.end214 ], [ %16, %if.then286 ], [ 0, %do.end291 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end218.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @smccc_soc_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load ptr, ptr @soc_dev, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @soc_device_unregister(ptr noundef nonnull %0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load ptr, ptr @soc_dev_attr, align 4
  tail call void @kfree(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @soc_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_smccc_get_version() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_smccc_1_1_get_conduit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__initcall__kmod_soc_id__198_106_smccc_soc_init6, !1, !"__initcall__kmod_soc_id__198_106_smccc_soc_init6", i1 false, i1 false}
!1 = !{!"../drivers/firmware/smccc/soc_id.c", i32 106, i32 1}
!2 = !{ptr @__exitcall_smccc_soc_exit, !3, !"__exitcall_smccc_soc_exit", i1 false, i1 false}
!3 = !{!"../drivers/firmware/smccc/soc_id.c", i32 114, i32 1}
!4 = !{ptr @soc_dev, !5, !"soc_dev", i1 false, i1 false}
!5 = !{!"../drivers/firmware/smccc/soc_id.c", i32 32, i32 27}
!6 = !{ptr @soc_dev_attr, !7, !"soc_dev_attr", i1 false, i1 false}
!7 = !{!"../drivers/firmware/smccc/soc_id.c", i32 33, i32 37}
!8 = !{ptr @smccc_soc_init.soc_id_str, !9, !"soc_id_str", i1 false, i1 false}
!9 = !{!"../drivers/firmware/smccc/soc_id.c", i32 39, i32 14}
!10 = !{ptr @smccc_soc_init.soc_id_rev_str, !11, !"soc_id_rev_str", i1 false, i1 false}
!11 = !{!"../drivers/firmware/smccc/soc_id.c", i32 39, i32 30}
!12 = !{ptr @smccc_soc_init.soc_id_jep106_id_str, !13, !"soc_id_jep106_id_str", i1 false, i1 false}
!13 = !{!"../drivers/firmware/smccc/soc_id.c", i32 40, i32 14}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/firmware/smccc/soc_id.c", i32 46, i32 3}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @smccc_soc_init._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @smccc_soc_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/firmware/smccc/soc_id.c", i32 54, i32 3}
!22 = !{ptr @smccc_soc_init._entry.3, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @smccc_soc_init._entry_ptr.5, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/firmware/smccc/soc_id.c", i32 59, i32 3}
!26 = !{ptr @smccc_soc_init._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @smccc_soc_init._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/firmware/smccc/soc_id.c", i32 66, i32 3}
!30 = !{ptr @smccc_soc_init._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @smccc_soc_init._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/firmware/smccc/soc_id.c", i32 74, i32 3}
!34 = !{ptr @smccc_soc_init._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @smccc_soc_init._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/firmware/smccc/soc_id.c", i32 84, i32 26}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/firmware/smccc/soc_id.c", i32 85, i32 32}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/firmware/smccc/soc_id.c", i32 88, i32 22}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/firmware/smccc/soc_id.c", i32 101, i32 2}
!44 = !{ptr @smccc_soc_init._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @smccc_soc_init._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 2152697947, i64 2152698277}
!56 = !{i64 2152702744, i64 2152702994}
!57 = !{i64 2152704988}
!58 = !{i64 2152714893, i64 2152715223}
!59 = !{i64 2152718659, i64 2152718909}
!60 = !{i64 2152720154}
!61 = !{i64 2152727218, i64 2152727548}
!62 = !{i64 2152730984, i64 2152731234}
!63 = !{i64 2152732479}
