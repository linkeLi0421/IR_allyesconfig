; ModuleID = '/llk/IR_all_yes/drivers/clk/at91/clk-usb.c_pt.bc'
source_filename = "../drivers/clk/at91/clk-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.at91sam9x5_clk_usb = type { %struct.clk_hw, ptr, %struct.at91_clk_pms, i32, i8 }
%struct.at91_clk_pms = type { i32, i32, i32, i32 }
%struct.at91rm9200_clk_usb = type { %struct.clk_hw, ptr, [4 x i32] }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@at91sam9n12_usb_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @at91sam9n12_clk_usb_enable, ptr @at91sam9n12_clk_usb_disable, ptr @at91sam9n12_clk_usb_is_enabled, ptr null, ptr null, ptr null, ptr @at91sam9x5_clk_usb_recalc_rate, ptr null, ptr @at91sam9x5_clk_usb_determine_rate, ptr null, ptr null, ptr @at91sam9x5_clk_usb_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@at91rm9200_usb_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at91rm9200_clk_usb_recalc_rate, ptr @at91rm9200_clk_usb_round_rate, ptr null, ptr null, ptr null, ptr @at91rm9200_clk_usb_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@at91sam9x5_usb_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at91sam9x5_usb_save_context, ptr @at91sam9x5_usb_restore_context, ptr @at91sam9x5_clk_usb_recalc_rate, ptr null, ptr @at91sam9x5_clk_usb_determine_rate, ptr @at91sam9x5_clk_usb_set_parent, ptr @at91sam9x5_clk_usb_get_parent, ptr @at91sam9x5_clk_usb_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"at91sam9n12_usb_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 213, i32 29 }
@___asan_gen_.4 = private unnamed_addr constant [19 x i8] c"at91rm9200_usb_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 385, i32 29 }
@___asan_gen_.7 = private unnamed_addr constant [19 x i8] c"at91sam9x5_usb_ops\00", align 1
@___asan_gen_.8 = private constant [30 x i8] c"../drivers/clk/at91/clk-usb.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 176, i32 29 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @at91sam9n12_usb_ops, ptr @at91rm9200_usb_ops, ptr @at91sam9x5_usb_ops], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9n12_usb_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91rm9200_usb_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9x5_usb_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @at91sam9x5_clk_register_usb(ptr noundef %regmap, ptr noundef %name, ptr noundef %parent_names, i8 noundef zeroext %num_parents) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @_at91sam9x5_clk_register_usb(ptr noundef %regmap, ptr noundef %name, ptr noundef %parent_names, i8 noundef zeroext %num_parents, i32 noundef 1) #8
  ret ptr %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @_at91sam9x5_clk_register_usb(ptr noundef %regmap, ptr noundef %name, ptr noundef %parent_names, i8 noundef zeroext %num_parents, i32 noundef %usbs_mask) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #5
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 40) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @at91sam9x5_usb_ops, ptr %ops, align 4
  %parent_names3 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %5 = ptrtoint ptr %parent_names3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %parent_names, ptr %parent_names3, align 4
  %num_parents4 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %6 = ptrtoint ptr %num_parents4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %num_parents, ptr %num_parents4, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 7, ptr %flags, align 4
  %init6 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %init6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %init, ptr %init6, align 8
  %regmap7 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %regmap7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %regmap, ptr %regmap7, align 4
  %usbs_mask8 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %usbs_mask8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %usbs_mask, ptr %usbs_mask8, align 8
  %num_parents9 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %num_parents9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %num_parents, ptr %num_parents9, align 4
  %call12 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end.cleanup_crit_edge, label %if.then14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %12 = inttoptr i32 %call12 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %12, %if.then14 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #5
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sam9x60_clk_register_usb(ptr noundef %regmap, ptr noundef %name, ptr noundef %parent_names, i8 noundef zeroext %num_parents) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @_at91sam9x5_clk_register_usb(ptr noundef %regmap, ptr noundef %name, ptr noundef %parent_names, i8 noundef zeroext %num_parents, i32 noundef 3) #8
  ret ptr %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @at91sam9n12_clk_register_usb(ptr noundef %regmap, ptr noundef %name, ptr noundef %parent_name) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #5
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 40) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @at91sam9n12_usb_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %6 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %7 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %num_parents, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5, ptr %flags, align 4
  %init4 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %init4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %init, ptr %init4, align 8
  %regmap5 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %regmap5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %regmap, ptr %regmap5, align 4
  %call8 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.then10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %11 = inttoptr i32 %call8 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %11, %if.then10 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #5
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @at91rm9200_clk_register_usb(ptr noundef %regmap, ptr noundef %name, ptr noundef %parent_name, ptr nocapture noundef readonly %divisors) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #5
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 32) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @at91rm9200_usb_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %6 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %7 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %num_parents, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %flags, align 4
  %init4 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %init4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %init, ptr %init4, align 8
  %regmap5 = getelementptr inbounds %struct.at91rm9200_clk_usb, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %regmap5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %regmap, ptr %regmap5, align 4
  %divisors6 = getelementptr inbounds %struct.at91rm9200_clk_usb, ptr %call7.i.i, i32 0, i32 2
  %11 = call ptr @memcpy(ptr %divisors6, ptr %divisors, i32 16)
  %call9 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.then11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %12 = inttoptr i32 %call9 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %12, %if.then11 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #5
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91sam9x5_usb_save_context(ptr noundef %hw) #3 align 64 {
entry:
  %usbr.i14 = alloca i32, align 4
  %usbr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %usbr.i) #5
  %0 = ptrtoint ptr %usbr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %usbr.i, align 4, !annotation !15
  %regmap.i = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 56, ptr noundef nonnull %usbr.i) #5
  %3 = ptrtoint ptr %usbr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usbr.i, align 4
  %usbs_mask.i = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %usbs_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %usbs_mask.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %usbr.i) #5
  %and.i = and i32 %4, 255
  %conv = and i32 %and.i, %6
  %pms = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %hw, i32 0, i32 2
  %parent = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %hw, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %parent, align 4
  %call2 = call i32 @clk_hw_get_rate(ptr noundef %call) #5
  %parent_rate = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %hw, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call2, ptr %parent_rate, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %usbr.i14) #5
  %9 = ptrtoint ptr %usbr.i14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %usbr.i14, align 4, !annotation !15
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i16 = call i32 @regmap_read(ptr noundef %11, i32 noundef 56, ptr noundef nonnull %usbr.i14) #5
  %12 = ptrtoint ptr %usbr.i14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usbr.i14, align 4
  %and.i17 = lshr i32 %13, 8
  %conv.i18 = and i32 %and.i17, 15
  %add.i = add nuw nsw i32 %conv.i18, 1
  %div6.i = lshr i32 %add.i, 1
  %add3.i = add i32 %div6.i, %call2
  %div4.i = udiv i32 %add3.i, %add.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %usbr.i14) #5
  %14 = ptrtoint ptr %pms to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div4.i, ptr %pms, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91sam9x5_usb_restore_context(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %hw, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent, align 4
  %conv = trunc i32 %1 to i8
  %num_parents.i = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_parents.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %conv)
  %cmp.not.i = icmp ugt i8 %3, %conv
  br i1 %cmp.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv.i = and i32 %1, 255
  %regmap.i = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %usbs_mask.i = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %usbs_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usbs_mask.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 56, i32 noundef %7, i32 noundef %conv.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %pms = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %hw, i32 0, i32 2
  %8 = ptrtoint ptr %pms to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i9:                                        ; preds = %if.end
  %parent_rate = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %hw, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %parent_rate, align 4
  %div212.i = lshr i32 %9, 1
  %add.i = add i32 %11, %div212.i
  %div3.i = udiv i32 %add.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %div3.i)
  %cmp.i = icmp ugt i32 %div3.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %9)
  %tobool4.not.i = icmp ult i32 %add.i, %9
  %or.cond.i = or i1 %tobool4.not.i, %cmp.i
  br i1 %or.cond.i, label %if.end.i9.cleanup_crit_edge, label %if.end6.i

if.end.i9.cleanup_crit_edge:                      ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %sub.i = shl nuw nsw i32 %div3.i, 8
  %shl.i = add nsw i32 %sub.i, -256
  %call.i.i11 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 56, i32 noundef 3840, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.end.i9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91sam9x5_clk_usb_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #3 align 64 {
entry:
  %usbr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %usbr) #5
  %0 = ptrtoint ptr %usbr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %usbr, align 4, !annotation !15
  %regmap = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 56, ptr noundef nonnull %usbr) #5
  %3 = ptrtoint ptr %usbr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usbr, align 4
  %and = lshr i32 %4, 8
  %conv = and i32 %and, 15
  %add = add nuw nsw i32 %conv, 1
  %div6 = lshr i32 %add, 1
  %add3 = add i32 %div6, %parent_rate
  %div4 = udiv i32 %add3, %add
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %usbr) #5
  ret i32 %div4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91sam9x5_clk_usb_determine_rate(ptr noundef %hw, ptr nocapture noundef %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call124 = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp125.not = icmp eq i32 %call124, 0
  br i1 %cmp125.not, label %entry.cleanup41_crit_edge, label %for.body.lr.ph

entry.cleanup41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41

for.body.lr.ph:                                   ; preds = %entry
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc34.for.body_crit_edge, %for.body.lr.ph
  %best_rate.0128 = phi i32 [ -22, %for.body.lr.ph ], [ %best_rate.597, %for.inc34.for.body_crit_edge ]
  %i.0127 = phi i32 [ 0, %for.body.lr.ph ], [ %inc35, %for.inc34.for.body_crit_edge ]
  %best_diff.0126 = phi i32 [ -1, %for.body.lr.ph ], [ %best_diff.596, %for.inc34.for.body_crit_edge ]
  %call1 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %i.0127) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %for.body.for.inc34_crit_edge, label %for.body.for.body4_crit_edge

for.body.for.body4_crit_edge:                     ; preds = %for.body
  br label %for.body4

for.body.for.inc34_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %for.body.for.body4_crit_edge
  %best_rate.1123 = phi i32 [ %best_rate.390, %for.inc.for.body4_crit_edge ], [ %best_rate.0128, %for.body.for.body4_crit_edge ]
  %div.0121 = phi i32 [ %inc, %for.inc.for.body4_crit_edge ], [ 1, %for.body.for.body4_crit_edge ]
  %best_diff.1120 = phi i32 [ %best_diff.389, %for.inc.for.body4_crit_edge ], [ %best_diff.0126, %for.body.for.body4_crit_edge ]
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  %mul = mul i32 %1, %div.0121
  %call5 = tail call i32 @clk_hw_round_rate(ptr noundef nonnull %call1, i32 noundef %mul) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %for.body4.for.inc_crit_edge, label %if.end8

for.body4.for.inc_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end8:                                          ; preds = %for.body4
  %div9112 = lshr i32 %div.0121, 1
  %add = add i32 %call5, %div9112
  %div10 = udiv i32 %add, %div.0121
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10, i32 %3)
  %cmp12 = icmp ult i32 %div10, %3
  %sub = sub i32 %3, %div10
  %sub16 = sub i32 %div10, %3
  %tmp_diff.0 = select i1 %cmp12, i32 %sub, i32 %sub16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_diff.1120)
  %cmp18 = icmp slt i32 %best_diff.1120, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.1120, i32 %tmp_diff.0)
  %cmp19 = icmp sgt i32 %best_diff.1120, %tmp_diff.0
  %or.cond = select i1 %cmp18, i1 true, i1 %cmp19
  br i1 %or.cond, label %if.then20, label %if.end8.if.end21_crit_edge

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then20:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call5, ptr %best_parent_rate, align 4
  %5 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %best_parent_hw, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end8.if.end21_crit_edge
  %best_diff.2 = phi i32 [ %tmp_diff.0, %if.then20 ], [ %best_diff.1120, %if.end8.if.end21_crit_edge ]
  %best_rate.2 = phi i32 [ %div10, %if.then20 ], [ %best_rate.1123, %if.end8.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_diff.2)
  %tobool22.not = icmp eq i32 %best_diff.2, 0
  br i1 %tobool22.not, label %if.end21.for.end36_crit_edge, label %cleanup

if.end21.for.end36_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end36

cleanup:                                          ; preds = %if.end21
  br i1 %cmp12, label %cleanup.for.inc34_crit_edge, label %cleanup.for.inc_crit_edge

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

cleanup.for.inc34_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %for.body4.for.inc_crit_edge
  %best_rate.390 = phi i32 [ %best_rate.2, %cleanup.for.inc_crit_edge ], [ %best_rate.1123, %for.body4.for.inc_crit_edge ]
  %best_diff.389 = phi i32 [ %best_diff.2, %cleanup.for.inc_crit_edge ], [ %best_diff.1120, %for.body4.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %div.0121, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %cleanup31, label %for.inc.for.body4_crit_edge

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body4

cleanup31:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_diff.389)
  %tobool28.not = icmp eq i32 %best_diff.389, 0
  br i1 %tobool28.not, label %cleanup31.for.end36_crit_edge, label %cleanup31.for.inc34_crit_edge

cleanup31.for.inc34_crit_edge:                    ; preds = %cleanup31
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34

cleanup31.for.end36_crit_edge:                    ; preds = %cleanup31
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end36

for.inc34:                                        ; preds = %cleanup31.for.inc34_crit_edge, %cleanup.for.inc34_crit_edge, %for.body.for.inc34_crit_edge
  %best_rate.597 = phi i32 [ %best_rate.390, %cleanup31.for.inc34_crit_edge ], [ %best_rate.0128, %for.body.for.inc34_crit_edge ], [ %best_rate.2, %cleanup.for.inc34_crit_edge ]
  %best_diff.596 = phi i32 [ %best_diff.389, %cleanup31.for.inc34_crit_edge ], [ %best_diff.0126, %for.body.for.inc34_crit_edge ], [ %best_diff.2, %cleanup.for.inc34_crit_edge ]
  %inc35 = add nuw i32 %i.0127, 1
  %call = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #5
  %cmp = icmp ult i32 %inc35, %call
  br i1 %cmp, label %for.inc34.for.body_crit_edge, label %for.inc34.for.end36_crit_edge

for.inc34.for.end36_crit_edge:                    ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end36

for.inc34.for.body_crit_edge:                     ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end36:                                        ; preds = %for.inc34.for.end36_crit_edge, %cleanup31.for.end36_crit_edge, %if.end21.for.end36_crit_edge
  %best_rate.6 = phi i32 [ %best_rate.2, %if.end21.for.end36_crit_edge ], [ %best_rate.597, %for.inc34.for.end36_crit_edge ], [ %best_rate.390, %cleanup31.for.end36_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_rate.6)
  %cmp37 = icmp slt i32 %best_rate.6, 0
  br i1 %cmp37, label %for.end36.cleanup41_crit_edge, label %if.end39

for.end36.cleanup41_crit_edge:                    ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41

if.end39:                                         ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %best_rate.6, ptr %req, align 4
  br label %cleanup41

cleanup41:                                        ; preds = %if.end39, %for.end36.cleanup41_crit_edge, %entry.cleanup41_crit_edge
  %retval.0 = phi i32 [ 0, %if.end39 ], [ %best_rate.6, %for.end36.cleanup41_crit_edge ], [ -22, %entry.cleanup41_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91sam9x5_clk_usb_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_parents = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %num_parents to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_parents, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %index)
  %cmp.not = icmp ugt i8 %1, %index
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %index to i32
  %regmap = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %usbs_mask = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %usbs_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usbs_mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 56, i32 noundef %5, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @at91sam9x5_clk_usb_get_parent(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  %usbr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %usbr) #5
  %0 = ptrtoint ptr %usbr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %usbr, align 4, !annotation !15
  %regmap = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 56, ptr noundef nonnull %usbr) #5
  %3 = ptrtoint ptr %usbr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usbr, align 4
  %usbs_mask = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %usbs_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %usbs_mask, align 4
  %and = and i32 %6, %4
  %conv = trunc i32 %and to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %usbr) #5
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91sam9x5_clk_usb_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %div212 = lshr i32 %rate, 1
  %add = add i32 %div212, %parent_rate
  %div3 = udiv i32 %add, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %div3)
  %cmp = icmp ugt i32 %div3, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %rate)
  %tobool4.not = icmp ult i32 %add, %rate
  %or.cond = or i1 %tobool4.not, %cmp
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %regmap = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %sub = shl nuw nsw i32 %div3, 8
  %shl = add nsw i32 %sub, -256
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 56, i32 noundef 3840, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91sam9n12_clk_usb_enable(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 56, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91sam9n12_clk_usb_disable(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 56, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91sam9n12_clk_usb_is_enabled(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  %usbr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %usbr) #5
  %0 = ptrtoint ptr %usbr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %usbr, align 4, !annotation !15
  %regmap = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 56, ptr noundef nonnull %usbr) #5
  %3 = ptrtoint ptr %usbr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usbr, align 4
  %and = and i32 %4, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %usbr) #5
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91rm9200_clk_usb_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #3 align 64 {
entry:
  %pllbr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pllbr) #5
  %0 = ptrtoint ptr %pllbr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pllbr, align 4, !annotation !15
  %regmap = getelementptr inbounds %struct.at91rm9200_clk_usb, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 44, ptr noundef nonnull %pllbr) #5
  %3 = ptrtoint ptr %pllbr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pllbr, align 4
  %and = lshr i32 %4, 28
  %conv = and i32 %and, 3
  %arrayidx = getelementptr %struct.at91rm9200_clk_usb, ptr %hw, i32 0, i32 2, i32 %conv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %div = udiv i32 %parent_rate, %6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pllbr) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91rm9200_clk_usb_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef writeonly %parent_rate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #5
  %arrayidx = getelementptr %struct.at91rm9200_clk_usb, ptr %hw, i32 0, i32 2, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %cleanup

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

cleanup:                                          ; preds = %entry
  %mul = mul i32 %1, %rate
  %call3 = tail call i32 @clk_hw_round_rate(ptr noundef %call, i32 noundef %mul) #5
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %div45 = lshr i32 %3, 1
  %add = add i32 %div45, %call3
  %div7 = udiv i32 %add, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %div7, i32 %rate)
  %cmp8 = icmp ult i32 %div7, %rate
  %sub = sub i32 %rate, %div7
  %sub10 = sub i32 %div7, %rate
  %tmpdiff.0 = select i1 %cmp8, i32 %sub, i32 %sub10
  %4 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call3, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmpdiff.0)
  %tobool16.not = icmp eq i32 %tmpdiff.0, 0
  br i1 %tobool16.not, label %cleanup.for.end_crit_edge, label %cleanup.for.inc_crit_edge

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %entry.for.inc_crit_edge
  %bestrate.252 = phi i32 [ %div7, %cleanup.for.inc_crit_edge ], [ 0, %entry.for.inc_crit_edge ]
  %bestdiff.251 = phi i32 [ %tmpdiff.0, %cleanup.for.inc_crit_edge ], [ -1, %entry.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.at91rm9200_clk_usb, ptr %hw, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.1 = icmp eq i32 %6, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %mul.1 = mul i32 %6, %rate
  %call3.1 = tail call i32 @clk_hw_round_rate(ptr noundef %call, i32 noundef %mul.1) #5
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.1, align 4
  %div45.1 = lshr i32 %8, 1
  %add.1 = add i32 %div45.1, %call3.1
  %div7.1 = udiv i32 %add.1, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %div7.1, i32 %rate)
  %cmp8.1 = icmp ult i32 %div7.1, %rate
  %sub.1 = sub i32 %rate, %div7.1
  %sub10.1 = sub i32 %div7.1, %rate
  %tmpdiff.0.1 = select i1 %cmp8.1, i32 %sub.1, i32 %sub10.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bestdiff.251)
  %cmp12.1 = icmp slt i32 %bestdiff.251, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %bestdiff.251, i32 %tmpdiff.0.1)
  %cmp13.1 = icmp sgt i32 %bestdiff.251, %tmpdiff.0.1
  %or.cond.1 = select i1 %cmp12.1, i1 true, i1 %cmp13.1
  br i1 %or.cond.1, label %cleanup.1, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

cleanup.1:                                        ; preds = %if.end.1
  %9 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call3.1, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmpdiff.0.1)
  %tobool16.not.1 = icmp eq i32 %tmpdiff.0.1, 0
  br i1 %tobool16.not.1, label %cleanup.1.for.end_crit_edge, label %cleanup.1.for.inc.1_crit_edge

cleanup.1.for.inc.1_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

cleanup.1.for.end_crit_edge:                      ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.1:                                        ; preds = %cleanup.1.for.inc.1_crit_edge, %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %bestrate.252.1 = phi i32 [ %div7.1, %cleanup.1.for.inc.1_crit_edge ], [ %bestrate.252, %for.inc.for.inc.1_crit_edge ], [ %bestrate.252, %if.end.1.for.inc.1_crit_edge ]
  %bestdiff.251.1 = phi i32 [ %tmpdiff.0.1, %cleanup.1.for.inc.1_crit_edge ], [ %bestdiff.251, %for.inc.for.inc.1_crit_edge ], [ %bestdiff.251, %if.end.1.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.at91rm9200_clk_usb, ptr %hw, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.2 = icmp eq i32 %11, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %mul.2 = mul i32 %11, %rate
  %call3.2 = tail call i32 @clk_hw_round_rate(ptr noundef %call, i32 noundef %mul.2) #5
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.2, align 4
  %div45.2 = lshr i32 %13, 1
  %add.2 = add i32 %div45.2, %call3.2
  %div7.2 = udiv i32 %add.2, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %div7.2, i32 %rate)
  %cmp8.2 = icmp ult i32 %div7.2, %rate
  %sub.2 = sub i32 %rate, %div7.2
  %sub10.2 = sub i32 %div7.2, %rate
  %tmpdiff.0.2 = select i1 %cmp8.2, i32 %sub.2, i32 %sub10.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bestdiff.251.1)
  %cmp12.2 = icmp slt i32 %bestdiff.251.1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %bestdiff.251.1, i32 %tmpdiff.0.2)
  %cmp13.2 = icmp sgt i32 %bestdiff.251.1, %tmpdiff.0.2
  %or.cond.2 = select i1 %cmp12.2, i1 true, i1 %cmp13.2
  br i1 %or.cond.2, label %cleanup.2, label %if.end.2.for.inc.2_crit_edge

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

cleanup.2:                                        ; preds = %if.end.2
  %14 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call3.2, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmpdiff.0.2)
  %tobool16.not.2 = icmp eq i32 %tmpdiff.0.2, 0
  br i1 %tobool16.not.2, label %cleanup.2.for.end_crit_edge, label %cleanup.2.for.inc.2_crit_edge

cleanup.2.for.inc.2_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

cleanup.2.for.end_crit_edge:                      ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.2:                                        ; preds = %cleanup.2.for.inc.2_crit_edge, %if.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %bestrate.252.2 = phi i32 [ %div7.2, %cleanup.2.for.inc.2_crit_edge ], [ %bestrate.252.1, %for.inc.1.for.inc.2_crit_edge ], [ %bestrate.252.1, %if.end.2.for.inc.2_crit_edge ]
  %bestdiff.251.2 = phi i32 [ %tmpdiff.0.2, %cleanup.2.for.inc.2_crit_edge ], [ %bestdiff.251.1, %for.inc.1.for.inc.2_crit_edge ], [ %bestdiff.251.1, %if.end.2.for.inc.2_crit_edge ]
  %arrayidx.3 = getelementptr %struct.at91rm9200_clk_usb, ptr %hw, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.3 = icmp eq i32 %16, 0
  br i1 %tobool.not.3, label %for.inc.2.for.end_crit_edge, label %if.end.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.3:                                         ; preds = %for.inc.2
  %mul.3 = mul i32 %16, %rate
  %call3.3 = tail call i32 @clk_hw_round_rate(ptr noundef %call, i32 noundef %mul.3) #5
  %17 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.3, align 4
  %div45.3 = lshr i32 %18, 1
  %add.3 = add i32 %div45.3, %call3.3
  %div7.3 = udiv i32 %add.3, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %div7.3, i32 %rate)
  %cmp8.3 = icmp ult i32 %div7.3, %rate
  %sub.3 = sub i32 %rate, %div7.3
  %sub10.3 = sub i32 %div7.3, %rate
  %tmpdiff.0.3 = select i1 %cmp8.3, i32 %sub.3, i32 %sub10.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bestdiff.251.2)
  %cmp12.3 = icmp slt i32 %bestdiff.251.2, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %bestdiff.251.2, i32 %tmpdiff.0.3)
  %cmp13.3 = icmp sgt i32 %bestdiff.251.2, %tmpdiff.0.3
  %or.cond.3 = select i1 %cmp12.3, i1 true, i1 %cmp13.3
  br i1 %or.cond.3, label %cleanup.3, label %if.end.3.for.end_crit_edge

if.end.3.for.end_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cleanup.3:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call3.3, ptr %parent_rate, align 4
  br label %for.end

for.end:                                          ; preds = %cleanup.3, %if.end.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %cleanup.2.for.end_crit_edge, %cleanup.1.for.end_crit_edge, %cleanup.for.end_crit_edge
  %bestrate.3 = phi i32 [ %div7, %cleanup.for.end_crit_edge ], [ %div7.1, %cleanup.1.for.end_crit_edge ], [ %div7.2, %cleanup.2.for.end_crit_edge ], [ %div7.3, %cleanup.3 ], [ %bestrate.252.2, %for.inc.2.for.end_crit_edge ], [ %bestrate.252.2, %if.end.3.for.end_crit_edge ]
  ret i32 %bestrate.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91rm9200_clk_usb_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %div215 = lshr i32 %rate, 1
  %add = add i32 %div215, %parent_rate
  %div3 = udiv i32 %add, %rate
  %arrayidx = getelementptr %struct.at91rm9200_clk_usb, ptr %hw, i32 0, i32 2, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %div3)
  %cmp4 = icmp eq i32 %1, %div3
  br i1 %cmp4, label %if.end.if.then5_crit_edge, label %for.inc

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

if.then5:                                         ; preds = %for.inc.2.if.then5_crit_edge, %for.inc.1.if.then5_crit_edge, %for.inc.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %i.017.lcssa = phi i32 [ 0, %if.end.if.then5_crit_edge ], [ 268435456, %for.inc.if.then5_crit_edge ], [ 536870912, %for.inc.1.if.then5_crit_edge ], [ 805306368, %for.inc.2.if.then5_crit_edge ]
  %regmap = getelementptr inbounds %struct.at91rm9200_clk_usb, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 44, i32 noundef 805306368, i32 noundef %i.017.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

for.inc:                                          ; preds = %if.end
  %arrayidx.1 = getelementptr %struct.at91rm9200_clk_usb, ptr %hw, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %div3)
  %cmp4.1 = icmp eq i32 %5, %div3
  br i1 %cmp4.1, label %for.inc.if.then5_crit_edge, label %for.inc.1

for.inc.if.then5_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.at91rm9200_clk_usb, ptr %hw, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %div3)
  %cmp4.2 = icmp eq i32 %7, %div3
  br i1 %cmp4.2, label %for.inc.1.if.then5_crit_edge, label %for.inc.2

for.inc.1.if.then5_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.at91rm9200_clk_usb, ptr %hw, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %div3)
  %cmp4.3 = icmp eq i32 %9, %div3
  br i1 %cmp4.3, label %for.inc.2.if.then5_crit_edge, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.2.if.then5_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

cleanup:                                          ; preds = %for.inc.2.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then5 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @at91sam9x5_usb_ops, !1, !"at91sam9x5_usb_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/at91/clk-usb.c", i32 176, i32 29}
!2 = !{ptr @at91sam9n12_usb_ops, !3, !"at91sam9n12_usb_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/at91/clk-usb.c", i32 213, i32 29}
!4 = !{ptr @at91rm9200_usb_ops, !5, !"at91rm9200_usb_ops", i1 false, i1 false}
!5 = !{!"../drivers/clk/at91/clk-usb.c", i32 385, i32 29}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
