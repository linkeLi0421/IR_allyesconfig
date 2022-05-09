; ModuleID = '/llk/IR_all_yes/drivers/phy/broadcom/phy-brcm-usb-init.c_pt.bc'
source_filename = "../drivers/phy/broadcom/phy-brcm-usb-init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.brcm_usb_init_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.id_to_type = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.brcm_usb_init_params = type { [6 x ptr], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8 }

@brcm_usb_dvr_init_7445.__UNIQUE_ID_ddebug137 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"phy_brcm_usb_dvr\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcm_usb_dvr_init_7445\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/phy/broadcom/phy-brcm-usb-init.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@usb_reg_bits_map_table = internal constant { [10 x [18 x i32]], [176 x i8] } { [10 x [18 x i32]] [[18 x i32] [i32 16384, i32 32768, i32 131072, i32 33554432, i32 -1073741824, i32 0, i32 0, i32 4194304, i32 -2147483648, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3145728, i32 14], [18 x i32] [i32 16384, i32 32768, i32 131072, i32 0, i32 -1073741824, i32 -2147483648, i32 0, i32 1073741824, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 805306368, i32 14], [18 x i32] [i32 0, i32 0, i32 131072, i32 33554432, i32 -1073741824, i32 0, i32 8388608, i32 4194304, i32 -2147483648, i32 0, i32 0, i32 0, i32 3, i32 1073741824, i32 67108864, i32 134217728, i32 3145728, i32 14], [18 x i32] [i32 16384, i32 32768, i32 131072, i32 0, i32 -1073741824, i32 -2147483648, i32 0, i32 1073741824, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 805306368, i32 14], [18 x i32] [i32 16384, i32 32768, i32 131072, i32 0, i32 -1073741824, i32 0, i32 0, i32 1073741824, i32 -2147483648, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 805306368, i32 14], [18 x i32] [i32 16384, i32 32768, i32 65536, i32 0, i32 0, i32 -2147483648, i32 0, i32 0, i32 0, i32 131072, i32 268435456, i32 536870912, i32 0, i32 0, i32 0, i32 0, i32 0, i32 14], [18 x i32] [i32 16384, i32 32768, i32 131072, i32 33554432, i32 -1073741824, i32 0, i32 8388608, i32 4194304, i32 -2147483648, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3145728, i32 14], [18 x i32] [i32 16384, i32 32768, i32 65536, i32 0, i32 -1073741824, i32 -2147483648, i32 0, i32 0, i32 0, i32 131072, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3145728, i32 14], [18 x i32] [i32 0, i32 0, i32 131072, i32 33554432, i32 -1073741824, i32 0, i32 8388608, i32 4194304, i32 -2147483648, i32 0, i32 0, i32 0, i32 3, i32 1073741824, i32 67108864, i32 134217728, i32 3145728, i32 14], [18 x i32] [i32 0, i32 0, i32 0, i32 33554432, i32 -1073741824, i32 0, i32 8388608, i32 4194304, i32 -2147483648, i32 0, i32 0, i32 0, i32 3, i32 1073741824, i32 0, i32 0, i32 0, i32 0]], [176 x i8] zeroinitializer }, align 32
@family_names = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], [56 x i8] zeroinitializer }, align 32
@bcm7445_ops = internal constant { %struct.brcm_usb_init_ops, [60 x i8] } { %struct.brcm_usb_init_ops { ptr @usb_init_ipp, ptr @usb_init_common, ptr @usb_init_eohci, ptr @usb_init_xhci, ptr @usb_uninit_common, ptr @usb_uninit_eohci, ptr @usb_uninit_xhci, ptr @usb_get_dual_select, ptr @usb_set_dual_select }, [60 x i8] zeroinitializer }, align 32
@id_to_type_table = internal constant { [13 x %struct.id_to_type], [56 x i8] } { [13 x %struct.id_to_type] [%struct.id_to_type { i32 865075200, i32 0 }, %struct.id_to_type { i32 1917845520, i32 1 }, %struct.id_to_type { i32 1918894080, i32 8 }, %struct.id_to_type { i32 1918173184, i32 8 }, %struct.id_to_type { i32 1919418368, i32 2 }, %struct.id_to_type { i32 1920008192, i32 2 }, %struct.id_to_type { i32 1935933440, i32 3 }, %struct.id_to_type { i32 1936064544, i32 4 }, %struct.id_to_type { i32 121860352, i32 5 }, %struct.id_to_type { i32 1949892624, i32 6 }, %struct.id_to_type { i32 1950679088, i32 7 }, %struct.id_to_type { i32 1920466944, i32 9 }, %struct.id_to_type { i32 0, i32 2 }], [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3390A0\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"7250B0\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"7271A0\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"7364A0\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"7366C0\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"74371A0\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"7439B0\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"7445D0\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"7260A0\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"7278A0\00", [25 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@usb_get_dual_select.__UNIQUE_ID_ddebug135 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.3, i8 0, i8 -14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usb_get_dual_select\00", [44 x i8] zeroinitializer }, align 32
@usb_set_dual_select.__UNIQUE_ID_ddebug136 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.3, i8 0, i8 -10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usb_set_dual_select\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 119873536, i64 121929728, i64 121933824, i64 1917976576, i64 1950875648, i64 1950941184]
@__sancov_gen_cov_switch_values.16 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 1011, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [23 x i8] c"usb_reg_bits_map_table\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 184, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"family_names\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 97, i32 20 }
@___asan_gen_.35 = private unnamed_addr constant [12 x i8] c"bcm7445_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 995, i32 39 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"id_to_type_table\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 167, i32 32 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 98, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 99, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 100, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 101, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 102, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 103, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 104, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 105, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 106, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 107, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 970, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [44 x i8] c"../drivers/phy/broadcom/phy-brcm-usb-init.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 984, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @usb_reg_bits_map_table, ptr @family_names, ptr @bcm7445_ops, ptr @id_to_type_table, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_reg_bits_map_table to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @family_names to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7445_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_to_type_table to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcm_usb_dvr_init_7445(ptr nocapture noundef %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcm_usb_dvr_init_7445.__UNIQUE_ID_ddebug137, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcm_usb_dvr_init_7445, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !49

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @brcm_usb_dvr_init_7445.__UNIQUE_ID_ddebug137, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %family_id.i = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 4
  %0 = ptrtoint ptr %family_id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family_id.i, align 4
  %and.i = and i32 %1, -16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end
  %2 = phi i32 [ 865075200, %do.end ], [ %9, %for.inc.i.for.body.i_crit_edge ]
  %x.050.i = phi i32 [ 0, %do.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %last_family.049.i = phi i32 [ 0, %do.end ], [ %last_family.1.i, %for.inc.i.for.body.i_crit_edge ]
  %last_type.048.i = phi i32 [ -1, %do.end ], [ %last_type.1.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %2)
  %cmp.i = icmp eq i32 %and.i, %2
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %type.i = getelementptr [13 x %struct.id_to_type], ptr @id_to_type_table, i32 0, i32 %x.050.i, i32 1
  %3 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type.i, align 4
  br label %get_family_type.exit

if.end.i:                                         ; preds = %for.body.i
  %5 = xor i32 %2, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %cmp9.i = icmp ult i32 %5, 256
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %2)
  %cmp13.i = icmp ugt i32 %and.i, %2
  %or.cond.i = and i1 %cmp13.i, %cmp9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %last_family.049.i, i32 %2)
  %cmp16.i = icmp ult i32 %last_family.049.i, %2
  %or.cond45.i = select i1 %or.cond.i, i1 %cmp16.i, i1 false
  br i1 %or.cond45.i, label %if.then17.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %type21.i = getelementptr [13 x %struct.id_to_type], ptr @id_to_type_table, i32 0, i32 %x.050.i, i32 1
  %6 = ptrtoint ptr %type21.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type21.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then17.i, %if.end.i.for.inc.i_crit_edge
  %last_type.1.i = phi i32 [ %7, %if.then17.i ], [ %last_type.048.i, %if.end.i.for.inc.i_crit_edge ]
  %last_family.1.i = phi i32 [ %2, %if.then17.i ], [ %last_family.049.i, %if.end.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %x.050.i, 1
  %arrayidx.i = getelementptr [13 x %struct.id_to_type], ptr @id_to_type_table, i32 0, i32 %inc.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %exitcond.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %last_type.1.i)
  %cmp24.i = icmp eq i32 %last_type.1.i, -1
  %spec.select.i = select i1 %cmp24.i, i32 2, i32 %last_type.1.i
  br label %get_family_type.exit

get_family_type.exit:                             ; preds = %for.end.i, %if.then.i
  %retval.0.i12 = phi i32 [ %4, %if.then.i ], [ %spec.select.i, %for.end.i ]
  %selected_family = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 6
  %10 = ptrtoint ptr %selected_family to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i12, ptr %selected_family, align 4
  %arrayidx = getelementptr [10 x [18 x i32]], ptr @usb_reg_bits_map_table, i32 0, i32 %retval.0.i12
  %usb_reg_bits_map = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 8
  %11 = ptrtoint ptr %usb_reg_bits_map to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx, ptr %usb_reg_bits_map, align 4
  %arrayidx5 = getelementptr [10 x ptr], ptr @family_names, i32 0, i32 %retval.0.i12
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx5, align 4
  %family_name = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 7
  %14 = ptrtoint ptr %family_name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %family_name, align 4
  %ops = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 9
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @bcm7445_ops, ptr %ops, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_init_ipp(ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %usb_reg_bits_map = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 8
  %2 = ptrtoint ptr %usb_reg_bits_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_reg_bits_map, align 4
  %arrayidx1 = getelementptr i32, ptr %3, i32 10
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %entry
  %ioc = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 1
  %6 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ioc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %1, i32 96
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !50
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #4
  %or.i.i = or i32 %9, %5
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #4, !srcloc !51
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %ipp = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 2
  %11 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ipp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %usb_reg_bits_map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_reg_bits_map, align 4
  %arrayidx.i64 = getelementptr i32, ptr %14, i32 11
  %15 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i64, align 4
  %17 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %params, align 4
  %add.ptr.i65 = getelementptr i8, ptr %18, i32 96
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #4, !srcloc !50
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #4
  %or.i.i66 = or i32 %20, %16
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i.i66) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %21) #4, !srcloc !51
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge, %entry.if.end6_crit_edge
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #4, !srcloc !50
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #4
  %24 = ptrtoint ptr %usb_reg_bits_map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb_reg_bits_map, align 4
  %arrayidx8 = getelementptr i32, ptr %25, i32 15
  %26 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx8, align 4
  %neg = xor i32 %27, -1
  %reg.0 = and i32 %23, %neg
  %arrayidx15 = getelementptr i32, ptr %25, i32 3
  %28 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool16.not = icmp eq i32 %29, 0
  br i1 %tobool16.not, label %if.end6.if.end26_crit_edge, label %if.then17

if.end6.if.end26_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then17:                                        ; preds = %if.end6
  %ipp18 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 2
  %30 = ptrtoint ptr %ipp18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ipp18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp19.not = icmp eq i32 %31, 2
  br i1 %cmp19.not, label %if.then17.if.end26_crit_edge, label %if.then20

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  %neg23 = xor i32 %29, -1
  %and24 = and i32 %reg.0, %neg23
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %if.then17.if.end26_crit_edge, %if.end6.if.end26_crit_edge
  %reg.1 = phi i32 [ %and24, %if.then20 ], [ %reg.0, %if.then17.if.end26_crit_edge ], [ %reg.0, %if.end6.if.end26_crit_edge ]
  %and27 = and i32 %reg.1, -49
  %ioc28 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 1
  %32 = ptrtoint ptr %ioc28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ioc28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool29.not = icmp eq i32 %33, 0
  %or = or i32 %and27, 16
  %spec.select = select i1 %tobool29.not, i32 %and27, i32 %or
  %ipp32 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 2
  %34 = ptrtoint ptr %ipp32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ipp32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp33 = icmp eq i32 %35, 1
  %or35 = or i32 %spec.select, 32
  %reg.3 = select i1 %cmp33, i32 %or35, i32 %spec.select
  %36 = tail call i32 @llvm.bswap.i32(i32 %reg.3) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %36) #4, !srcloc !51
  %xor = xor i32 %reg.3, %23
  %and38 = and i32 %xor, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end26.if.end41_crit_edge, label %if.then40

if.end26.if.end41_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.then40:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef 50) #4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end26.if.end41_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_init_common(ptr noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 52
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #4, !srcloc !51
  %add.ptr = getelementptr i8, ptr %1, i32 56
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #4, !srcloc !51
  %usb_reg_bits_map = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 8
  %5 = ptrtoint ptr %usb_reg_bits_map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb_reg_bits_map, align 4
  %arrayidx2 = getelementptr i32, ptr %6, i32 5
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %params, align 4
  %add.ptr.i107 = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107) #4, !srcloc !50
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  %neg.i.i = xor i32 %8, -1
  %and.i.i = and i32 %12, %neg.i.i
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 %13) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %usb_reg_bits_map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_reg_bits_map, align 4
  %arrayidx4 = getelementptr i32, ptr %15, i32 8
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.not = icmp eq i32 %17, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %params, align 4
  %add.ptr.i110 = getelementptr i8, ptr %19, i32 52
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110) #4, !srcloc !50
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #4
  %neg.i.i111 = xor i32 %17, -1
  %and.i.i112 = and i32 %21, %neg.i.i111
  %22 = tail call i32 @llvm.bswap.i32(i32 %and.i.i112) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 %22) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %selected_family = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 6
  %23 = ptrtoint ptr %selected_family to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %selected_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %24)
  %cmp.not = icmp eq i32 %24, 5
  br i1 %cmp.not, label %if.end7.if.end11_crit_edge, label %land.lhs.true

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end7
  %family_id = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 4
  %25 = ptrtoint ptr %family_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %family_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %26)
  %tobool.not.i = icmp ult i32 %26, 268435456
  %cond.v.i = select i1 %tobool.not.i, i32 8, i32 16
  %cond.i = lshr i32 %26, %cond.v.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 29540, i32 %cond.i)
  %cmp9.not = icmp eq i32 %cond.i, 29540
  br i1 %cmp9.not, label %land.lhs.true.if.end11_crit_edge, label %if.then10

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %usb_reg_bits_map to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usb_reg_bits_map, align 4
  %arrayidx.i114 = getelementptr i32, ptr %28, i32 2
  %29 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i114, align 4
  %31 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %params, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #4, !srcloc !50
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #4
  %or.i.i = or i32 %34, %30
  %35 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %35) #4, !srcloc !51
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  %add.ptr12 = getelementptr i8, ptr %1, i32 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #4, !srcloc !50
  %37 = or i32 %36, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %37) #4, !srcloc !51
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #4, !srcloc !50
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #4
  %40 = ptrtoint ptr %selected_family to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %selected_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp16 = icmp eq i32 %41, 3
  br i1 %cmp16, label %if.then17, label %if.end11.if.end20_crit_edge

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %usb_reg_bits_map to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %usb_reg_bits_map, align 4
  %arrayidx19 = getelementptr i32, ptr %43, i32 4
  %44 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx19, align 4
  %or = or i32 %45, %39
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end11.if.end20_crit_edge
  %reg.0 = phi i32 [ %or, %if.then17 ], [ %39, %if.end11.if.end20_crit_edge ]
  %add.ptr.i115 = getelementptr i8, ptr %1, i32 44
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115) #4, !srcloc !50
  %47 = and i32 %46, -524289
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 %47) #4, !srcloc !51
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115) #4, !srcloc !50
  %49 = and i32 %48, -9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 %49) #4, !srcloc !51
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #4, !srcloc !50
  %51 = and i32 %50, -65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %51) #4, !srcloc !51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748) #4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #4, !srcloc !50
  %54 = or i32 %53, 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %54) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1602216192) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1602216190) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1602216192) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1597634048) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1597634046) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1597634048) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %55 = ptrtoint ptr %usb_reg_bits_map to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %usb_reg_bits_map, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %or27 = or i32 %58, %reg.0
  %arrayidx30 = getelementptr i32, ptr %56, i32 1
  %59 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx30, align 4
  %or35 = or i32 %or27, %60
  %61 = tail call i32 @llvm.bswap.i32(i32 %or35) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %61) #4, !srcloc !51
  %62 = ptrtoint ptr %selected_family to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %selected_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %63)
  %cmp.not.i = icmp eq i32 %63, 7
  br i1 %cmp.not.i, label %if.end.i, label %if.end20.brcmusb_memc_fix.exit_crit_edge

if.end20.brcmusb_memc_fix.exit_crit_edge:         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %brcmusb_memc_fix.exit

if.end.i:                                         ; preds = %if.end20
  %product_id.i = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 5
  %64 = ptrtoint ptr %product_id.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %product_id.i, align 4
  %and.i = and i32 %65, -4096
  %66 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %if.end.i.brcmusb_memc_fix.exit_crit_edge [
    i32 1917976576, label %if.end.i.sw.bb.i_crit_edge
    i32 1950875648, label %if.end.i.sw.bb.i_crit_edge137
    i32 1950941184, label %if.end.i.sw.bb.i_crit_edge138
    i32 119873536, label %if.end.i.sw.bb.i_crit_edge139
    i32 121929728, label %if.end.i.sw.bb.i_crit_edge140
    i32 121933824, label %if.end.i.sw.bb.i_crit_edge141
  ]

if.end.i.sw.bb.i_crit_edge141:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge140:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge139:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge138:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge137:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end.i.brcmusb_memc_fix.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %brcmusb_memc_fix.exit

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge137, %if.end.i.sw.bb.i_crit_edge138, %if.end.i.sw.bb.i_crit_edge139, %if.end.i.sw.bb.i_crit_edge140, %if.end.i.sw.bb.i_crit_edge141
  %67 = ptrtoint ptr %usb_reg_bits_map to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %usb_reg_bits_map, align 4
  %arrayidx.i.i = getelementptr i32, ptr %68, i32 1
  %69 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i.i, align 4
  %71 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %params, align 4
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #4, !srcloc !50
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #4
  %neg.i.i.i = xor i32 %70, -1
  %and.i.i.i = and i32 %74, %neg.i.i.i
  %75 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %75) #4, !srcloc !51
  br label %brcmusb_memc_fix.exit

brcmusb_memc_fix.exit:                            ; preds = %sw.bb.i, %if.end.i.brcmusb_memc_fix.exit_crit_edge, %if.end20.brcmusb_memc_fix.exit_crit_edge
  %76 = ptrtoint ptr %usb_reg_bits_map to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %usb_reg_bits_map, align 4
  %arrayidx39 = getelementptr i32, ptr %77, i32 12
  %78 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool40.not = icmp eq i32 %79, 0
  br i1 %tobool40.not, label %brcmusb_memc_fix.exit.if.end48_crit_edge, label %if.then41

brcmusb_memc_fix.exit.if.end48_crit_edge:         ; preds = %brcmusb_memc_fix.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

if.then41:                                        ; preds = %brcmusb_memc_fix.exit
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr42 = getelementptr i8, ptr %1, i32 144
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #4, !srcloc !50
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #4
  %82 = ptrtoint ptr %usb_reg_bits_map to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %usb_reg_bits_map, align 4
  %arrayidx45 = getelementptr i32, ptr %83, i32 12
  %84 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx45, align 4
  %neg = xor i32 %85, -1
  %and = and i32 %81, %neg
  %mode = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 3
  %86 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %mode, align 4
  %or46 = or i32 %and, %87
  %88 = tail call i32 @llvm.bswap.i32(i32 %or46) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %88) #4, !srcloc !51
  br label %if.end48

if.end48:                                         ; preds = %if.then41, %brcmusb_memc_fix.exit.if.end48_crit_edge
  %89 = ptrtoint ptr %usb_reg_bits_map to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %usb_reg_bits_map, align 4
  %arrayidx50 = getelementptr i32, ptr %90, i32 6
  %91 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool51.not = icmp eq i32 %92, 0
  br i1 %tobool51.not, label %if.end48.if.end54_crit_edge, label %if.then52

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.then52:                                        ; preds = %if.end48
  %mode53 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 3
  %93 = ptrtoint ptr %mode53 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mode53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cond = icmp eq i32 %94, 0
  %95 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %params, align 4
  %add.ptr.i118 = getelementptr i8, ptr %96, i32 52
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i118) #4
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #4
  %neg.i.i119 = xor i32 %92, -1
  %and.i.i120 = and i32 %98, %neg.i.i119
  %99 = tail call i32 @llvm.bswap.i32(i32 %and.i.i120) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118, i32 %99) #4
  br i1 %cond, label %if.then52.if.end54_crit_edge, label %sw.default

if.then52.if.end54_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

sw.default:                                       ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #6
  %100 = ptrtoint ptr %usb_reg_bits_map to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %usb_reg_bits_map, align 4
  %arrayidx.i127 = getelementptr i32, ptr %101, i32 6
  %102 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx.i127, align 4
  %104 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %params, align 4
  %add.ptr.i128 = getelementptr i8, ptr %105, i32 52
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128) #4, !srcloc !50
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #4
  %or.i.i129 = or i32 %107, %103
  %108 = tail call i32 @llvm.bswap.i32(i32 %or.i.i129) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %108) #4, !srcloc !51
  br label %if.end54

if.end54:                                         ; preds = %sw.default, %if.then52.if.end54_crit_edge, %if.end48.if.end54_crit_edge
  %109 = ptrtoint ptr %usb_reg_bits_map to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %usb_reg_bits_map, align 4
  %arrayidx56 = getelementptr i32, ptr %110, i32 14
  %111 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool57.not = icmp eq i32 %112, 0
  br i1 %tobool57.not, label %if.end54.if.end63_crit_edge, label %if.then58

if.end54.if.end63_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

if.then58:                                        ; preds = %if.end54
  %mode59 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 3
  %113 = ptrtoint ptr %mode59 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mode59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %114)
  %cmp60 = icmp eq i32 %114, 3
  %115 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %params, align 4
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #4
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #4
  br i1 %cmp60, label %if.then61, label %if.else

if.then61:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #6
  %or.i.i132 = or i32 %118, %112
  %119 = tail call i32 @llvm.bswap.i32(i32 %or.i.i132) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %119) #4, !srcloc !51
  br label %if.end63

if.else:                                          ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #6
  %neg.i.i135 = xor i32 %112, -1
  %and.i.i136 = and i32 %118, %neg.i.i135
  %120 = tail call i32 @llvm.bswap.i32(i32 %and.i.i136) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %120) #4, !srcloc !51
  br label %if.end63

if.end63:                                         ; preds = %if.else, %if.then61, %if.end54.if.end63_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_init_eohci(ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %usb_reg_bits_map = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 8
  %2 = ptrtoint ptr %usb_reg_bits_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_reg_bits_map, align 4
  %arrayidx1 = getelementptr i32, ptr %3, i32 16
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %1, i32 52
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !50
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #4
  %or.i.i = or i32 %7, %5
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #4, !srcloc !51
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %selected_family = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 6
  %9 = ptrtoint ptr %selected_family to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %selected_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp = icmp eq i32 %10, 4
  br i1 %cmp, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !50
  %12 = or i32 %11, 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #4, !srcloc !51
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #4, !srcloc !50
  %14 = and i32 %13, -251658241
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %usb_reg_bits_map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb_reg_bits_map, align 4
  %arrayidx6 = getelementptr i32, ptr %17, i32 17
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx6, align 4
  %or = or i32 %15, %19
  %20 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %20) #4, !srcloc !51
  %21 = ptrtoint ptr %selected_family to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %selected_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp9 = icmp eq i32 %22, 2
  br i1 %cmp9, label %if.then10, label %if.end3.if.end12_crit_edge

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then10:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr11 = getelementptr i8, ptr %1, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #4, !srcloc !50
  %24 = or i32 %23, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %24) #4, !srcloc !51
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end3.if.end12_crit_edge
  %family_id = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 4
  %25 = ptrtoint ptr %family_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %family_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1918173184, i32 %26)
  %cmp13 = icmp eq i32 %26, 1918173184
  br i1 %cmp13, label %if.then14, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr15 = getelementptr i8, ptr %1, i32 12
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #4, !srcloc !50
  %28 = and i32 %27, 2146500607
  %29 = or i32 %28, 524288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %29) #4, !srcloc !51
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.end12.if.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_init_xhci(ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 112
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !50
  %3 = and i32 %2, -8388609
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %family_id = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 4
  %4 = ptrtoint ptr %family_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %5)
  %tobool.not.i = icmp ult i32 %5, 268435456
  %cond.v.i = select i1 %tobool.not.i, i32 8, i32 16
  %cond.i = lshr i32 %5, %cond.v.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 29542, i32 %cond.i)
  %cmp = icmp eq i32 %cond.i, 29542
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !50
  %7 = or i32 %6, 33554432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #4, !srcloc !51
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !50
  %9 = or i32 %8, 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #4, !srcloc !51
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr3 = getelementptr i8, ptr %1, i32 96
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #4, !srcloc !50
  %11 = and i32 %10, -268435457
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %11) #4, !srcloc !51
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #4, !srcloc !50
  %13 = or i32 %12, 268435456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %13) #4, !srcloc !51
  %14 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %params, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 8396672) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 8396674) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 8396672) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 51709824) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 51709826) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 51709824) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %16 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %params, align 4
  %selected_family.i.i = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 6
  %18 = ptrtoint ptr %selected_family.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %selected_family.i.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %19, label %if.end.sw.epilog.i.i_crit_edge [
    i32 0, label %if.end.brcmusb_usb3_phy_workarounds.exit_crit_edge
    i32 1, label %if.end.brcmusb_usb3_phy_workarounds.exit_crit_edge17
    i32 4, label %if.end.brcmusb_usb3_phy_workarounds.exit_crit_edge18
    i32 5, label %if.end.brcmusb_usb3_phy_workarounds.exit_crit_edge19
    i32 6, label %if.end.brcmusb_usb3_phy_workarounds.exit_crit_edge20
    i32 7, label %if.end.brcmusb_usb3_phy_workarounds.exit_crit_edge21
    i32 8, label %if.end.brcmusb_usb3_phy_workarounds.exit_crit_edge22
    i32 3, label %sw.bb1.i.i
  ]

if.end.brcmusb_usb3_phy_workarounds.exit_crit_edge22: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %brcmusb_usb3_phy_workarounds.exit

if.end.brcmusb_usb3_phy_workarounds.exit_crit_edge21: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %brcmusb_usb3_phy_workarounds.exit

if.end.brcmusb_usb3_phy_workarounds.exit_crit_edge20: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %brcmusb_usb3_phy_workarounds.exit

if.end.brcmusb_usb3_phy_workarounds.exit_crit_edge19: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %brcmusb_usb3_phy_workarounds.exit

if.end.brcmusb_usb3_phy_workarounds.exit_crit_edge18: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %brcmusb_usb3_phy_workarounds.exit

if.end.brcmusb_usb3_phy_workarounds.exit_crit_edge17: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %brcmusb_usb3_phy_workarounds.exit

if.end.brcmusb_usb3_phy_workarounds.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %brcmusb_usb3_phy_workarounds.exit

if.end.sw.epilog.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %if.end
  %21 = ptrtoint ptr %family_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %family_id, align 4
  %and.i.i.i = and i32 %22, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i, label %sw.bb1.i.i.brcmusb_usb3_phy_workarounds.exit_crit_edge, label %sw.bb1.i.i.sw.epilog.i.i_crit_edge

sw.bb1.i.i.sw.epilog.i.i_crit_edge:               ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i

sw.bb1.i.i.brcmusb_usb3_phy_workarounds.exit_crit_edge: ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %brcmusb_usb3_phy_workarounds.exit

sw.epilog.i.i:                                    ; preds = %sw.bb1.i.i.sw.epilog.i.i_crit_edge, %if.end.sw.epilog.i.i_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 96
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !50
  %24 = and i32 %23, -268435457
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %24) #4, !srcloc !51
  %add.ptr.i.i7.i = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 8396672) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 8396674) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 8396672) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 -2074668928) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 -2074668926) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 -2074668928) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 -805236352) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 -805236350) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 -805236352) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 -400747904) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 -400747902) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 -400747904) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 -2136337536) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 -2136337534) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 -2136337536) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 646452352) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 646452354) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 646452352) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 1140856192) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 1140856194) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 1140856192) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 8394368) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 8394370) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 8394368) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 1359484800) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 1359484802) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 1359484800) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 6272) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 6274) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 6272) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sw.epilog.i.i
  %cmp2.i.i = phi i1 [ true, %sw.epilog.i.i ], [ false, %for.body.i.i.for.body.i.i_crit_edge ]
  %ofs.048.i.i = phi i32 [ 0, %sw.epilog.i.i ], [ 4096, %for.body.i.i.for.body.i.i_crit_edge ]
  %or1.i.i.i = or i32 %ofs.048.i.i, -2145419200
  %25 = tail call i32 @llvm.bswap.i32(i32 %or1.i.i.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 %25) #4, !srcloc !51
  %or2.i.i.i = or i32 %ofs.048.i.i, -2111864768
  %26 = tail call i32 @llvm.bswap.i32(i32 %or2.i.i.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 %26) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 %25) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 -1879047296) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 -1879047294) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 -1879047296) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 872481920) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 872481922) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 872481920) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %or1.i42.i.i = or i32 %ofs.048.i.i, -2145419232
  %27 = tail call i32 @llvm.bswap.i32(i32 %or1.i42.i.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 %27) #4, !srcloc !51
  %or2.i44.i.i = or i32 %ofs.048.i.i, -2111864800
  %28 = tail call i32 @llvm.bswap.i32(i32 %or2.i44.i.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 %28) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 %27) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 -503316096) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 -503316094) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 -503316096) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  br i1 %cmp2.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !50
  %30 = or i32 %29, 268435456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %30) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  br label %brcmusb_usb3_phy_workarounds.exit

brcmusb_usb3_phy_workarounds.exit:                ; preds = %for.end.i.i, %sw.bb1.i.i.brcmusb_usb3_phy_workarounds.exit_crit_edge, %if.end.brcmusb_usb3_phy_workarounds.exit_crit_edge, %if.end.brcmusb_usb3_phy_workarounds.exit_crit_edge17, %if.end.brcmusb_usb3_phy_workarounds.exit_crit_edge18, %if.end.brcmusb_usb3_phy_workarounds.exit_crit_edge19, %if.end.brcmusb_usb3_phy_workarounds.exit_crit_edge20, %if.end.brcmusb_usb3_phy_workarounds.exit_crit_edge21, %if.end.brcmusb_usb3_phy_workarounds.exit_crit_edge22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1082138496) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1082138498) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1082138496) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 384) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 385) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 384) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %add.ptr4.i.i.i = getelementptr i8, ptr %15, i32 24
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i.i) #4, !srcloc !50
  %32 = and i32 %31, -251723776
  %33 = or i32 %32, 251658624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %33) #4, !srcloc !51
  %34 = or i32 %32, 251658626
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %34) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %33) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1083187072) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1083187074) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1083187072) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 384) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 385) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 384) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i.i) #4, !srcloc !50
  %36 = and i32 %35, -251723776
  %37 = or i32 %36, 251658624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %37) #4, !srcloc !51
  %38 = or i32 %36, 251658626
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %38) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %37) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 8396672) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 8396674) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 8396672) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 3968) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 3969) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 3968) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i.i) #4, !srcloc !50
  %40 = and i32 %39, -196608
  %41 = or i32 %40, 135040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %41) #4, !srcloc !51
  %42 = or i32 %40, 135042
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %42) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %41) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -2139086976) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -2139086974) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -2139086976) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1408) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1409) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1408) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i.i) #4, !srcloc !50
  %44 = and i32 %43, -260112384
  %45 = or i32 %44, 226493824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %45) #4, !srcloc !51
  %46 = or i32 %44, 226493826
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %46) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %45) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -2138038400) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -2138038398) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -2138038400) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1408) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1409) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1408) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i.i) #4, !srcloc !50
  %48 = and i32 %47, -260112384
  %49 = or i32 %48, 226493824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %49) #4, !srcloc !51
  %50 = or i32 %48, 226493826
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %50) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %49) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1619009408) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1619009410) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1619009408) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 384) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 385) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 384) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i.i) #4, !srcloc !50
  %52 = and i32 %51, -196608
  %53 = or i32 %52, 131456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %53) #4, !srcloc !51
  %54 = or i32 %52, 131458
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %54) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %53) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1620057984) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1620057986) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1620057984) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 384) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 385) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 384) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i.i) #4, !srcloc !50
  %56 = and i32 %55, -196608
  %57 = or i32 %56, 131456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %57) #4, !srcloc !51
  %58 = or i32 %56, 131458
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %58) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %57) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -528474240) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -528474238) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -528474240) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 384) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 385) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 384) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i.i) #4, !srcloc !50
  %60 = and i32 %59, -134283264
  %61 = or i32 %60, 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %61) #4, !srcloc !51
  %62 = or i32 %60, 386
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %62) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %61) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -527425664) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -527425662) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -527425664) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 384) #4, !srcloc !51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 385) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 384) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i.i) #4, !srcloc !50
  %64 = and i32 %63, -134283264
  %65 = or i32 %64, 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %65) #4, !srcloc !51
  %66 = or i32 %64, 386
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %66) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %65) #4, !srcloc !51
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %usb_reg_bits_map4.i = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 8
  %67 = ptrtoint ptr %usb_reg_bits_map4.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %usb_reg_bits_map4.i, align 4
  %arrayidx5.i = getelementptr i32, ptr %68, i32 7
  %69 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool6.not.i = icmp eq i32 %70, 0
  br i1 %tobool6.not.i, label %if.else8.i, label %if.then7.i

if.then7.i:                                       ; preds = %brcmusb_usb3_phy_workarounds.exit
  call void @__sanitizer_cov_trace_pc() #6
  %71 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %params, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %72, i32 52
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #4, !srcloc !50
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #4
  %or.i.i.i = or i32 %74, %70
  %75 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %75) #4, !srcloc !51
  br label %brcmusb_xhci_soft_reset.exit

if.else8.i:                                       ; preds = %brcmusb_usb3_phy_workarounds.exit
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i25.i = getelementptr i32, ptr %68, i32 9
  %76 = ptrtoint ptr %arrayidx.i25.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i25.i, align 4
  %78 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %params, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %79, i32 96
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i) #4, !srcloc !50
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #4
  %or.i.i27.i = or i32 %81, %77
  %82 = tail call i32 @llvm.bswap.i32(i32 %or.i.i27.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %82) #4, !srcloc !51
  br label %brcmusb_xhci_soft_reset.exit

brcmusb_xhci_soft_reset.exit:                     ; preds = %if.else8.i, %if.then7.i
  %arrayidx.i = getelementptr [6 x ptr], ptr %params, i32 0, i32 1
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i, align 4
  %85 = ptrtoint ptr %family_id to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %family_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1949765632, i32 %86)
  %cmp.not.i = icmp ne i32 %86, 1949765632
  %tobool.not.i16 = icmp eq ptr %84, null
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %tobool.not.i16
  br i1 %or.cond.i, label %brcmusb_xhci_soft_reset.exit.brcmusb_usb3_otp_fix.exit_crit_edge, label %if.end.i

brcmusb_xhci_soft_reset.exit.brcmusb_usb3_otp_fix.exit_crit_edge: ; preds = %brcmusb_xhci_soft_reset.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %brcmusb_usb3_otp_fix.exit

if.end.i:                                         ; preds = %brcmusb_xhci_soft_reset.exit
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %84, i32 1624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 211943424) #4, !srcloc !51
  %add.ptr1.i = getelementptr i8, ptr %84, i32 1628
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #4, !srcloc !50
  %88 = or i32 %87, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %88) #4, !srcloc !51
  %89 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %params, align 4
  %add.ptr5.i = getelementptr i8, ptr %90, i32 96
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #4, !srcloc !50
  %92 = and i32 %91, -257
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %92) #4, !srcloc !51
  %93 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %params, align 4
  %add.ptr8.i = getelementptr i8, ptr %94, i32 96
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #4, !srcloc !50
  %96 = or i32 %95, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %96) #4, !srcloc !51
  br label %brcmusb_usb3_otp_fix.exit

brcmusb_usb3_otp_fix.exit:                        ; preds = %if.end.i, %brcmusb_xhci_soft_reset.exit.brcmusb_usb3_otp_fix.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_uninit_common(ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_reg_bits_map = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 8
  %0 = ptrtoint ptr %usb_reg_bits_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_reg_bits_map, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 8
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %params, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 52
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !50
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #4
  %or.i.i = or i32 %7, %3
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #4, !srcloc !51
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %usb_reg_bits_map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_reg_bits_map, align 4
  %arrayidx2 = getelementptr i32, ptr %10, i32 5
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not = icmp eq i32 %12, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %params, align 4
  %add.ptr.i16 = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #4, !srcloc !50
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #4
  %or.i.i17 = or i32 %16, %12
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i.i17) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %17) #4, !srcloc !51
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %wake_enabled = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 11
  %18 = ptrtoint ptr %wake_enabled to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %wake_enabled, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool6.not = icmp eq i8 %19, 0
  br i1 %tobool6.not, label %if.end5.if.end8_crit_edge, label %if.then7

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %params, align 4
  %add.ptr.i18 = getelementptr i8, ptr %21, i32 52
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #4
  %23 = or i32 %22, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %23) #4, !srcloc !51
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @usb_uninit_eohci(ptr nocapture noundef %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_uninit_xhci(ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_reg_bits_map4.i = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 8
  %0 = ptrtoint ptr %usb_reg_bits_map4.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_reg_bits_map4.i, align 4
  %arrayidx5.i = getelementptr i32, ptr %1, i32 7
  %2 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not.i = icmp eq i32 %3, 0
  br i1 %tobool6.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %params, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 52
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !50
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #4
  %neg.i.i.i = xor i32 %3, -1
  %and.i.i.i = and i32 %7, %neg.i.i.i
  %8 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #4, !srcloc !51
  br label %brcmusb_xhci_soft_reset.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i17.i = getelementptr i32, ptr %1, i32 9
  %9 = ptrtoint ptr %arrayidx.i17.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i17.i, align 4
  %11 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %params, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %12, i32 96
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #4, !srcloc !50
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #4
  %neg.i.i19.i = xor i32 %10, -1
  %and.i.i20.i = and i32 %14, %neg.i.i19.i
  %15 = tail call i32 @llvm.bswap.i32(i32 %and.i.i20.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %15) #4, !srcloc !51
  br label %brcmusb_xhci_soft_reset.exit

brcmusb_xhci_soft_reset.exit:                     ; preds = %if.else.i, %if.then2.i
  %16 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %params, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 112
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !50
  %19 = or i32 %18, 8388608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #4, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_get_dual_select(ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_get_dual_select.__UNIQUE_ID_ddebug135, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_get_dual_select, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !49

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb_get_dual_select.__UNIQUE_ID_ddebug135, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %usb_reg_bits_map = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 8
  %2 = ptrtoint ptr %usb_reg_bits_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_reg_bits_map, align 4
  %arrayidx3 = getelementptr i32, ptr %3, i32 12
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %do.end.if.end9_crit_edge, label %if.then5

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %1, i32 144
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !50
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #4
  %8 = ptrtoint ptr %usb_reg_bits_map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_reg_bits_map, align 4
  %arrayidx8 = getelementptr i32, ptr %9, i32 12
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8, align 4
  %and = and i32 %11, %7
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %do.end.if.end9_crit_edge
  %reg.0 = phi i32 [ %and, %if.then5 ], [ 0, %do.end.if.end9_crit_edge ]
  ret i32 %reg.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_set_dual_select(ptr nocapture noundef readonly %params, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_set_dual_select.__UNIQUE_ID_ddebug136, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_set_dual_select, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !49

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb_set_dual_select.__UNIQUE_ID_ddebug136, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %usb_reg_bits_map = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 8
  %2 = ptrtoint ptr %usb_reg_bits_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_reg_bits_map, align 4
  %arrayidx3 = getelementptr i32, ptr %3, i32 12
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %do.end.if.end10_crit_edge, label %if.then5

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %1, i32 144
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !50
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #4
  %8 = ptrtoint ptr %usb_reg_bits_map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_reg_bits_map, align 4
  %arrayidx8 = getelementptr i32, ptr %9, i32 12
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8, align 4
  %neg = xor i32 %11, -1
  %and = and i32 %7, %neg
  %or = or i32 %and, %mode
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #4, !srcloc !51
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %do.end.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init.c", i32 1011, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @brcm_usb_dvr_init_7445.__UNIQUE_ID_ddebug137, !1, !"__UNIQUE_ID_ddebug137", i1 false, i1 false}
!6 = !{ptr @id_to_type_table, !7, !"id_to_type_table", i1 false, i1 false}
!7 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init.c", i32 167, i32 32}
!8 = !{ptr @usb_reg_bits_map_table, !9, !"usb_reg_bits_map_table", i1 false, i1 false}
!9 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init.c", i32 184, i32 1}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init.c", i32 98, i32 2}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init.c", i32 99, i32 2}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init.c", i32 100, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init.c", i32 101, i32 2}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init.c", i32 102, i32 2}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init.c", i32 103, i32 2}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init.c", i32 104, i32 2}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init.c", i32 105, i32 2}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init.c", i32 106, i32 2}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init.c", i32 107, i32 2}
!30 = !{ptr @family_names, !31, !"family_names", i1 false, i1 false}
!31 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init.c", i32 97, i32 20}
!32 = !{ptr @bcm7445_ops, !33, !"bcm7445_ops", i1 false, i1 false}
!33 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init.c", i32 995, i32 39}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init.c", i32 970, i32 2}
!36 = !{ptr @usb_get_dual_select.__UNIQUE_ID_ddebug135, !35, !"__UNIQUE_ID_ddebug135", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init.c", i32 984, i32 2}
!39 = !{ptr @usb_set_dual_select.__UNIQUE_ID_ddebug136, !38, !"__UNIQUE_ID_ddebug136", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2148788365, i64 2148788370, i64 2148788383, i64 2148788427, i64 2148788461, i64 2148788482}
!50 = !{i64 3008040}
!51 = !{i64 3007622}
!52 = !{i8 0, i8 2}
