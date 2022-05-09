; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tegra/falcon.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/falcon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.falcon = type { ptr, ptr, %struct.falcon_firmware }
%struct.falcon_firmware = type { ptr, i32, i32, ptr, i32, %struct.falcon_firmware_section, %struct.falcon_firmware_section, %struct.falcon_firmware_section }
%struct.falcon_firmware_section = type { i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.falcon_fw_bin_header_v1 = type { i32, i32, i32, i32, i32, i32 }
%struct.falcon_fw_os_header_v1 = type { i32, i32, i32, i32 }

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/tegra/falcon.c\00", [33 x i8] zeroinitializer }, align 32
@falcon_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 129, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to parse firmware image\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"falcon_load_firmware\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@falcon_load_firmware._entry_ptr = internal global ptr @falcon_load_firmware._entry, section ".printk_index", align 4
@falcon_boot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 212, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Falcon boot failed due to timeout\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"falcon_boot\00", [20 x i8] zeroinitializer }, align 32
@falcon_boot._entry_ptr = internal global ptr @falcon_boot._entry, section ".printk_index", align 4
@falcon_parse_firmware_image._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 76, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"incorrect firmware magic\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"falcon_parse_firmware_image\00", [36 x i8] zeroinitializer }, align 32
@falcon_parse_firmware_image._entry_ptr = internal global ptr @falcon_parse_firmware_image._entry, section ".printk_index", align 4
@falcon_parse_firmware_image._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str, i32 82, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unsupported firmware version\0A\00", [34 x i8] zeroinitializer }, align 32
@falcon_parse_firmware_image._entry_ptr.11 = internal global ptr @falcon_parse_firmware_image._entry.9, section ".printk_index", align 4
@falcon_parse_firmware_image._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str, i32 88, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"firmware image size inconsistency\0A\00", [61 x i8] zeroinitializer }, align 32
@falcon_parse_firmware_image._entry_ptr.14 = internal global ptr @falcon_parse_firmware_image._entry.12, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4318, i64 4350]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 29, i32 9 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 129, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 212, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 76, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 82, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [34 x i8] c"../drivers/gpu/drm/tegra/falcon.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 88, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @falcon_boot._entry, ptr @falcon_boot._entry_ptr, ptr @falcon_load_firmware._entry, ptr @falcon_load_firmware._entry_ptr, ptr @falcon_parse_firmware_image._entry, ptr @falcon_parse_firmware_image._entry.12, ptr @falcon_parse_firmware_image._entry.9, ptr @falcon_parse_firmware_image._entry_ptr, ptr @falcon_parse_firmware_image._entry_ptr.11, ptr @falcon_parse_firmware_image._entry_ptr.14, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @falcon_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @falcon_boot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @falcon_parse_firmware_image._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @falcon_parse_firmware_image._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @falcon_parse_firmware_image._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @falcon_wait_idle(ptr nocapture noundef readonly %falcon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #5
  %add.i = add i64 %call, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 30) #5
  %regs = getelementptr inbounds %struct.falcon, ptr %falcon, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr37 = getelementptr i8, ptr %1, i32 4172
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1038 = icmp eq i32 %2, 0
  br i1 %cmp1038, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true:                                    ; preds = %if.then26.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then16, label %if.then26

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr20 = getelementptr i8, ptr %4, i32 4172
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %phi.cmp = icmp eq i32 %5, 0
  %phi.sel = select i1 %phi.cmp, i32 0, i32 -110
  br label %for.end

if.then26:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #5
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4172
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  %cmp10 = icmp eq i32 %8, 0
  br i1 %cmp10, label %if.then26.for.end_crit_edge, label %if.then26.land.lhs.true_crit_edge

if.then26.land.lhs.true_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.then26.for.end_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.then26.for.end_crit_edge, %if.then16, %entry.for.end_crit_edge
  %value.0 = phi i32 [ %phi.sel, %if.then16 ], [ 0, %entry.for.end_crit_edge ], [ 0, %if.then26.for.end_crit_edge ]
  ret i32 %value.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @falcon_read_firmware(ptr noundef %falcon, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware = getelementptr inbounds %struct.falcon, ptr %falcon, i32 0, i32 2
  %0 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %falcon, align 4
  %call = tail call i32 @request_firmware(ptr noundef %firmware, ptr noundef %name, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %firmware, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %size5 = getelementptr inbounds %struct.falcon, ptr %falcon, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %size5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %size5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @falcon_load_firmware(ptr nocapture noundef %falcon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware1 = getelementptr inbounds %struct.falcon, ptr %falcon, i32 0, i32 2
  %0 = ptrtoint ptr %firmware1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %firmware1, align 4
  %virt2.i = getelementptr inbounds %struct.falcon, ptr %falcon, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %virt2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt2.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp10.not.i = icmp ult i32 %5, 4
  br i1 %cmp10.not.i, label %entry.falcon_copy_firmware_image.exit_crit_edge, label %for.body.lr.ph.i

entry.falcon_copy_firmware_image.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %falcon_copy_firmware_image.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %data.i = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i32, ptr %7, i32 %i.011.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  %arrayidx3.i = getelementptr i32, ptr %3, i32 %i.011.i
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx3.i, align 4
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %div8.i = lshr i32 %13, 2
  %cmp.i = icmp ult i32 %inc.i, %div8.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.falcon_copy_firmware_image.exit_crit_edge

for.body.i.falcon_copy_firmware_image.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %falcon_copy_firmware_image.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

falcon_copy_firmware_image.exit:                  ; preds = %for.body.i.falcon_copy_firmware_image.exit_crit_edge, %entry.falcon_copy_firmware_image.exit_crit_edge
  %14 = ptrtoint ptr %virt2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virt2.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %falcon_copy_firmware_image.exit.do.end_crit_edge [
    i32 4318, label %falcon_copy_firmware_image.exit.if.end.i_crit_edge
    i32 4350, label %falcon_copy_firmware_image.exit.if.end.i_crit_edge16
  ]

falcon_copy_firmware_image.exit.if.end.i_crit_edge16: ; preds = %falcon_copy_firmware_image.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

falcon_copy_firmware_image.exit.if.end.i_crit_edge: ; preds = %falcon_copy_firmware_image.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

falcon_copy_firmware_image.exit.do.end_crit_edge: ; preds = %falcon_copy_firmware_image.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %falcon_copy_firmware_image.exit.if.end.i_crit_edge, %falcon_copy_firmware_image.exit.if.end.i_crit_edge16
  %version.i = getelementptr inbounds %struct.falcon_fw_bin_header_v1, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp3.not.i = icmp eq i32 %20, 1
  br i1 %cmp3.not.i, label %if.end9.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end9.i:                                        ; preds = %if.end.i
  %size.i = getelementptr inbounds %struct.falcon_fw_bin_header_v1, ptr %15, i32 0, i32 2
  %21 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i, align 4
  %size11.i = getelementptr inbounds %struct.falcon, ptr %falcon, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %size11.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp12.i = icmp ugt i32 %22, %24
  br i1 %cmp12.i, label %if.end9.i.do.end_crit_edge, label %if.end

if.end9.i.do.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %if.end9.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %falcon_copy_firmware_image.exit.do.end_crit_edge
  %.str.7.sink = phi ptr [ @.str.7, %falcon_copy_firmware_image.exit.do.end_crit_edge ], [ @.str.10, %if.end.i.do.end_crit_edge ], [ @.str.13, %if.end9.i.do.end_crit_edge ]
  %25 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %falcon, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull %.str.7.sink) #8
  %27 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %falcon, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %os_header_offset.i = getelementptr inbounds %struct.falcon_fw_bin_header_v1, ptr %15, i32 0, i32 3
  %29 = ptrtoint ptr %os_header_offset.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %os_header_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %30
  %os_size.i = getelementptr inbounds %struct.falcon_fw_bin_header_v1, ptr %15, i32 0, i32 5
  %31 = ptrtoint ptr %os_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %os_size.i, align 4
  %bin_data.i = getelementptr inbounds %struct.falcon, ptr %falcon, i32 0, i32 2, i32 5
  %size22.i = getelementptr inbounds %struct.falcon, ptr %falcon, i32 0, i32 2, i32 5, i32 1
  %33 = ptrtoint ptr %size22.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %size22.i, align 4
  %os_data_offset.i = getelementptr inbounds %struct.falcon_fw_bin_header_v1, ptr %15, i32 0, i32 4
  %34 = ptrtoint ptr %os_data_offset.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %os_data_offset.i, align 4
  %36 = ptrtoint ptr %bin_data.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %bin_data.i, align 4
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i, align 4
  %code.i = getelementptr inbounds %struct.falcon, ptr %falcon, i32 0, i32 2, i32 7
  %39 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %code.i, align 4
  %code_size.i = getelementptr inbounds %struct.falcon_fw_os_header_v1, ptr %add.ptr.i, i32 0, i32 1
  %40 = ptrtoint ptr %code_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %code_size.i, align 4
  %size29.i = getelementptr inbounds %struct.falcon, ptr %falcon, i32 0, i32 2, i32 7, i32 1
  %42 = ptrtoint ptr %size29.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %size29.i, align 4
  %data_offset.i = getelementptr inbounds %struct.falcon_fw_os_header_v1, ptr %add.ptr.i, i32 0, i32 2
  %43 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data_offset.i, align 4
  %data.i12 = getelementptr inbounds %struct.falcon, ptr %falcon, i32 0, i32 2, i32 6
  %45 = ptrtoint ptr %data.i12 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %data.i12, align 4
  %data_size.i = getelementptr inbounds %struct.falcon_fw_os_header_v1, ptr %add.ptr.i, i32 0, i32 3
  %46 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_size.i, align 4
  %size34.i = getelementptr inbounds %struct.falcon, ptr %falcon, i32 0, i32 2, i32 6, i32 1
  %48 = ptrtoint ptr %size34.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %size34.i, align 4
  tail call void @release_firmware(ptr noundef %1) #5
  %49 = ptrtoint ptr %firmware1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %firmware1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @falcon_init(ptr nocapture noundef writeonly %falcon) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.falcon, ptr %falcon, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %virt, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @falcon_exit(ptr nocapture noundef readonly %falcon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware = getelementptr inbounds %struct.falcon, ptr %falcon, i32 0, i32 2
  %0 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %firmware, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @release_firmware(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @falcon_boot(ptr nocapture noundef readonly %falcon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.falcon, ptr %falcon, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i64 @ktime_get() #5
  %add.i = add i64 %call, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 164) #5
  %regs = getelementptr inbounds %struct.falcon, ptr %falcon, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr124 = getelementptr i8, ptr %3, i32 4364
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr124) #5, !srcloc !36
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  %and125 = and i32 %5, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %cmp12126 = icmp eq i32 %and125, 0
  br i1 %cmp12126, label %if.end.for.end_crit_edge, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true:                                    ; preds = %if.then29.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call16 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call16, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call16, %add.i
  br i1 %cmp3.i, label %if.then19, label %if.then29

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr23 = getelementptr i8, ptr %7, i32 4364
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #5, !srcloc !36
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  br label %for.end

if.then29:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #5
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 4364
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !36
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  %and = and i32 %13, 6
  %cmp12 = icmp eq i32 %and, 0
  br i1 %cmp12, label %if.then29.for.end_crit_edge, label %if.then29.land.lhs.true_crit_edge

if.then29.land.lhs.true_crit_edge:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.then29.for.end_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.then29.for.end_crit_edge, %if.then19, %if.end.for.end_crit_edge
  %value.0 = phi i32 [ %9, %if.then19 ], [ %5, %if.end.for.end_crit_edge ], [ %13, %if.then29.for.end_crit_edge ]
  %and32 = and i32 %value.0, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %cmp33 = icmp eq i32 %and32, 0
  br i1 %cmp33, label %if.end36, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 4364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !42
  %iova = getelementptr inbounds %struct.falcon, ptr %falcon, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iova, align 4
  %bin_data = getelementptr inbounds %struct.falcon, ptr %falcon, i32 0, i32 2, i32 5
  %18 = ptrtoint ptr %bin_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bin_data, align 4
  %add40 = add i32 %19, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %20 = tail call i32 @llvm.bswap.i32(i32 %add40)
  %21 = shl i32 %20, 8
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr.i109 = getelementptr i8, ptr %23, i32 4368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 %21) #5, !srcloc !42
  %size = getelementptr inbounds %struct.falcon, ptr %falcon, i32 0, i32 2, i32 6, i32 1
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp44127.not = icmp eq i32 %25, 0
  br i1 %cmp44127.not, label %if.end36.for.cond52.preheader_crit_edge, label %for.body.lr.ph

if.end36.for.cond52.preheader_crit_edge:          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond52.preheader

for.body.lr.ph:                                   ; preds = %if.end36
  %data = getelementptr inbounds %struct.falcon, ptr %falcon, i32 0, i32 2, i32 6
  br label %for.body

for.cond52.preheader:                             ; preds = %for.body.for.cond52.preheader_crit_edge, %if.end36.for.cond52.preheader_crit_edge
  %size54 = getelementptr inbounds %struct.falcon, ptr %falcon, i32 0, i32 2, i32 7, i32 1
  %26 = ptrtoint ptr %size54 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp55129.not = icmp eq i32 %27, 0
  br i1 %cmp55129.not, label %for.cond52.preheader.for.end64_crit_edge, label %for.body56.lr.ph

for.cond52.preheader.for.end64_crit_edge:         ; preds = %for.cond52.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end64

for.body56.lr.ph:                                 ; preds = %for.cond52.preheader
  %code = getelementptr inbounds %struct.falcon, ptr %falcon, i32 0, i32 2, i32 7
  br label %for.body56

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %offset.0128 = phi i32 [ 0, %for.body.lr.ph ], [ %add50, %for.body.for.body_crit_edge ]
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data, align 4
  %add48 = add i32 %29, %offset.0128
  tail call fastcc void @falcon_copy_chunk(ptr noundef %falcon, i32 noundef %add48, i32 noundef %offset.0128, i32 noundef 1)
  %add50 = add i32 %offset.0128, 256
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size, align 4
  %cmp44 = icmp ult i32 %add50, %31
  br i1 %cmp44, label %for.body.for.body_crit_edge, label %for.body.for.cond52.preheader_crit_edge

for.body.for.cond52.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond52.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body56:                                       ; preds = %for.body56.for.body56_crit_edge, %for.body56.lr.ph
  %offset.1130 = phi i32 [ 0, %for.body56.lr.ph ], [ %add63, %for.body56.for.body56_crit_edge ]
  %32 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %code, align 4
  %add60 = add i32 %33, %offset.1130
  tail call fastcc void @falcon_copy_chunk(ptr noundef %falcon, i32 noundef %add60, i32 noundef %offset.1130, i32 noundef 0)
  %add63 = add i32 %offset.1130, 256
  %34 = ptrtoint ptr %size54 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size54, align 4
  %cmp55 = icmp ult i32 %add63, %35
  br i1 %cmp55, label %for.body56.for.body56_crit_edge, label %for.body56.for.end64_crit_edge

for.body56.for.end64_crit_edge:                   ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end64

for.body56.for.body56_crit_edge:                  ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body56

for.end64:                                        ; preds = %for.body56.for.end64_crit_edge, %for.cond52.preheader.for.end64_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %add.ptr.i111 = getelementptr i8, ptr %37, i32 4112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 -218169344) #5, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %add.ptr.i113 = getelementptr i8, ptr %39, i32 4124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 -251723776) #5, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %add.ptr.i115 = getelementptr i8, ptr %41, i32 4168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 50331648) #5, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %add.ptr.i117 = getelementptr i8, ptr %43, i32 4356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 0) #5, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %add.ptr.i119 = getelementptr i8, ptr %45, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 33554432) #5, !srcloc !42
  %call65 = tail call i32 @falcon_wait_idle(ptr noundef %falcon)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %do.end70, label %for.end64.cleanup_crit_edge

for.end64.cleanup_crit_edge:                      ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end70:                                         ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %falcon, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.5) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end70, %for.end64.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call65, %do.end70 ], [ -22, %entry.cleanup_crit_edge ], [ -110, %for.end.cleanup_crit_edge ], [ 0, %for.end64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @falcon_copy_chunk(ptr nocapture noundef readonly %falcon, i32 noundef %base, i32 noundef %offset, i32 noundef %target) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %target)
  %cmp = icmp eq i32 %target, 0
  %spec.select = select i1 %cmp, i32 1552, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %offset) #5
  %regs.i = getelementptr inbounds %struct.falcon, ptr %falcon, i32 0, i32 1
  %1 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 4372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #5, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %3 = tail call i32 @llvm.bswap.i32(i32 %base) #5
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %5, i32 4380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %3) #5, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #5
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %8, i32 4376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %6) #5, !srcloc !42
  %call.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call.i, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 38) #5
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %10, i32 4376
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %12 = and i32 %11, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not3.i = icmp eq i32 %12, 0
  br i1 %tobool.not3.i, label %entry.land.lhs.true.i_crit_edge, label %entry.falcon_dma_wait_idle.exit_crit_edge

entry.falcon_dma_wait_idle.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %falcon_dma_wait_idle.exit

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then26.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call13.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then16.i, label %if.then26.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %14, i32 4376
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  br label %falcon_dma_wait_idle.exit

if.then26.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #5
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %17, i32 4376
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %19 = and i32 %18, 33554432
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.then26.i.land.lhs.true.i_crit_edge, label %if.then26.i.falcon_dma_wait_idle.exit_crit_edge

if.then26.i.falcon_dma_wait_idle.exit_crit_edge:  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %falcon_dma_wait_idle.exit

if.then26.i.land.lhs.true.i_crit_edge:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

falcon_dma_wait_idle.exit:                        ; preds = %if.then26.i.falcon_dma_wait_idle.exit_crit_edge, %if.then16.i, %entry.falcon_dma_wait_idle.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @falcon_execute_method(ptr nocapture noundef readonly %falcon, i32 noundef %method, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %method, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %shr) #5
  %regs.i = getelementptr inbounds %struct.falcon, ptr %falcon, i32 0, i32 1
  %1 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #5, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %3 = tail call i32 @llvm.bswap.i32(i32 %data) #5
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %5, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %3) #5, !srcloc !42
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tegra/falcon.c", i32 29, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/tegra/falcon.c", i32 129, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @falcon_load_firmware._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @falcon_load_firmware._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/tegra/falcon.c", i32 212, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @falcon_boot._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @falcon_boot._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/tegra/falcon.c", i32 76, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @falcon_parse_firmware_image._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @falcon_parse_firmware_image._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/tegra/falcon.c", i32 82, i32 3}
!21 = !{ptr @falcon_parse_firmware_image._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @falcon_parse_firmware_image._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/tegra/falcon.c", i32 88, i32 3}
!25 = !{ptr @falcon_parse_firmware_image._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @falcon_parse_firmware_image._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 6234529}
!37 = !{i64 2157201840}
!38 = !{i64 2157202358}
!39 = !{i64 2157213246}
!40 = !{i64 2157213764}
!41 = !{i64 2157200007}
!42 = !{i64 6234111}
!43 = !{i64 2157204047}
!44 = !{i64 2157204565}
