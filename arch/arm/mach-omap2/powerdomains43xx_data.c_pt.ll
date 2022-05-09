; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/powerdomains43xx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/powerdomains43xx_data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pwrdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.powerdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, [5 x i8], [5 x i8], i8, [11 x ptr], %struct.list_head, %struct.list_head, i32, [4 x i32], i32, [5 x i32], %struct.spinlock, i32, i8, i8, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], i64, [4 x i64], i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@omap4_pwrdm_operations = external dso_local global %struct.pwrdm_ops, align 4
@powerdomains_am43xx = internal global [8 x ptr] [ptr @gfx_43xx_pwrdm, ptr @mpu_43xx_pwrdm, ptr @rtc_43xx_pwrdm, ptr @wkup_43xx_pwrdm, ptr @tamper_43xx_pwrdm, ptr @cefuse_43xx_pwrdm, ptr @per_43xx_pwrdm, ptr null], section ".init.data", align 4
@gfx_43xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str, %union.anon { ptr @.str.1 }, i16 1024, i8 9, i8 0, i8 4, i8 1, [5 x i8] zeroinitializer, [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@mpu_43xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.2, %union.anon { ptr @.str.3 }, i16 768, i8 11, i8 3, i8 4, i8 3, [5 x i8] c"\03\03\03\00\00", [5 x i8] c"\08\08\08\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@rtc_43xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.4, %union.anon { ptr @.str.5 }, i16 1280, i8 8, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@wkup_43xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.6, %union.anon { ptr @.str.1 }, i16 8192, i8 8, i8 0, i8 0, i8 1, [5 x i8] zeroinitializer, [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@tamper_43xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.7, %union.anon { ptr @.str.8 }, i16 1536, i8 8, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@cefuse_43xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.9, %union.anon { ptr @.str.1 }, i16 1792, i8 9, i8 0, i8 4, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@per_43xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.10, %union.anon { ptr @.str.1 }, i16 2048, i8 11, i8 3, i8 4, i8 4, [5 x i8] c"\03\03\03\03\00", [5 x i8] c"\08\08\08\08\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gfx_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mpu\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wkup_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tamper_pwrdm\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tamper\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cefuse_pwrdm\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"per_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"gfx_43xx_pwrdm\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 17, i32 27 }
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"mpu_43xx_pwrdm\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 30, i32 27 }
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"rtc_43xx_pwrdm\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 51, i32 27 }
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"wkup_43xx_pwrdm\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 59, i32 27 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"tamper_43xx_pwrdm\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 71, i32 27 }
@___asan_gen_.26 = private unnamed_addr constant [18 x i8] c"cefuse_43xx_pwrdm\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 79, i32 27 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"per_43xx_pwrdm\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 88, i32 27 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 18, i32 13 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 19, i32 25 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 31, i32 13 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 32, i32 25 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 52, i32 13 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 53, i32 25 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 60, i32 13 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 72, i32 13 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 73, i32 25 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 80, i32 13 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [47 x i8] c"../arch/arm/mach-omap2/powerdomains43xx_data.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 89, i32 13 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @gfx_43xx_pwrdm, ptr @mpu_43xx_pwrdm, ptr @rtc_43xx_pwrdm, ptr @wkup_43xx_pwrdm, ptr @tamper_43xx_pwrdm, ptr @cefuse_43xx_pwrdm, ptr @per_43xx_pwrdm, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_43xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_43xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_43xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_43xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tamper_43xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cefuse_43xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @per_43xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @am43xx_powerdomains_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pwrdm_ops, ptr @omap4_pwrdm_operations, i32 0, i32 18) to i32))
  store ptr @am43xx_check_vcvp, ptr getelementptr inbounds (%struct.pwrdm_ops, ptr @omap4_pwrdm_operations, i32 0, i32 18), align 4
  %call = tail call i32 @pwrdm_register_platform_funcs(ptr noundef nonnull @omap4_pwrdm_operations) #3
  %call1 = tail call i32 @pwrdm_register_pwrdms(ptr noundef nonnull @powerdomains_am43xx) #3
  %call2 = tail call i32 @pwrdm_complete_init() #3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @am43xx_check_vcvp() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_register_platform_funcs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_register_pwrdms(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_complete_init() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @powerdomains_am43xx, !1, !"powerdomains_am43xx", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/powerdomains43xx_data.c", i32 111, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/powerdomains43xx_data.c", i32 18, i32 13}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/powerdomains43xx_data.c", i32 19, i32 25}
!6 = !{ptr @gfx_43xx_pwrdm, !7, !"gfx_43xx_pwrdm", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/powerdomains43xx_data.c", i32 17, i32 27}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/powerdomains43xx_data.c", i32 31, i32 13}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/powerdomains43xx_data.c", i32 32, i32 25}
!12 = !{ptr @mpu_43xx_pwrdm, !13, !"mpu_43xx_pwrdm", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/powerdomains43xx_data.c", i32 30, i32 27}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/powerdomains43xx_data.c", i32 52, i32 13}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/powerdomains43xx_data.c", i32 53, i32 25}
!18 = !{ptr @rtc_43xx_pwrdm, !19, !"rtc_43xx_pwrdm", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/powerdomains43xx_data.c", i32 51, i32 27}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/powerdomains43xx_data.c", i32 60, i32 13}
!22 = !{ptr @wkup_43xx_pwrdm, !23, !"wkup_43xx_pwrdm", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/powerdomains43xx_data.c", i32 59, i32 27}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/powerdomains43xx_data.c", i32 72, i32 13}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-omap2/powerdomains43xx_data.c", i32 73, i32 25}
!28 = !{ptr @tamper_43xx_pwrdm, !29, !"tamper_43xx_pwrdm", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-omap2/powerdomains43xx_data.c", i32 71, i32 27}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-omap2/powerdomains43xx_data.c", i32 80, i32 13}
!32 = !{ptr @cefuse_43xx_pwrdm, !33, !"cefuse_43xx_pwrdm", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-omap2/powerdomains43xx_data.c", i32 79, i32 27}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-omap2/powerdomains43xx_data.c", i32 89, i32 13}
!36 = !{ptr @per_43xx_pwrdm, !37, !"per_43xx_pwrdm", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-omap2/powerdomains43xx_data.c", i32 88, i32 27}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
