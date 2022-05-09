; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dc_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_helper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dc_reg_value_masks = type { i32, i32 }
%struct.__va_list = type { ptr }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.dc_dmub_srv = type { ptr, %struct.dc_reg_helper_state, ptr, ptr }
%struct.dc_reg_helper_state = type <{ i8, [3 x i8], i32, i8, %union.dmub_rb_cmd, [3 x i8], i32 }>
%union.dmub_rb_cmd = type { %struct.dmub_rb_cmd_common }
%struct.dmub_rb_cmd_common = type { %struct.dmub_cmd_header, [60 x i8] }
%struct.dmub_cmd_header = type { i32 }
%struct.dmub_cmd_read_modify_write_sequence = type { i32, i32, i32 }
%struct.dc_debug_options = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i8, i8, i8, i8, %struct.dc_bw_validation_profile, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, %union.mem_low_power_enable_options, %union.root_clock_optimization_options, i8, i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.dc_bw_validation_profile = type { i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.mem_low_power_enable_options = type { i32 }
%union.root_clock_optimization_options = type { %struct.anon.0 }
%struct.anon.0 = type { i32 }

@__func__.generic_reg_update_ex = private unnamed_addr constant [22 x i8] c"generic_reg_update_ex\00", align 1
@__func__.generic_reg_set_ex = private unnamed_addr constant [19 x i8] c"generic_reg_set_ex\00", align 1
@__func__.generic_reg_get = private unnamed_addr constant [16 x i8] c"generic_reg_get\00", align 1
@__func__.generic_reg_get2 = private unnamed_addr constant [17 x i8] c"generic_reg_get2\00", align 1
@__func__.generic_reg_get3 = private unnamed_addr constant [17 x i8] c"generic_reg_get3\00", align 1
@__func__.generic_reg_get4 = private unnamed_addr constant [17 x i8] c"generic_reg_get4\00", align 1
@__func__.generic_reg_get5 = private unnamed_addr constant [17 x i8] c"generic_reg_get5\00", align 1
@__func__.generic_reg_get6 = private unnamed_addr constant [17 x i8] c"generic_reg_get6\00", align 1
@__func__.generic_reg_get7 = private unnamed_addr constant [17 x i8] c"generic_reg_get7\00", align 1
@__func__.generic_reg_get8 = private unnamed_addr constant [17 x i8] c"generic_reg_get8\00", align 1
@generic_reg_wait.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/dc_helper.c\00", [43 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__func__.generic_reg_wait = private unnamed_addr constant [17 x i8] c"generic_reg_wait\00", align 1
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"REG_WAIT taking a while: %dms in %s line:%d\0A\00", [51 x i8] zeroinitializer }, align 32
@generic_reg_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.generic_reg_wait, ptr @.str, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014[drm] REG_WAIT timeout %dus * %d tries - %s line:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@generic_reg_wait._entry_ptr = internal global ptr @generic_reg_wait._entry, section ".printk_index", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.generic_write_indirect_reg = private unnamed_addr constant [27 x i8] c"generic_write_indirect_reg\00", align 1
@generic_read_indirect_reg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.generic_read_indirect_reg = private unnamed_addr constant [26 x i8] c"generic_read_indirect_reg\00", align 1
@reg_sequence_start_gather.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@set_reg_field_value_masks.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@set_reg_field_value_ex.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/dm_services.h\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 4]
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 472, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 489, i32 5 }
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 496, i32 2 }
@___asan_gen_.18 = private constant [56 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_helper.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 501, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [58 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dm_services.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 107, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @generic_reg_wait._entry, ptr @generic_reg_wait._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_reg_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_reg_update_ex(ptr noundef %ctx, i32 noundef %addr, i32 noundef %n, i8 noundef zeroext %shift1, i32 noundef %mask1, i32 noundef %field_value1, ...) local_unnamed_addr #0 align 64 {
entry:
  %field_value_mask = alloca %struct.dc_reg_value_masks, align 8
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %field_value_mask) #5
  %0 = ptrtoint ptr %field_value_mask to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %field_value_mask, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #5
  %1 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !55
  call void @llvm.va_start(ptr nonnull %ap)
  %2 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %2)
  %.fca.0.load = load i32, ptr %ap, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  call fastcc void @set_reg_field_values(ptr noundef nonnull %field_value_mask, i32 noundef %n, i8 noundef zeroext %shift1, i32 noundef %mask1, i32 noundef %field_value1, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %ap)
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 14
  %3 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dmub_srv, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %reg_helper_offload = getelementptr inbounds %struct.dc_dmub_srv, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %reg_helper_offload to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_helper_offload, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %cmd_data.i = getelementptr inbounds %struct.dc_dmub_srv, ptr %4, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %cmd_data.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %bf.load.i = load i32, ptr %cmd_data.i, align 1
  %bf.lshr.mask.i = and i32 %bf.load.i, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %bf.lshr.mask.i)
  %cmp.not.i = icmp eq i32 %bf.lshr.mask.i, 50331648
  br i1 %cmp.not.i, label %if.then.if.end.i_crit_edge, label %land.lhs.true.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then
  %reg_seq_count.i = getelementptr inbounds %struct.dc_dmub_srv, ptr %4, i32 0, i32 1, i32 6
  %8 = ptrtoint ptr %reg_seq_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_seq_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp2.i = icmp eq i32 %9, 5
  br i1 %cmp2.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %same_addr_count.i.i.i = getelementptr inbounds %struct.dc_dmub_srv, ptr %4, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %same_addr_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %same_addr_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp.i.i.i = icmp eq i32 %11, 4
  %should_burst_write.i.i.i = getelementptr inbounds %struct.dc_dmub_srv, ptr %4, i32 0, i32 1, i32 3
  %frombool.i.i.i = zext i1 %cmp.i.i.i to i8
  %12 = ptrtoint ptr %should_burst_write.i.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool.i.i.i, ptr %should_burst_write.i.i.i, align 4
  %bf.clear.i.i.i = and i32 %bf.load.i, -253
  %bf.set.i.i.i = or i32 %bf.clear.i.i.i, 240
  %13 = ptrtoint ptr %cmd_data.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %bf.set.i.i.i, ptr %cmd_data.i, align 1
  %14 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dmub_srv, align 8
  %reg_helper_offload.i.i.i = getelementptr inbounds %struct.dc_dmub_srv, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %reg_helper_offload.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reg_helper_offload.i.i.i, align 4, !range !56
  store i8 0, ptr %reg_helper_offload.i.i.i, align 4
  %18 = load ptr, ptr %dmub_srv, align 8
  call void @dc_dmub_srv_cmd_queue(ptr noundef %18, ptr noundef %cmd_data.i) #5
  %19 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dmub_srv, align 8
  %reg_helper_offload9.i.i.i = getelementptr inbounds %struct.dc_dmub_srv, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %reg_helper_offload9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %17, ptr %reg_helper_offload9.i.i.i, align 4
  %22 = call ptr @memset(ptr %cmd_data.i, i32 0, i32 64)
  %23 = ptrtoint ptr %reg_seq_count.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %reg_seq_count.i, align 4
  %24 = ptrtoint ptr %same_addr_count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %same_addr_count.i.i.i, align 4
  %25 = load ptr, ptr %dmub_srv, align 8
  call void @dc_dmub_srv_cmd_execute(ptr noundef %25) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %should_burst_write.i = getelementptr inbounds %struct.dc_dmub_srv, ptr %4, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %should_burst_write.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %should_burst_write.i, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then3.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then3.i:                                       ; preds = %if.end.i
  %28 = ptrtoint ptr %field_value_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %field_value_mask, align 8
  %call.i = call fastcc zeroext i1 @dmub_reg_value_burst_set_pack(ptr noundef %ctx, i32 noundef %addr, i32 noundef %29) #5
  br i1 %call.i, label %if.then3.i.dmub_reg_value_pack.exit_crit_edge, label %if.else.i

if.then3.i.dmub_reg_value_pack.exit_crit_edge:    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dmub_reg_value_pack.exit

if.else.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %should_burst_write.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %should_burst_write.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.end.i.if.end8.i_crit_edge
  %31 = ptrtoint ptr %cmd_data.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %bf.load10.i = load i32, ptr %cmd_data.i, align 1
  %bf.clear.i = and i32 %bf.load10.i, 65535
  %bf.set.i = or i32 %bf.clear.i, 16777216
  store i32 %bf.set.i, ptr %cmd_data.i, align 1
  %seq15.i = getelementptr inbounds %struct.dc_dmub_srv, ptr %4, i32 0, i32 1, i32 4, i32 0, i32 1
  %reg_seq_count16.i = getelementptr inbounds %struct.dc_dmub_srv, ptr %4, i32 0, i32 1, i32 6
  %32 = ptrtoint ptr %reg_seq_count16.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg_seq_count16.i, align 4
  %arrayidx.i = getelementptr [5 x %struct.dmub_cmd_read_modify_write_sequence], ptr %seq15.i, i32 0, i32 %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool18.not.i = icmp eq i32 %33, 0
  br i1 %tobool18.not.i, label %if.end8.i.if.end29.i_crit_edge, label %if.then19.i

if.end8.i.if.end29.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

if.then19.i:                                      ; preds = %if.end8.i
  %sub.i = add i32 %33, -1
  %arrayidx22.i = getelementptr [5 x %struct.dmub_cmd_read_modify_write_sequence], ptr %seq15.i, i32 0, i32 %sub.i
  %34 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %arrayidx22.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %addr)
  %cmp24.i = icmp eq i32 %35, %addr
  %same_addr_count.i = getelementptr inbounds %struct.dc_dmub_srv, ptr %4, i32 0, i32 1, i32 2
  br i1 %cmp24.i, label %if.then25.i, label %if.then19.i.if.end29.sink.split.i_crit_edge

if.then19.i.if.end29.sink.split.i_crit_edge:      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.sink.split.i

if.then25.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %same_addr_count.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %same_addr_count.i, align 4
  %inc.i = add i32 %37, 1
  br label %if.end29.sink.split.i

if.end29.sink.split.i:                            ; preds = %if.then25.i, %if.then19.i.if.end29.sink.split.i_crit_edge
  %inc.sink.i = phi i32 [ %inc.i, %if.then25.i ], [ 0, %if.then19.i.if.end29.sink.split.i_crit_edge ]
  %38 = ptrtoint ptr %same_addr_count.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %inc.sink.i, ptr %same_addr_count.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end29.sink.split.i, %if.end8.i.if.end29.i_crit_edge
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %addr, ptr %arrayidx.i, align 1
  %mask.i = getelementptr inbounds %struct.dc_reg_value_masks, ptr %field_value_mask, i32 0, i32 1
  %40 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mask.i, align 4
  %modify_mask.i = getelementptr [5 x %struct.dmub_cmd_read_modify_write_sequence], ptr %seq15.i, i32 0, i32 %33, i32 1
  %42 = ptrtoint ptr %modify_mask.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %modify_mask.i, align 1
  %43 = ptrtoint ptr %field_value_mask to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %field_value_mask, align 8
  %modify_value.i = getelementptr [5 x %struct.dmub_cmd_read_modify_write_sequence], ptr %seq15.i, i32 0, i32 %33, i32 2
  %45 = ptrtoint ptr %modify_value.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %modify_value.i, align 1
  %46 = ptrtoint ptr %reg_seq_count16.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %reg_seq_count16.i, align 4
  %inc33.i = add i32 %47, 1
  store i32 %inc33.i, ptr %reg_seq_count16.i, align 4
  br label %dmub_reg_value_pack.exit

dmub_reg_value_pack.exit:                         ; preds = %if.end29.i, %if.then3.i.dmub_reg_value_pack.exit_crit_edge
  %48 = ptrtoint ptr %field_value_mask to i32
  call void @__asan_load4_noabort(i32 %48)
  %retval.0.i = load i32, ptr %field_value_mask, align 8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %addr, ptr noundef nonnull @__func__.generic_reg_update_ex) #5
  %mask = getelementptr inbounds %struct.dc_reg_value_masks, ptr %field_value_mask, i32 0, i32 1
  %49 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mask, align 4
  %neg = xor i32 %50, -1
  %and = and i32 %call3, %neg
  %51 = ptrtoint ptr %field_value_mask to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %field_value_mask, align 8
  %or = or i32 %and, %52
  call void @dm_write_reg_func(ptr noundef %ctx, i32 noundef %addr, i32 noundef %or, ptr noundef nonnull @__func__.generic_reg_update_ex) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dmub_reg_value_pack.exit
  %retval.0 = phi i32 [ %retval.0.i, %dmub_reg_value_pack.exit ], [ %or, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %field_value_mask) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_reg_field_values(ptr nocapture noundef %field_value_mask, i32 noundef %n, i8 noundef zeroext %shift1, i32 noundef %mask1, i32 noundef %field_value1, [1 x i32] %ap.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ap.coerce.fca.0.extract = extractvalue [1 x i32] %ap.coerce, 0
  %0 = inttoptr i32 %ap.coerce.fca.0.extract to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask1)
  %cmp.not.i = icmp eq i32 %mask1, 0
  br i1 %cmp.not.i, label %land.rhs.i, label %entry.set_reg_field_value_masks.exit_crit_edge

entry.set_reg_field_value_masks.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_reg_field_value_masks.exit

land.rhs.i:                                       ; preds = %entry
  %.b56.i = load i1, ptr @set_reg_field_value_masks.__already_done, align 1
  br i1 %.b56.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then.i, !prof !57

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @set_reg_field_value_masks.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 9, ptr noundef null) #5
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then.i, %land.rhs.i.if.then38.i_crit_edge
  tail call void @kgdb_breakpoint() #5
  br label %set_reg_field_value_masks.exit

set_reg_field_value_masks.exit:                   ; preds = %if.then38.i, %entry.set_reg_field_value_masks.exit_crit_edge
  %1 = ptrtoint ptr %field_value_mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %field_value_mask, align 4
  %neg.i = xor i32 %mask1, -1
  %and.i = and i32 %2, %neg.i
  %conv.i = zext i8 %shift1 to i32
  %shl.i = shl i32 %field_value1, %conv.i
  %and43.i = and i32 %shl.i, %mask1
  %or.i = or i32 %and.i, %and43.i
  store i32 %or.i, ptr %field_value_mask, align 4
  %mask45.i = getelementptr inbounds %struct.dc_reg_value_masks, ptr %field_value_mask, i32 0, i32 1
  %3 = ptrtoint ptr %mask45.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mask45.i, align 4
  %or46.i = or i32 %4, %mask1
  store i32 %or46.i, ptr %mask45.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n)
  %cmp15 = icmp sgt i32 %n, 1
  br i1 %cmp15, label %set_reg_field_value_masks.exit.while.body_crit_edge, label %set_reg_field_value_masks.exit.while.end_crit_edge

set_reg_field_value_masks.exit.while.end_crit_edge: ; preds = %set_reg_field_value_masks.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

set_reg_field_value_masks.exit.while.body_crit_edge: ; preds = %set_reg_field_value_masks.exit
  br label %while.body

while.body:                                       ; preds = %set_reg_field_value_masks.exit14.while.body_crit_edge, %set_reg_field_value_masks.exit.while.body_crit_edge
  %i.017 = phi i32 [ %inc, %set_reg_field_value_masks.exit14.while.body_crit_edge ], [ 1, %set_reg_field_value_masks.exit.while.body_crit_edge ]
  %ap.sroa.0.016 = phi ptr [ %argp.next4, %set_reg_field_value_masks.exit14.while.body_crit_edge ], [ %0, %set_reg_field_value_masks.exit.while.body_crit_edge ]
  %argp.next = getelementptr inbounds i8, ptr %ap.sroa.0.016, i32 4
  %5 = ptrtoint ptr %ap.sroa.0.016 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ap.sroa.0.016, align 4
  %argp.next2 = getelementptr inbounds i8, ptr %ap.sroa.0.016, i32 8
  %7 = ptrtoint ptr %argp.next to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %argp.next, align 4
  %argp.next4 = getelementptr inbounds i8, ptr %ap.sroa.0.016, i32 12
  %9 = ptrtoint ptr %argp.next2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %argp.next2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i1 = icmp eq i32 %8, 0
  br i1 %cmp.not.i1, label %land.rhs.i3, label %while.body.set_reg_field_value_masks.exit14_crit_edge

while.body.set_reg_field_value_masks.exit14_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_reg_field_value_masks.exit14

land.rhs.i3:                                      ; preds = %while.body
  %.b56.i2 = load i1, ptr @set_reg_field_value_masks.__already_done, align 1
  br i1 %.b56.i2, label %land.rhs.i3.if.then38.i5_crit_edge, label %if.then.i4, !prof !57

land.rhs.i3.if.then38.i5_crit_edge:               ; preds = %land.rhs.i3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i5

if.then.i4:                                       ; preds = %land.rhs.i3
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @set_reg_field_value_masks.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 9, ptr noundef null) #5
  br label %if.then38.i5

if.then38.i5:                                     ; preds = %if.then.i4, %land.rhs.i3.if.then38.i5_crit_edge
  tail call void @kgdb_breakpoint() #5
  br label %set_reg_field_value_masks.exit14

set_reg_field_value_masks.exit14:                 ; preds = %if.then38.i5, %while.body.set_reg_field_value_masks.exit14_crit_edge
  %11 = ptrtoint ptr %field_value_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %field_value_mask, align 4
  %neg.i6 = xor i32 %8, -1
  %and.i7 = and i32 %12, %neg.i6
  %conv.i8 = and i32 %6, 255
  %shl.i9 = shl i32 %10, %conv.i8
  %and43.i10 = and i32 %shl.i9, %8
  %or.i11 = or i32 %and.i7, %and43.i10
  store i32 %or.i11, ptr %field_value_mask, align 4
  %13 = ptrtoint ptr %mask45.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask45.i, align 4
  %or46.i13 = or i32 %14, %8
  store i32 %or46.i13, ptr %mask45.i, align 4
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %set_reg_field_value_masks.exit14.while.end_crit_edge, label %set_reg_field_value_masks.exit14.while.body_crit_edge

set_reg_field_value_masks.exit14.while.body_crit_edge: ; preds = %set_reg_field_value_masks.exit14
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

set_reg_field_value_masks.exit14.while.end_crit_edge: ; preds = %set_reg_field_value_masks.exit14
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %set_reg_field_value_masks.exit14.while.end_crit_edge, %set_reg_field_value_masks.exit.while.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_reg_set_ex(ptr noundef %ctx, i32 noundef %addr, i32 noundef %reg_val, i32 noundef %n, i8 noundef zeroext %shift1, i32 noundef %mask1, i32 noundef %field_value1, ...) local_unnamed_addr #0 align 64 {
entry:
  %field_value_mask = alloca %struct.dc_reg_value_masks, align 8
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %field_value_mask) #5
  %0 = ptrtoint ptr %field_value_mask to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %field_value_mask, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #5
  %1 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !55
  call void @llvm.va_start(ptr nonnull %ap)
  %2 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %2)
  %.fca.0.load = load i32, ptr %ap, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  call fastcc void @set_reg_field_values(ptr noundef nonnull %field_value_mask, i32 noundef %n, i8 noundef zeroext %shift1, i32 noundef %mask1, i32 noundef %field_value1, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %ap)
  %mask = getelementptr inbounds %struct.dc_reg_value_masks, ptr %field_value_mask, i32 0, i32 1
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mask, align 4
  %neg = xor i32 %4, -1
  %and = and i32 %neg, %reg_val
  %5 = ptrtoint ptr %field_value_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %field_value_mask, align 8
  %or = or i32 %and, %6
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 14
  %7 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dmub_srv, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %reg_helper_offload = getelementptr inbounds %struct.dc_dmub_srv, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %reg_helper_offload to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %reg_helper_offload, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not = icmp eq i8 %10, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call = call fastcc zeroext i1 @dmub_reg_value_burst_set_pack(ptr noundef %ctx, i32 noundef %addr, i32 noundef %or)
  %conv = zext i1 %call to i32
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @dm_write_reg_func(ptr noundef %ctx, i32 noundef %addr, i32 noundef %or, ptr noundef nonnull @__func__.generic_reg_set_ex) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %or, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %field_value_mask) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dmub_reg_value_burst_set_pack(ptr nocapture noundef readonly %ctx, i32 noundef %addr, i32 noundef %reg_val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmub_srv, align 8
  %cmd_data = getelementptr inbounds %struct.dc_dmub_srv, ptr %1, i32 0, i32 1, i32 4
  %reg_seq_count = getelementptr inbounds %struct.dc_dmub_srv, ptr %1, i32 0, i32 1, i32 6
  %2 = ptrtoint ptr %reg_seq_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_seq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %3)
  %cmp = icmp eq i32 %3, 14
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %reg_seq_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_seq_count, align 4
  %mul.i.i = shl i32 %5, 4
  %6 = ptrtoint ptr %cmd_data to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %bf.load.i.i = load i32, ptr %cmd_data, align 1
  %bf.value.i.i = and i32 %mul.i.i, 240
  %bf.clear.i.i = and i32 %bf.load.i.i, -253
  %bf.set.i.i = or i32 %bf.clear.i.i, %bf.value.i.i
  store i32 %bf.set.i.i, ptr %cmd_data, align 1
  %7 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dmub_srv, align 8
  %reg_helper_offload.i.i = getelementptr inbounds %struct.dc_dmub_srv, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %reg_helper_offload.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %reg_helper_offload.i.i, align 4, !range !56
  store i8 0, ptr %reg_helper_offload.i.i, align 4
  %11 = load ptr, ptr %dmub_srv, align 8
  tail call void @dc_dmub_srv_cmd_queue(ptr noundef %11, ptr noundef %cmd_data) #5
  %12 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dmub_srv, align 8
  %reg_helper_offload8.i.i = getelementptr inbounds %struct.dc_dmub_srv, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %reg_helper_offload8.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %10, ptr %reg_helper_offload8.i.i, align 4
  %15 = call ptr @memset(ptr %cmd_data, i32 0, i32 64)
  %16 = ptrtoint ptr %reg_seq_count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %reg_seq_count, align 4
  %17 = load ptr, ptr %dmub_srv, align 8
  tail call void @dc_dmub_srv_cmd_execute(ptr noundef %17) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %cmd_data to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %bf.load = load i32, ptr %cmd_data, align 1
  %bf.lshr.mask = and i32 %bf.load, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %bf.lshr.mask)
  %cmp2 = icmp eq i32 %bf.lshr.mask, 50331648
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %addr3 = getelementptr inbounds %struct.dc_dmub_srv, ptr %1, i32 0, i32 1, i32 4, i32 0, i32 1
  %19 = ptrtoint ptr %addr3 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %addr3, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %addr)
  %cmp4.not = icmp eq i32 %20, %addr
  br i1 %cmp4.not, label %land.lhs.true.if.end6_crit_edge, label %if.then5

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %reg_seq_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_seq_count, align 4
  %mul.i.i32 = shl i32 %22, 4
  %23 = ptrtoint ptr %cmd_data to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %bf.load.i.i33 = load i32, ptr %cmd_data, align 1
  %bf.value.i.i34 = and i32 %mul.i.i32, 240
  %bf.clear.i.i35 = and i32 %bf.load.i.i33, -253
  %bf.set.i.i36 = or i32 %bf.clear.i.i35, %bf.value.i.i34
  store i32 %bf.set.i.i36, ptr %cmd_data, align 1
  %24 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dmub_srv, align 8
  %reg_helper_offload.i.i38 = getelementptr inbounds %struct.dc_dmub_srv, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %reg_helper_offload.i.i38 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %reg_helper_offload.i.i38, align 4, !range !56
  store i8 0, ptr %reg_helper_offload.i.i38, align 4
  %28 = load ptr, ptr %dmub_srv, align 8
  tail call void @dc_dmub_srv_cmd_queue(ptr noundef %28, ptr noundef %cmd_data) #5
  %29 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dmub_srv, align 8
  %reg_helper_offload8.i.i39 = getelementptr inbounds %struct.dc_dmub_srv, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %reg_helper_offload8.i.i39 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %27, ptr %reg_helper_offload8.i.i39, align 4
  %32 = call ptr @memset(ptr %cmd_data, i32 0, i32 64)
  %33 = ptrtoint ptr %reg_seq_count to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %reg_seq_count, align 4
  %34 = load ptr, ptr %dmub_srv, align 8
  tail call void @dc_dmub_srv_cmd_execute(ptr noundef %34) #5
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %bf.clear = and i32 %bf.load, 65535
  %bf.set = or i32 %bf.clear, 50331648
  %35 = ptrtoint ptr %cmd_data to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %bf.set, ptr %cmd_data, align 1
  %addr13 = getelementptr inbounds %struct.dc_dmub_srv, ptr %1, i32 0, i32 1, i32 4, i32 0, i32 1
  %36 = ptrtoint ptr %addr13 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %addr, ptr %addr13, align 1
  %write_values = getelementptr inbounds %struct.dc_dmub_srv, ptr %1, i32 0, i32 1, i32 4, i32 0, i32 1, i32 4
  %37 = ptrtoint ptr %reg_seq_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %reg_seq_count, align 4
  %arrayidx = getelementptr [14 x i32], ptr %write_values, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %reg_val, ptr %arrayidx, align 1
  %40 = load i32, ptr %reg_seq_count, align 4
  %inc = add i32 %40, 1
  store i32 %inc, ptr %reg_seq_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5
  %retval.0 = phi i1 [ false, %if.then5 ], [ true, %if.end6 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_reg_get(ptr noundef %ctx, i32 noundef %addr, i8 noundef zeroext %shift, i32 noundef %mask, ptr nocapture noundef writeonly %field_value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %addr, ptr noundef nonnull @__func__.generic_reg_get) #5
  %and.i = and i32 %call, %mask
  %conv.i = zext i8 %shift to i32
  %shr.i = lshr i32 %and.i, %conv.i
  %0 = ptrtoint ptr %field_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %shr.i, ptr %field_value, align 4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_reg_get2(ptr noundef %ctx, i32 noundef %addr, i8 noundef zeroext %shift1, i32 noundef %mask1, ptr nocapture noundef writeonly %field_value1, i8 noundef zeroext %shift2, i32 noundef %mask2, ptr nocapture noundef writeonly %field_value2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %addr, ptr noundef nonnull @__func__.generic_reg_get2) #5
  %and.i = and i32 %call, %mask1
  %conv.i = zext i8 %shift1 to i32
  %shr.i = lshr i32 %and.i, %conv.i
  %0 = ptrtoint ptr %field_value1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %shr.i, ptr %field_value1, align 4
  %and.i5 = and i32 %call, %mask2
  %conv.i6 = zext i8 %shift2 to i32
  %shr.i7 = lshr i32 %and.i5, %conv.i6
  %1 = ptrtoint ptr %field_value2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %shr.i7, ptr %field_value2, align 4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_reg_get3(ptr noundef %ctx, i32 noundef %addr, i8 noundef zeroext %shift1, i32 noundef %mask1, ptr nocapture noundef writeonly %field_value1, i8 noundef zeroext %shift2, i32 noundef %mask2, ptr nocapture noundef writeonly %field_value2, i8 noundef zeroext %shift3, i32 noundef %mask3, ptr nocapture noundef writeonly %field_value3) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %addr, ptr noundef nonnull @__func__.generic_reg_get3) #5
  %and.i = and i32 %call, %mask1
  %conv.i = zext i8 %shift1 to i32
  %shr.i = lshr i32 %and.i, %conv.i
  %0 = ptrtoint ptr %field_value1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %shr.i, ptr %field_value1, align 4
  %and.i7 = and i32 %call, %mask2
  %conv.i8 = zext i8 %shift2 to i32
  %shr.i9 = lshr i32 %and.i7, %conv.i8
  %1 = ptrtoint ptr %field_value2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %shr.i9, ptr %field_value2, align 4
  %and.i10 = and i32 %call, %mask3
  %conv.i11 = zext i8 %shift3 to i32
  %shr.i12 = lshr i32 %and.i10, %conv.i11
  %2 = ptrtoint ptr %field_value3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shr.i12, ptr %field_value3, align 4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_reg_get4(ptr noundef %ctx, i32 noundef %addr, i8 noundef zeroext %shift1, i32 noundef %mask1, ptr nocapture noundef writeonly %field_value1, i8 noundef zeroext %shift2, i32 noundef %mask2, ptr nocapture noundef writeonly %field_value2, i8 noundef zeroext %shift3, i32 noundef %mask3, ptr nocapture noundef writeonly %field_value3, i8 noundef zeroext %shift4, i32 noundef %mask4, ptr nocapture noundef writeonly %field_value4) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %addr, ptr noundef nonnull @__func__.generic_reg_get4) #5
  %and.i = and i32 %call, %mask1
  %conv.i = zext i8 %shift1 to i32
  %shr.i = lshr i32 %and.i, %conv.i
  %0 = ptrtoint ptr %field_value1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %shr.i, ptr %field_value1, align 4
  %and.i9 = and i32 %call, %mask2
  %conv.i10 = zext i8 %shift2 to i32
  %shr.i11 = lshr i32 %and.i9, %conv.i10
  %1 = ptrtoint ptr %field_value2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %shr.i11, ptr %field_value2, align 4
  %and.i12 = and i32 %call, %mask3
  %conv.i13 = zext i8 %shift3 to i32
  %shr.i14 = lshr i32 %and.i12, %conv.i13
  %2 = ptrtoint ptr %field_value3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shr.i14, ptr %field_value3, align 4
  %and.i15 = and i32 %call, %mask4
  %conv.i16 = zext i8 %shift4 to i32
  %shr.i17 = lshr i32 %and.i15, %conv.i16
  %3 = ptrtoint ptr %field_value4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shr.i17, ptr %field_value4, align 4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_reg_get5(ptr noundef %ctx, i32 noundef %addr, i8 noundef zeroext %shift1, i32 noundef %mask1, ptr nocapture noundef writeonly %field_value1, i8 noundef zeroext %shift2, i32 noundef %mask2, ptr nocapture noundef writeonly %field_value2, i8 noundef zeroext %shift3, i32 noundef %mask3, ptr nocapture noundef writeonly %field_value3, i8 noundef zeroext %shift4, i32 noundef %mask4, ptr nocapture noundef writeonly %field_value4, i8 noundef zeroext %shift5, i32 noundef %mask5, ptr nocapture noundef writeonly %field_value5) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %addr, ptr noundef nonnull @__func__.generic_reg_get5) #5
  %and.i = and i32 %call, %mask1
  %conv.i = zext i8 %shift1 to i32
  %shr.i = lshr i32 %and.i, %conv.i
  %0 = ptrtoint ptr %field_value1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %shr.i, ptr %field_value1, align 4
  %and.i11 = and i32 %call, %mask2
  %conv.i12 = zext i8 %shift2 to i32
  %shr.i13 = lshr i32 %and.i11, %conv.i12
  %1 = ptrtoint ptr %field_value2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %shr.i13, ptr %field_value2, align 4
  %and.i14 = and i32 %call, %mask3
  %conv.i15 = zext i8 %shift3 to i32
  %shr.i16 = lshr i32 %and.i14, %conv.i15
  %2 = ptrtoint ptr %field_value3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shr.i16, ptr %field_value3, align 4
  %and.i17 = and i32 %call, %mask4
  %conv.i18 = zext i8 %shift4 to i32
  %shr.i19 = lshr i32 %and.i17, %conv.i18
  %3 = ptrtoint ptr %field_value4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shr.i19, ptr %field_value4, align 4
  %and.i20 = and i32 %call, %mask5
  %conv.i21 = zext i8 %shift5 to i32
  %shr.i22 = lshr i32 %and.i20, %conv.i21
  %4 = ptrtoint ptr %field_value5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr.i22, ptr %field_value5, align 4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_reg_get6(ptr noundef %ctx, i32 noundef %addr, i8 noundef zeroext %shift1, i32 noundef %mask1, ptr nocapture noundef writeonly %field_value1, i8 noundef zeroext %shift2, i32 noundef %mask2, ptr nocapture noundef writeonly %field_value2, i8 noundef zeroext %shift3, i32 noundef %mask3, ptr nocapture noundef writeonly %field_value3, i8 noundef zeroext %shift4, i32 noundef %mask4, ptr nocapture noundef writeonly %field_value4, i8 noundef zeroext %shift5, i32 noundef %mask5, ptr nocapture noundef writeonly %field_value5, i8 noundef zeroext %shift6, i32 noundef %mask6, ptr nocapture noundef writeonly %field_value6) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %addr, ptr noundef nonnull @__func__.generic_reg_get6) #5
  %and.i = and i32 %call, %mask1
  %conv.i = zext i8 %shift1 to i32
  %shr.i = lshr i32 %and.i, %conv.i
  %0 = ptrtoint ptr %field_value1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %shr.i, ptr %field_value1, align 4
  %and.i13 = and i32 %call, %mask2
  %conv.i14 = zext i8 %shift2 to i32
  %shr.i15 = lshr i32 %and.i13, %conv.i14
  %1 = ptrtoint ptr %field_value2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %shr.i15, ptr %field_value2, align 4
  %and.i16 = and i32 %call, %mask3
  %conv.i17 = zext i8 %shift3 to i32
  %shr.i18 = lshr i32 %and.i16, %conv.i17
  %2 = ptrtoint ptr %field_value3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shr.i18, ptr %field_value3, align 4
  %and.i19 = and i32 %call, %mask4
  %conv.i20 = zext i8 %shift4 to i32
  %shr.i21 = lshr i32 %and.i19, %conv.i20
  %3 = ptrtoint ptr %field_value4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shr.i21, ptr %field_value4, align 4
  %and.i22 = and i32 %call, %mask5
  %conv.i23 = zext i8 %shift5 to i32
  %shr.i24 = lshr i32 %and.i22, %conv.i23
  %4 = ptrtoint ptr %field_value5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr.i24, ptr %field_value5, align 4
  %and.i25 = and i32 %call, %mask6
  %conv.i26 = zext i8 %shift6 to i32
  %shr.i27 = lshr i32 %and.i25, %conv.i26
  %5 = ptrtoint ptr %field_value6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr.i27, ptr %field_value6, align 4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_reg_get7(ptr noundef %ctx, i32 noundef %addr, i8 noundef zeroext %shift1, i32 noundef %mask1, ptr nocapture noundef writeonly %field_value1, i8 noundef zeroext %shift2, i32 noundef %mask2, ptr nocapture noundef writeonly %field_value2, i8 noundef zeroext %shift3, i32 noundef %mask3, ptr nocapture noundef writeonly %field_value3, i8 noundef zeroext %shift4, i32 noundef %mask4, ptr nocapture noundef writeonly %field_value4, i8 noundef zeroext %shift5, i32 noundef %mask5, ptr nocapture noundef writeonly %field_value5, i8 noundef zeroext %shift6, i32 noundef %mask6, ptr nocapture noundef writeonly %field_value6, i8 noundef zeroext %shift7, i32 noundef %mask7, ptr nocapture noundef writeonly %field_value7) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %addr, ptr noundef nonnull @__func__.generic_reg_get7) #5
  %and.i = and i32 %call, %mask1
  %conv.i = zext i8 %shift1 to i32
  %shr.i = lshr i32 %and.i, %conv.i
  %0 = ptrtoint ptr %field_value1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %shr.i, ptr %field_value1, align 4
  %and.i15 = and i32 %call, %mask2
  %conv.i16 = zext i8 %shift2 to i32
  %shr.i17 = lshr i32 %and.i15, %conv.i16
  %1 = ptrtoint ptr %field_value2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %shr.i17, ptr %field_value2, align 4
  %and.i18 = and i32 %call, %mask3
  %conv.i19 = zext i8 %shift3 to i32
  %shr.i20 = lshr i32 %and.i18, %conv.i19
  %2 = ptrtoint ptr %field_value3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shr.i20, ptr %field_value3, align 4
  %and.i21 = and i32 %call, %mask4
  %conv.i22 = zext i8 %shift4 to i32
  %shr.i23 = lshr i32 %and.i21, %conv.i22
  %3 = ptrtoint ptr %field_value4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shr.i23, ptr %field_value4, align 4
  %and.i24 = and i32 %call, %mask5
  %conv.i25 = zext i8 %shift5 to i32
  %shr.i26 = lshr i32 %and.i24, %conv.i25
  %4 = ptrtoint ptr %field_value5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr.i26, ptr %field_value5, align 4
  %and.i27 = and i32 %call, %mask6
  %conv.i28 = zext i8 %shift6 to i32
  %shr.i29 = lshr i32 %and.i27, %conv.i28
  %5 = ptrtoint ptr %field_value6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr.i29, ptr %field_value6, align 4
  %and.i30 = and i32 %call, %mask7
  %conv.i31 = zext i8 %shift7 to i32
  %shr.i32 = lshr i32 %and.i30, %conv.i31
  %6 = ptrtoint ptr %field_value7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr.i32, ptr %field_value7, align 4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_reg_get8(ptr noundef %ctx, i32 noundef %addr, i8 noundef zeroext %shift1, i32 noundef %mask1, ptr nocapture noundef writeonly %field_value1, i8 noundef zeroext %shift2, i32 noundef %mask2, ptr nocapture noundef writeonly %field_value2, i8 noundef zeroext %shift3, i32 noundef %mask3, ptr nocapture noundef writeonly %field_value3, i8 noundef zeroext %shift4, i32 noundef %mask4, ptr nocapture noundef writeonly %field_value4, i8 noundef zeroext %shift5, i32 noundef %mask5, ptr nocapture noundef writeonly %field_value5, i8 noundef zeroext %shift6, i32 noundef %mask6, ptr nocapture noundef writeonly %field_value6, i8 noundef zeroext %shift7, i32 noundef %mask7, ptr nocapture noundef writeonly %field_value7, i8 noundef zeroext %shift8, i32 noundef %mask8, ptr nocapture noundef writeonly %field_value8) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %addr, ptr noundef nonnull @__func__.generic_reg_get8) #5
  %and.i = and i32 %call, %mask1
  %conv.i = zext i8 %shift1 to i32
  %shr.i = lshr i32 %and.i, %conv.i
  %0 = ptrtoint ptr %field_value1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %shr.i, ptr %field_value1, align 4
  %and.i17 = and i32 %call, %mask2
  %conv.i18 = zext i8 %shift2 to i32
  %shr.i19 = lshr i32 %and.i17, %conv.i18
  %1 = ptrtoint ptr %field_value2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %shr.i19, ptr %field_value2, align 4
  %and.i20 = and i32 %call, %mask3
  %conv.i21 = zext i8 %shift3 to i32
  %shr.i22 = lshr i32 %and.i20, %conv.i21
  %2 = ptrtoint ptr %field_value3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shr.i22, ptr %field_value3, align 4
  %and.i23 = and i32 %call, %mask4
  %conv.i24 = zext i8 %shift4 to i32
  %shr.i25 = lshr i32 %and.i23, %conv.i24
  %3 = ptrtoint ptr %field_value4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shr.i25, ptr %field_value4, align 4
  %and.i26 = and i32 %call, %mask5
  %conv.i27 = zext i8 %shift5 to i32
  %shr.i28 = lshr i32 %and.i26, %conv.i27
  %4 = ptrtoint ptr %field_value5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr.i28, ptr %field_value5, align 4
  %and.i29 = and i32 %call, %mask6
  %conv.i30 = zext i8 %shift6 to i32
  %shr.i31 = lshr i32 %and.i29, %conv.i30
  %5 = ptrtoint ptr %field_value6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr.i31, ptr %field_value6, align 4
  %and.i32 = and i32 %call, %mask7
  %conv.i33 = zext i8 %shift7 to i32
  %shr.i34 = lshr i32 %and.i32, %conv.i33
  %6 = ptrtoint ptr %field_value7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr.i34, ptr %field_value7, align 4
  %and.i35 = and i32 %call, %mask8
  %conv.i36 = zext i8 %shift8 to i32
  %shr.i37 = lshr i32 %and.i35, %conv.i36
  %7 = ptrtoint ptr %field_value8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr.i37, ptr %field_value8, align 4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @generic_reg_wait(ptr noundef %ctx, i32 noundef %addr, i32 noundef %shift, i32 noundef %mask, i32 noundef %condition_value, i32 noundef %delay_between_poll_us, i32 noundef %time_out_num_tries, ptr noundef %func_name, i32 noundef %line) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmub_srv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %land.lhs.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %reg_helper_offload = getelementptr inbounds %struct.dc_dmub_srv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg_helper_offload to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_helper_offload, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.do.body_crit_edge, label %if.then

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %mul = mul i32 %time_out_num_tries, %delay_between_poll_us
  %cmd_data.i = getelementptr inbounds %struct.dc_dmub_srv, ptr %1, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %cmd_data.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %bf.load.i = load i32, ptr %cmd_data.i, align 1
  %bf.clear.i = and i32 %bf.load.i, 65535
  %bf.set.i = or i32 %bf.clear.i, 67108864
  store i32 %bf.set.i, ptr %cmd_data.i, align 1
  %reg_wait.i = getelementptr inbounds %struct.dc_dmub_srv, ptr %1, i32 0, i32 1, i32 4, i32 0, i32 1
  %5 = ptrtoint ptr %reg_wait.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %addr, ptr %reg_wait.i, align 1
  %shl.i = shl i32 %condition_value, %shift
  %and.i = and i32 %shl.i, %mask
  %condition_field_value.i = getelementptr inbounds %struct.dc_dmub_srv, ptr %1, i32 0, i32 1, i32 4, i32 0, i32 1, i32 8
  %6 = ptrtoint ptr %condition_field_value.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %and.i, ptr %condition_field_value.i, align 1
  %mask8.i = getelementptr inbounds %struct.dc_dmub_srv, ptr %1, i32 0, i32 1, i32 4, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %mask8.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %mask, ptr %mask8.i, align 1
  %time_out_us10.i = getelementptr inbounds %struct.dc_dmub_srv, ptr %1, i32 0, i32 1, i32 4, i32 0, i32 1, i32 12
  %8 = ptrtoint ptr %time_out_us10.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %mul, ptr %time_out_us10.i, align 1
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  %mul3 = mul i32 %time_out_num_tries, %delay_between_poll_us
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %mul3)
  %cmp = icmp ugt i32 %mul3, 3000000
  br i1 %cmp, label %land.rhs, label %do.body.do.end47_crit_edge

do.body.do.end47_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end47

land.rhs:                                         ; preds = %do.body
  %.b124 = load i1, ptr @generic_reg_wait.__already_done, align 1
  br i1 %.b124, label %land.rhs.if.then44_crit_edge, label %if.then12, !prof !57

land.rhs.if.then44_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then44

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @generic_reg_wait.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 472, i32 noundef 9, ptr noundef null) #5
  br label %if.then44

if.then44:                                        ; preds = %if.then12, %land.rhs.if.then44_crit_edge
  tail call void @kgdb_breakpoint() #5
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %do.body.do.end47_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %delay_between_poll_us)
  %cmp51 = icmp ugt i32 %delay_between_poll_us, 999
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delay_between_poll_us)
  %cmp53.not = icmp eq i32 %delay_between_poll_us, 0
  %div = udiv i32 %delay_between_poll_us, 1000
  %conv.i = and i32 %shift, 255
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end47
  %i.0128 = phi i32 [ 0, %do.end47 ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0128)
  %tobool49.not = icmp eq i32 %i.0128, 0
  br i1 %tobool49.not, label %for.body.if.end62_crit_edge, label %if.then50

for.body.if.end62_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.then50:                                        ; preds = %for.body
  br i1 %cmp51, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef %div) #5
  br label %if.end62

if.else:                                          ; preds = %if.then50
  br i1 %cmp53.not, label %if.else.if.end62_crit_edge, label %cond.false58

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

cond.false58:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %9(i32 noundef %delay_between_poll_us) #5
  br label %if.end62

if.end62:                                         ; preds = %cond.false58, %if.else.if.end62_crit_edge, %if.then52, %for.body.if.end62_crit_edge
  %call = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %addr, ptr noundef nonnull @__func__.generic_reg_wait) #5
  %and.i126 = and i32 %call, %mask
  %shr.i = lshr i32 %and.i126, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %condition_value)
  %cmp64 = icmp eq i32 %shr.i, %condition_value
  br i1 %cmp64, label %if.then66, label %for.inc

if.then66:                                        ; preds = %if.end62
  %mul67 = mul i32 %i.0128, %delay_between_poll_us
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %mul67)
  %cmp68 = icmp ugt i32 %mul67, 1000
  br i1 %cmp68, label %land.lhs.true70, label %if.then66.cleanup_crit_edge

if.then66.cleanup_crit_edge:                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true70:                                  ; preds = %if.then66
  %dce_environment = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 4
  %10 = ptrtoint ptr %dce_environment to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dce_environment, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp71 = icmp eq i32 %11, 1
  br i1 %cmp71, label %land.lhs.true70.cleanup_crit_edge, label %if.then73

land.lhs.true70.cleanup_crit_edge:                ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then73:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #7
  %div75 = udiv i32 %mul67, 1000
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %div75, ptr noundef %func_name, i32 noundef %line) #5
  br label %cleanup

for.inc:                                          ; preds = %if.end62
  %inc = add i32 %i.0128, 1
  %cmp48.not = icmp ugt i32 %inc, %time_out_num_tries
  br i1 %cmp48.not, label %do.end80, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end80:                                         ; preds = %for.inc
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %delay_between_poll_us, i32 noundef %time_out_num_tries, ptr noundef %func_name, i32 noundef %line) #8
  %dce_environment83 = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 4
  %12 = ptrtoint ptr %dce_environment83 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dce_environment83, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp84 = icmp eq i32 %13, 1
  br i1 %cmp84, label %do.end80.cleanup_crit_edge, label %do.body87

do.end80.cleanup_crit_edge:                       ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body87:                                        ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.generic_reg_wait, i32 noundef 501) #5
  tail call void @kgdb_breakpoint() #5
  br label %cleanup

cleanup:                                          ; preds = %do.body87, %do.end80.cleanup_crit_edge, %if.then73, %land.lhs.true70.cleanup_crit_edge, %if.then66.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @generic_write_indirect_reg(ptr noundef %ctx, i32 noundef %addr_index, i32 noundef %addr_data, i32 noundef %index, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dm_write_reg_func(ptr noundef %ctx, i32 noundef %addr_index, i32 noundef %index, ptr noundef nonnull @__func__.generic_write_indirect_reg) #5
  tail call void @dm_write_reg_func(ptr noundef %ctx, i32 noundef %addr_data, i32 noundef %data, ptr noundef nonnull @__func__.generic_write_indirect_reg) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_read_indirect_reg(ptr noundef %ctx, i32 noundef %addr_index, i32 noundef %addr_data, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmub_srv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end43_crit_edge, label %land.lhs.true

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

land.lhs.true:                                    ; preds = %entry
  %reg_helper_offload = getelementptr inbounds %struct.dc_dmub_srv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg_helper_offload to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_helper_offload, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end43_crit_edge, label %land.end

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

land.end:                                         ; preds = %land.lhs.true
  %.b49 = load i1, ptr @generic_read_indirect_reg.__already_done, align 1
  br i1 %.b49, label %land.end.if.then39_crit_edge, label %if.then8, !prof !57

land.end.if.then39_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39

if.then8:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @generic_read_indirect_reg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 521, i32 noundef 9, ptr noundef null) #5
  br label %if.then39

if.then39:                                        ; preds = %if.then8, %land.end.if.then39_crit_edge
  tail call void @kgdb_breakpoint() #5
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %land.lhs.true.if.end43_crit_edge, %entry.if.end43_crit_edge
  tail call void @dm_write_reg_func(ptr noundef %ctx, i32 noundef %addr_index, i32 noundef %index, ptr noundef nonnull @__func__.generic_read_indirect_reg) #5
  %call = tail call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %addr_data, ptr noundef nonnull @__func__.generic_read_indirect_reg) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_indirect_reg_get(ptr noundef %ctx, i32 noundef %addr_index, i32 noundef %addr_data, i32 noundef %index, i32 noundef %n, i8 noundef zeroext %shift1, i32 noundef %mask1, ptr nocapture noundef writeonly %field_value1, ...) local_unnamed_addr #0 align 64 {
entry:
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #5
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !55
  call void @llvm.va_start(ptr nonnull %ap)
  %dmub_srv.i = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 14
  %1 = ptrtoint ptr %dmub_srv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dmub_srv.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.generic_read_indirect_reg.exit_crit_edge, label %land.lhs.true.i

entry.generic_read_indirect_reg.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %generic_read_indirect_reg.exit

land.lhs.true.i:                                  ; preds = %entry
  %reg_helper_offload.i = getelementptr inbounds %struct.dc_dmub_srv, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %reg_helper_offload.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %reg_helper_offload.i, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not.i = icmp eq i8 %4, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.generic_read_indirect_reg.exit_crit_edge, label %land.end.i

land.lhs.true.i.generic_read_indirect_reg.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %generic_read_indirect_reg.exit

land.end.i:                                       ; preds = %land.lhs.true.i
  %.b49.i = load i1, ptr @generic_read_indirect_reg.__already_done, align 1
  br i1 %.b49.i, label %land.end.i.if.then39.i_crit_edge, label %if.then8.i, !prof !57

land.end.i.if.then39.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39.i

if.then8.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @generic_read_indirect_reg.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 521, i32 noundef 9, ptr noundef null) #5
  br label %if.then39.i

if.then39.i:                                      ; preds = %if.then8.i, %land.end.i.if.then39.i_crit_edge
  call void @kgdb_breakpoint() #5
  br label %generic_read_indirect_reg.exit

generic_read_indirect_reg.exit:                   ; preds = %if.then39.i, %land.lhs.true.i.generic_read_indirect_reg.exit_crit_edge, %entry.generic_read_indirect_reg.exit_crit_edge
  call void @dm_write_reg_func(ptr noundef %ctx, i32 noundef %addr_index, i32 noundef %index, ptr noundef nonnull @__func__.generic_read_indirect_reg) #5
  %call.i = call i32 @dm_read_reg_func(ptr noundef %ctx, i32 noundef %addr_data, ptr noundef nonnull @__func__.generic_read_indirect_reg) #5
  %and.i = and i32 %call.i, %mask1
  %conv.i = zext i8 %shift1 to i32
  %shr.i = lshr i32 %and.i, %conv.i
  %5 = ptrtoint ptr %field_value1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr.i, ptr %field_value1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n)
  %cmp13 = icmp sgt i32 %n, 1
  br i1 %cmp13, label %generic_read_indirect_reg.exit.while.body_crit_edge, label %generic_read_indirect_reg.exit.while.end_crit_edge

generic_read_indirect_reg.exit.while.end_crit_edge: ; preds = %generic_read_indirect_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

generic_read_indirect_reg.exit.while.body_crit_edge: ; preds = %generic_read_indirect_reg.exit
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %generic_read_indirect_reg.exit.while.body_crit_edge
  %i.014 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 1, %generic_read_indirect_reg.exit.while.body_crit_edge ]
  %6 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %6)
  %argp.cur = load ptr, ptr %ap, align 4
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4
  store ptr %argp.next, ptr %ap, align 4
  %7 = ptrtoint ptr %argp.cur to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %argp.cur, align 4
  %argp.next3 = getelementptr inbounds i8, ptr %argp.cur, i32 8
  %9 = ptrtoint ptr %argp.next to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %argp.next, align 4
  %argp.next5 = getelementptr inbounds i8, ptr %argp.cur, i32 12
  store ptr %argp.next5, ptr %ap, align 4
  %11 = ptrtoint ptr %argp.next3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %argp.next3, align 4
  %and.i10 = and i32 %10, %call.i
  %conv.i11 = and i32 %8, 255
  %shr.i12 = lshr i32 %and.i10, %conv.i11
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr.i12, ptr %12, align 4
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %generic_read_indirect_reg.exit.while.end_crit_edge
  call void @llvm.va_end(ptr nonnull %ap)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_indirect_reg_update_ex(ptr noundef %ctx, i32 noundef %addr_index, i32 noundef %addr_data, i32 noundef %index, i32 noundef %reg_val, i32 noundef %n, i8 noundef zeroext %shift1, i32 noundef %mask1, i32 noundef %field_value1, ...) local_unnamed_addr #0 align 64 {
entry:
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #5
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !55
  call void @llvm.va_start(ptr nonnull %ap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask1)
  %cmp.not.i = icmp eq i32 %mask1, 0
  br i1 %cmp.not.i, label %land.rhs.i, label %entry.set_reg_field_value_ex.exit_crit_edge

entry.set_reg_field_value_ex.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_reg_field_value_ex.exit

land.rhs.i:                                       ; preds = %entry
  %.b47.i = load i1, ptr @set_reg_field_value_ex.__already_done, align 1
  br i1 %.b47.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then.i, !prof !57

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @set_reg_field_value_ex.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 107, i32 noundef 9, ptr noundef null) #5
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then.i, %land.rhs.i.if.then38.i_crit_edge
  call void @kgdb_breakpoint() #5
  br label %set_reg_field_value_ex.exit

set_reg_field_value_ex.exit:                      ; preds = %if.then38.i, %entry.set_reg_field_value_ex.exit_crit_edge
  %neg.i = xor i32 %mask1, -1
  %and.i = and i32 %neg.i, %reg_val
  %conv.i = zext i8 %shift1 to i32
  %shl.i = shl i32 %field_value1, %conv.i
  %and42.i = and i32 %shl.i, %mask1
  %or.i = or i32 %and42.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n)
  %cmp22 = icmp sgt i32 %n, 1
  br i1 %cmp22, label %set_reg_field_value_ex.exit.while.body_crit_edge, label %set_reg_field_value_ex.exit.while.end_crit_edge

set_reg_field_value_ex.exit.while.end_crit_edge:  ; preds = %set_reg_field_value_ex.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

set_reg_field_value_ex.exit.while.body_crit_edge: ; preds = %set_reg_field_value_ex.exit
  br label %while.body

while.body:                                       ; preds = %set_reg_field_value_ex.exit21.while.body_crit_edge, %set_reg_field_value_ex.exit.while.body_crit_edge
  %i.024 = phi i32 [ %inc, %set_reg_field_value_ex.exit21.while.body_crit_edge ], [ 1, %set_reg_field_value_ex.exit.while.body_crit_edge ]
  %reg_val.addr.023 = phi i32 [ %or.i20, %set_reg_field_value_ex.exit21.while.body_crit_edge ], [ %or.i, %set_reg_field_value_ex.exit.while.body_crit_edge ]
  %1 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %1)
  %argp.cur = load ptr, ptr %ap, align 4
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4
  store ptr %argp.next, ptr %ap, align 4
  %2 = ptrtoint ptr %argp.cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %argp.cur, align 4
  %argp.next2 = getelementptr inbounds i8, ptr %argp.cur, i32 8
  %4 = ptrtoint ptr %argp.next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %argp.next, align 4
  %argp.next4 = getelementptr inbounds i8, ptr %argp.cur, i32 12
  store ptr %argp.next4, ptr %ap, align 4
  %6 = ptrtoint ptr %argp.next2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %argp.next2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i10 = icmp eq i32 %5, 0
  br i1 %cmp.not.i10, label %land.rhs.i12, label %while.body.set_reg_field_value_ex.exit21_crit_edge

while.body.set_reg_field_value_ex.exit21_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_reg_field_value_ex.exit21

land.rhs.i12:                                     ; preds = %while.body
  %.b47.i11 = load i1, ptr @set_reg_field_value_ex.__already_done, align 1
  br i1 %.b47.i11, label %land.rhs.i12.if.then38.i14_crit_edge, label %if.then.i13, !prof !57

land.rhs.i12.if.then38.i14_crit_edge:             ; preds = %land.rhs.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i14

if.then.i13:                                      ; preds = %land.rhs.i12
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @set_reg_field_value_ex.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 107, i32 noundef 9, ptr noundef null) #5
  br label %if.then38.i14

if.then38.i14:                                    ; preds = %if.then.i13, %land.rhs.i12.if.then38.i14_crit_edge
  call void @kgdb_breakpoint() #5
  br label %set_reg_field_value_ex.exit21

set_reg_field_value_ex.exit21:                    ; preds = %if.then38.i14, %while.body.set_reg_field_value_ex.exit21_crit_edge
  %neg.i15 = xor i32 %5, -1
  %and.i16 = and i32 %reg_val.addr.023, %neg.i15
  %conv.i17 = and i32 %3, 255
  %shl.i18 = shl i32 %7, %conv.i17
  %and42.i19 = and i32 %shl.i18, %5
  %or.i20 = or i32 %and42.i19, %and.i16
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %set_reg_field_value_ex.exit21.while.end_crit_edge, label %set_reg_field_value_ex.exit21.while.body_crit_edge

set_reg_field_value_ex.exit21.while.body_crit_edge: ; preds = %set_reg_field_value_ex.exit21
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

set_reg_field_value_ex.exit21.while.end_crit_edge: ; preds = %set_reg_field_value_ex.exit21
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %set_reg_field_value_ex.exit21.while.end_crit_edge, %set_reg_field_value_ex.exit.while.end_crit_edge
  %reg_val.addr.0.lcssa = phi i32 [ %or.i, %set_reg_field_value_ex.exit.while.end_crit_edge ], [ %or.i20, %set_reg_field_value_ex.exit21.while.end_crit_edge ]
  call void @dm_write_reg_func(ptr noundef %ctx, i32 noundef %addr_index, i32 noundef %index, ptr noundef nonnull @__func__.generic_write_indirect_reg) #5
  call void @dm_write_reg_func(ptr noundef %ctx, i32 noundef %addr_data, i32 noundef %reg_val.addr.0.lcssa, ptr noundef nonnull @__func__.generic_write_indirect_reg) #5
  call void @llvm.va_end(ptr nonnull %ap)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #5
  ret i32 %reg_val.addr.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reg_sequence_start_gather(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmub_srv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end49_crit_edge, label %land.lhs.true

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 8
  %dmub_offload_enabled = getelementptr inbounds %struct.dc_debug_options, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %dmub_offload_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dmub_offload_enabled, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end49_crit_edge, label %if.then

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then:                                          ; preds = %land.lhs.true
  %reg_helper_offload = getelementptr inbounds %struct.dc_dmub_srv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %reg_helper_offload to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg_helper_offload, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.then.do.end47_crit_edge, label %land.rhs

if.then.do.end47_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end47

land.rhs:                                         ; preds = %if.then
  %.b55 = load i1, ptr @reg_sequence_start_gather.__already_done, align 1
  br i1 %.b55, label %land.rhs.if.then44_crit_edge, label %if.then13, !prof !57

land.rhs.if.then44_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then44

if.then13:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @reg_sequence_start_gather.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 603, i32 noundef 9, ptr noundef null) #5
  br label %if.then44

if.then44:                                        ; preds = %if.then13, %land.rhs.if.then44_crit_edge
  tail call void @kgdb_breakpoint() #5
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %if.then.do.end47_crit_edge
  %8 = ptrtoint ptr %reg_helper_offload to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %reg_helper_offload, align 4
  br label %if.end49

if.end49:                                         ; preds = %do.end47, %land.lhs.true.if.end49_crit_edge, %entry.if.end49_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reg_sequence_start_execute(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmub_srv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_helper_offload = getelementptr inbounds %struct.dc_dmub_srv, ptr %1, i32 0, i32 1
  %tobool2.not = icmp eq ptr %reg_helper_offload, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %2 = ptrtoint ptr %reg_helper_offload to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_helper_offload, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.then4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %land.lhs.true
  %4 = ptrtoint ptr %reg_helper_offload to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %reg_helper_offload, align 4
  %should_burst_write = getelementptr inbounds %struct.dc_dmub_srv, ptr %1, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %should_burst_write to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %should_burst_write, align 4
  %cmd_data = getelementptr inbounds %struct.dc_dmub_srv, ptr %1, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %cmd_data to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %bf.load = load i32, ptr %cmd_data, align 1
  %bf.lshr = lshr i32 %bf.load, 24
  %trunc = trunc i32 %bf.lshr to i8
  %7 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %if.then4.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 4, label %sw.bb6
    i8 3, label %sw.bb7
  ]

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %same_addr_count.i = getelementptr inbounds %struct.dc_dmub_srv, ptr %1, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %same_addr_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %same_addr_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp.i = icmp eq i32 %9, 4
  %frombool.i = zext i1 %cmp.i to i8
  %10 = ptrtoint ptr %should_burst_write to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool.i, ptr %should_burst_write, align 4
  %reg_seq_count.i = getelementptr inbounds %struct.dc_dmub_srv, ptr %1, i32 0, i32 1, i32 6
  %11 = ptrtoint ptr %reg_seq_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_seq_count.i, align 4
  %13 = ptrtoint ptr %cmd_data to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %bf.load.i = load i32, ptr %cmd_data, align 1
  %bf.value.i = mul i32 %12, 48
  %bf.shl.i = and i32 %bf.value.i, 240
  %bf.clear.i = and i32 %bf.load.i, -253
  %bf.set.i = or i32 %bf.clear.i, %bf.shl.i
  store i32 %bf.set.i, ptr %cmd_data, align 1
  %14 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dmub_srv, align 8
  %reg_helper_offload.i = getelementptr inbounds %struct.dc_dmub_srv, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %reg_helper_offload.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reg_helper_offload.i, align 4, !range !56
  store i8 0, ptr %reg_helper_offload.i, align 4
  %18 = load ptr, ptr %dmub_srv, align 8
  tail call void @dc_dmub_srv_cmd_queue(ptr noundef %18, ptr noundef %cmd_data) #5
  %19 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dmub_srv, align 8
  %reg_helper_offload9.i = getelementptr inbounds %struct.dc_dmub_srv, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %reg_helper_offload9.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %17, ptr %reg_helper_offload9.i, align 4
  %22 = call ptr @memset(ptr %cmd_data, i32 0, i32 64)
  %23 = ptrtoint ptr %reg_seq_count.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %reg_seq_count.i, align 4
  %24 = ptrtoint ptr %same_addr_count.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %same_addr_count.i, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dmub_srv, align 8
  %reg_helper_offload.i24 = getelementptr inbounds %struct.dc_dmub_srv, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %reg_helper_offload.i24 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %reg_helper_offload.i24, align 4, !range !56
  store i8 0, ptr %reg_helper_offload.i24, align 4
  %29 = load ptr, ptr %dmub_srv, align 8
  tail call void @dc_dmub_srv_cmd_queue(ptr noundef %29, ptr noundef %cmd_data) #5
  %30 = call ptr @memset(ptr %cmd_data, i32 0, i32 20)
  %reg_seq_count.i25 = getelementptr inbounds %struct.dc_dmub_srv, ptr %1, i32 0, i32 1, i32 6
  %31 = ptrtoint ptr %reg_seq_count.i25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %reg_seq_count.i25, align 4
  %32 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dmub_srv, align 8
  %reg_helper_offload8.i = getelementptr inbounds %struct.dc_dmub_srv, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %reg_helper_offload8.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %28, ptr %reg_helper_offload8.i, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %reg_seq_count.i27 = getelementptr inbounds %struct.dc_dmub_srv, ptr %1, i32 0, i32 1, i32 6
  %35 = ptrtoint ptr %reg_seq_count.i27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_seq_count.i27, align 4
  %mul.i = shl i32 %36, 4
  %37 = ptrtoint ptr %cmd_data to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %bf.load.i28 = load i32, ptr %cmd_data, align 1
  %bf.value.i29 = and i32 %mul.i, 240
  %bf.clear.i30 = and i32 %bf.load.i28, -253
  %bf.set.i31 = or i32 %bf.clear.i30, %bf.value.i29
  store i32 %bf.set.i31, ptr %cmd_data, align 1
  %38 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dmub_srv, align 8
  %reg_helper_offload.i33 = getelementptr inbounds %struct.dc_dmub_srv, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %reg_helper_offload.i33 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %reg_helper_offload.i33, align 4, !range !56
  store i8 0, ptr %reg_helper_offload.i33, align 4
  %42 = load ptr, ptr %dmub_srv, align 8
  tail call void @dc_dmub_srv_cmd_queue(ptr noundef %42, ptr noundef %cmd_data) #5
  %43 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dmub_srv, align 8
  %reg_helper_offload8.i34 = getelementptr inbounds %struct.dc_dmub_srv, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %reg_helper_offload8.i34 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %41, ptr %reg_helper_offload8.i34, align 4
  %46 = call ptr @memset(ptr %cmd_data, i32 0, i32 64)
  %47 = ptrtoint ptr %reg_seq_count.i27 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %reg_seq_count.i27, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb6, %sw.bb
  %48 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dmub_srv, align 8
  tail call void @dc_dmub_srv_cmd_execute(ptr noundef %49) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_dmub_srv_cmd_execute(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reg_sequence_wait_done(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dmub_srv = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 14
  %0 = ptrtoint ptr %dmub_srv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmub_srv, align 8
  %tobool.not = icmp eq ptr %1, null
  %reg_helper_offload = getelementptr inbounds %struct.dc_dmub_srv, ptr %1, i32 0, i32 1
  %tobool2.not = icmp eq ptr %reg_helper_offload, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 8
  %dmub_offload_enabled = getelementptr inbounds %struct.dc_debug_options, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %dmub_offload_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dmub_offload_enabled, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true4:                                   ; preds = %land.lhs.true
  %dmcub_emulation = getelementptr inbounds %struct.dc_debug_options, ptr %3, i32 0, i32 62
  %6 = ptrtoint ptr %dmcub_emulation to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dmcub_emulation, align 2, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true4.cleanup_crit_edge

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dc_dmub_srv_wait_idle(ptr noundef nonnull %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %land.lhs.true4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_dmub_srv_wait_idle(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_dmub_srv_cmd_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__func__.generic_reg_update_ex, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_helper.c", i32 265, i32 12}
!2 = !{ptr @__func__.generic_reg_set_ex, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_helper.c", i32 296, i32 2}
!4 = !{ptr @__func__.generic_reg_get, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_helper.c", i32 303, i32 21}
!6 = !{ptr @__func__.generic_reg_get2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_helper.c", i32 312, i32 21}
!8 = !{ptr @__func__.generic_reg_get3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_helper.c", i32 323, i32 21}
!10 = !{ptr @__func__.generic_reg_get4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_helper.c", i32 336, i32 21}
!12 = !{ptr @__func__.generic_reg_get5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_helper.c", i32 351, i32 21}
!14 = !{ptr @__func__.generic_reg_get6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_helper.c", i32 368, i32 21}
!16 = !{ptr @__func__.generic_reg_get7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_helper.c", i32 387, i32 21}
!18 = !{ptr @__func__.generic_reg_get8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_helper.c", i32 408, i32 21}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_helper.c", i32 472, i32 2}
!22 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__func__.generic_reg_wait, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_helper.c", i32 482, i32 13}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_helper.c", i32 489, i32 5}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_helper.c", i32 496, i32 2}
!29 = !{ptr @generic_reg_wait._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @generic_reg_wait._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_helper.c", i32 501, i32 3}
!33 = !{ptr @__func__.generic_write_indirect_reg, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_helper.c", i32 508, i32 2}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_helper.c", i32 521, i32 3}
!37 = !{ptr @__func__.generic_read_indirect_reg, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_helper.c", i32 524, i32 2}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_helper.c", i32 603, i32 3}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dc_helper.c", i32 120, i32 2}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dm_services.h", i32 107, i32 2}
!45 = !{ptr @.str.4, !44, !"<string literal>", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"auto-init"}
!56 = !{i8 0, i8 2}
!57 = !{!"branch_weights", i32 2000, i32 1}
