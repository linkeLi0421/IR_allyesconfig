; ModuleID = '/llk/IR_all_yes/drivers/soc/tegra/fuse/tegra-apbmisc.c_pt.bc'
source_filename = "../drivers/soc/tegra/fuse/tegra-apbmisc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tegra_read_ram_code\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_read_ram_code\09\09\09\09"
module asm "\09.long\09__crc_tegra_read_ram_code\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_read_ram_code:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_read_ram_code\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_read_ram_code:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@chipid = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/soc/tegra/fuse/tegra-apbmisc.c\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Tegra APB MISC not yet available\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Tegra ABP MISC not yet available\0A\00", [62 x i8] zeroinitializer }, align 32
@strapping = internal global { i32, [28 x i8] } zeroinitializer, align 32
@long_ram_code = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__kstrtab_tegra_read_ram_code = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_read_ram_code = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_read_ram_code = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_read_ram_code to i32), ptr @__kstrtab_tegra_read_ram_code, ptr @__kstrtabns_tegra_read_ram_code }, section "___ksymtab_gpl+tegra_read_ram_code", align 4
@tegra_sku_info = external dso_local local_unnamed_addr global %struct.tegra_sku_info, align 4
@apbmisc_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-apbmisc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-misc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-misc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra234-misc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvidia,tegra124\00", [16 x i8] zeroinitializer }, align 32
@tegra_init_apbmisc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014Using APBMISC region %pR\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_init_apbmisc\00", [45 x i8] zeroinitializer }, align 32
@tegra_init_apbmisc._entry_ptr = internal global ptr @tegra_init_apbmisc._entry, section ".printk_index", align 4
@tegra_init_apbmisc._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014Using strapping options registers %pR\0A\00", [55 x i8] zeroinitializer }, align 32
@tegra_init_apbmisc._entry_ptr.8 = internal global ptr @tegra_init_apbmisc._entry.6, section ".printk_index", align 4
@tegra_init_apbmisc._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013failed to get APBMISC registers\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_init_apbmisc._entry_ptr.11 = internal global ptr @tegra_init_apbmisc._entry.9, section ".printk_index", align 4
@tegra_init_apbmisc._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013failed to get strapping options registers\0A\00", [51 x i8] zeroinitializer }, align 32
@tegra_init_apbmisc._entry_ptr.14 = internal global ptr @tegra_init_apbmisc._entry.12, section ".printk_index", align 4
@tegra_init_apbmisc._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013failed to map APBMISC registers\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_init_apbmisc._entry_ptr.17 = internal global ptr @tegra_init_apbmisc._entry.15, section ".printk_index", align 4
@tegra_init_apbmisc._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013failed to map strapping options registers\0A\00", [51 x i8] zeroinitializer }, align 32
@tegra_init_apbmisc._entry_ptr.20 = internal global ptr @tegra_init_apbmisc._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvidia,long-ram-code\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 25, i64 35]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"chipid\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 27, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 31, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 78, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [10 x i8] c"strapping\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 26, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"long_ram_code\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 25, i32 13 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 158, i32 33 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 168, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 169, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 184, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 189, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 196, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 204, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [42 x i8] c"../drivers/soc/tegra/fuse/tegra-apbmisc.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 210, i32 44 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__ksymtab_tegra_read_ram_code, ptr @tegra_init_apbmisc._entry, ptr @tegra_init_apbmisc._entry.12, ptr @tegra_init_apbmisc._entry.15, ptr @tegra_init_apbmisc._entry.18, ptr @tegra_init_apbmisc._entry.6, ptr @tegra_init_apbmisc._entry.9, ptr @tegra_init_apbmisc._entry_ptr, ptr @tegra_init_apbmisc._entry_ptr.11, ptr @tegra_init_apbmisc._entry_ptr.14, ptr @tegra_init_apbmisc._entry_ptr.17, ptr @tegra_init_apbmisc._entry_ptr.20, ptr @tegra_init_apbmisc._entry_ptr.8, ptr @chipid, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @strapping, ptr @long_ram_code, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chipid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strapping to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @long_ram_code to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_init_apbmisc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_init_apbmisc._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_init_apbmisc._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_init_apbmisc._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_init_apbmisc._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_init_apbmisc._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_read_chipid() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @chipid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !53

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %1 = load i32, ptr @chipid, align 4
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @tegra_get_chip_id() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @chipid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.tegra_read_chipid.exit_crit_edge, !prof !53

entry.tegra_read_chipid.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_read_chipid.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %tegra_read_chipid.exit

tegra_read_chipid.exit:                           ; preds = %do.end.i, %entry.tegra_read_chipid.exit_crit_edge
  %1 = load i32, ptr @chipid, align 4
  %shr = lshr i32 %1, 8
  %conv = trunc i32 %shr to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @tegra_get_major_rev() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @chipid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.tegra_read_chipid.exit_crit_edge, !prof !53

entry.tegra_read_chipid.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_read_chipid.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %tegra_read_chipid.exit

tegra_read_chipid.exit:                           ; preds = %do.end.i, %entry.tegra_read_chipid.exit_crit_edge
  %1 = load i32, ptr @chipid, align 4
  %2 = trunc i32 %1 to i8
  %3 = lshr i8 %2, 4
  ret i8 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @tegra_get_minor_rev() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @chipid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.tegra_read_chipid.exit_crit_edge, !prof !53

entry.tegra_read_chipid.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_read_chipid.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %tegra_read_chipid.exit

tegra_read_chipid.exit:                           ; preds = %do.end.i, %entry.tegra_read_chipid.exit_crit_edge
  %1 = load i32, ptr @chipid, align 4
  %shr = lshr i32 %1, 16
  %2 = trunc i32 %shr to i8
  %conv = and i8 %2, 15
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @tegra_get_platform() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @chipid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.tegra_read_chipid.exit_crit_edge, !prof !53

entry.tegra_read_chipid.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_read_chipid.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %tegra_read_chipid.exit

tegra_read_chipid.exit:                           ; preds = %do.end.i, %entry.tegra_read_chipid.exit_crit_edge
  %1 = load i32, ptr @chipid, align 4
  %shr = lshr i32 %1, 20
  %2 = trunc i32 %shr to i8
  %conv = and i8 %2, 15
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tegra_is_silicon() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @chipid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %entry.tegra_get_chip_id.exit_crit_edge, !prof !53

entry.tegra_get_chip_id.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_get_chip_id.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  %.pr = load i32, ptr @chipid, align 4
  br label %tegra_get_chip_id.exit

tegra_get_chip_id.exit:                           ; preds = %do.end.i.i, %entry.tegra_get_chip_id.exit_crit_edge
  %1 = phi i32 [ %0, %entry.tegra_get_chip_id.exit_crit_edge ], [ %.pr, %do.end.i.i ]
  %shr.i = lshr i32 %1, 8
  %conv.i = trunc i32 %shr.i to i8
  %2 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %conv.i, label %tegra_get_chip_id.exit.return_crit_edge [
    i8 25, label %tegra_get_chip_id.exit.sw.bb_crit_edge
    i8 35, label %tegra_get_chip_id.exit.sw.bb_crit_edge9
  ]

tegra_get_chip_id.exit.sw.bb_crit_edge9:          ; preds = %tegra_get_chip_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

tegra_get_chip_id.exit.sw.bb_crit_edge:           ; preds = %tegra_get_chip_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

tegra_get_chip_id.exit.return_crit_edge:          ; preds = %tegra_get_chip_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %tegra_get_chip_id.exit.sw.bb_crit_edge, %tegra_get_chip_id.exit.sw.bb_crit_edge9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i4 = icmp eq i32 %1, 0
  br i1 %tobool.not.i.i4, label %do.end.i.i5, label %sw.bb.tegra_get_platform.exit_crit_edge, !prof !53

sw.bb.tegra_get_platform.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_get_platform.exit

do.end.i.i5:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %tegra_get_platform.exit

tegra_get_platform.exit:                          ; preds = %do.end.i.i5, %sw.bb.tegra_get_platform.exit_crit_edge
  %3 = load i32, ptr @chipid, align 4
  %4 = and i32 %3, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br label %return

return:                                           ; preds = %tegra_get_platform.exit, %tegra_get_chip_id.exit.return_crit_edge
  %retval.0 = phi i1 [ %cmp, %tegra_get_platform.exit ], [ true, %tegra_get_chip_id.exit.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_read_straps() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @chipid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !53

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.2) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %1 = load i32, ptr @strapping, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_read_ram_code() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @chipid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.tegra_read_straps.exit_crit_edge, !prof !53

entry.tegra_read_straps.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_read_straps.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.2) #6
  br label %tegra_read_straps.exit

tegra_read_straps.exit:                           ; preds = %do.end.i, %entry.tegra_read_straps.exit_crit_edge
  %1 = load i32, ptr @strapping, align 4
  %2 = load i8, ptr @long_ram_code, align 1, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %straps.0.v = select i1 %tobool.not, i32 48, i32 240
  %straps.0 = and i32 %straps.0.v, %1
  %shr = lshr exact i32 %straps.0, 4
  ret i32 %shr
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_init_revision() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @chipid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %entry.tegra_get_chip_id.exit_crit_edge, !prof !53

entry.tegra_get_chip_id.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_get_chip_id.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %tegra_get_chip_id.exit

tegra_get_chip_id.exit:                           ; preds = %do.end.i.i, %entry.tegra_get_chip_id.exit_crit_edge
  %1 = load i32, ptr @chipid, align 4
  %call1 = tail call zeroext i8 @tegra_get_minor_rev()
  %2 = zext i8 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %call1, label %sw.default [
    i8 1, label %tegra_get_chip_id.exit.sw.epilog_crit_edge
    i8 2, label %sw.bb2
    i8 3, label %sw.bb3
    i8 4, label %sw.bb9
  ]

tegra_get_chip_id.exit.sw.epilog_crit_edge:       ; preds = %tegra_get_chip_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %tegra_get_chip_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %tegra_get_chip_id.exit
  %shr.i = lshr i32 %1, 8
  %conv.i = trunc i32 %shr.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %conv.i)
  %cmp = icmp eq i8 %conv.i, 32
  br i1 %cmp, label %land.lhs.true, label %sw.bb3.if.else_crit_edge

sw.bb3.if.else_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb3
  %call6 = tail call i32 @tegra_fuse_read_spare(i32 noundef 18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call7 = tail call i32 @tegra_fuse_read_spare(i32 noundef 19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %lor.lhs.false.if.else_crit_edge, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %sw.bb3.if.else_crit_edge
  br label %sw.epilog

sw.bb9:                                           ; preds = %tegra_get_chip_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %tegra_get_chip_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %if.else, %lor.lhs.false.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb2, %tegra_get_chip_id.exit.sw.epilog_crit_edge
  %.sink = phi i32 [ 3, %if.else ], [ 0, %sw.default ], [ 5, %sw.bb9 ], [ 2, %sw.bb2 ], [ 1, %tegra_get_chip_id.exit.sw.epilog_crit_edge ], [ 4, %lor.lhs.false.sw.epilog_crit_edge ], [ 4, %land.lhs.true.sw.epilog_crit_edge ]
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 11) to i32))
  store i32 %.sink, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 11), align 4
  %call10 = tail call i32 @tegra_fuse_read_early(i32 noundef 16) #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @tegra_sku_info to i32))
  store i32 %call10, ptr @tegra_sku_info, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @tegra_fuse_read_spare(i32 noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @tegra_fuse_read_early(i32 noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_init_apbmisc() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  %apbmisc = alloca %struct.resource, align 4
  %straps = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %apbmisc) #6
  %0 = getelementptr inbounds %struct.resource, ptr %apbmisc, i32 0, i32 1
  %1 = getelementptr inbounds %struct.resource, ptr %apbmisc, i32 0, i32 3
  %2 = call ptr @memset(ptr %apbmisc, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %straps) #6
  %3 = getelementptr inbounds %struct.resource, ptr %straps, i32 0, i32 1
  %4 = getelementptr inbounds %struct.resource, ptr %straps, i32 0, i32 3
  %5 = call ptr @memset(ptr %straps, i32 255, i32 32)
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @apbmisc_match, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.else19

if.then:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @soc_is_tegra() #6
  br i1 %call1, label %if.then2, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %apbmisc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1879050240, ptr %apbmisc, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1879050339, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 512, ptr %1, align 4
  %call3 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %. = select i1 %tobool4.not, i32 1879048200, i32 1879107684
  %.80 = select i1 %tobool4.not, i32 1879048203, i32 1879107687
  %9 = ptrtoint ptr %straps to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %., ptr %straps, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.80, ptr %3, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 512, ptr %4, align 4
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %apbmisc) #9
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %straps) #9
  br label %if.end37

if.else19:                                        ; preds = %entry
  %call20 = call i32 @of_address_to_resource(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef nonnull %apbmisc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %do.end24, label %if.end27

do.end24:                                         ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end27:                                         ; preds = %if.else19
  %call28 = call i32 @of_address_to_resource(ptr noundef nonnull %call.i, i32 noundef 1, ptr noundef nonnull %straps) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end33, label %if.end27.if.end37_crit_edge

if.end27.if.end37_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end37:                                         ; preds = %if.end27.if.end37_crit_edge, %if.then2
  %12 = ptrtoint ptr %apbmisc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %apbmisc, align 4
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %0, align 4
  %sub.i = sub i32 1, %13
  %add.i = add i32 %sub.i, %15
  %call40 = call ptr @ioremap(i32 noundef %13, i32 noundef %add.i) #6
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %do.end45, label %if.else48

do.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %if.end51

if.else48:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %call40, i32 4
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !55
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  store i32 %17, ptr @chipid, align 4
  call void @iounmap(ptr noundef nonnull %call40) #6
  br label %if.end51

if.end51:                                         ; preds = %if.else48, %do.end45
  %18 = ptrtoint ptr %straps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %straps, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  %sub.i82 = sub i32 1, %19
  %add.i83 = add i32 %sub.i82, %21
  %call54 = call ptr @ioremap(i32 noundef %19, i32 noundef %add.i83) #6
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %do.end59, label %if.else62

do.end59:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #9
  br label %if.end66

if.else62:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call54) #6, !srcloc !55
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  store i32 %23, ptr @strapping, align 4
  call void @iounmap(ptr noundef nonnull %call54) #6
  br label %if.end66

if.end66:                                         ; preds = %if.else62, %do.end59
  %call.i84 = call ptr @of_find_property(ptr noundef %call.i, ptr noundef nonnull @.str.21, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i84, null
  %frombool = zext i1 %tobool.i to i8
  store i8 %frombool, ptr @long_ram_code, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %do.end33, %do.end24, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %straps) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %apbmisc) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @soc_is_tegra() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/soc/tegra/fuse/tegra-apbmisc.c", i32 31, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/soc/tegra/fuse/tegra-apbmisc.c", i32 78, i32 2}
!5 = !{ptr @__ksymtab_tegra_read_ram_code, !6, !"__ksymtab_tegra_read_ram_code", i1 false, i1 false}
!6 = !{!"../drivers/soc/tegra/fuse/tegra-apbmisc.c", i32 94, i32 1}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/soc/tegra/fuse/tegra-apbmisc.c", i32 158, i32 33}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/soc/tegra/fuse/tegra-apbmisc.c", i32 168, i32 4}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @tegra_init_apbmisc._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @tegra_init_apbmisc._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/tegra/fuse/tegra-apbmisc.c", i32 169, i32 4}
!16 = !{ptr @tegra_init_apbmisc._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @tegra_init_apbmisc._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/soc/tegra/fuse/tegra-apbmisc.c", i32 184, i32 4}
!20 = !{ptr @tegra_init_apbmisc._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @tegra_init_apbmisc._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/tegra/fuse/tegra-apbmisc.c", i32 189, i32 4}
!24 = !{ptr @tegra_init_apbmisc._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @tegra_init_apbmisc._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/soc/tegra/fuse/tegra-apbmisc.c", i32 196, i32 3}
!28 = !{ptr @tegra_init_apbmisc._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @tegra_init_apbmisc._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/soc/tegra/fuse/tegra-apbmisc.c", i32 204, i32 3}
!32 = !{ptr @tegra_init_apbmisc._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @tegra_init_apbmisc._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/soc/tegra/fuse/tegra-apbmisc.c", i32 210, i32 44}
!36 = !{ptr @long_ram_code, !37, !"long_ram_code", i1 false, i1 false}
!37 = !{!"../drivers/soc/tegra/fuse/tegra-apbmisc.c", i32 25, i32 13}
!38 = !{ptr @strapping, !39, !"strapping", i1 false, i1 false}
!39 = !{!"../drivers/soc/tegra/fuse/tegra-apbmisc.c", i32 26, i32 12}
!40 = !{ptr @chipid, !41, !"chipid", i1 false, i1 false}
!41 = !{!"../drivers/soc/tegra/fuse/tegra-apbmisc.c", i32 27, i32 12}
!42 = !{ptr @apbmisc_match, !43, !"apbmisc_match", i1 false, i1 false}
!43 = !{!"../drivers/soc/tegra/fuse/tegra-apbmisc.c", i32 96, i32 34}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{i8 0, i8 2}
!55 = !{i64 3993602}
