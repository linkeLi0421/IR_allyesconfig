; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/via/via_aux_edid.c_pt.bc'
source_filename = "../drivers/video/fbdev/via/via_aux_edid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.via_aux_bus = type { ptr, %struct.list_head }
%struct.via_aux_drv = type { %struct.list_head, ptr, i8, ptr, ptr, ptr, ptr }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__const.via_aux_edid_probe.drv = private unnamed_addr constant { %struct.list_head, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr } { %struct.list_head { ptr inttoptr (i32 -1 to ptr), ptr inttoptr (i32 -1 to ptr) }, ptr inttoptr (i32 -1 to ptr), i8 -1, [3 x i8] c"\FF\FF\FF", ptr inttoptr (i32 -1 to ptr), ptr inttoptr (i32 -1 to ptr), ptr inttoptr (i32 -1 to ptr), ptr inttoptr (i32 -1 to ptr) }, align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EDID\00", [27 x i8] zeroinitializer }, align 32
@query_edid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017EDID: %s %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"query_edid\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/video/fbdev/via/via_aux_edid.c\00", [57 x i8] zeroinitializer }, align 32
@query_edid._entry_ptr = internal global ptr @query_edid._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 15, i32 27 }
@___asan_gen_.7 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [42 x i8] c"../drivers/video/fbdev/via/via_aux_edid.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 42, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @query_edid._entry, ptr @query_edid._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @query_edid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @via_aux_edid_probe(ptr noundef %bus) local_unnamed_addr #0 align 64 {
if.else.i:
  %start.addr.i.i = alloca i8, align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %edid.i = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %edid.i) #6
  %0 = call ptr @memset(ptr %edid.i, i32 255, i32 128)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 140) #9
  %tobool1.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not.i, label %if.else.i.query_edid.exit_crit_edge, label %if.end3.i

if.else.i.query_edid.exit_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %query_edid.exit

if.end3.i:                                        ; preds = %if.else.i
  %revision.i = getelementptr inbounds %struct.fb_monspecs, ptr %call7.i.i, i32 0, i32 24
  %2 = ptrtoint ptr %revision.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %revision.i, align 1
  %version.i = getelementptr inbounds %struct.fb_monspecs, ptr %call7.i.i, i32 0, i32 23
  %3 = ptrtoint ptr %version.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %version.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %start.addr.i.i) #6
  %4 = ptrtoint ptr %start.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %start.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %7 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 80, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i.i, align 2
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %5, align 4
  %buf3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %start.addr.i.i, ptr %buf3.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %11 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 80, ptr %arrayinit.element.i.i, align 4
  %flags7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %12 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %flags7.i.i, align 2
  %len8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %13 = ptrtoint ptr %len8.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 128, ptr %len8.i.i, align 4
  %buf10.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %14 = ptrtoint ptr %buf10.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %edid.i, ptr %buf10.i.i, align 4
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %start.addr.i.i) #6
  br i1 %cmp.i.i, label %if.then5.i, label %if.end3.i.if.then14.i_crit_edge

if.end3.i.if.then14.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @fb_edid_to_monspecs(ptr noundef nonnull %edid.i, ptr noundef nonnull %call7.i.i) #6
  %17 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool8.not.i = icmp eq i8 %18, 0
  br i1 %tobool8.not.i, label %lor.rhs.i, label %if.then5.i.do.end.i_crit_edge

if.then5.i.do.end.i_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %if.then5.i
  %19 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %revision.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool11.not.i = icmp eq i8 %20, 0
  br i1 %tobool11.not.i, label %lor.rhs.i.if.then14.i_crit_edge, label %lor.rhs.i.do.end.i_crit_edge

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i.if.then14.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14.i

if.then14.i:                                      ; preds = %lor.rhs.i.if.then14.i_crit_edge, %if.end3.i.if.then14.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %query_edid.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %if.then5.i.do.end.i_crit_edge
  %manufacturer.i = getelementptr inbounds %struct.fb_monspecs, ptr %call7.i.i, i32 0, i32 2
  %monitor.i = getelementptr inbounds %struct.fb_monspecs, ptr %call7.i.i, i32 0, i32 3
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %manufacturer.i, ptr noundef %monitor.i) #10
  br label %query_edid.exit

query_edid.exit:                                  ; preds = %do.end.i, %if.then14.i, %if.else.i.query_edid.exit_crit_edge
  %drv.sroa.10.0 = phi ptr [ null, %if.else.i.query_edid.exit_crit_edge ], [ %call7.i.i, %do.end.i ], [ null, %if.then14.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %edid.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i2 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 32) #9
  %tobool.not.i3 = icmp eq ptr %call7.i.i2, null
  br i1 %tobool.not.i3, label %query_edid.exit.via_aux_add.exit_crit_edge, label %if.end.i

query_edid.exit.via_aux_add.exit_crit_edge:       ; preds = %query_edid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %via_aux_add.exit

if.end.i:                                         ; preds = %query_edid.exit
  %22 = ptrtoint ptr %call7.i.i2 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %call7.i.i2, align 8
  %drv.sroa.5.0.call7.i.i2.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i2, i32 8
  %23 = ptrtoint ptr %drv.sroa.5.0.call7.i.i2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %bus, ptr %drv.sroa.5.0.call7.i.i2.sroa_idx, align 8
  %drv.sroa.7.0.call7.i.i2.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i2, i32 12
  %24 = ptrtoint ptr %drv.sroa.7.0.call7.i.i2.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 80, ptr %drv.sroa.7.0.call7.i.i2.sroa_idx, align 4
  %drv.sroa.9.0.call7.i.i2.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i2, i32 13
  %25 = call ptr @memcpy(ptr %drv.sroa.9.0.call7.i.i2.sroa_idx, ptr getelementptr inbounds ({ %struct.list_head, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr }, ptr @__const.via_aux_edid_probe.drv, i32 0, i32 3, i32 0), i32 3)
  %drv.sroa.97.0.call7.i.i2.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i2, i32 16
  %26 = ptrtoint ptr %drv.sroa.97.0.call7.i.i2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str, ptr %drv.sroa.97.0.call7.i.i2.sroa_idx, align 8
  %drv.sroa.10.0.call7.i.i2.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i2, i32 20
  %27 = ptrtoint ptr %drv.sroa.10.0.call7.i.i2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %drv.sroa.10.0, ptr %drv.sroa.10.0.call7.i.i2.sroa_idx, align 4
  %drv.sroa.13.0.call7.i.i2.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i2, i32 24
  %28 = ptrtoint ptr %drv.sroa.13.0.call7.i.i2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @cleanup, ptr %drv.sroa.13.0.call7.i.i2.sroa_idx, align 8
  %drv.sroa.14.0.call7.i.i2.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i2, i32 28
  %29 = ptrtoint ptr %drv.sroa.14.0.call7.i.i2.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @get_preferred_mode, ptr %drv.sroa.14.0.call7.i.i2.sroa_idx, align 4
  %drivers.i = getelementptr inbounds %struct.via_aux_bus, ptr %bus, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.via_aux_bus, ptr %bus, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i2, ptr noundef %31, ptr noundef %drivers.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.via_aux_add.exit_crit_edge

if.end.i.via_aux_add.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %via_aux_add.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i2, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %call7.i.i2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %drivers.i, ptr %call7.i.i2, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i2, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %call7.i.i2, ptr %31, align 4
  br label %via_aux_add.exit

via_aux_add.exit:                                 ; preds = %if.end.i.i.i, %if.end.i.via_aux_add.exit_crit_edge, %query_edid.exit.via_aux_add.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cleanup(ptr nocapture noundef readonly %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.via_aux_drv, ptr %drv, i32 0, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %modedb = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %modedb, align 4
  tail call void @fb_destroy_modedb(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal ptr @get_preferred_mode(ptr nocapture noundef readonly %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.via_aux_drv, ptr %drv, i32 0, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %modedb = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %modedb, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %misc = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %misc to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %misc, align 2
  %6 = and i16 %5, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool3.not = icmp eq i16 %6, 0
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false2
  %modedb_len = getelementptr inbounds %struct.fb_monspecs, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %modedb_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp30.not = icmp eq i32 %8, 0
  br i1 %cmp30.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.031 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %flag = getelementptr %struct.fb_videomode, ptr %3, i32 %i.031, i32 13
  %9 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flag, align 4
  %11 = and i32 %10, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %11)
  %.not = icmp eq i32 %11, 17
  br i1 %.not, label %cleanup.loopexit.split.loop.exit, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.loopexit.split.loop.exit:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.le = getelementptr %struct.fb_videomode, ptr %3, i32 %i.031
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %lor.lhs.false2.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ %arrayidx.le, %cleanup.loopexit.split.loop.exit ], [ null, %for.cond.preheader.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_destroy_modedb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_edid_to_monspecs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/via/via_aux_edid.c", i32 15, i32 27}
!2 = distinct !{null, !3, !"name", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/via/via_aux_edid.c", i32 15, i32 20}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/via/via_aux_edid.c", i32 42, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @query_edid._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @query_edid._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
