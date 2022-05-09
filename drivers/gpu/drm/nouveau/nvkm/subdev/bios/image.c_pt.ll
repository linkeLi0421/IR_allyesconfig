; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/image.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/image.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvbios_pcirT = type { i16, i16, [3 x i8], i32, i16, i8, i8 }
%struct.nvbios_npdeT = type { i32, i8 }
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.133 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.133 = type { i8, i8, i8, i8, i8 }
%struct.nvbios_image = type { i32, i32, i8, i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@nvbios_imagen._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 46, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: %08x: ROM signature (%04x) unknown\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nvbios_imagen\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/bios/image.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvbios_imagen._entry_ptr = internal global ptr @nvbios_imagen._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 20054, i64 43605, i64 47991]
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/image.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 45, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @nvbios_imagen._entry, ptr @nvbios_imagen._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvbios_imagen._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nvbios_image(ptr noundef %bios, i32 noundef %idx, ptr nocapture noundef %image) local_unnamed_addr #0 align 64 {
entry:
  %pcir.i = alloca %struct.nvbios_pcirT, align 4
  %npde.i = alloca %struct.nvbios_npdeT, align 8
  %ver.i = alloca i8, align 1
  %hdr.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %imaged_addr1 = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 4
  %0 = ptrtoint ptr %imaged_addr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imaged_addr1, align 4
  %2 = call ptr @memset(ptr %image, i32 0, i32 12)
  store i32 0, ptr %imaged_addr1, align 4
  %size = getelementptr inbounds %struct.nvbios_image, ptr %image, i32 0, i32 1
  %last = getelementptr inbounds %struct.nvbios_image, ptr %image, i32 0, i32 3
  %image_size.i = getelementptr inbounds %struct.nvbios_pcirT, ptr %pcir.i, i32 0, i32 3
  %image_type.i = getelementptr inbounds %struct.nvbios_pcirT, ptr %pcir.i, i32 0, i32 5
  %type.i = getelementptr inbounds %struct.nvbios_image, ptr %image, i32 0, i32 2
  %last.i = getelementptr inbounds %struct.nvbios_pcirT, ptr %pcir.i, i32 0, i32 6
  %last25.i = getelementptr inbounds %struct.nvbios_npdeT, ptr %npde.i, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %idx.addr.0 = phi i32 [ %idx, %entry ], [ %dec, %do.cond.do.body_crit_edge ]
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  %5 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %image, align 4
  %add = add i32 %6, %4
  store i32 %add, ptr %image, align 4
  %7 = ptrtoint ptr %last to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %last, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pcir.i) #4
  %9 = call ptr @memset(ptr %pcir.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %npde.i) #4
  %10 = ptrtoint ptr %npde.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %npde.i, align 8, !annotation !18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver.i) #4
  %11 = ptrtoint ptr %ver.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %ver.i, align 1, !annotation !18
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hdr.i) #4
  %12 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %hdr.i, align 2, !annotation !18
  %call.i = call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add) #4
  %13 = zext i16 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i16 %call.i, label %do.body.i [
    i16 -21931, label %lor.lhs.false.sw.epilog.i_crit_edge
    i16 -17545, label %lor.lhs.false.sw.epilog.i_crit_edge26
    i16 20054, label %lor.lhs.false.sw.epilog.i_crit_edge27
  ]

lor.lhs.false.sw.epilog.i_crit_edge27:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

lor.lhs.false.sw.epilog.i_crit_edge26:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

lor.lhs.false.sw.epilog.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

do.body.i:                                        ; preds = %lor.lhs.false
  %debug.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %14 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp.i = icmp ugt i32 %15, 3
  br i1 %cmp.i, label %do.end.i, label %do.body.i.nvbios_imagen.exit.thread_crit_edge

do.body.i.nvbios_imagen.exit.thread_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_imagen.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i.le = zext i16 %call.i to i32
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %16 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  %20 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %image, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef %name.i, i32 noundef %21, i32 noundef %conv.i.le) #7
  br label %nvbios_imagen.exit.thread

sw.epilog.i:                                      ; preds = %lor.lhs.false.sw.epilog.i_crit_edge, %lor.lhs.false.sw.epilog.i_crit_edge26, %lor.lhs.false.sw.epilog.i_crit_edge27
  %22 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %image, align 4
  %call8.i = call i32 @nvbios_pcirTp(ptr noundef %bios, i32 noundef %23, ptr noundef nonnull %ver.i, ptr noundef nonnull %hdr.i, ptr noundef nonnull %pcir.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %sw.epilog.i.nvbios_imagen.exit.thread_crit_edge, label %if.end10.i

sw.epilog.i.nvbios_imagen.exit.thread_crit_edge:  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_imagen.exit.thread

if.end10.i:                                       ; preds = %sw.epilog.i
  %24 = ptrtoint ptr %image_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %image_size.i, align 4
  %26 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %size, align 4
  %27 = ptrtoint ptr %image_type.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %image_type.i, align 2
  %29 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %type.i, align 4
  %30 = ptrtoint ptr %last.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %last.i, align 1, !range !17
  %32 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %last, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %28)
  %cmp15.not.i = icmp eq i8 %28, 112
  br i1 %cmp15.not.i, label %if.end10.i.if.end30.i_crit_edge, label %if.then17.i

if.end10.i.if.end30.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30.i

if.then17.i:                                      ; preds = %if.end10.i
  %33 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %image, align 4
  %call19.i = call i32 @nvbios_npdeTp(ptr noundef %bios, i32 noundef %34, ptr noundef nonnull %npde.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.then17.i.do.cond_crit_edge, label %if.end22.i

if.then17.i.do.cond_crit_edge:                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond

if.end22.i:                                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %npde.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %npde.i, align 8
  %37 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %size, align 4
  %38 = ptrtoint ptr %last25.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %last25.i, align 4, !range !17
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end22.i, %if.end10.i.if.end30.i_crit_edge
  %storemerge.i = phi i8 [ %39, %if.end22.i ], [ 1, %if.end10.i.if.end30.i_crit_edge ]
  %40 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %storemerge.i, ptr %last, align 1
  br label %do.cond

nvbios_imagen.exit.thread:                        ; preds = %sw.epilog.i.nvbios_imagen.exit.thread_crit_edge, %do.end.i, %do.body.i.nvbios_imagen.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hdr.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %npde.i) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pcir.i) #4
  br label %cleanup

do.cond:                                          ; preds = %if.end30.i, %if.then17.i.do.cond_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hdr.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %npde.i) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pcir.i) #4
  %dec = add i32 %idx.addr.0, -1
  %tobool4.not = icmp eq i32 %idx.addr.0, 0
  br i1 %tobool4.not, label %do.cond.cleanup_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %nvbios_imagen.exit.thread, %do.body.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %nvbios_imagen.exit.thread ], [ %tobool.not, %do.body.cleanup_crit_edge ], [ %tobool.not, %do.cond.cleanup_crit_edge ]
  %41 = ptrtoint ptr %imaged_addr1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %1, ptr %imaged_addr1, align 4
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pcirTp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_npdeTp(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/image.c", i32 45, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvbios_imagen._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvbios_imagen._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i8 0, i8 2}
!18 = !{!"auto-init"}
