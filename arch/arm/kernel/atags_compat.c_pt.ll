; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/atags_compat.c_pt.bc'
source_filename = "../arch/arm/kernel/atags_compat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.param_struct = type { %union.anon.0, %union.anon.1, [1024 x i8] }
%union.anon.0 = type { %struct.anon, [164 x i8] }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { i32, [1020 x i8] }
%struct.tag_header = type { i32, i32 }
%struct.tag = type { %struct.tag_header, %union.anon }
%union.anon = type { %struct.tag_videolfb }
%struct.tag_videolfb = type { i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }

@build_tag_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014Warning: bad configuration page, trying to continue\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"build_tag_list\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"arch/arm/kernel/atags_compat.c\00", [33 x i8] zeroinitializer }, align 32
@build_tag_list._entry_ptr = internal global ptr @build_tag_list._entry, section ".printk_index", align 4
@build_tag_list._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017Converting old-style param struct to taglist\0A\00", [48 x i8] zeroinitializer }, align 32
@build_tag_list._entry_ptr.5 = internal global ptr @build_tag_list._entry.3, section ".printk_index", align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 97, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [34 x i8] c"../arch/arm/kernel/atags_compat.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 101, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @build_tag_list._entry, ptr @build_tag_list._entry.3, ptr @build_tag_list._entry_ptr, ptr @build_tag_list._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_tag_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_tag_list._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @convert_to_tag_list(ptr noundef %tags) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %u2 = getelementptr inbounds %struct.param_struct, ptr %tags, i32 0, i32 1
  tail call fastcc void @build_tag_list(ptr noundef %tags, ptr noundef %u2) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @build_tag_list(ptr nocapture noundef %params, ptr noundef %taglist) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp.not = icmp eq i32 %1, 4096
  br i1 %cmp.not, label %do.end3, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %cleanup

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  %tag6 = getelementptr inbounds %struct.tag_header, ptr %taglist, i32 0, i32 1
  %2 = ptrtoint ptr %tag6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1413545985, ptr %tag6, align 4
  %3 = ptrtoint ptr %taglist to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5, ptr %taglist, align 4
  %flags = getelementptr inbounds %struct.anon, ptr %params, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  %u = getelementptr inbounds %struct.tag, ptr %taglist, i32 0, i32 1
  %6 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %u, align 4
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %params, align 4
  %pagesize = getelementptr inbounds %struct.tag, ptr %taglist, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %pagesize to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %pagesize, align 4
  %rootdev = getelementptr inbounds %struct.anon, ptr %params, i32 0, i32 4
  %10 = ptrtoint ptr %rootdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rootdev, align 4
  %rootdev15 = getelementptr inbounds %struct.tag, ptr %taglist, i32 0, i32 1, i32 0, i32 4
  %12 = ptrtoint ptr %rootdev15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rootdev15, align 4
  %add.ptr = getelementptr i32, ptr %taglist, i32 5
  %tag19 = getelementptr i32, ptr %taglist, i32 6
  %13 = ptrtoint ptr %tag19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1413545988, ptr %tag19, align 4
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 5, ptr %add.ptr, align 4
  %15 = load i32, ptr %flags, align 4
  %and24 = lshr i32 %15, 2
  %or = and i32 %and24, 3
  %u30 = getelementptr i32, ptr %taglist, i32 7
  %16 = ptrtoint ptr %u30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %u30, align 4
  %ramdisk_size = getelementptr inbounds %struct.anon, ptr %params, i32 0, i32 2
  %17 = ptrtoint ptr %ramdisk_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ramdisk_size, align 4
  %size34 = getelementptr i32, ptr %taglist, i32 8
  %19 = ptrtoint ptr %size34 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %size34, align 4
  %rd_start = getelementptr inbounds %struct.anon, ptr %params, i32 0, i32 18
  %20 = ptrtoint ptr %rd_start to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rd_start, align 4
  %start = getelementptr i32, ptr %taglist, i32 9
  %22 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %start, align 4
  %add.ptr39 = getelementptr i32, ptr %taglist, i32 10
  %tag41 = getelementptr i32, ptr %taglist, i32 11
  %23 = ptrtoint ptr %tag41 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1413545989, ptr %tag41, align 4
  %24 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %add.ptr39, align 4
  %initrd_start = getelementptr inbounds %struct.anon, ptr %params, i32 0, i32 16
  %25 = ptrtoint ptr %initrd_start to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %initrd_start, align 4
  %u45 = getelementptr i32, ptr %taglist, i32 12
  %27 = ptrtoint ptr %u45 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %u45, align 4
  %initrd_size = getelementptr inbounds %struct.anon, ptr %params, i32 0, i32 17
  %28 = ptrtoint ptr %initrd_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %initrd_size, align 4
  %size49 = getelementptr i32, ptr %taglist, i32 13
  %30 = ptrtoint ptr %size49 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %size49, align 4
  %add.ptr52 = getelementptr i32, ptr %taglist, i32 14
  %tag54 = getelementptr i32, ptr %taglist, i32 15
  %31 = ptrtoint ptr %tag54 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1413545990, ptr %tag54, align 4
  %32 = ptrtoint ptr %add.ptr52 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %add.ptr52, align 4
  %system_serial_low = getelementptr inbounds %struct.anon, ptr %params, i32 0, i32 20
  %33 = ptrtoint ptr %system_serial_low to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %system_serial_low, align 4
  %u58 = getelementptr i32, ptr %taglist, i32 16
  %35 = ptrtoint ptr %u58 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %u58, align 4
  %system_serial_high = getelementptr inbounds %struct.anon, ptr %params, i32 0, i32 21
  %36 = ptrtoint ptr %system_serial_high to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %system_serial_high, align 4
  %high = getelementptr i32, ptr %taglist, i32 17
  %38 = ptrtoint ptr %high to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %high, align 4
  %add.ptr63 = getelementptr i32, ptr %taglist, i32 18
  %tag65 = getelementptr i32, ptr %taglist, i32 19
  %39 = ptrtoint ptr %tag65 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1413545991, ptr %tag65, align 4
  %40 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3, ptr %add.ptr63, align 4
  %system_rev = getelementptr inbounds %struct.anon, ptr %params, i32 0, i32 19
  %41 = ptrtoint ptr %system_rev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %system_rev, align 4
  %u69 = getelementptr i32, ptr %taglist, i32 20
  %43 = ptrtoint ptr %u69 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %u69, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %44 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %shl = shl i32 %44, 12
  %nr_pages = getelementptr inbounds %struct.anon, ptr %params, i32 0, i32 1
  %45 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nr_pages, align 4
  %mul = shl i32 %46, 12
  %add.ptr.i = getelementptr i32, ptr %taglist, i32 21
  %tag3.i = getelementptr i32, ptr %taglist, i32 22
  %47 = ptrtoint ptr %tag3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1413545986, ptr %tag3.i, align 4
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 4, ptr %add.ptr.i, align 4
  %u.i = getelementptr i32, ptr %taglist, i32 23
  %49 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %mul, ptr %u.i, align 4
  %start8.i = getelementptr i32, ptr %taglist, i32 24
  %50 = ptrtoint ptr %start8.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %shl, ptr %start8.i, align 4
  %add.ptr74 = getelementptr i32, ptr %taglist, i32 25
  %tag76 = getelementptr i32, ptr %taglist, i32 26
  %51 = ptrtoint ptr %tag76 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1413545993, ptr %tag76, align 4
  %commandline = getelementptr inbounds %struct.param_struct, ptr %params, i32 0, i32 2
  %call77 = tail call i32 @strlen(ptr noundef %commandline) #9
  %add78 = add i32 %call77, 11
  %shr = lshr i32 %add78, 2
  %52 = ptrtoint ptr %add.ptr74 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %shr, ptr %add.ptr74, align 4
  %u81 = getelementptr i32, ptr %taglist, i32 27
  %call85 = tail call ptr @strcpy(ptr noundef %u81, ptr noundef %commandline) #9
  %add.ptr88 = getelementptr i32, ptr %add.ptr74, i32 %shr
  %tag90 = getelementptr inbounds %struct.tag_header, ptr %add.ptr88, i32 0, i32 1
  %53 = ptrtoint ptr %tag90 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %tag90, align 4
  %54 = ptrtoint ptr %add.ptr88 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %add.ptr88, align 4
  %55 = ptrtoint ptr %add.ptr88 to i32
  %56 = ptrtoint ptr %taglist to i32
  %sub = sub i32 8, %56
  %add93 = add i32 %sub, %55
  %57 = call ptr @memmove(ptr %params, ptr %taglist, i32 %add93)
  br label %cleanup

cleanup:                                          ; preds = %do.end3, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold }
attributes #8 = { cold nounwind }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/atags_compat.c", i32 97, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @build_tag_list._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @build_tag_list._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/kernel/atags_compat.c", i32 101, i32 2}
!8 = !{ptr @build_tag_list._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @build_tag_list._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
