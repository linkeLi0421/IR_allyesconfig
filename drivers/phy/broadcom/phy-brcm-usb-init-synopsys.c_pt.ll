; ModuleID = '/llk/IR_all_yes/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c_pt.bc'
source_filename = "../drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.brcm_usb_init_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcm_usb_init_params = type { [6 x ptr], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8 }

@brcm_usb_dvr_init_7216.__UNIQUE_ID_ddebug143 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"phy_brcm_usb_dvr\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcm_usb_dvr_init_7216\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"7216\00", [27 x i8] zeroinitializer }, align 32
@bcm7216_ops = internal constant { %struct.brcm_usb_init_ops, [60 x i8] } { %struct.brcm_usb_init_ops { ptr @usb_init_ipp, ptr @usb_init_common, ptr null, ptr @usb_init_xhci, ptr @usb_uninit_common, ptr null, ptr @usb_uninit_xhci, ptr @usb_get_dual_select, ptr @usb_set_dual_select }, [60 x i8] zeroinitializer }, align 32
@brcm_usb_dvr_init_7211b0.__UNIQUE_ID_ddebug144 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.3, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"brcm_usb_dvr_init_7211b0\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"7211\00", [27 x i8] zeroinitializer }, align 32
@bcm7211b0_ops = internal constant { %struct.brcm_usb_init_ops, [60 x i8] } { %struct.brcm_usb_init_ops { ptr @usb_init_ipp, ptr @usb_init_common_7211b0, ptr null, ptr @usb_init_xhci, ptr @usb_uninit_common_7211b0, ptr null, ptr @usb_uninit_xhci, ptr @usb_get_dual_select, ptr @usb_set_dual_select }, [60 x i8] zeroinitializer }, align 32
@usb_init_ipp.__UNIQUE_ID_ddebug135 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.3, i8 0, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb_init_ipp\00", [19 x i8] zeroinitializer }, align 32
@usb_init_common.__UNIQUE_ID_ddebug136 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.3, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb_init_common\00", [16 x i8] zeroinitializer }, align 32
@usb_init_xhci.__UNIQUE_ID_ddebug137 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.3, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb_init_xhci\00", [18 x i8] zeroinitializer }, align 32
@usb_uninit_common.__UNIQUE_ID_ddebug138 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.3, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usb_uninit_common\00", [46 x i8] zeroinitializer }, align 32
@usb_uninit_xhci.__UNIQUE_ID_ddebug140 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.3, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb_uninit_xhci\00", [16 x i8] zeroinitializer }, align 32
@usb_get_dual_select.__UNIQUE_ID_ddebug141 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.3, i8 0, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usb_get_dual_select\00", [44 x i8] zeroinitializer }, align 32
@usb_set_dual_select.__UNIQUE_ID_ddebug142 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.3, i8 0, i8 91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usb_set_dual_select\00", [44 x i8] zeroinitializer }, align 32
@usb_uninit_common_7211b0.__UNIQUE_ID_ddebug139 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.3, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"usb_uninit_common_7211b0\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 395, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 397, i32 24 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"bcm7216_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 372, i32 39 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 404, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 406, i32 24 }
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"bcm7211b0_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 382, i32 39 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 155, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 191, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 300, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 309, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 341, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 352, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 364, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [53 x i8] c"../drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 321, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @bcm7216_ops, ptr @.str.5, ptr @.str.6, ptr @bcm7211b0_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7216_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7211b0_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcm_usb_dvr_init_7216(ptr nocapture noundef writeonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcm_usb_dvr_init_7216.__UNIQUE_ID_ddebug143, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcm_usb_dvr_init_7216, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !50

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @brcm_usb_dvr_init_7216.__UNIQUE_ID_ddebug143, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %family_name = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 7
  %0 = ptrtoint ptr %family_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.4, ptr %family_name, align 4
  %ops = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 9
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bcm7216_ops, ptr %ops, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcm_usb_dvr_init_7211b0(ptr nocapture noundef writeonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcm_usb_dvr_init_7211b0.__UNIQUE_ID_ddebug144, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcm_usb_dvr_init_7211b0, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !50

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @brcm_usb_dvr_init_7211b0.__UNIQUE_ID_ddebug144, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %family_name = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 7
  %0 = ptrtoint ptr %family_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.6, ptr %family_name, align 4
  %ops = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 9
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bcm7211b0_ops, ptr %ops, align 4
  %suspend_with_clocks = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 12
  %2 = ptrtoint ptr %suspend_with_clocks to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %suspend_with_clocks, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_init_ipp(ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_init_ipp.__UNIQUE_ID_ddebug135, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_init_ipp, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !50

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb_init_ipp.__UNIQUE_ID_ddebug135, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !51
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #3
  %ipp = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 2
  %4 = ptrtoint ptr %ipp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ipp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  %and = and i32 %3, -33554481
  %spec.select = select i1 %cmp.not, i32 %3, i32 %and
  %and6 = and i32 %spec.select, -49
  %ioc = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 1
  %6 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ioc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  %or = or i32 %and6, 16
  %reg.1 = select i1 %tobool7.not, i32 %and6, i32 %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp11 = icmp eq i32 %5, 1
  %or13 = or i32 %reg.1, 32
  %reg.2 = select i1 %cmp11, i32 %or13, i32 %reg.1
  %8 = tail call i32 @llvm.bswap.i32(i32 %reg.2) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %8) #3, !srcloc !52
  %xor = xor i32 %reg.2, %3
  %and16 = and i32 %xor, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.end.if.end19_crit_edge, label %if.then18

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @msleep(i32 noundef 50) #3
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %do.end.if.end19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_init_common(ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_init_common.__UNIQUE_ID_ddebug136, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_init_common, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !50

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb_init_common.__UNIQUE_ID_ddebug136, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !51
  %3 = and i32 %2, -129
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #3, !srcloc !52
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #3
  %add.ptr3 = getelementptr i8, ptr %1, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #3, !srcloc !51
  %5 = and i32 %4, -50331649
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %mode = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 3
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 4
  %or = or i32 %6, %8
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %9) #3, !srcloc !52
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cond = icmp eq i32 %11, 0
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3
  %13 = and i32 %12, -32769
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #3
  br i1 %cond, label %do.end.sw.epilog_crit_edge, label %sw.default

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !51
  %15 = or i32 %14, 32768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %15) #3, !srcloc !52
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_init_xhci(ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_init_xhci.__UNIQUE_ID_ddebug137, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_init_xhci, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !50

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb_init_xhci.__UNIQUE_ID_ddebug137, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %add.ptr1.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #3
  %3 = or i32 %2, 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %3) #3, !srcloc !52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_uninit_common(ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_uninit_common.__UNIQUE_ID_ddebug138, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_uninit_common, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !50

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb_uninit_common.__UNIQUE_ID_ddebug138, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.10) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !51
  %3 = or i32 %2, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #3, !srcloc !52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_uninit_xhci(ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_uninit_xhci.__UNIQUE_ID_ddebug140, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_uninit_xhci, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !50

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb_uninit_xhci.__UNIQUE_ID_ddebug140, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %wake_enabled = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 11
  %0 = ptrtoint ptr %wake_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wake_enabled, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool3.not = icmp eq i8 %1, 0
  br i1 %tobool3.not, label %if.then4, label %do.end.if.end5_crit_edge

do.end.if.end5_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %params, align 4
  %add.ptr1.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #3
  %5 = and i32 %4, -16385
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %5) #3, !srcloc !52
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.end.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_get_dual_select(ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_get_dual_select.__UNIQUE_ID_ddebug141, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_get_dual_select, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !50

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb_get_dual_select.__UNIQUE_ID_ddebug141, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !51
  %3 = lshr i32 %2, 24
  %and = and i32 %3, 3
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_set_dual_select(ptr nocapture noundef readonly %params, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_set_dual_select.__UNIQUE_ID_ddebug142, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_set_dual_select, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !50

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb_set_dual_select.__UNIQUE_ID_ddebug142, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !51
  %3 = and i32 %2, -50331649
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or = or i32 %4, %mode
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #3, !srcloc !52
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_init_common_7211b0(ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %arrayidx2 = getelementptr [6 x ptr], ptr %params, i32 0, i32 3
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr [6 x ptr], ptr %params, i32 0, i32 5
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  %syscon_piarbctl = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 10
  %6 = ptrtoint ptr %syscon_piarbctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %syscon_piarbctl, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %7, i32 noundef 8, i32 noundef 1611657216, i32 noundef 1610612736, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !51
  %9 = and i32 %8, -129
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #3, !srcloc !52
  %10 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %params, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 80
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3
  %13 = and i32 %12, -1025
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #3, !srcloc !52
  %wake_enabled = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 11
  %14 = ptrtoint ptr %wake_enabled to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %wake_enabled, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not = icmp eq i8 %15, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr8 = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #3, !srcloc !52
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3, !srcloc !51
  %17 = or i32 %16, 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %17) #3, !srcloc !52
  %add.ptr11 = getelementptr i8, ptr %3, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #3, !srcloc !51
  %19 = or i32 %18, 524288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %19) #3, !srcloc !52
  br label %if.end15

if.end15:                                         ; preds = %if.then7, %if.end.if.end15_crit_edge
  %add.ptr16 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 117440512) #3, !srcloc !52
  %add.ptr17 = getelementptr i8, ptr %3, i32 32
  br label %while.body

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %if.end15
  %dec77 = phi i32 [ 199, %if.end15 ], [ %dec, %if.end21.while.body_crit_edge ]
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #3, !srcloc !51
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool19.not = icmp eq i32 %21, 0
  br i1 %tobool19.not, label %if.end21, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

if.end21:                                         ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #3
  %dec = add nsw i32 %dec77, -1
  %cmp.not = icmp eq i32 %dec77, 0
  br i1 %cmp.not, label %if.end21.while.end_crit_edge, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

if.end21.while.end_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %if.end21.while.end_crit_edge, %while.body.while.end_crit_edge
  %add.ptr22 = getelementptr i8, ptr %3, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #3, !srcloc !51
  %23 = and i32 %22, -201326593
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %mode = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 3
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode, align 4
  %shl = shl i32 %26, 2
  %or25 = or i32 %24, %shl
  %27 = tail call i32 @llvm.bswap.i32(i32 %or25) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %27) #3, !srcloc !52
  tail call void @usb_init_common(ptr noundef %params)
  %28 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp28.not = icmp eq i32 %29, 0
  %tobool29.not = icmp eq ptr %5, null
  %or.cond = select i1 %cmp28.not, i1 true, i1 %tobool29.not
  br i1 %or.cond, label %while.end.if.end36_crit_edge, label %if.then30

while.end.if.end36_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36

if.then30:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr31 = getelementptr i8, ptr %5, i32 12
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #3, !srcloc !51
  %31 = and i32 %30, -241
  %32 = or i32 %31, 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %32) #3, !srcloc !52
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %while.end.if.end36_crit_edge
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #3, !srcloc !51
  %34 = and i32 %33, -524289
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %34) #3, !srcloc !52
  %arrayidx.i.i = getelementptr [6 x ptr], ptr %params, i32 0, i32 4
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #3, !srcloc !52
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.end36
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #3, !srcloc !51
  %.mask.i.i = and i32 %37, 128
  %tobool.not.i.i = icmp eq i32 %.mask.i.i, 0
  br i1 %tobool.not.i.i, label %while.end.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1602191783) #3, !srcloc !52
  br label %while.cond8.i.i

while.cond8.i.i:                                  ; preds = %while.cond8.i.i.while.cond8.i.i_crit_edge, %while.end.i.i
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #3, !srcloc !51
  %.mask29.i.i = and i32 %38, 128
  %tobool12.not.i.i = icmp eq i32 %.mask29.i.i, 0
  br i1 %tobool12.not.i.i, label %while.end14.i.i, label %while.cond8.i.i.while.cond8.i.i_crit_edge

while.cond8.i.i.while.cond8.i.i_crit_edge:        ; preds = %while.cond8.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond8.i.i

while.end14.i.i:                                  ; preds = %while.cond8.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #3, !srcloc !52
  br label %while.cond16.i.i

while.cond16.i.i:                                 ; preds = %while.cond16.i.i.while.cond16.i.i_crit_edge, %while.end14.i.i
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #3, !srcloc !51
  %.mask30.i.i = and i32 %39, 128
  %tobool20.not.i.i = icmp eq i32 %.mask30.i.i, 0
  br i1 %tobool20.not.i.i, label %usb_mdio_write_7211b0.exit.i, label %while.cond16.i.i.while.cond16.i.i_crit_edge

while.cond16.i.i.while.cond16.i.i_crit_edge:      ; preds = %while.cond16.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond16.i.i

usb_mdio_write_7211b0.exit.i:                     ; preds = %while.cond16.i.i
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 -1) #3, !srcloc !52
  br label %while.cond.i6.i

while.cond.i6.i:                                  ; preds = %while.cond.i6.i.while.cond.i6.i_crit_edge, %usb_mdio_write_7211b0.exit.i
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #3, !srcloc !51
  %.mask.i4.i = and i32 %42, 128
  %tobool.not.i5.i = icmp eq i32 %.mask.i4.i, 0
  br i1 %tobool.not.i5.i, label %while.end.i7.i, label %while.cond.i6.i.while.cond.i6.i_crit_edge

while.cond.i6.i.while.cond.i6.i_crit_edge:        ; preds = %while.cond.i6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i6.i

while.end.i7.i:                                   ; preds = %while.cond.i6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 -1597625767) #3, !srcloc !52
  br label %while.cond8.i10.i

while.cond8.i10.i:                                ; preds = %while.cond8.i10.i.while.cond8.i10.i_crit_edge, %while.end.i7.i
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #3, !srcloc !51
  %.mask29.i8.i = and i32 %43, 128
  %tobool12.not.i9.i = icmp eq i32 %.mask29.i8.i, 0
  br i1 %tobool12.not.i9.i, label %while.end14.i11.i, label %while.cond8.i10.i.while.cond8.i10.i_crit_edge

while.cond8.i10.i.while.cond8.i10.i_crit_edge:    ; preds = %while.cond8.i10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond8.i10.i

while.end14.i11.i:                                ; preds = %while.cond8.i10.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 0) #3, !srcloc !52
  br label %while.cond16.i14.i

while.cond16.i14.i:                               ; preds = %while.cond16.i14.i.while.cond16.i14.i_crit_edge, %while.end14.i11.i
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #3, !srcloc !51
  %.mask30.i12.i = and i32 %44, 128
  %tobool20.not.i13.i = icmp eq i32 %.mask30.i12.i, 0
  br i1 %tobool20.not.i13.i, label %usb2_eye_fix_7211b0.exit, label %while.cond16.i14.i.while.cond16.i14.i_crit_edge

while.cond16.i14.i.while.cond16.i14.i_crit_edge:  ; preds = %while.cond16.i14.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond16.i14.i

usb2_eye_fix_7211b0.exit:                         ; preds = %while.cond16.i14.i
  call void @__sanitizer_cov_trace_pc() #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_uninit_common_7211b0(ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %arrayidx2 = getelementptr [6 x ptr], ptr %params, i32 0, i32 3
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_uninit_common_7211b0.__UNIQUE_ID_ddebug139, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_uninit_common_7211b0, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !50

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb_uninit_common_7211b0.__UNIQUE_ID_ddebug139, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %wake_enabled = getelementptr inbounds %struct.brcm_usb_init_params, ptr %params, i32 0, i32 11
  %4 = ptrtoint ptr %wake_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wake_enabled, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr = getelementptr i8, ptr %1, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !51
  %7 = or i32 %6, 771751936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #3, !srcloc !52
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %params, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 80
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3
  %11 = or i32 %10, 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #3, !srcloc !52
  br label %if.end13

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr7 = getelementptr i8, ptr %1, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #3, !srcloc !51
  %13 = or i32 %12, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %13) #3, !srcloc !52
  %add.ptr8 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #3, !srcloc !52
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3, !srcloc !51
  %15 = and i32 %14, -65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %15) #3, !srcloc !52
  %add.ptr12 = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 16777216) #3, !srcloc !52
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c", i32 395, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @brcm_usb_dvr_init_7216.__UNIQUE_ID_ddebug143, !1, !"__UNIQUE_ID_ddebug143", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c", i32 397, i32 24}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c", i32 404, i32 2}
!10 = !{ptr @brcm_usb_dvr_init_7211b0.__UNIQUE_ID_ddebug144, !9, !"__UNIQUE_ID_ddebug144", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c", i32 406, i32 24}
!13 = !{ptr @bcm7216_ops, !14, !"bcm7216_ops", i1 false, i1 false}
!14 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c", i32 372, i32 39}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c", i32 155, i32 2}
!17 = !{ptr @usb_init_ipp.__UNIQUE_ID_ddebug135, !16, !"__UNIQUE_ID_ddebug135", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c", i32 191, i32 2}
!20 = !{ptr @usb_init_common.__UNIQUE_ID_ddebug136, !19, !"__UNIQUE_ID_ddebug136", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c", i32 300, i32 2}
!23 = !{ptr @usb_init_xhci.__UNIQUE_ID_ddebug137, !22, !"__UNIQUE_ID_ddebug137", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c", i32 309, i32 2}
!26 = !{ptr @usb_uninit_common.__UNIQUE_ID_ddebug138, !25, !"__UNIQUE_ID_ddebug138", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c", i32 341, i32 2}
!29 = !{ptr @usb_uninit_xhci.__UNIQUE_ID_ddebug140, !28, !"__UNIQUE_ID_ddebug140", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c", i32 352, i32 2}
!32 = !{ptr @usb_get_dual_select.__UNIQUE_ID_ddebug141, !31, !"__UNIQUE_ID_ddebug141", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c", i32 364, i32 2}
!35 = !{ptr @usb_set_dual_select.__UNIQUE_ID_ddebug142, !34, !"__UNIQUE_ID_ddebug142", i1 false, i1 false}
!36 = !{ptr @bcm7211b0_ops, !37, !"bcm7211b0_ops", i1 false, i1 false}
!37 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c", i32 382, i32 39}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c", i32 321, i32 2}
!40 = !{ptr @usb_uninit_common_7211b0.__UNIQUE_ID_ddebug139, !39, !"__UNIQUE_ID_ddebug139", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i64 2148767151, i64 2148767156, i64 2148767169, i64 2148767213, i64 2148767247, i64 2148767268}
!51 = !{i64 2986826}
!52 = !{i64 2986408}
!53 = !{i8 0, i8 2}
