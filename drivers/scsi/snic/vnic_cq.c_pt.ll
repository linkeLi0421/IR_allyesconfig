; ModuleID = '/llk/IR_all_yes/drivers/scsi/snic/vnic_cq.c_pt.bc'
source_filename = "../drivers/scsi/snic/vnic_cq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vnic_cq = type { i32, ptr, ptr, %struct.vnic_dev_ring, i32, i32 }
%struct.vnic_dev_ring = type { ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32 }
%struct.vnic_cq_ctrl = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@svnic_cq_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Failed to hook CQ[%d] resource\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"svnic_cq_alloc\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/scsi/snic/vnic_cq.c\00", [36 x i8] zeroinitializer }, align 32
@svnic_cq_alloc._entry_ptr = internal global ptr @svnic_cq_alloc._entry, section ".printk_index", align 4
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [31 x i8] c"../drivers/scsi/snic/vnic_cq.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 39, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @svnic_cq_alloc._entry, ptr @svnic_cq_alloc._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svnic_cq_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svnic_cq_free(ptr noundef %cq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.vnic_cq, ptr %cq, i32 0, i32 1
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %ring = getelementptr inbounds %struct.vnic_cq, ptr %cq, i32 0, i32 3
  tail call void @svnic_dev_free_desc_ring(ptr noundef %1, ptr noundef %ring) #4
  %ctrl = getelementptr inbounds %struct.vnic_cq, ptr %cq, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ctrl, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svnic_dev_free_desc_ring(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svnic_cq_alloc(ptr noundef %vdev, ptr noundef %cq, i32 noundef %index, i32 noundef %desc_count, i32 noundef %desc_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %index, ptr %cq, align 4
  %vdev2 = getelementptr inbounds %struct.vnic_cq, ptr %cq, i32 0, i32 1
  %1 = ptrtoint ptr %vdev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %vdev, ptr %vdev2, align 4
  %call = tail call ptr @svnic_dev_get_res(ptr noundef %vdev, i32 noundef 3, i32 noundef %index) #4
  %ctrl = getelementptr inbounds %struct.vnic_cq, ptr %cq, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %ctrl, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %index) #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ring = getelementptr inbounds %struct.vnic_cq, ptr %cq, i32 0, i32 3
  %call5 = tail call i32 @svnic_dev_alloc_desc_ring(ptr noundef %vdev, ptr noundef %ring, i32 noundef %desc_count, i32 noundef %desc_size) #4
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call5, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svnic_dev_get_res(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svnic_dev_alloc_desc_ring(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svnic_cq_init(ptr nocapture noundef readonly %cq, i32 noundef %flow_control_enable, i32 noundef %color_enable, i32 noundef %cq_head, i32 noundef %cq_tail, i32 noundef %cq_tail_color, i32 noundef %interrupt_enable, i32 noundef %cq_entry_enable, i32 noundef %cq_message_enable, i32 noundef %interrupt_offset, i64 noundef %cq_message_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.vnic_cq, ptr %cq, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 4
  %ctrl = getelementptr inbounds %struct.vnic_cq, ptr %cq, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %4 = tail call i32 @llvm.bswap.i32(i32 %1) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %4) #4, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #4, !srcloc !16
  %desc_count = getelementptr inbounds %struct.vnic_cq, ptr %cq, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %desc_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %desc_count, align 4
  %7 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl, align 4
  %ring_size = getelementptr inbounds %struct.vnic_cq_ctrl, ptr %8, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %9 = tail call i32 @llvm.bswap.i32(i32 %6) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ring_size, i32 %9) #4, !srcloc !16
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl, align 4
  %flow_control_enable4 = getelementptr inbounds %struct.vnic_cq_ctrl, ptr %11, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %12 = tail call i32 @llvm.bswap.i32(i32 %flow_control_enable) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %flow_control_enable4, i32 %12) #4, !srcloc !16
  %13 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl, align 4
  %color_enable6 = getelementptr inbounds %struct.vnic_cq_ctrl, ptr %14, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %15 = tail call i32 @llvm.bswap.i32(i32 %color_enable) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %color_enable6, i32 %15) #4, !srcloc !16
  %16 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl, align 4
  %cq_head8 = getelementptr inbounds %struct.vnic_cq_ctrl, ptr %17, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %18 = tail call i32 @llvm.bswap.i32(i32 %cq_head) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cq_head8, i32 %18) #4, !srcloc !16
  %19 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrl, align 4
  %cq_tail10 = getelementptr inbounds %struct.vnic_cq_ctrl, ptr %20, i32 0, i32 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %21 = tail call i32 @llvm.bswap.i32(i32 %cq_tail) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cq_tail10, i32 %21) #4, !srcloc !16
  %22 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctrl, align 4
  %cq_tail_color12 = getelementptr inbounds %struct.vnic_cq_ctrl, ptr %23, i32 0, i32 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %24 = tail call i32 @llvm.bswap.i32(i32 %cq_tail_color) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cq_tail_color12, i32 %24) #4, !srcloc !16
  %25 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctrl, align 4
  %interrupt_enable14 = getelementptr inbounds %struct.vnic_cq_ctrl, ptr %26, i32 0, i32 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %27 = tail call i32 @llvm.bswap.i32(i32 %interrupt_enable) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %interrupt_enable14, i32 %27) #4, !srcloc !16
  %28 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctrl, align 4
  %cq_entry_enable16 = getelementptr inbounds %struct.vnic_cq_ctrl, ptr %29, i32 0, i32 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %30 = tail call i32 @llvm.bswap.i32(i32 %cq_entry_enable) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cq_entry_enable16, i32 %30) #4, !srcloc !16
  %31 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctrl, align 4
  %cq_message_enable18 = getelementptr inbounds %struct.vnic_cq_ctrl, ptr %32, i32 0, i32 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %33 = tail call i32 @llvm.bswap.i32(i32 %cq_message_enable) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cq_message_enable18, i32 %33) #4, !srcloc !16
  %34 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctrl, align 4
  %interrupt_offset20 = getelementptr inbounds %struct.vnic_cq_ctrl, ptr %35, i32 0, i32 19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %36 = tail call i32 @llvm.bswap.i32(i32 %interrupt_offset) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %interrupt_offset20, i32 %36) #4, !srcloc !16
  %37 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctrl, align 4
  %cq_message_addr22 = getelementptr inbounds %struct.vnic_cq_ctrl, ptr %38, i32 0, i32 21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %conv.i = trunc i64 %cq_message_addr to i32
  %39 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cq_message_addr22, i32 %39) #4, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %shr.i36 = lshr i64 %cq_message_addr, 32
  %conv4.i37 = trunc i64 %shr.i36 to i32
  %40 = tail call i32 @llvm.bswap.i32(i32 %conv4.i37) #4
  %add.ptr.i38 = getelementptr i8, ptr %cq_message_addr22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %40) #4, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svnic_cq_clean(ptr noundef %cq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %to_clean = getelementptr inbounds %struct.vnic_cq, ptr %cq, i32 0, i32 4
  %0 = ptrtoint ptr %to_clean to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %to_clean, align 4
  %last_color = getelementptr inbounds %struct.vnic_cq, ptr %cq, i32 0, i32 5
  %1 = ptrtoint ptr %last_color to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %last_color, align 4
  %ctrl = getelementptr inbounds %struct.vnic_cq, ptr %cq, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  %cq_head = getelementptr inbounds %struct.vnic_cq_ctrl, ptr %3, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cq_head, i32 0) #4, !srcloc !16
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl, align 4
  %cq_tail = getelementptr inbounds %struct.vnic_cq_ctrl, ptr %5, i32 0, i32 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cq_tail, i32 0) #4, !srcloc !16
  %6 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl, align 4
  %cq_tail_color = getelementptr inbounds %struct.vnic_cq_ctrl, ptr %7, i32 0, i32 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cq_tail_color, i32 16777216) #4, !srcloc !16
  %ring = getelementptr inbounds %struct.vnic_cq, ptr %cq, i32 0, i32 3
  tail call void @svnic_dev_clear_desc_ring(ptr noundef %ring) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svnic_dev_clear_desc_ring(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/snic/vnic_cq.c", i32 39, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @svnic_cq_alloc._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @svnic_cq_alloc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 2154439999}
!16 = !{i64 4980510}
!17 = !{i64 2154440504}
!18 = !{i64 2152522632}
