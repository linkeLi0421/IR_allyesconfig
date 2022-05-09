; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/acr/hsfw.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/acr/hsfw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_acr = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i64, i64, i64, ptr, ptr, i8, ptr, i8, i64 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_acr_hsfw = type { ptr, ptr, %struct.list_head, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon }
%struct.anon = type { %struct.anon.0, %struct.anon.0, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.nvkm_acr_hsf_fwif = type { i32, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.nvfw_bin_hdr = type { i32, i32, i32, i32, i32, i32 }
%struct.nvfw_bl_desc = type { i32, i32, i32, i32, i32, i32 }
%struct.nvfw_hs_header = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvfw_hs_load_header = type { i32, i32, i32, i32, i32, [0 x i32] }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4318, i64 991761648]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_acr_hsfw_del_all(ptr noundef readonly %acr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hsfw1 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 2
  %0 = ptrtoint ptr %hsfw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsfw1, align 8
  %cmp.not18 = icmp eq ptr %1, %hsfw1
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in19 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %hsfw.0 = getelementptr i8, ptr %.pn.in19, i32 -8
  %2 = ptrtoint ptr %.pn.in19 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in19, align 4
  tail call fastcc void @nvkm_acr_hsfw_del(ptr noundef %hsfw.0)
  %cmp.not = icmp eq ptr %.pn, %hsfw1
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvkm_acr_hsfw_del(ptr noundef %hsfw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %head = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %imem = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 5
  %8 = ptrtoint ptr %imem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %imem, align 4
  tail call void @kfree(ptr noundef %9) #5
  %image = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 6
  %10 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %image, align 4
  tail call void @kfree(ptr noundef %11) #5
  %sig = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 14
  %12 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sig, align 4
  tail call void @kfree(ptr noundef %13) #5
  %dbg = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %hsfw, i32 0, i32 14, i32 1
  %14 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dbg, align 4
  tail call void @kfree(ptr noundef %15) #5
  tail call void @kfree(ptr noundef %hsfw) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_acr_hsfw_load(ptr noundef %acr, ptr noundef %bl, ptr noundef %fw, ptr noundef %name, i32 noundef %version, ptr nocapture noundef readonly %fwif) local_unnamed_addr #0 align 64 {
entry:
  %fw.i25 = alloca ptr, align 4
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 80) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %func = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %fwif, i32 0, i32 2
  %1 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %func, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %call7.i.i, align 8
  %name2 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %name2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %name2, align 4
  %head = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %call7.i.i, i32 0, i32 2
  %hsfw3 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %6, ptr noundef %hsfw3) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %head, ptr %prev.i, align 4
  %8 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %hsfw3, ptr %head, align 8
  %prev3.i.i = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %call7.i.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %head, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %subdev1.i = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #5
  %11 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !9
  %call.i = call i32 @nvkm_firmware_get(ptr noundef %subdev1.i, ptr noundef %bl, i32 noundef %version, ptr noundef nonnull %fw.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %done.thread

if.end.i:                                         ; preds = %list_add_tail.exit
  %12 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw.i, align 4
  %data2.i = getelementptr inbounds %struct.firmware, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data2.i, align 4
  %call3.i = call ptr @nvfw_bin_hdr(ptr noundef %subdev1.i, ptr noundef %15) #5
  %16 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw.i, align 4
  %data4.i = getelementptr inbounds %struct.firmware, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %data4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data4.i, align 4
  %header_offset.i = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %call3.i, i32 0, i32 3
  %20 = ptrtoint ptr %header_offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %header_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %21
  %call5.i = call ptr @nvfw_bl_desc(ptr noundef %subdev1.i, ptr noundef %add.ptr.i) #5
  %22 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fw.i, align 4
  %data6.i = getelementptr inbounds %struct.firmware, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %data6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data6.i, align 4
  %data_offset.i = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %call3.i, i32 0, i32 4
  %26 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_offset.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %25, i32 %27
  %code_size.i = getelementptr inbounds %struct.nvfw_bl_desc, ptr %call5.i, i32 0, i32 3
  %28 = ptrtoint ptr %code_size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %code_size.i, align 4
  %imem_size.i = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %call7.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %imem_size.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %imem_size.i, align 8
  %31 = ptrtoint ptr %call5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call5.i, align 4
  %imem_tag.i = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %call7.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %imem_tag.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %imem_tag.i, align 4
  %34 = load i32, ptr %code_size.i, align 4
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %34, i32 noundef 3264) #9
  %imem.i = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %call7.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %imem.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call9.i.i, ptr %imem.i, align 8
  %code_off.i = getelementptr inbounds %struct.nvfw_bl_desc, ptr %call5.i, i32 0, i32 2
  %36 = ptrtoint ptr %code_off.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %code_off.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %add.ptr7.i, i32 %37
  %38 = ptrtoint ptr %code_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %code_size.i, align 4
  %40 = call ptr @memcpy(ptr %call9.i.i, ptr %add.ptr11.i, i32 %39)
  %41 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fw.i, align 4
  call void @nvkm_firmware_put(ptr noundef %42) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i25) #5
  %43 = ptrtoint ptr %fw.i25 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i25, align 4, !annotation !9
  %call.i27 = call i32 @nvkm_firmware_get(ptr noundef %subdev1.i, ptr noundef %fw, i32 noundef %version, ptr noundef nonnull %fw.i25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %cmp.i = icmp slt i32 %call.i27, 0
  br i1 %cmp.i, label %done.thread65, label %if.end.i30

done.thread:                                      ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #5
  br label %if.then10

done.thread65:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i25) #5
  br label %if.then10

if.end.i30:                                       ; preds = %if.end.i
  %44 = ptrtoint ptr %fw.i25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fw.i25, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i, align 4
  %call2.i = call ptr @nvfw_bin_hdr(ptr noundef %subdev1.i, ptr noundef %47) #5
  %48 = ptrtoint ptr %fw.i25 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fw.i25, align 4
  %data3.i = getelementptr inbounds %struct.firmware, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data3.i, align 4
  %header_offset.i28 = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %call2.i, i32 0, i32 3
  %52 = ptrtoint ptr %header_offset.i28 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %header_offset.i28, align 4
  %add.ptr.i29 = getelementptr i8, ptr %51, i32 %53
  %call4.i = call ptr @nvfw_hs_header(ptr noundef %subdev1.i, ptr noundef %add.ptr.i29) #5
  %54 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %call2.i, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i32 %55, label %if.end.i30.done.thread68_crit_edge [
    i32 4318, label %sw.bb.i
    i32 991761648, label %sw.bb9.i
  ]

if.end.i30.done.thread68_crit_edge:               ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #7
  br label %done.thread68

sw.bb.i:                                          ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %fw.i25 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fw.i25, align 4
  %data5.i = getelementptr inbounds %struct.firmware, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %data5.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data5.i, align 4
  %patch_loc.i = getelementptr inbounds %struct.nvfw_hs_header, ptr %call4.i, i32 0, i32 4
  %61 = ptrtoint ptr %patch_loc.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %patch_loc.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %60, i32 %62
  %patch_sig.i = getelementptr inbounds %struct.nvfw_hs_header, ptr %call4.i, i32 0, i32 5
  %63 = ptrtoint ptr %patch_sig.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %patch_sig.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %60, i32 %64
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #7
  %patch_loc10.i = getelementptr inbounds %struct.nvfw_hs_header, ptr %call4.i, i32 0, i32 4
  %patch_sig11.i = getelementptr inbounds %struct.nvfw_hs_header, ptr %call4.i, i32 0, i32 5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb9.i, %sw.bb.i
  %loc.0.in.i = phi ptr [ %patch_loc10.i, %sw.bb9.i ], [ %add.ptr6.i, %sw.bb.i ]
  %sig.0.in.i = phi ptr [ %patch_sig11.i, %sw.bb9.i ], [ %add.ptr8.i, %sw.bb.i ]
  %65 = ptrtoint ptr %sig.0.in.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %sig.0.i = load i32, ptr %sig.0.in.i, align 4
  %66 = ptrtoint ptr %loc.0.in.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %loc.0.i = load i32, ptr %loc.0.in.i, align 4
  %67 = ptrtoint ptr %fw.i25 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fw.i25, align 4
  %data12.i = getelementptr inbounds %struct.firmware, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %data12.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data12.i, align 4
  %hdr_offset.i = getelementptr inbounds %struct.nvfw_hs_header, ptr %call4.i, i32 0, i32 6
  %71 = ptrtoint ptr %hdr_offset.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %hdr_offset.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %70, i32 %72
  %call14.i = call ptr @nvfw_hs_load_header(ptr noundef %subdev1.i, ptr noundef %add.ptr13.i) #5
  %data_size.i = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %call2.i, i32 0, i32 5
  %73 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %data_size.i, align 4
  %call9.i.i56 = call noalias align 128 ptr @__kmalloc(i32 noundef %74, i32 noundef 3264) #9
  %image.i = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %call7.i.i, i32 0, i32 6
  %75 = ptrtoint ptr %image.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call9.i.i56, ptr %image.i, align 4
  %tobool.not.i59 = icmp eq ptr %call9.i.i56, null
  br i1 %tobool.not.i59, label %sw.epilog.i.done.thread68_crit_edge, label %if.end17.i

sw.epilog.i.done.thread68_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %done.thread68

if.end17.i:                                       ; preds = %sw.epilog.i
  %76 = ptrtoint ptr %fw.i25 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fw.i25, align 4
  %data19.i = getelementptr inbounds %struct.firmware, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %data19.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data19.i, align 4
  %data_offset.i61 = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %call2.i, i32 0, i32 4
  %80 = ptrtoint ptr %data_offset.i61 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %data_offset.i61, align 4
  %add.ptr20.i = getelementptr i8, ptr %79, i32 %81
  %82 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %data_size.i, align 4
  %84 = call ptr @memcpy(ptr %call9.i.i56, ptr %add.ptr20.i, i32 %83)
  %85 = load i32, ptr %data_size.i, align 4
  %image_size.i = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %call7.i.i, i32 0, i32 7
  %86 = ptrtoint ptr %image_size.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %image_size.i, align 8
  %87 = ptrtoint ptr %call14.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %call14.i, align 4
  %non_sec_addr.i = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %call7.i.i, i32 0, i32 8
  %89 = ptrtoint ptr %non_sec_addr.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %non_sec_addr.i, align 4
  %non_sec_code_size.i = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %call14.i, i32 0, i32 1
  %90 = ptrtoint ptr %non_sec_code_size.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %non_sec_code_size.i, align 4
  %non_sec_size.i = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %call7.i.i, i32 0, i32 9
  %92 = ptrtoint ptr %non_sec_size.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %non_sec_size.i, align 8
  %apps.i = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %call14.i, i32 0, i32 5
  %93 = ptrtoint ptr %apps.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %apps.i, align 4
  %sec_addr.i = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %call7.i.i, i32 0, i32 10
  %95 = ptrtoint ptr %sec_addr.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %sec_addr.i, align 4
  %num_apps.i = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %call14.i, i32 0, i32 4
  %96 = ptrtoint ptr %num_apps.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num_apps.i, align 4
  %arrayidx24.i = getelementptr %struct.nvfw_hs_load_header, ptr %call14.i, i32 0, i32 5, i32 %97
  %98 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx24.i, align 4
  %sec_size.i = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %call7.i.i, i32 0, i32 11
  %100 = ptrtoint ptr %sec_size.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %sec_size.i, align 8
  %data_dma_base.i = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %call14.i, i32 0, i32 2
  %101 = ptrtoint ptr %data_dma_base.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %data_dma_base.i, align 4
  %data_addr.i = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %call7.i.i, i32 0, i32 12
  %103 = ptrtoint ptr %data_addr.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %data_addr.i, align 4
  %data_size25.i = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %call14.i, i32 0, i32 3
  %104 = ptrtoint ptr %data_size25.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %data_size25.i, align 4
  %data_size26.i = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %call7.i.i, i32 0, i32 13
  %106 = ptrtoint ptr %data_size26.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %data_size26.i, align 8
  %sig_prod_size.i = getelementptr inbounds %struct.nvfw_hs_header, ptr %call4.i, i32 0, i32 3
  %107 = ptrtoint ptr %sig_prod_size.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %sig_prod_size.i, align 4
  %sig27.i = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %call7.i.i, i32 0, i32 14
  %size.i = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 1
  %109 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %size.i, align 8
  %110 = load ptr, ptr %data19.i, align 4
  %sig_prod_offset.i = getelementptr inbounds %struct.nvfw_hs_header, ptr %call4.i, i32 0, i32 2
  %111 = ptrtoint ptr %sig_prod_offset.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %sig_prod_offset.i, align 4
  %add.ptr29.i = getelementptr i8, ptr %110, i32 %112
  %add.ptr30.i = getelementptr i8, ptr %add.ptr29.i, i32 %sig.0.i
  %call34.i = call ptr @kmemdup(ptr noundef %add.ptr30.i, i32 noundef %108, i32 noundef 3264) #5
  %113 = ptrtoint ptr %sig27.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call34.i, ptr %sig27.i, align 4
  %tobool41.not.i = icmp eq ptr %call34.i, null
  br i1 %tobool41.not.i, label %if.end17.i.done.thread68_crit_edge, label %if.end43.i

if.end17.i.done.thread68_crit_edge:               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %done.thread68

if.end43.i:                                       ; preds = %if.end17.i
  %sig_dbg_size.i = getelementptr inbounds %struct.nvfw_hs_header, ptr %call4.i, i32 0, i32 1
  %114 = ptrtoint ptr %sig_dbg_size.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %sig_dbg_size.i, align 4
  %dbg.i = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %call7.i.i, i32 0, i32 14, i32 1
  %size45.i = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 1
  %116 = ptrtoint ptr %size45.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %size45.i, align 8
  %117 = ptrtoint ptr %fw.i25 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %fw.i25, align 4
  %data46.i = getelementptr inbounds %struct.firmware, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %data46.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %data46.i, align 4
  %121 = ptrtoint ptr %call4.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %call4.i, align 4
  %add.ptr47.i = getelementptr i8, ptr %120, i32 %122
  %add.ptr48.i = getelementptr i8, ptr %add.ptr47.i, i32 %sig.0.i
  %call52.i = call ptr @kmemdup(ptr noundef %add.ptr48.i, i32 noundef %115, i32 noundef 3264) #5
  %123 = ptrtoint ptr %dbg.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call52.i, ptr %dbg.i, align 4
  %tobool59.not.i = icmp eq ptr %call52.i, null
  br i1 %tobool59.not.i, label %if.end43.i.done.thread68_crit_edge, label %done

if.end43.i.done.thread68_crit_edge:               ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %done.thread68

done.thread68:                                    ; preds = %if.end43.i.done.thread68_crit_edge, %if.end17.i.done.thread68_crit_edge, %sw.epilog.i.done.thread68_crit_edge, %if.end.i30.done.thread68_crit_edge
  %ret.0.i.ph = phi i32 [ -12, %if.end43.i.done.thread68_crit_edge ], [ -12, %if.end17.i.done.thread68_crit_edge ], [ -12, %sw.epilog.i.done.thread68_crit_edge ], [ -22, %if.end.i30.done.thread68_crit_edge ]
  %124 = ptrtoint ptr %fw.i25 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %fw.i25, align 4
  call void @nvkm_firmware_put(ptr noundef %125) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i25) #5
  br label %if.then10

done:                                             ; preds = %if.end43.i
  %patch_loc63.i = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %call7.i.i, i32 0, i32 14, i32 2
  %126 = ptrtoint ptr %patch_loc63.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %loc.0.i, ptr %patch_loc63.i, align 4
  %127 = ptrtoint ptr %fw.i25 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %fw.i25, align 4
  call void @nvkm_firmware_put(ptr noundef %128) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool9.not = icmp eq i32 %call.i27, 0
  br i1 %tobool9.not, label %done.cleanup_crit_edge, label %done.if.then10_crit_edge

done.if.then10_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10:                                        ; preds = %done.if.then10_crit_edge, %done.thread68, %done.thread65, %done.thread
  %ret.064 = phi i32 [ %call.i, %done.thread ], [ %call.i27, %done.if.then10_crit_edge ], [ %call.i27, %done.thread65 ], [ %ret.0.i.ph, %done.thread68 ]
  call fastcc void @nvkm_acr_hsfw_del(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %done.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %ret.064, %if.then10 ], [ 0, %done.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_firmware_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvfw_bin_hdr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvfw_bl_desc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_firmware_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvfw_hs_header(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvfw_hs_load_header(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"auto-init"}
