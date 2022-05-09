; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-ti-lmu-common.c_pt.bc'
source_filename = "../drivers/leds/leds-ti-lmu-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ti_lmu_common_set_brightness\22, \22a\22\09"
module asm "\09.weak\09__crc_ti_lmu_common_set_brightness\09\09\09\09"
module asm "\09.long\09__crc_ti_lmu_common_set_brightness\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ti_lmu_common_set_brightness:\09\09\09\09\09"
module asm "\09.asciz \09\22ti_lmu_common_set_brightness\22\09\09\09\09\09"
module asm "__kstrtabns_ti_lmu_common_set_brightness:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ti_lmu_common_set_ramp\22, \22a\22\09"
module asm "\09.weak\09__crc_ti_lmu_common_set_ramp\09\09\09\09"
module asm "\09.long\09__crc_ti_lmu_common_set_ramp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ti_lmu_common_set_ramp:\09\09\09\09\09"
module asm "\09.asciz \09\22ti_lmu_common_set_ramp\22\09\09\09\09\09"
module asm "__kstrtabns_ti_lmu_common_set_ramp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ti_lmu_common_get_ramp_params\22, \22a\22\09"
module asm "\09.weak\09__crc_ti_lmu_common_get_ramp_params\09\09\09\09"
module asm "\09.long\09__crc_ti_lmu_common_get_ramp_params\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ti_lmu_common_get_ramp_params:\09\09\09\09\09"
module asm "\09.asciz \09\22ti_lmu_common_get_ramp_params\22\09\09\09\09\09"
module asm "__kstrtabns_ti_lmu_common_get_ramp_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ti_lmu_common_get_brt_res\22, \22a\22\09"
module asm "\09.weak\09__crc_ti_lmu_common_get_brt_res\09\09\09\09"
module asm "\09.long\09__crc_ti_lmu_common_get_brt_res\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ti_lmu_common_get_brt_res:\09\09\09\09\09"
module asm "\09.asciz \09\22ti_lmu_common_get_brt_res\22\09\09\09\09\09"
module asm "__kstrtabns_ti_lmu_common_get_brt_res:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ti_lmu_bank = type { ptr, i32, i8, i8, i8, i32, i32 }

@__kstrtab_ti_lmu_common_set_brightness = external dso_local constant [0 x i8], align 1
@__kstrtabns_ti_lmu_common_set_brightness = external dso_local constant [0 x i8], align 1
@__ksymtab_ti_lmu_common_set_brightness = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ti_lmu_common_set_brightness to i32), ptr @__kstrtab_ti_lmu_common_set_brightness, ptr @__kstrtabns_ti_lmu_common_set_brightness }, section "___ksymtab+ti_lmu_common_set_brightness", align 4
@__kstrtab_ti_lmu_common_set_ramp = external dso_local constant [0 x i8], align 1
@__kstrtabns_ti_lmu_common_set_ramp = external dso_local constant [0 x i8], align 1
@__ksymtab_ti_lmu_common_set_ramp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ti_lmu_common_set_ramp to i32), ptr @__kstrtab_ti_lmu_common_set_ramp, ptr @__kstrtabns_ti_lmu_common_set_ramp }, section "___ksymtab+ti_lmu_common_set_ramp", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ramp-up-us\00", [21 x i8] zeroinitializer }, align 32
@ti_lmu_common_get_ramp_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 113, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ramp-up-us property missing\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ti_lmu_common_get_ramp_params\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/leds/leds-ti-lmu-common.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ti_lmu_common_get_ramp_params._entry_ptr = internal global ptr @ti_lmu_common_get_ramp_params._entry, section ".printk_index", align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ramp-down-us\00", [19 x i8] zeroinitializer }, align 32
@ti_lmu_common_get_ramp_params._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 119, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ramp-down-us property missing\0A\00", [33 x i8] zeroinitializer }, align 32
@ti_lmu_common_get_ramp_params._entry_ptr.9 = internal global ptr @ti_lmu_common_get_ramp_params._entry.7, section ".printk_index", align 4
@__kstrtab_ti_lmu_common_get_ramp_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_ti_lmu_common_get_ramp_params = external dso_local constant [0 x i8], align 1
@__ksymtab_ti_lmu_common_get_ramp_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ti_lmu_common_get_ramp_params to i32), ptr @__kstrtab_ti_lmu_common_get_ramp_params, ptr @__kstrtabns_ti_lmu_common_get_ramp_params }, section "___ksymtab+ti_lmu_common_get_ramp_params", align 4
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ti,brightness-resolution\00", [39 x i8] zeroinitializer }, align 32
@__kstrtab_ti_lmu_common_get_brt_res = external dso_local constant [0 x i8], align 1
@__kstrtabns_ti_lmu_common_get_brt_res = external dso_local constant [0 x i8], align 1
@__ksymtab_ti_lmu_common_get_brt_res = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ti_lmu_common_get_brt_res to i32), ptr @__kstrtab_ti_lmu_common_get_brt_res, ptr @__kstrtabns_ti_lmu_common_get_brt_res }, section "___ksymtab+ti_lmu_common_get_brt_res", align 4
@__UNIQUE_ID_description183 = internal constant [59 x i8] c"leds_ti_lmu_common.description=TI LMU common LED framework\00", section ".modinfo", align 1
@__UNIQUE_ID_author184 = internal constant [44 x i8] c"leds_ti_lmu_common.author=Sebastian Reichel\00", section ".modinfo", align 1
@__UNIQUE_ID_author185 = internal constant [54 x i8] c"leds_ti_lmu_common.author=Dan Murphy <dmurphy@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [56 x i8] c"leds_ti_lmu_common.file=drivers/leds/leds-ti-lmu-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [34 x i8] c"leds_ti_lmu_common.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias188 = internal constant [43 x i8] c"leds_ti_lmu_common.alias=ti-lmu-led-common\00", section ".modinfo", align 1
@ramp_table = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 2048, i32 262000, i32 524000, i32 1049000, i32 2090000, i32 4194000, i32 8389000, i32 16780000, i32 33550000, i32 41940000, i32 50330000, i32 58720000, i32 67110000, i32 83880000, i32 100660000, i32 117440000], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 110, i32 40 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 113, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 116, i32 40 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 119, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 130, i32 38 }
@___asan_gen_.44 = private unnamed_addr constant [11 x i8] c"ramp_table\00", align 1
@___asan_gen_.45 = private constant [37 x i8] c"../drivers/leds/leds-ti-lmu-common.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 14, i32 27 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_alias188, ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description183, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__ksymtab_ti_lmu_common_get_brt_res, ptr @__ksymtab_ti_lmu_common_get_ramp_params, ptr @__ksymtab_ti_lmu_common_set_brightness, ptr @__ksymtab_ti_lmu_common_set_ramp, ptr @ti_lmu_common_get_ramp_params._entry, ptr @ti_lmu_common_get_ramp_params._entry.7, ptr @ti_lmu_common_get_ramp_params._entry_ptr, ptr @ti_lmu_common_get_ramp_params._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @ramp_table], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_lmu_common_get_ramp_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_lmu_common_get_ramp_params._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramp_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ti_lmu_common_set_brightness(ptr nocapture noundef readonly %lmu_bank, i32 noundef %brightness) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lmu_bank to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmu_bank, align 4
  %max_brightness.i = getelementptr inbounds %struct.ti_lmu_bank, ptr %lmu_bank, i32 0, i32 1
  %2 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_brightness.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %3)
  %cmp.i = icmp eq i32 %3, 2047
  br i1 %cmp.i, label %if.then.i, label %entry.if.end5.i_crit_edge

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5.i

if.then.i:                                        ; preds = %entry
  %lsb_brightness_reg.i = getelementptr inbounds %struct.ti_lmu_bank, ptr %lmu_bank, i32 0, i32 2
  %4 = ptrtoint ptr %lsb_brightness_reg.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lsb_brightness_reg.i, align 4
  %conv.i = zext i8 %5 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %conv.i, i32 noundef 7, i32 noundef %brightness, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i.ti_lmu_common_update_brightness.exit_crit_edge

if.then.i.ti_lmu_common_update_brightness.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ti_lmu_common_update_brightness.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %shr.i = ashr i32 %brightness, 3
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i, %entry.if.end5.i_crit_edge
  %val.0.in.i = phi i32 [ %shr.i, %if.end.i ], [ %brightness, %entry.if.end5.i_crit_edge ]
  %msb_brightness_reg.i = getelementptr inbounds %struct.ti_lmu_bank, ptr %lmu_bank, i32 0, i32 3
  %6 = ptrtoint ptr %msb_brightness_reg.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %msb_brightness_reg.i, align 1
  %conv6.i = zext i8 %7 to i32
  %conv7.i = and i32 %val.0.in.i, 255
  %call8.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %conv6.i, i32 noundef %conv7.i) #3
  br label %ti_lmu_common_update_brightness.exit

ti_lmu_common_update_brightness.exit:             ; preds = %if.end5.i, %if.then.i.ti_lmu_common_update_brightness.exit_crit_edge
  %retval.0.i = phi i32 [ %call8.i, %if.end5.i ], [ %call.i.i, %if.then.i.ti_lmu_common_update_brightness.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ti_lmu_common_set_ramp(ptr nocapture noundef readonly %lmu_bank) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lmu_bank to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmu_bank, align 4
  %ramp_up_usec = getelementptr inbounds %struct.ti_lmu_bank, ptr %lmu_bank, i32 0, i32 5
  %2 = ptrtoint ptr %ramp_up_usec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ramp_up_usec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %ramp_down_usec = getelementptr inbounds %struct.ti_lmu_bank, ptr %lmu_bank, i32 0, i32 6
  %4 = ptrtoint ptr %ramp_down_usec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ramp_down_usec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.ti_lmu_common_convert_ramp_to_index.exit_crit_edge

land.lhs.true.ti_lmu_common_convert_ramp_to_index.exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %ti_lmu_common_convert_ramp_to_index.exit

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %3)
  %cmp.i = icmp ult i32 %3, 2049
  br i1 %cmp.i, label %if.else.ti_lmu_common_convert_ramp_to_index.exit_crit_edge, label %if.end.i

if.else.ti_lmu_common_convert_ramp_to_index.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %ti_lmu_common_convert_ramp_to_index.exit

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440000, i32 %3)
  %cmp1.i = icmp ugt i32 %3, 117440000
  br i1 %cmp1.i, label %if.end.i.ti_lmu_common_convert_ramp_to_index.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.ti_lmu_common_convert_ramp_to_index.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ti_lmu_common_convert_ramp_to_index.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.046.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %if.end.i.for.body.i_crit_edge ]
  %arrayidx6.i = getelementptr [16 x i32], ptr @ramp_table, i32 0, i32 %i.046.i
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp7.i = icmp eq i32 %7, %3
  br i1 %cmp7.i, label %for.body.i.ti_lmu_common_convert_ramp_to_index.exit_crit_edge, label %if.end9.i

for.body.i.ti_lmu_common_convert_ramp_to_index.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ti_lmu_common_convert_ramp_to_index.exit

if.end9.i:                                        ; preds = %for.body.i
  %sub10.i = add nsw i32 %i.046.i, -1
  %arrayidx11.i = getelementptr [16 x i32], ptr @ramp_table, i32 0, i32 %sub10.i
  %8 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %9)
  %cmp12.i = icmp ugt i32 %3, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp14.i = icmp ugt i32 %7, %3
  %or.cond.i = select i1 %cmp12.i, i1 %cmp14.i, i1 false
  br i1 %or.cond.i, label %if.then15.i, label %for.inc.i

if.then15.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub18.i = sub i32 %3, %9
  %sub20.i = sub i32 %7, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub18.i, i32 %sub20.i)
  %cmp21.i = icmp ult i32 %sub18.i, %sub20.i
  %sub10.i.0.i = select i1 %cmp21.i, i32 %sub10.i, i32 %i.046.i
  br label %ti_lmu_common_convert_ramp_to_index.exit

for.inc.i:                                        ; preds = %if.end9.i
  %inc.i = add nuw nsw i32 %i.046.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.inc.i.ti_lmu_common_convert_ramp_to_index.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.ti_lmu_common_convert_ramp_to_index.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ti_lmu_common_convert_ramp_to_index.exit

ti_lmu_common_convert_ramp_to_index.exit:         ; preds = %for.inc.i.ti_lmu_common_convert_ramp_to_index.exit_crit_edge, %if.then15.i, %for.body.i.ti_lmu_common_convert_ramp_to_index.exit_crit_edge, %if.end.i.ti_lmu_common_convert_ramp_to_index.exit_crit_edge, %if.else.ti_lmu_common_convert_ramp_to_index.exit_crit_edge, %land.lhs.true.ti_lmu_common_convert_ramp_to_index.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.else.ti_lmu_common_convert_ramp_to_index.exit_crit_edge ], [ 15, %if.end.i.ti_lmu_common_convert_ramp_to_index.exit_crit_edge ], [ %sub10.i.0.i, %if.then15.i ], [ 0, %land.lhs.true.ti_lmu_common_convert_ramp_to_index.exit_crit_edge ], [ %i.046.i, %for.body.i.ti_lmu_common_convert_ramp_to_index.exit_crit_edge ], [ 0, %for.inc.i.ti_lmu_common_convert_ramp_to_index.exit_crit_edge ]
  %ramp_down_usec4 = getelementptr inbounds %struct.ti_lmu_bank, ptr %lmu_bank, i32 0, i32 6
  %10 = ptrtoint ptr %ramp_down_usec4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ramp_down_usec4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %11)
  %cmp.i21 = icmp ult i32 %11, 2049
  br i1 %cmp.i21, label %ti_lmu_common_convert_ramp_to_index.exit.ti_lmu_common_convert_ramp_to_index.exit43_crit_edge, label %if.end.i23

ti_lmu_common_convert_ramp_to_index.exit.ti_lmu_common_convert_ramp_to_index.exit43_crit_edge: ; preds = %ti_lmu_common_convert_ramp_to_index.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %ti_lmu_common_convert_ramp_to_index.exit43

if.end.i23:                                       ; preds = %ti_lmu_common_convert_ramp_to_index.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440000, i32 %11)
  %cmp1.i22 = icmp ugt i32 %11, 117440000
  br i1 %cmp1.i22, label %if.end.i23.ti_lmu_common_convert_ramp_to_index.exit43_crit_edge, label %if.end.i23.for.body.i27_crit_edge

if.end.i23.for.body.i27_crit_edge:                ; preds = %if.end.i23
  br label %for.body.i27

if.end.i23.ti_lmu_common_convert_ramp_to_index.exit43_crit_edge: ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #5
  br label %ti_lmu_common_convert_ramp_to_index.exit43

for.body.i27:                                     ; preds = %for.inc.i41.for.body.i27_crit_edge, %if.end.i23.for.body.i27_crit_edge
  %i.046.i24 = phi i32 [ %inc.i39, %for.inc.i41.for.body.i27_crit_edge ], [ 1, %if.end.i23.for.body.i27_crit_edge ]
  %arrayidx6.i25 = getelementptr [16 x i32], ptr @ramp_table, i32 0, i32 %i.046.i24
  %12 = ptrtoint ptr %arrayidx6.i25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx6.i25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp7.i26 = icmp eq i32 %13, %11
  br i1 %cmp7.i26, label %for.body.i27.ti_lmu_common_convert_ramp_to_index.exit43_crit_edge, label %if.end9.i33

for.body.i27.ti_lmu_common_convert_ramp_to_index.exit43_crit_edge: ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #5
  br label %ti_lmu_common_convert_ramp_to_index.exit43

if.end9.i33:                                      ; preds = %for.body.i27
  %sub10.i28 = add nsw i32 %i.046.i24, -1
  %arrayidx11.i29 = getelementptr [16 x i32], ptr @ramp_table, i32 0, i32 %sub10.i28
  %14 = ptrtoint ptr %arrayidx11.i29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx11.i29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp12.i30 = icmp ugt i32 %11, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp14.i31 = icmp ugt i32 %13, %11
  %or.cond.i32 = select i1 %cmp12.i30, i1 %cmp14.i31, i1 false
  br i1 %or.cond.i32, label %if.then15.i38, label %for.inc.i41

if.then15.i38:                                    ; preds = %if.end9.i33
  call void @__sanitizer_cov_trace_pc() #5
  %sub18.i34 = sub i32 %11, %15
  %sub20.i35 = sub i32 %13, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %sub18.i34, i32 %sub20.i35)
  %cmp21.i36 = icmp ult i32 %sub18.i34, %sub20.i35
  %sub10.i.0.i37 = select i1 %cmp21.i36, i32 %sub10.i28, i32 %i.046.i24
  br label %ti_lmu_common_convert_ramp_to_index.exit43

for.inc.i41:                                      ; preds = %if.end9.i33
  %inc.i39 = add nuw nsw i32 %i.046.i24, 1
  %exitcond.not.i40 = icmp eq i32 %inc.i39, 16
  br i1 %exitcond.not.i40, label %for.inc.i41.ti_lmu_common_convert_ramp_to_index.exit43_crit_edge, label %for.inc.i41.for.body.i27_crit_edge

for.inc.i41.for.body.i27_crit_edge:               ; preds = %for.inc.i41
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i27

for.inc.i41.ti_lmu_common_convert_ramp_to_index.exit43_crit_edge: ; preds = %for.inc.i41
  call void @__sanitizer_cov_trace_pc() #5
  br label %ti_lmu_common_convert_ramp_to_index.exit43

ti_lmu_common_convert_ramp_to_index.exit43:       ; preds = %for.inc.i41.ti_lmu_common_convert_ramp_to_index.exit43_crit_edge, %if.then15.i38, %for.body.i27.ti_lmu_common_convert_ramp_to_index.exit43_crit_edge, %if.end.i23.ti_lmu_common_convert_ramp_to_index.exit43_crit_edge, %ti_lmu_common_convert_ramp_to_index.exit.ti_lmu_common_convert_ramp_to_index.exit43_crit_edge
  %retval.0.i42 = phi i32 [ 0, %ti_lmu_common_convert_ramp_to_index.exit.ti_lmu_common_convert_ramp_to_index.exit43_crit_edge ], [ 15, %if.end.i23.ti_lmu_common_convert_ramp_to_index.exit43_crit_edge ], [ %sub10.i.0.i37, %if.then15.i38 ], [ %i.046.i24, %for.body.i27.ti_lmu_common_convert_ramp_to_index.exit43_crit_edge ], [ 0, %for.inc.i41.ti_lmu_common_convert_ramp_to_index.exit43_crit_edge ]
  %phi.cast = shl i32 %retval.0.i, 4
  %16 = or i32 %retval.0.i42, %phi.cast
  %phi.cast20 = and i32 %16, 255
  br label %if.end

if.end:                                           ; preds = %ti_lmu_common_convert_ramp_to_index.exit43, %land.lhs.true.if.end_crit_edge
  %or = phi i32 [ %phi.cast20, %ti_lmu_common_convert_ramp_to_index.exit43 ], [ 0, %land.lhs.true.if.end_crit_edge ]
  %runtime_ramp_reg = getelementptr inbounds %struct.ti_lmu_bank, ptr %lmu_bank, i32 0, i32 4
  %17 = ptrtoint ptr %runtime_ramp_reg to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %runtime_ramp_reg, align 2
  %conv10 = zext i8 %18 to i32
  %call12 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %conv10, i32 noundef %or) #3
  ret i32 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ti_lmu_common_get_ramp_params(ptr noundef %dev, ptr noundef %child, ptr noundef %lmu_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ramp_up_usec = getelementptr inbounds %struct.ti_lmu_bank, ptr %lmu_data, i32 0, i32 5
  %call.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef %child, ptr noundef nonnull @.str, ptr noundef %ramp_up_usec, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ramp_down_usec = getelementptr inbounds %struct.ti_lmu_bank, ptr %lmu_data, i32 0, i32 6
  %call.i12 = tail call i32 @fwnode_property_read_u32_array(ptr noundef %child, ptr noundef nonnull @.str.6, ptr noundef %ramp_down_usec, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool2.not = icmp eq i32 %call.i12, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %do.end6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.8) #6
  br label %if.end7

if.end7:                                          ; preds = %do.end6, %if.end.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ti_lmu_common_get_brt_res(ptr noundef %dev, ptr noundef %child, ptr noundef %lmu_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %max_brightness = getelementptr inbounds %struct.ti_lmu_bank, ptr %lmu_data, i32 0, i32 1
  %call.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %max_brightness, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call.i18 = tail call i32 @fwnode_property_read_u32_array(ptr noundef %child, ptr noundef nonnull @.str.10, ptr noundef %max_brightness, i32 noundef 1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call.i18, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %0 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.end.cleanup.sink.split_crit_edge, label %if.end6

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %1)
  %cmp8 = icmp ugt i32 %1, 2047
  br i1 %cmp8, label %if.end6.cleanup.sink.split_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end6.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 255, %if.end.cleanup.sink.split_crit_edge ], [ 2047, %if.end6.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.0, %if.end.cleanup.sink.split_crit_edge ], [ 0, %if.end6.cleanup.sink.split_crit_edge ]
  %2 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink, ptr %max_brightness, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__ksymtab_ti_lmu_common_set_brightness, !1, !"__ksymtab_ti_lmu_common_set_brightness", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-ti-lmu-common.c", i32 55, i32 1}
!2 = !{ptr @__ksymtab_ti_lmu_common_set_ramp, !3, !"__ksymtab_ti_lmu_common_set_ramp", i1 false, i1 false}
!3 = !{!"../drivers/leds/leds-ti-lmu-common.c", i32 102, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/leds/leds-ti-lmu-common.c", i32 110, i32 40}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/leds/leds-ti-lmu-common.c", i32 113, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ti_lmu_common_get_ramp_params._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @ti_lmu_common_get_ramp_params._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-ti-lmu-common.c", i32 116, i32 40}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-ti-lmu-common.c", i32 119, i32 3}
!18 = !{ptr @ti_lmu_common_get_ramp_params._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @ti_lmu_common_get_ramp_params._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_ti_lmu_common_get_ramp_params, !21, !"__ksymtab_ti_lmu_common_get_ramp_params", i1 false, i1 false}
!21 = !{!"../drivers/leds/leds-ti-lmu-common.c", i32 123, i32 1}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/leds/leds-ti-lmu-common.c", i32 130, i32 38}
!24 = !{ptr @__ksymtab_ti_lmu_common_get_brt_res, !25, !"__ksymtab_ti_lmu_common_get_brt_res", i1 false, i1 false}
!25 = !{!"../drivers/leds/leds-ti-lmu-common.c", i32 147, i32 1}
!26 = !{ptr @__UNIQUE_ID_description183, !27, !"__UNIQUE_ID_description183", i1 false, i1 false}
!27 = !{!"../drivers/leds/leds-ti-lmu-common.c", i32 149, i32 1}
!28 = !{ptr @__UNIQUE_ID_author184, !29, !"__UNIQUE_ID_author184", i1 false, i1 false}
!29 = !{!"../drivers/leds/leds-ti-lmu-common.c", i32 150, i32 1}
!30 = !{ptr @__UNIQUE_ID_author185, !31, !"__UNIQUE_ID_author185", i1 false, i1 false}
!31 = !{!"../drivers/leds/leds-ti-lmu-common.c", i32 151, i32 1}
!32 = !{ptr @__UNIQUE_ID_file186, !33, !"__UNIQUE_ID_file186", i1 false, i1 false}
!33 = !{!"../drivers/leds/leds-ti-lmu-common.c", i32 152, i32 1}
!34 = !{ptr @__UNIQUE_ID_license187, !33, !"__UNIQUE_ID_license187", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_alias188, !36, !"__UNIQUE_ID_alias188", i1 false, i1 false}
!36 = !{!"../drivers/leds/leds-ti-lmu-common.c", i32 153, i32 1}
!37 = !{ptr @ramp_table, !38, !"ramp_table", i1 false, i1 false}
!38 = !{!"../drivers/leds/leds-ti-lmu-common.c", i32 14, i32 27}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
