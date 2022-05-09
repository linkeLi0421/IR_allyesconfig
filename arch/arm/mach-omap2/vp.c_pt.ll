; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/vp.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/vp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.voltagedomain = type { ptr, i8, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, ptr, i32, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon = type { ptr }
%struct.omap_voltdm_pmic = type { i32, i32, i16, i16, i16, i8, i8, i8, i32, i32, i8, i8, i32, i8, ptr, ptr }
%struct.omap_vp_instance = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.omap_vp_param = type { i32, i32 }
%struct.omap_vp_common = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }
%struct.omap_volt_data = type { i32, i32, i8, i8 }
%struct.omap_vp_ops = type { ptr, ptr }

@omap_vp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: No PMIC info for vdd_%s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"omap_vp_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arch/arm/mach-omap2/vp.c\00", [39 x i8] zeroinitializer }, align 32
@omap_vp_init._entry_ptr = internal global ptr @omap_vp_init._entry, section ".printk_index", align 4
@omap_vp_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: No read/write API for accessing vdd_%s regs\0A\00", [45 x i8] zeroinitializer }, align 32
@omap_vp_init._entry_ptr.5 = internal global ptr @omap_vp_init._entry.3, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@omap_vp_forceupdate_scale._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014%s: vdd_%s TRANXDONE timeout exceeded. Voltage change aborted\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"omap_vp_forceupdate_scale\00", [38 x i8] zeroinitializer }, align 32
@omap_vp_forceupdate_scale._entry_ptr = internal global ptr @omap_vp_forceupdate_scale._entry, section ".printk_index", align 4
@omap_vp_forceupdate_scale._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\013%s: vdd_%s TRANXDONE timeout exceeded. TRANXDONE never got set after the voltage update\0A\00", [37 x i8] zeroinitializer }, align 32
@omap_vp_forceupdate_scale._entry_ptr.10 = internal global ptr @omap_vp_forceupdate_scale._entry.8, section ".printk_index", align 4
@omap_vp_forceupdate_scale._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\014%s: vdd_%s TRANXDONE timeout exceeded while trying to clear the TRANXDONE status\0A\00", [44 x i8] zeroinitializer }, align 32
@omap_vp_forceupdate_scale._entry_ptr.13 = internal global ptr @omap_vp_forceupdate_scale._entry.11, section ".printk_index", align 4
@omap_vp_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: VDD specified does not exist!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap_vp_enable\00", [17 x i8] zeroinitializer }, align 32
@omap_vp_enable._entry_ptr = internal global ptr @omap_vp_enable._entry, section ".printk_index", align 4
@omap_vp_enable._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.15, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@omap_vp_enable._entry_ptr.17 = internal global ptr @omap_vp_enable._entry.16, section ".printk_index", align 4
@omap_vp_enable._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.15, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: unable to find current voltage for %s\0A\00", [51 x i8] zeroinitializer }, align 32
@omap_vp_enable._entry_ptr.20 = internal global ptr @omap_vp_enable._entry.18, section ".printk_index", align 4
@omap_vp_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.21, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_vp_disable\00", [16 x i8] zeroinitializer }, align 32
@omap_vp_disable._entry_ptr = internal global ptr @omap_vp_disable._entry, section ".printk_index", align 4
@omap_vp_disable._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.21, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@omap_vp_disable._entry_ptr.23 = internal global ptr @omap_vp_disable._entry.22, section ".printk_index", align 4
@omap_vp_disable._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014%s: Trying to disable VP for vdd_%s when it is already disabled\0A\00", [61 x i8] zeroinitializer }, align 32
@omap_vp_disable._entry_ptr.26 = internal global ptr @omap_vp_disable._entry.24, section ".printk_index", align 4
@omap_vp_disable._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.21, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014%s: vdd_%s idle timedout\0A\00", [36 x i8] zeroinitializer }, align 32
@omap_vp_disable._entry_ptr.29 = internal global ptr @omap_vp_disable._entry.27, section ".printk_index", align 4
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 46, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 51, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 144, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 163, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 181, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 203, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 209, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 220, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 248, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 254, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 261, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [28 x i8] c"../arch/arm/mach-omap2/vp.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 278, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @omap_vp_disable._entry, ptr @omap_vp_disable._entry.22, ptr @omap_vp_disable._entry.24, ptr @omap_vp_disable._entry.27, ptr @omap_vp_disable._entry_ptr, ptr @omap_vp_disable._entry_ptr.23, ptr @omap_vp_disable._entry_ptr.26, ptr @omap_vp_disable._entry_ptr.29, ptr @omap_vp_enable._entry, ptr @omap_vp_enable._entry.16, ptr @omap_vp_enable._entry.18, ptr @omap_vp_enable._entry_ptr, ptr @omap_vp_enable._entry_ptr.17, ptr @omap_vp_enable._entry_ptr.20, ptr @omap_vp_forceupdate_scale._entry, ptr @omap_vp_forceupdate_scale._entry.11, ptr @omap_vp_forceupdate_scale._entry.8, ptr @omap_vp_forceupdate_scale._entry_ptr, ptr @omap_vp_forceupdate_scale._entry_ptr.10, ptr @omap_vp_forceupdate_scale._entry_ptr.13, ptr @omap_vp_init._entry, ptr @omap_vp_init._entry.3, ptr @omap_vp_init._entry_ptr, ptr @omap_vp_init._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.19, ptr @.str.21, ptr @.str.25, ptr @.str.28], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vp_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vp_forceupdate_scale._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vp_forceupdate_scale._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vp_forceupdate_scale._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vp_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vp_enable._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vp_enable._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vp_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vp_disable._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vp_disable._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vp_disable._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_vp_init(ptr nocapture noundef readonly %voltdm) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vp1 = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 5
  %0 = ptrtoint ptr %vp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vp1, align 4
  %pmic = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 6
  %2 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmic, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %uv_to_vsel = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %uv_to_vsel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uv_to_vsel, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %6 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %voltdm, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %7) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %read = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 9
  %8 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end.do.end10_crit_edge, label %lor.lhs.false5

if.end.do.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

lor.lhs.false5:                                   ; preds = %if.end
  %write = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 10
  %10 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %lor.lhs.false5.do.end10_crit_edge, label %if.end14

lor.lhs.false5.do.end10_crit_edge:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.end10:                                         ; preds = %lor.lhs.false5.do.end10_crit_edge, %if.end.do.end10_crit_edge
  %12 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %voltdm, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %13) #9
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #8
  %enabled = getelementptr inbounds %struct.omap_vp_instance, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %enabled, align 1
  %sys_clk = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 12
  %15 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sys_clk, align 4
  %div = udiv i32 %16, 1000
  %17 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pmic, align 4
  %vp_timeout_us = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %vp_timeout_us to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %vp_timeout_us, align 4
  %conv = zext i8 %20 to i32
  %mul = mul nuw nsw i32 %div, %conv
  %div16 = udiv i32 %mul, 1000
  %vp_param = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 7
  %21 = ptrtoint ptr %vp_param to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vp_param, align 4
  %vddmin17 = getelementptr inbounds %struct.omap_vp_param, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %vddmin17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vddmin17, align 4
  %vddmin19 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %18, i32 0, i32 8
  %25 = ptrtoint ptr %vddmin19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vddmin19, align 4
  %27 = tail call i32 @llvm.umax.i32(i32 %24, i32 %26)
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %22, align 4
  %vddmax25 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %18, i32 0, i32 9
  %30 = ptrtoint ptr %vddmax25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vddmax25, align 4
  %32 = tail call i32 @llvm.umin.i32(i32 %29, i32 %31)
  %uv_to_vsel34 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %18, i32 0, i32 15
  %33 = ptrtoint ptr %uv_to_vsel34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %uv_to_vsel34, align 4
  %call35 = tail call zeroext i8 %34(i32 noundef %27) #6
  %conv36 = zext i8 %call35 to i32
  %35 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pmic, align 4
  %uv_to_vsel38 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %36, i32 0, i32 15
  %37 = ptrtoint ptr %uv_to_vsel38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %uv_to_vsel38, align 4
  %call39 = tail call zeroext i8 %38(i32 noundef %32) #6
  %conv40 = zext i8 %call39 to i32
  %39 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pmic, align 4
  %step_size = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %step_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %step_size, align 4
  %mul42 = mul i32 %42, %div
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %40, align 4
  %mul44 = mul i32 %44, 1000
  %add = add i32 %mul42, -1
  %sub = add i32 %add, %mul44
  %div48 = udiv i32 %sub, %mul44
  %vp_vstepmin = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %40, i32 0, i32 6
  %45 = ptrtoint ptr %vp_vstepmin to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %vp_vstepmin, align 1
  %conv50 = zext i8 %46 to i32
  %vp_vstepmax = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %40, i32 0, i32 7
  %47 = ptrtoint ptr %vp_vstepmax to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %vp_vstepmax, align 4
  %conv52 = zext i8 %48 to i32
  %vp_erroroffset = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %40, i32 0, i32 5
  %49 = ptrtoint ptr %vp_erroroffset to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %vp_erroroffset, align 2
  %conv54 = zext i8 %50 to i32
  %51 = ptrtoint ptr %vp1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %vp1, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %57 = tail call i32 @llvm.cttz.i32(i32 %56, i1 false) #6, !range !59
  %shl = shl i32 %conv54, %57
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %vpconfig_timeouten = getelementptr inbounds %struct.omap_vp_common, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %vpconfig_timeouten to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %vpconfig_timeouten, align 4
  %conv58 = zext i8 %61 to i32
  %or = or i32 %shl, %conv58
  %62 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write, align 4
  %vpconfig = getelementptr inbounds %struct.omap_vp_instance, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %vpconfig to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %vpconfig, align 4
  tail call void %63(i32 noundef %or, i8 noundef zeroext %65) #6
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %vstepmin_smpswaittimemin_shift = getelementptr inbounds %struct.omap_vp_common, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %vstepmin_smpswaittimemin_shift to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %vstepmin_smpswaittimemin_shift, align 1
  %conv61 = zext i8 %69 to i32
  %shl62 = shl i32 %div48, %conv61
  %vstepmin_stepmin_shift = getelementptr inbounds %struct.omap_vp_common, ptr %67, i32 0, i32 7
  %70 = ptrtoint ptr %vstepmin_stepmin_shift to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %vstepmin_stepmin_shift, align 4
  %conv64 = zext i8 %71 to i32
  %shl65 = shl i32 %conv50, %conv64
  %or66 = or i32 %shl65, %shl62
  %72 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write, align 4
  %vstepmin68 = getelementptr inbounds %struct.omap_vp_instance, ptr %1, i32 0, i32 2
  %74 = ptrtoint ptr %vstepmin68 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %vstepmin68, align 1
  tail call void %73(i32 noundef %or66, i8 noundef zeroext %75) #6
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  %vstepmax_stepmax_shift = getelementptr inbounds %struct.omap_vp_common, ptr %77, i32 0, i32 9
  %78 = ptrtoint ptr %vstepmax_stepmax_shift to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %vstepmax_stepmax_shift, align 2
  %conv70 = zext i8 %79 to i32
  %shl71 = shl i32 %conv52, %conv70
  %vstepmax_smpswaittimemax_shift = getelementptr inbounds %struct.omap_vp_common, ptr %77, i32 0, i32 10
  %80 = ptrtoint ptr %vstepmax_smpswaittimemax_shift to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %vstepmax_smpswaittimemax_shift, align 1
  %conv73 = zext i8 %81 to i32
  %shl74 = shl i32 %div48, %conv73
  %or75 = or i32 %shl74, %shl71
  %82 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write, align 4
  %vstepmax77 = getelementptr inbounds %struct.omap_vp_instance, ptr %1, i32 0, i32 3
  %84 = ptrtoint ptr %vstepmax77 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %vstepmax77, align 2
  tail call void %83(i32 noundef %or75, i8 noundef zeroext %85) #6
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 4
  %vlimitto_vddmax_shift = getelementptr inbounds %struct.omap_vp_common, ptr %87, i32 0, i32 12
  %88 = ptrtoint ptr %vlimitto_vddmax_shift to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %vlimitto_vddmax_shift, align 1
  %conv79 = zext i8 %89 to i32
  %shl80 = shl i32 %conv40, %conv79
  %vlimitto_vddmin_shift = getelementptr inbounds %struct.omap_vp_common, ptr %87, i32 0, i32 11
  %90 = ptrtoint ptr %vlimitto_vddmin_shift to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %vlimitto_vddmin_shift, align 4
  %conv82 = zext i8 %91 to i32
  %shl83 = shl i32 %conv36, %conv82
  %or84 = or i32 %shl83, %shl80
  %vlimitto_timeout_shift = getelementptr inbounds %struct.omap_vp_common, ptr %87, i32 0, i32 13
  %92 = ptrtoint ptr %vlimitto_timeout_shift to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %vlimitto_timeout_shift, align 2
  %conv86 = zext i8 %93 to i32
  %shl87 = shl i32 %div16, %conv86
  %or88 = or i32 %or84, %shl87
  %94 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write, align 4
  %vlimitto = getelementptr inbounds %struct.omap_vp_instance, ptr %1, i32 0, i32 4
  %96 = ptrtoint ptr %vlimitto to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %vlimitto, align 1
  tail call void %95(i32 noundef %or88, i8 noundef zeroext %97) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end10, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_vp_update_errorgain(ptr noundef %voltdm, i32 noundef %target_volt) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vp = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 5
  %0 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @omap_voltage_get_voltdata(ptr noundef %voltdm, i32 noundef %target_volt) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %rmw = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 11
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %4 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vp, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %vpconfig_errorgain_mask = getelementptr inbounds %struct.omap_vp_common, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %vpconfig_errorgain_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vpconfig_errorgain_mask, align 4
  %vp_errgain = getelementptr inbounds %struct.omap_volt_data, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %vp_errgain to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vp_errgain, align 1
  %conv = zext i8 %11 to i32
  %12 = tail call i32 @llvm.cttz.i32(i32 %9, i1 false) #6, !range !59
  %shl = shl i32 %conv, %12
  %vpconfig = getelementptr inbounds %struct.omap_vp_instance, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %vpconfig to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %vpconfig, align 4
  %call10 = tail call i32 %3(i32 noundef %9, i32 noundef %shl, i8 noundef zeroext %14) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_voltage_get_voltdata(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_vp_forceupdate_scale(ptr noundef %voltdm, i32 noundef %target_volt) local_unnamed_addr #3 align 64 {
entry:
  %target_vsel = alloca i8, align 1
  %current_vsel = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vp1 = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 5
  %0 = ptrtoint ptr %vp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vp1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %target_vsel) #6
  %2 = ptrtoint ptr %target_vsel to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %target_vsel, align 1, !annotation !60
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %current_vsel) #6
  %3 = ptrtoint ptr %current_vsel to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %current_vsel, align 1, !annotation !60
  %call = call i32 @omap_vc_pre_scale(ptr noundef %voltdm, i32 noundef %target_volt, ptr noundef nonnull %target_vsel, ptr noundef nonnull %current_vsel) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %id = getelementptr inbounds %struct.omap_vp_instance, ptr %1, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end8.while.body_crit_edge, %while.cond.preheader
  %inc104 = phi i32 [ 1, %while.cond.preheader ], [ %inc, %if.end8.while.body_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %ops = getelementptr inbounds %struct.omap_vp_common, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %clear_txdone = getelementptr inbounds %struct.omap_vp_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %clear_txdone to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clear_txdone, align 4
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %id, align 2
  call void %9(i8 noundef zeroext %11) #6
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %ops3 = getelementptr inbounds %struct.omap_vp_common, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %ops3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops3, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %id, align 2
  %call5 = call i32 %17(i8 noundef zeroext %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %while.end, label %if.end8

if.end8:                                          ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748) #6
  %inc = add nuw nsw i32 %inc104, 1
  %exitcond.not = icmp eq i32 %inc, 301
  br i1 %exitcond.not, label %if.end8.do.end_crit_edge, label %if.end8.while.body_crit_edge

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 299, i32 %inc104)
  %cmp9 = icmp ugt i32 %inc104, 299
  br i1 %cmp9, label %while.end.do.end_crit_edge, label %if.end12

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %while.end.do.end_crit_edge, %if.end8.do.end_crit_edge
  %21 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %voltdm, align 4
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef %22) #9
  br label %cleanup

if.end12:                                         ; preds = %while.end
  %23 = ptrtoint ptr %vp1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vp1, align 4
  %pmic.i = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 6
  %25 = ptrtoint ptr %pmic.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pmic.i, align 4
  %uv_to_vsel.i = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %26, i32 0, i32 15
  %27 = ptrtoint ptr %uv_to_vsel.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %uv_to_vsel.i, align 4
  %call.i = call zeroext i8 %28(i32 noundef %target_volt) #6
  %read.i = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 9
  %29 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read.i, align 4
  %vpconfig2.i = getelementptr inbounds %struct.omap_vp_instance, ptr %24, i32 0, i32 1
  %31 = ptrtoint ptr %vpconfig2.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %vpconfig2.i, align 4
  %call3.i = call i32 %30(i8 noundef zeroext %32) #6
  %33 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %24, align 4
  %vpconfig_initvoltage_mask.i = getelementptr inbounds %struct.omap_vp_common, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %vpconfig_initvoltage_mask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vpconfig_initvoltage_mask.i, align 4
  %vpconfig_forceupdate.i = getelementptr inbounds %struct.omap_vp_common, ptr %34, i32 0, i32 5
  %37 = ptrtoint ptr %vpconfig_forceupdate.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %vpconfig_forceupdate.i, align 2
  %conv.i = zext i8 %38 to i32
  %or.i = or i32 %36, %conv.i
  %vpconfig_initvdd.i = getelementptr inbounds %struct.omap_vp_common, ptr %34, i32 0, i32 4
  %39 = ptrtoint ptr %vpconfig_initvdd.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %vpconfig_initvdd.i, align 1
  %conv6.i = zext i8 %40 to i32
  %or7.i = or i32 %or.i, %conv6.i
  %neg.i = xor i32 %or7.i, -1
  %and.i = and i32 %call3.i, %neg.i
  %conv8.i = zext i8 %call.i to i32
  %41 = call i32 @llvm.cttz.i32(i32 %36, i1 false) #6, !range !59
  %shl.i = shl i32 %conv8.i, %41
  %or12.i = or i32 %and.i, %shl.i
  %write.i = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 10
  %42 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write.i, align 4
  %44 = ptrtoint ptr %vpconfig2.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %vpconfig2.i, align 4
  call void %43(i32 noundef %or12.i, i8 noundef zeroext %45) #6
  %46 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write.i, align 4
  %48 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %24, align 4
  %vpconfig_initvdd16.i = getelementptr inbounds %struct.omap_vp_common, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %vpconfig_initvdd16.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %vpconfig_initvdd16.i, align 1
  %conv17.i = zext i8 %51 to i32
  %or18.i = or i32 %or12.i, %conv17.i
  %52 = ptrtoint ptr %vpconfig2.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %vpconfig2.i, align 4
  call void %47(i32 noundef %or18.i, i8 noundef zeroext %53) #6
  %54 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write.i, align 4
  %56 = ptrtoint ptr %vpconfig2.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %vpconfig2.i, align 4
  call void %55(i32 noundef %or12.i, i8 noundef zeroext %57) #6
  %58 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write.i, align 4
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %vpconfig_forceupdate = getelementptr inbounds %struct.omap_vp_common, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %vpconfig_forceupdate to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %vpconfig_forceupdate, align 2
  %conv = zext i8 %63 to i32
  %or = or i32 %or12.i, %conv
  %64 = ptrtoint ptr %vp1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vp1, align 4
  %vpconfig16 = getelementptr inbounds %struct.omap_vp_instance, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %vpconfig16 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %vpconfig16, align 4
  call void %59(i32 noundef %or, i8 noundef zeroext %67) #6
  br label %for.body

for.body:                                         ; preds = %if.end26.for.body_crit_edge, %if.end12
  %timeout.1105 = phi i32 [ 0, %if.end12 ], [ %inc27, %if.end26.for.body_crit_edge ]
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %ops20 = getelementptr inbounds %struct.omap_vp_common, ptr %69, i32 0, i32 15
  %70 = ptrtoint ptr %ops20 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops20, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %74 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %id, align 2
  %call23 = call i32 %73(i8 noundef zeroext %75) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %for.body.if.end37_crit_edge

for.body.if.end37_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end26:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %76(i32 noundef 214748) #6
  %inc27 = add nuw nsw i32 %timeout.1105, 1
  %exitcond107.not = icmp eq i32 %inc27, 300
  br i1 %exitcond107.not, label %do.end33, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %voltdm, align 4
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef %78) #9
  br label %if.end37

if.end37:                                         ; preds = %do.end33, %for.body.if.end37_crit_edge
  %79 = ptrtoint ptr %target_vsel to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %target_vsel, align 1
  %81 = ptrtoint ptr %current_vsel to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %current_vsel, align 1
  call void @omap_vc_post_scale(ptr noundef %voltdm, i32 noundef %target_volt, i8 noundef zeroext %80, i8 noundef zeroext %82) #6
  br label %while.body42

while.body42:                                     ; preds = %if.end54.while.body42_crit_edge, %if.end37
  %inc39106 = phi i32 [ 1, %if.end37 ], [ %inc39, %if.end54.while.body42_crit_edge ]
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  %ops44 = getelementptr inbounds %struct.omap_vp_common, ptr %84, i32 0, i32 15
  %85 = ptrtoint ptr %ops44 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ops44, align 4
  %clear_txdone45 = getelementptr inbounds %struct.omap_vp_ops, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %clear_txdone45 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %clear_txdone45, align 4
  %89 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %id, align 2
  call void %88(i8 noundef zeroext %90) #6
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 4
  %ops48 = getelementptr inbounds %struct.omap_vp_common, ptr %92, i32 0, i32 15
  %93 = ptrtoint ptr %ops48 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ops48, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %97 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %id, align 2
  %call51 = call i32 %96(i8 noundef zeroext %98) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %while.end55, label %if.end54

if.end54:                                         ; preds = %while.body42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %99(i32 noundef 214748) #6
  %inc39 = add nuw nsw i32 %inc39106, 1
  %exitcond108.not = icmp eq i32 %inc39, 301
  br i1 %exitcond108.not, label %if.end54.do.end61_crit_edge, label %if.end54.while.body42_crit_edge

if.end54.while.body42_crit_edge:                  ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body42

if.end54.do.end61_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end61

while.end55:                                      ; preds = %while.body42
  call void @__sanitizer_cov_trace_const_cmp4(i32 299, i32 %inc39106)
  %cmp56 = icmp ugt i32 %inc39106, 299
  br i1 %cmp56, label %while.end55.do.end61_crit_edge, label %while.end55.if.end65_crit_edge

while.end55.if.end65_crit_edge:                   ; preds = %while.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

while.end55.do.end61_crit_edge:                   ; preds = %while.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end61

do.end61:                                         ; preds = %while.end55.do.end61_crit_edge, %if.end54.do.end61_crit_edge
  %100 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %voltdm, align 4
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.7, ptr noundef %101) #9
  br label %if.end65

if.end65:                                         ; preds = %do.end61, %while.end55.if.end65_crit_edge
  %102 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write.i, align 4
  %vpconfig67 = getelementptr inbounds %struct.omap_vp_instance, ptr %1, i32 0, i32 1
  %104 = ptrtoint ptr %vpconfig67 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %vpconfig67, align 4
  call void %103(i32 noundef %or12.i, i8 noundef zeroext %105) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %if.end65 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %current_vsel) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %target_vsel) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_vc_pre_scale(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_vc_post_scale(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_vp_enable(ptr noundef %voltdm) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %voltdm, null
  %cmp.i = icmp ugt ptr %voltdm, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %vp2 = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 5
  %0 = ptrtoint ptr %vp2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vp2, align 4
  %read = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 9
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.do.end9_crit_edge, label %lor.lhs.false4

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

lor.lhs.false4:                                   ; preds = %if.end
  %write = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 10
  %4 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %lor.lhs.false4.do.end9_crit_edge, label %if.end12

lor.lhs.false4.do.end9_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

do.end9:                                          ; preds = %lor.lhs.false4.do.end9_crit_edge, %if.end.do.end9_crit_edge
  %6 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %voltdm, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.15, ptr noundef %7) #9
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false4
  %enabled = getelementptr inbounds %struct.omap_vp_instance, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enabled, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool13.not = icmp eq i8 %9, 0
  br i1 %tobool13.not, label %if.end15, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %call16 = tail call i32 @voltdm_get_voltage(ptr noundef nonnull %voltdm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.end21, label %if.end25

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %voltdm, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.15, ptr noundef %11) #9
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %vp2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vp2, align 4
  %pmic.i = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 6
  %14 = ptrtoint ptr %pmic.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pmic.i, align 4
  %uv_to_vsel.i = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %uv_to_vsel.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %uv_to_vsel.i, align 4
  %call.i = tail call zeroext i8 %17(i32 noundef %call16) #6
  %18 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read, align 4
  %vpconfig2.i = getelementptr inbounds %struct.omap_vp_instance, ptr %13, i32 0, i32 1
  %20 = ptrtoint ptr %vpconfig2.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vpconfig2.i, align 4
  %call3.i = tail call i32 %19(i8 noundef zeroext %21) #6
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %13, align 4
  %vpconfig_initvoltage_mask.i = getelementptr inbounds %struct.omap_vp_common, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %vpconfig_initvoltage_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vpconfig_initvoltage_mask.i, align 4
  %vpconfig_forceupdate.i = getelementptr inbounds %struct.omap_vp_common, ptr %23, i32 0, i32 5
  %26 = ptrtoint ptr %vpconfig_forceupdate.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %vpconfig_forceupdate.i, align 2
  %conv.i = zext i8 %27 to i32
  %or.i = or i32 %25, %conv.i
  %vpconfig_initvdd.i = getelementptr inbounds %struct.omap_vp_common, ptr %23, i32 0, i32 4
  %28 = ptrtoint ptr %vpconfig_initvdd.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %vpconfig_initvdd.i, align 1
  %conv6.i = zext i8 %29 to i32
  %or7.i = or i32 %or.i, %conv6.i
  %neg.i = xor i32 %or7.i, -1
  %and.i = and i32 %call3.i, %neg.i
  %conv8.i = zext i8 %call.i to i32
  %30 = tail call i32 @llvm.cttz.i32(i32 %25, i1 false) #6, !range !59
  %shl.i = shl i32 %conv8.i, %30
  %or12.i = or i32 %and.i, %shl.i
  %31 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write, align 4
  %33 = ptrtoint ptr %vpconfig2.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %vpconfig2.i, align 4
  tail call void %32(i32 noundef %or12.i, i8 noundef zeroext %34) #6
  %35 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write, align 4
  %37 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %13, align 4
  %vpconfig_initvdd16.i = getelementptr inbounds %struct.omap_vp_common, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %vpconfig_initvdd16.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %vpconfig_initvdd16.i, align 1
  %conv17.i = zext i8 %40 to i32
  %or18.i = or i32 %or12.i, %conv17.i
  %41 = ptrtoint ptr %vpconfig2.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %vpconfig2.i, align 4
  tail call void %36(i32 noundef %or18.i, i8 noundef zeroext %42) #6
  %43 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write, align 4
  %45 = ptrtoint ptr %vpconfig2.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %vpconfig2.i, align 4
  tail call void %44(i32 noundef %or12.i, i8 noundef zeroext %46) #6
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %vpconfig_vpenable = getelementptr inbounds %struct.omap_vp_common, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %vpconfig_vpenable to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %vpconfig_vpenable, align 1
  %conv = zext i8 %50 to i32
  %or = or i32 %or12.i, %conv
  %51 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write, align 4
  %vpconfig28 = getelementptr inbounds %struct.omap_vp_instance, ptr %1, i32 0, i32 1
  %53 = ptrtoint ptr %vpconfig28 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %vpconfig28, align 4
  tail call void %52(i32 noundef %or, i8 noundef zeroext %54) #6
  %55 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end21, %if.end12.cleanup_crit_edge, %do.end9, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @voltdm_get_voltage(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_vp_disable(ptr noundef readonly %voltdm) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %voltdm, null
  %cmp.i = icmp ugt ptr %voltdm, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.21) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %vp2 = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 5
  %0 = ptrtoint ptr %vp2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vp2, align 4
  %read = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 9
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.do.end9_crit_edge, label %lor.lhs.false4

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

lor.lhs.false4:                                   ; preds = %if.end
  %write = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 10
  %4 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %lor.lhs.false4.do.end9_crit_edge, label %if.end12

lor.lhs.false4.do.end9_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

do.end9:                                          ; preds = %lor.lhs.false4.do.end9_crit_edge, %if.end.do.end9_crit_edge
  %6 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %voltdm, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.21, ptr noundef %7) #9
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false4
  %enabled = getelementptr inbounds %struct.omap_vp_instance, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enabled, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool13.not = icmp eq i8 %9, 0
  br i1 %tobool13.not, label %do.end17, label %if.end21

do.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %voltdm, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.21, ptr noundef %11) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %vpconfig23 = getelementptr inbounds %struct.omap_vp_instance, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %vpconfig23 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %vpconfig23, align 4
  %call24 = tail call i32 %3(i8 noundef zeroext %13) #6
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %vpconfig_vpenable = getelementptr inbounds %struct.omap_vp_common, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %vpconfig_vpenable to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vpconfig_vpenable, align 1
  %conv = zext i8 %17 to i32
  %neg = xor i32 %conv, -1
  %and = and i32 %call24, %neg
  %18 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write, align 4
  %20 = ptrtoint ptr %vpconfig23 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vpconfig23, align 4
  tail call void %19(i32 noundef %and, i8 noundef zeroext %21) #6
  %vstatus = getelementptr inbounds %struct.omap_vp_instance, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end32.for.body_crit_edge, %if.end21
  %timeout.065 = phi i32 [ 0, %if.end21 ], [ %inc, %if.end32.for.body_crit_edge ]
  %22 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read, align 4
  %24 = ptrtoint ptr %vstatus to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %vstatus, align 4
  %call29 = tail call i32 %23(i8 noundef zeroext %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %for.body.if.end42_crit_edge

for.body.if.end42_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.end32:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #6
  %inc = add nuw nsw i32 %timeout.065, 1
  %exitcond.not = icmp eq i32 %inc, 200
  br i1 %exitcond.not, label %do.end38, label %if.end32.for.body_crit_edge

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %voltdm, align 4
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.21, ptr noundef %28) #9
  br label %if.end42

if.end42:                                         ; preds = %do.end38, %for.body.if.end42_crit_edge
  %29 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %do.end17, %do.end9, %do.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !28, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45, !46, !48, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/vp.c", i32 46, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @omap_vp_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @omap_vp_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/vp.c", i32 51, i32 3}
!8 = !{ptr @omap_vp_init._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @omap_vp_init._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/vp.c", i32 144, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @omap_vp_forceupdate_scale._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @omap_vp_forceupdate_scale._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-omap2/vp.c", i32 163, i32 3}
!17 = !{ptr @omap_vp_forceupdate_scale._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @omap_vp_forceupdate_scale._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-omap2/vp.c", i32 181, i32 3}
!21 = !{ptr @omap_vp_forceupdate_scale._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @omap_vp_forceupdate_scale._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-omap2/vp.c", i32 203, i32 3}
!25 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @omap_vp_enable._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @omap_vp_enable._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @omap_vp_enable._entry.16, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-omap2/vp.c", i32 209, i32 3}
!30 = !{ptr @omap_vp_enable._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-omap2/vp.c", i32 220, i32 3}
!33 = !{ptr @omap_vp_enable._entry.18, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @omap_vp_enable._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-omap2/vp.c", i32 248, i32 3}
!37 = !{ptr @omap_vp_disable._entry, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @omap_vp_disable._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @omap_vp_disable._entry.22, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../arch/arm/mach-omap2/vp.c", i32 254, i32 3}
!41 = !{ptr @omap_vp_disable._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-omap2/vp.c", i32 261, i32 3}
!44 = !{ptr @omap_vp_disable._entry.24, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @omap_vp_disable._entry_ptr.26, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-omap2/vp.c", i32 278, i32 3}
!48 = !{ptr @omap_vp_disable._entry.27, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @omap_vp_disable._entry_ptr.29, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i32 0, i32 33}
!60 = !{!"auto-init"}
!61 = !{i8 0, i8 2}
