; ModuleID = '/llk/IR_all_yes/drivers/soc/tegra/fuse/speedo-tegra124.c_pt.bc'
source_filename = "../drivers/soc/tegra/fuse/speedo-tegra124.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@tegra124_init_speedo_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014Tegra Warning: Speedo value not fused.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra124_init_speedo_data\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/soc/tegra/fuse/speedo-tegra124.c\00", [55 x i8] zeroinitializer }, align 32
@tegra124_init_speedo_data._entry_ptr = internal global ptr @tegra124_init_speedo_data._entry, section ".printk_index", align 4
@gpu_process_speedos = internal unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 1965, i32 -1], [2 x i32] [i32 0, i32 -1]], section ".init.rodata", align 4
@cpu_process_speedos = internal unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 2190, i32 -1], [2 x i32] [i32 0, i32 -1]], section ".init.rodata", align 4
@soc_process_speedos = internal unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 2101, i32 -1], [2 x i32] [i32 0, i32 -1]], section ".init.rodata", align 4
@tegra124_init_speedo_data.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"speedo_tegra124\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Tegra GPU Speedo ID=%d, Speedo Value=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@rev_sku_to_speedo_ids._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013Tegra Unknown SKU %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rev_sku_to_speedo_ids\00", [42 x i8] zeroinitializer }, align 32
@rev_sku_to_speedo_ids._entry_ptr = internal global ptr @rev_sku_to_speedo_ids._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 7, i64 15, i64 31, i64 33, i64 35, i64 39, i64 72, i64 73, i64 74, i64 129, i64 131, i64 135]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 115, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 146, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [44 x i8] c"../drivers/soc/tegra/fuse/speedo-tegra124.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 96, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @rev_sku_to_speedo_ids._entry, ptr @rev_sku_to_speedo_ids._entry_ptr, ptr @tegra124_init_speedo_data._entry, ptr @tegra124_init_speedo_data._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_init_speedo_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rev_sku_to_speedo_ids._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra124_init_speedo_data(ptr nocapture noundef %sku_info) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %threshold = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %threshold) #4
  %0 = ptrtoint ptr %threshold to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %threshold, align 4, !annotation !30
  %call = tail call i32 @tegra_fuse_read_early(i32 noundef 20) #7
  %cpu_speedo_value = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 3
  %1 = ptrtoint ptr %cpu_speedo_value to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %cpu_speedo_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %do.end10, label %if.end31

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 116, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end31:                                         ; preds = %entry
  %call32 = tail call i32 @tegra_fuse_read_early(i32 noundef 48) #7
  %gpu_speedo_value = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 10
  %2 = ptrtoint ptr %gpu_speedo_value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call32, ptr %gpu_speedo_value, align 4
  %call33 = tail call i32 @tegra_fuse_read_early(i32 noundef 52) #7
  call fastcc void @rev_sku_to_speedo_ids(ptr noundef %sku_info, ptr noundef nonnull %threshold) #8
  %call34 = tail call i32 @tegra_fuse_read_early(i32 noundef 24) #7
  %cpu_iddq_value = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 4
  %3 = ptrtoint ptr %cpu_iddq_value to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call34, ptr %cpu_iddq_value, align 4
  %4 = ptrtoint ptr %gpu_speedo_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpu_speedo_value, align 4
  %6 = ptrtoint ptr %threshold to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %threshold, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end31
  %cmp35 = phi i1 [ false, %if.end31 ], [ true, %for.body.for.body_crit_edge ]
  %i.0105 = phi i32 [ 0, %if.end31 ], [ 1, %for.body.for.body_crit_edge ]
  %arrayidx37 = getelementptr [2 x [2 x i32]], ptr @gpu_process_speedos, i32 0, i32 %7, i32 %i.0105
  %8 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp38 = icmp ult i32 %5, %9
  %brmerge = or i1 %cmp38, %cmp35
  br i1 %brmerge, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  %i.0105.mux = select i1 %cmp38, i32 %i.0105, i32 2
  %gpu_process_id = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 8
  %10 = ptrtoint ptr %gpu_process_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %i.0105.mux, ptr %gpu_process_id, align 4
  %11 = ptrtoint ptr %cpu_speedo_value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu_speedo_value, align 4
  %13 = ptrtoint ptr %threshold to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %threshold, align 4
  br label %for.body43

for.body43:                                       ; preds = %for.body43.for.body43_crit_edge, %for.end
  %cmp42 = phi i1 [ false, %for.end ], [ true, %for.body43.for.body43_crit_edge ]
  %i.1106 = phi i32 [ 0, %for.end ], [ 1, %for.body43.for.body43_crit_edge ]
  %arrayidx46 = getelementptr [2 x [2 x i32]], ptr @cpu_process_speedos, i32 0, i32 %14, i32 %i.1106
  %15 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %16)
  %cmp47 = icmp ult i32 %12, %16
  %brmerge108 = or i1 %cmp47, %cmp42
  br i1 %brmerge108, label %for.end52, label %for.body43.for.body43_crit_edge

for.body43.for.body43_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body43

for.end52:                                        ; preds = %for.body43
  %i.1106.mux = select i1 %cmp47, i32 %i.1106, i32 2
  %cpu_process_id = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 1
  %17 = ptrtoint ptr %cpu_process_id to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %i.1106.mux, ptr %cpu_process_id, align 4
  %18 = ptrtoint ptr %threshold to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %threshold, align 4
  br label %for.body55

for.body55:                                       ; preds = %for.body55.for.body55_crit_edge, %for.end52
  %cmp54 = phi i1 [ false, %for.end52 ], [ true, %for.body55.for.body55_crit_edge ]
  %i.2107 = phi i32 [ 0, %for.end52 ], [ 1, %for.body55.for.body55_crit_edge ]
  %arrayidx57 = getelementptr [2 x [2 x i32]], ptr @soc_process_speedos, i32 0, i32 %19, i32 %i.2107
  %20 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call33, i32 %21)
  %cmp58 = icmp ult i32 %call33, %21
  %brmerge109 = or i1 %cmp58, %cmp54
  br i1 %brmerge109, label %for.end63, label %for.body55.for.body55_crit_edge

for.body55.for.body55_crit_edge:                  ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body55

for.end63:                                        ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #6
  %i.2107.mux = select i1 %cmp58, i32 %i.2107, i32 2
  %soc_process_id = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 5
  %22 = ptrtoint ptr %soc_process_id to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %i.2107.mux, ptr %soc_process_id, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra124_init_speedo_data.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra124_init_speedo_data, %if.then74)) #4
          to label %cleanup [label %if.then74], !srcloc !31

if.then74:                                        ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #6
  %gpu_speedo_id = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 9
  %23 = ptrtoint ptr %gpu_speedo_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gpu_speedo_id, align 4
  %25 = ptrtoint ptr %gpu_speedo_value to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gpu_speedo_value, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tegra124_init_speedo_data.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.4, i32 noundef %24, i32 noundef %26) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %for.end63, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %threshold) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @tegra_fuse_read_early(i32 noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rev_sku_to_speedo_ids(ptr nocapture noundef %sku_info, ptr nocapture noundef writeonly %threshold) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sku_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sku_info, align 4
  %cpu_speedo_id = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 2
  %2 = ptrtoint ptr %cpu_speedo_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cpu_speedo_id, align 4
  %soc_speedo_id = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 6
  %3 = ptrtoint ptr %soc_speedo_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %soc_speedo_id, align 4
  %gpu_speedo_id = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 9
  %4 = ptrtoint ptr %gpu_speedo_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %gpu_speedo_id, align 4
  %5 = ptrtoint ptr %threshold to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %threshold, align 4
  %6 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 15, label %entry.sw.epilog_crit_edge32
    i32 35, label %entry.sw.epilog_crit_edge33
    i32 131, label %sw.bb1
    i32 31, label %entry.sw.bb3_crit_edge
    i32 135, label %entry.sw.bb3_crit_edge34
    i32 39, label %entry.sw.bb3_crit_edge35
    i32 129, label %entry.sw.bb7_crit_edge
    i32 33, label %entry.sw.bb7_crit_edge36
    i32 7, label %entry.sw.bb7_crit_edge37
    i32 73, label %entry.sw.bb11_crit_edge
    i32 74, label %entry.sw.bb11_crit_edge38
    i32 72, label %entry.sw.bb11_crit_edge39
  ]

entry.sw.bb11_crit_edge39:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb11

entry.sw.bb11_crit_edge38:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb11

entry.sw.bb11_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb11

entry.sw.bb7_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb7

entry.sw.bb7_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb7

entry.sw.bb3_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

entry.sw.bb3_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

entry.sw.epilog_crit_edge33:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge32:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %cpu_speedo_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %cpu_speedo_id, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge34, %entry.sw.bb3_crit_edge35
  %8 = ptrtoint ptr %cpu_speedo_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %cpu_speedo_id, align 4
  %9 = ptrtoint ptr %soc_speedo_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %soc_speedo_id, align 4
  %10 = ptrtoint ptr %gpu_speedo_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %gpu_speedo_id, align 4
  %11 = ptrtoint ptr %threshold to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %threshold, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge36, %entry.sw.bb7_crit_edge37
  %12 = ptrtoint ptr %cpu_speedo_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %cpu_speedo_id, align 4
  %13 = ptrtoint ptr %soc_speedo_id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %soc_speedo_id, align 4
  %14 = ptrtoint ptr %gpu_speedo_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %gpu_speedo_id, align 4
  %15 = ptrtoint ptr %threshold to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %threshold, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry.sw.bb11_crit_edge, %entry.sw.bb11_crit_edge38, %entry.sw.bb11_crit_edge39
  %16 = ptrtoint ptr %cpu_speedo_id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %cpu_speedo_id, align 4
  %17 = ptrtoint ptr %soc_speedo_id to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %soc_speedo_id, align 4
  %18 = ptrtoint ptr %gpu_speedo_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %gpu_speedo_id, align 4
  %19 = ptrtoint ptr %threshold to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %threshold, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %1) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb11, %sw.bb7, %sw.bb3, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge32, %entry.sw.epilog_crit_edge33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/soc/tegra/fuse/speedo-tegra124.c", i32 115, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @tegra124_init_speedo_data._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @tegra124_init_speedo_data._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/soc/tegra/fuse/speedo-tegra124.c", i32 146, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @tegra124_init_speedo_data.__UNIQUE_ID_ddebug232, !7, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/tegra/fuse/speedo-tegra124.c", i32 96, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rev_sku_to_speedo_ids._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @rev_sku_to_speedo_ids._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @gpu_process_speedos, !16, !"gpu_process_speedos", i1 false, i1 false}
!16 = !{!"../drivers/soc/tegra/fuse/speedo-tegra124.c", i32 40, i32 30}
!17 = !{ptr @cpu_process_speedos, !18, !"cpu_process_speedos", i1 false, i1 false}
!18 = !{!"../drivers/soc/tegra/fuse/speedo-tegra124.c", i32 35, i32 30}
!19 = !{ptr @soc_process_speedos, !20, !"soc_process_speedos", i1 false, i1 false}
!20 = !{!"../drivers/soc/tegra/fuse/speedo-tegra124.c", i32 45, i32 30}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"auto-init"}
!31 = !{i64 2148279059, i64 2148279064, i64 2148279077, i64 2148279121, i64 2148279155, i64 2148279176}
