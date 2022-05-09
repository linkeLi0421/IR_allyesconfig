; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/ast/ast_dp501.c_pt.bc'
source_filename = "../drivers/gpu/drm/ast/ast_dp501.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ast_private = type { %struct.drm_device, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.drm_plane, %struct.ast_cursor_plane, %struct.drm_crtc, %struct.drm_encoder, %struct.ast_connector, i8, i32, i32, i8, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.87 = type { i32, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.ast_cursor_plane = type { %struct.drm_plane, [2 x %struct.anon.90], i32 }
%struct.anon.90 = type { ptr, %struct.dma_buf_map, i64 }
%struct.dma_buf_map = type { %union.anon.85, i8 }
%union.anon.85 = type { ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.ast_connector = type { %struct.drm_connector, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.84 }
%union.anon.84 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.firmware = type { i32, ptr, ptr }

@__UNIQUE_ID_firmware306 = internal constant [30 x i8] c"ast.firmware=ast_dp501_fw.bin\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ast_dp501_fw.bin\00", [47 x i8] zeroinitializer }, align 32
@switch.table.ast_init_3rdtx = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1138753536, i32 1205862400, i32 1340080128, i32 1608515584], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 12]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [35 x i8] c"../drivers/gpu/drm/ast/ast_dp501.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 24, i32 41 }
@___asan_gen_.4 = private unnamed_addr constant [28 x i8] c"switch.table.ast_init_3rdtx\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_firmware306, ptr @.str, ptr @switch.table.ast_init_3rdtx], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ast_init_3rdtx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ast_set_dp501_video_output(ptr noundef %dev, i8 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %land.rhs.i.i.do.body.i.i_crit_edge, %entry
  %retry.0.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %land.rhs.i.i.do.body.i.i_crit_edge ]
  %call.i.i = tail call zeroext i8 @ast_get_index_reg_mask(ptr noundef %dev, i32 noundef 84, i8 noundef zeroext -46, i8 noundef zeroext -1) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 21474800) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i)
  %tobool.not.i.i = icmp sgt i8 %call.i.i, -1
  br i1 %tobool.not.i.i, label %wait_nack.exit.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %do.body.i.i
  %inc.i.i = add nuw nsw i32 %retry.0.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1001
  br i1 %exitcond.not.i.i, label %land.rhs.i.i.ast_write_cmd.exit_crit_edge, label %land.rhs.i.i.do.body.i.i_crit_edge

land.rhs.i.i.do.body.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.i

land.rhs.i.i.ast_write_cmd.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ast_write_cmd.exit

wait_nack.exit.i:                                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %retry.0.i.i)
  %cmp4.i.i = icmp ult i32 %retry.0.i.i, 1000
  br i1 %cmp4.i.i, label %if.then.i, label %wait_nack.exit.i.ast_write_cmd.exit_crit_edge

wait_nack.exit.i.ast_write_cmd.exit_crit_edge:    ; preds = %wait_nack.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ast_write_cmd.exit

if.then.i:                                        ; preds = %wait_nack.exit.i
  %call.i1.i = tail call zeroext i8 @ast_get_index_reg_mask(ptr noundef %dev, i32 noundef 84, i8 noundef zeroext -101, i8 noundef zeroext -1) #3
  %1 = and i8 %call.i1.i, 127
  tail call void @ast_set_index_reg_mask(ptr noundef %dev, i32 noundef 84, i8 noundef zeroext -101, i8 noundef zeroext 0, i8 noundef zeroext %1) #3
  tail call void @ast_set_index_reg_mask(ptr noundef %dev, i32 noundef 84, i8 noundef zeroext -102, i8 noundef zeroext 0, i8 noundef zeroext 64) #3
  %call.i2.i = tail call zeroext i8 @ast_get_index_reg_mask(ptr noundef %dev, i32 noundef 84, i8 noundef zeroext -101, i8 noundef zeroext -1) #3
  %2 = or i8 %call.i2.i, -128
  tail call void @ast_set_index_reg_mask(ptr noundef %dev, i32 noundef 84, i8 noundef zeroext -101, i8 noundef zeroext 0, i8 noundef zeroext %2) #3
  tail call void @ast_set_index_reg_mask(ptr noundef %dev, i32 noundef 84, i8 noundef zeroext -101, i8 noundef zeroext -65, i8 noundef zeroext 64) #3
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.backedge, %if.then.i
  %retry.0.i = phi i32 [ 0, %if.then.i ], [ %retry.0.i.be, %do.body.i.backedge ]
  br label %do.body.i6.i

do.body.i6.i:                                     ; preds = %land.rhs.i9.i.do.body.i6.i_crit_edge, %do.body.i
  %retry.0.i3.i = phi i32 [ 0, %do.body.i ], [ %inc.i7.i, %land.rhs.i9.i.do.body.i6.i_crit_edge ]
  %call.i4.i = tail call zeroext i8 @ast_get_index_reg_mask(ptr noundef %dev, i32 noundef 84, i8 noundef zeroext -46, i8 noundef zeroext -1) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 21474800) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i4.i)
  %tobool.not.i5.i = icmp sgt i8 %call.i4.i, -1
  br i1 %tobool.not.i5.i, label %land.rhs.i9.i, label %wait_ack.exit.i

land.rhs.i9.i:                                    ; preds = %do.body.i6.i
  %inc.i7.i = add nuw nsw i32 %retry.0.i3.i, 1
  %exitcond.not.i8.i = icmp eq i32 %inc.i7.i, 1001
  br i1 %exitcond.not.i8.i, label %do.cond.i, label %land.rhs.i9.i.do.body.i6.i_crit_edge

land.rhs.i9.i.do.body.i6.i_crit_edge:             ; preds = %land.rhs.i9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i6.i

wait_ack.exit.i:                                  ; preds = %do.body.i6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %retry.0.i3.i)
  %cmp3.i.i = icmp ult i32 %retry.0.i3.i, 1000
  %inc.i = add nuw nsw i32 %retry.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 101
  %or.cond.i = select i1 %cmp3.i.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %wait_ack.exit.i.ast_write_cmd.exit_crit_edge, label %wait_ack.exit.i.do.body.i.backedge_crit_edge

wait_ack.exit.i.do.body.i.backedge_crit_edge:     ; preds = %wait_ack.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.backedge

wait_ack.exit.i.ast_write_cmd.exit_crit_edge:     ; preds = %wait_ack.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ast_write_cmd.exit

do.body.i.backedge:                               ; preds = %do.cond.i.do.body.i.backedge_crit_edge, %wait_ack.exit.i.do.body.i.backedge_crit_edge
  %retry.0.i.be = phi i32 [ %inc.old.i, %do.cond.i.do.body.i.backedge_crit_edge ], [ %inc.i, %wait_ack.exit.i.do.body.i.backedge_crit_edge ]
  br label %do.body.i

do.cond.i:                                        ; preds = %land.rhs.i9.i
  %inc.old.i = add nuw nsw i32 %retry.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %inc.old.i)
  %exitcond.not.old.i = icmp eq i32 %inc.old.i, 101
  br i1 %exitcond.not.old.i, label %do.cond.i.ast_write_cmd.exit_crit_edge, label %do.cond.i.do.body.i.backedge_crit_edge

do.cond.i.do.body.i.backedge_crit_edge:           ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.backedge

do.cond.i.ast_write_cmd.exit_crit_edge:           ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ast_write_cmd.exit

ast_write_cmd.exit:                               ; preds = %do.cond.i.ast_write_cmd.exit_crit_edge, %wait_ack.exit.i.ast_write_cmd.exit_crit_edge, %wait_nack.exit.i.ast_write_cmd.exit_crit_edge, %land.rhs.i.i.ast_write_cmd.exit_crit_edge
  tail call void @ast_set_index_reg_mask(ptr noundef %dev, i32 noundef 84, i8 noundef zeroext -101, i8 noundef zeroext -65, i8 noundef zeroext 0) #3
  %call.i12.i = tail call zeroext i8 @ast_get_index_reg_mask(ptr noundef %dev, i32 noundef 84, i8 noundef zeroext -101, i8 noundef zeroext -1) #3
  %4 = and i8 %call.i12.i, 127
  tail call void @ast_set_index_reg_mask(ptr noundef %dev, i32 noundef 84, i8 noundef zeroext -101, i8 noundef zeroext 0, i8 noundef zeroext %4) #3
  br label %do.body.i.i6

do.body.i.i6:                                     ; preds = %land.rhs.i.i9.do.body.i.i6_crit_edge, %ast_write_cmd.exit
  %retry.0.i.i3 = phi i32 [ 0, %ast_write_cmd.exit ], [ %inc.i.i7, %land.rhs.i.i9.do.body.i.i6_crit_edge ]
  %call.i.i4 = tail call zeroext i8 @ast_get_index_reg_mask(ptr noundef %dev, i32 noundef 84, i8 noundef zeroext -46, i8 noundef zeroext -1) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 21474800) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i4)
  %tobool.not.i.i5 = icmp sgt i8 %call.i.i4, -1
  br i1 %tobool.not.i.i5, label %wait_nack.exit.i11, label %land.rhs.i.i9

land.rhs.i.i9:                                    ; preds = %do.body.i.i6
  %inc.i.i7 = add nuw nsw i32 %retry.0.i.i3, 1
  %exitcond.not.i.i8 = icmp eq i32 %inc.i.i7, 1001
  br i1 %exitcond.not.i.i8, label %land.rhs.i.i9.ast_write_data.exit_crit_edge, label %land.rhs.i.i9.do.body.i.i6_crit_edge

land.rhs.i.i9.do.body.i.i6_crit_edge:             ; preds = %land.rhs.i.i9
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.i6

land.rhs.i.i9.ast_write_data.exit_crit_edge:      ; preds = %land.rhs.i.i9
  call void @__sanitizer_cov_trace_pc() #5
  br label %ast_write_data.exit

wait_nack.exit.i11:                               ; preds = %do.body.i.i6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %retry.0.i.i3)
  %cmp4.i.i10 = icmp ult i32 %retry.0.i.i3, 1000
  br i1 %cmp4.i.i10, label %if.then.i14, label %wait_nack.exit.i11.ast_write_data.exit_crit_edge

wait_nack.exit.i11.ast_write_data.exit_crit_edge: ; preds = %wait_nack.exit.i11
  call void @__sanitizer_cov_trace_pc() #5
  br label %ast_write_data.exit

if.then.i14:                                      ; preds = %wait_nack.exit.i11
  %call.i1.i12 = tail call zeroext i8 @ast_get_index_reg_mask(ptr noundef %dev, i32 noundef 84, i8 noundef zeroext -101, i8 noundef zeroext -1) #3
  %6 = and i8 %call.i1.i12, 127
  tail call void @ast_set_index_reg_mask(ptr noundef %dev, i32 noundef 84, i8 noundef zeroext -101, i8 noundef zeroext 0, i8 noundef zeroext %6) #3
  tail call void @ast_set_index_reg_mask(ptr noundef %dev, i32 noundef 84, i8 noundef zeroext -102, i8 noundef zeroext 0, i8 noundef zeroext %mode) #3
  %call.i2.i13 = tail call zeroext i8 @ast_get_index_reg_mask(ptr noundef %dev, i32 noundef 84, i8 noundef zeroext -101, i8 noundef zeroext -1) #3
  %7 = or i8 %call.i2.i13, -128
  tail call void @ast_set_index_reg_mask(ptr noundef %dev, i32 noundef 84, i8 noundef zeroext -101, i8 noundef zeroext 0, i8 noundef zeroext %7) #3
  br label %do.body.i6.i21

do.body.i6.i21:                                   ; preds = %do.body.i6.i21.do.body.i6.i21_crit_edge, %if.then.i14
  %retry.0.i3.i15 = phi i32 [ 0, %if.then.i14 ], [ %inc.i7.i18, %do.body.i6.i21.do.body.i6.i21_crit_edge ]
  %call.i4.i16 = tail call zeroext i8 @ast_get_index_reg_mask(ptr noundef %dev, i32 noundef 84, i8 noundef zeroext -46, i8 noundef zeroext -1) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 21474800) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i4.i16)
  %tobool.not.i5.i17 = icmp slt i8 %call.i4.i16, 0
  %inc.i7.i18 = add nuw nsw i32 %retry.0.i3.i15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %inc.i7.i18)
  %exitcond.not.i8.i19 = icmp eq i32 %inc.i7.i18, 1001
  %or.cond.i20 = select i1 %tobool.not.i5.i17, i1 true, i1 %exitcond.not.i8.i19
  br i1 %or.cond.i20, label %do.body.i6.i21.ast_write_data.exit_crit_edge, label %do.body.i6.i21.do.body.i6.i21_crit_edge

do.body.i6.i21.do.body.i6.i21_crit_edge:          ; preds = %do.body.i6.i21
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i6.i21

do.body.i6.i21.ast_write_data.exit_crit_edge:     ; preds = %do.body.i6.i21
  call void @__sanitizer_cov_trace_pc() #5
  br label %ast_write_data.exit

ast_write_data.exit:                              ; preds = %do.body.i6.i21.ast_write_data.exit_crit_edge, %wait_nack.exit.i11.ast_write_data.exit_crit_edge, %land.rhs.i.i9.ast_write_data.exit_crit_edge
  %call.i12.i22 = tail call zeroext i8 @ast_get_index_reg_mask(ptr noundef %dev, i32 noundef 84, i8 noundef zeroext -101, i8 noundef zeroext -1) #3
  %9 = and i8 %call.i12.i22, 127
  tail call void @ast_set_index_reg_mask(ptr noundef %dev, i32 noundef 84, i8 noundef zeroext -101, i8 noundef zeroext 0, i8 noundef zeroext %9) #3
  tail call void @msleep(i32 noundef 10) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ast_backup_fw(ptr noundef %dev, ptr nocapture noundef writeonly %addr, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %config_mode = getelementptr inbounds %struct.ast_private, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %config_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ast_mindwm(ptr noundef %dev, i32 noundef 510533888) #3
  %and = and i32 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %call.i = tail call i32 @ast_mindwm(ptr noundef %dev, i32 noundef 510533892) #3
  %and.i = and i32 %call.i, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp417.not = icmp eq i32 %size, 0
  br i1 %cmp417.not, label %if.then2.cleanup_crit_edge, label %if.then2.for.body_crit_edge

if.then2.for.body_crit_edge:                      ; preds = %if.then2
  br label %for.body

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then2.for.body_crit_edge
  %i.018 = phi i32 [ %add6, %for.body.for.body_crit_edge ], [ 0, %if.then2.for.body_crit_edge ]
  %add = add i32 %i.018, %and.i
  %call5 = tail call i32 @ast_mindwm(ptr noundef %dev, i32 noundef %add) #3
  %add.ptr = getelementptr i8, ptr %addr, i32 %i.018
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call5, ptr %add.ptr, align 4
  %add6 = add i32 %i.018, 4
  %cmp4 = icmp ult i32 %add6, %size
  br i1 %cmp4, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ true, %if.then2.cleanup_crit_edge ], [ true, %for.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ast_mindwm(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @ast_get_dp501_max_clk(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %config_mode = getelementptr inbounds %struct.ast_private, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %config_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @ast_mindwm(ptr noundef %dev, i32 noundef 510533892) #3
  %and.i = and i32 %call.i, 2147483647
  %add = add nuw i32 %and.i, 61440
  %call2 = tail call i32 @ast_mindwm(ptr noundef %dev, i32 noundef %add) #3
  %and = and i32 %call2, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and)
  %cmp3.not = icmp eq i32 %and, 16
  br i1 %cmp3.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %if.then
  %add5 = add nuw i32 %and.i, 61460
  %call6 = tail call i32 @ast_mindwm(ptr noundef %dev, i32 noundef %add5) #3
  %2 = and i32 %call6, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp7 = icmp eq i32 %2, 0
  br i1 %cmp7, label %if.then9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %linkcap.sroa.7.0.extract.shift = lshr i32 %call6, 16
  %linkcap.sroa.0.0.extract.shift.mask = and i32 %call6, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 167772160, i32 %linkcap.sroa.0.0.extract.shift.mask)
  %cmp13 = icmp eq i32 %linkcap.sroa.0.0.extract.shift.mask, 167772160
  %conv15 = and i32 %linkcap.sroa.7.0.extract.shift, 255
  %cond.v = select i1 %cmp13, i32 90, i32 54
  %cond = mul nuw nsw i32 %cond.v, %conv15
  %3 = tail call i32 @llvm.umin.i32(i32 %cond, i32 255)
  %conv22 = trunc i32 %3 to i8
  br label %cleanup

if.else:                                          ; preds = %entry
  %dp501_fw_buf = getelementptr inbounds %struct.ast_private, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %dp501_fw_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dp501_fw_buf, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else.cleanup_crit_edge, label %if.end25

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end25:                                         ; preds = %if.else
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  %7 = ptrtoint ptr %dp501_fw_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dp501_fw_buf, align 4
  %add.ptr32 = getelementptr i8, ptr %8, i32 61440
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %10 = and i32 %9, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %10)
  %cmp37.not = icmp eq i32 %10, 268435456
  br i1 %cmp37.not, label %if.end40, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end40:                                         ; preds = %if.end25
  %11 = ptrtoint ptr %dp501_fw_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dp501_fw_buf, align 4
  %add.ptr45 = getelementptr i8, ptr %12, i32 61460
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #3, !srcloc !13
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %15 = and i32 %14, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp51 = icmp eq i32 %15, 0
  br i1 %cmp51, label %if.then53, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then53:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  %linkcap.sroa.7.0.extract.shift110 = lshr i32 %14, 16
  %linkcap.sroa.0.0.extract.shift108.mask = and i32 %14, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 167772160, i32 %linkcap.sroa.0.0.extract.shift108.mask)
  %cmp57 = icmp eq i32 %linkcap.sroa.0.0.extract.shift108.mask, 167772160
  %conv60 = and i32 %linkcap.sroa.7.0.extract.shift110, 255
  %cond66.v = select i1 %cmp57, i32 90, i32 54
  %cond66 = mul nuw nsw i32 %cond66.v, %conv60
  %16 = tail call i32 @llvm.umin.i32(i32 %cond66, i32 255)
  %conv71 = trunc i32 %16 to i8
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %if.end40.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then9, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i8 [ -1, %if.then.cleanup_crit_edge ], [ 65, %if.else.cleanup_crit_edge ], [ -1, %if.end25.cleanup_crit_edge ], [ %conv22, %if.then9 ], [ -1, %if.end.cleanup_crit_edge ], [ %conv71, %if.then53 ], [ -1, %if.end40.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ast_dp501_read_edid(ptr noundef %dev, ptr nocapture noundef writeonly %ediddata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %config_mode = getelementptr inbounds %struct.ast_private, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %config_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @ast_mindwm(ptr noundef %dev, i32 noundef 510533892) #3
  %and.i = and i32 %call.i, 2147483647
  %add = add nuw i32 %and.i, 61440
  %call2 = tail call i32 @ast_mindwm(ptr noundef %dev, i32 noundef %add) #3
  %and = and i32 %call2, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and)
  %cmp3.not = icmp eq i32 %and, 16
  br i1 %cmp3.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %if.then
  %add5 = add nuw i32 %and.i, 61456
  %call6 = tail call i32 @ast_mindwm(ptr noundef %dev, i32 noundef %add5) #3
  %and7 = and i32 %call6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %add11 = add nuw i32 %and.i, 61472
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.098 = phi i32 [ 0, %for.cond.preheader ], [ %add14, %for.body.for.body_crit_edge ]
  %add12 = add nuw i32 %add11, %i.098
  %call13 = tail call i32 @ast_mindwm(ptr noundef %dev, i32 noundef %add12) #3
  %add.ptr = getelementptr i8, ptr %ediddata, i32 %i.098
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call13, ptr %add.ptr, align 4
  %add14 = add nuw nsw i32 %i.098, 4
  %cmp10 = icmp ult i32 %i.098, 124
  br i1 %cmp10, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

if.else:                                          ; preds = %entry
  %dp501_fw_buf = getelementptr inbounds %struct.ast_private, ptr %dev, i32 0, i32 3
  %3 = ptrtoint ptr %dp501_fw_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dp501_fw_buf, align 4
  %tobool15.not = icmp eq ptr %4, null
  br i1 %tobool15.not, label %if.else.cleanup_crit_edge, label %if.end17

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end17:                                         ; preds = %if.else
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  %6 = ptrtoint ptr %dp501_fw_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dp501_fw_buf, align 4
  %add.ptr25 = getelementptr i8, ptr %7, i32 61440
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  %9 = and i32 %8, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %9)
  %cmp30.not = icmp eq i32 %9, 268435456
  br i1 %cmp30.not, label %if.end32, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end32:                                         ; preds = %if.end17
  %10 = ptrtoint ptr %dp501_fw_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dp501_fw_buf, align 4
  %add.ptr36 = getelementptr i8, ptr %11, i32 61456
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  %13 = and i32 %12, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool41.not = icmp eq i32 %13, 0
  br i1 %tobool41.not, label %if.end32.cleanup_crit_edge, label %if.end32.for.body46_crit_edge

if.end32.for.body46_crit_edge:                    ; preds = %if.end32
  br label %for.body46

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %if.end32.for.body46_crit_edge
  %i.197 = phi i32 [ %add57, %for.body46.for.body46_crit_edge ], [ 0, %if.end32.for.body46_crit_edge ]
  %14 = ptrtoint ptr %dp501_fw_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dp501_fw_buf, align 4
  %add.ptr50 = getelementptr i8, ptr %15, i32 61472
  %add.ptr51 = getelementptr i8, ptr %add.ptr50, i32 %i.197
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #3, !srcloc !13
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  %add.ptr55 = getelementptr i8, ptr %ediddata, i32 %i.197
  %18 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %add.ptr55, align 4
  %add57 = add nuw nsw i32 %i.197, 4
  %cmp45 = icmp ult i32 %i.197, 124
  br i1 %cmp45, label %for.body46.for.body46_crit_edge, label %for.body46.cleanup_crit_edge

for.body46.cleanup_crit_edge:                     ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body46

cleanup:                                          ; preds = %for.body46.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.else.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.else.cleanup_crit_edge ], [ false, %if.end17.cleanup_crit_edge ], [ false, %if.end32.cleanup_crit_edge ], [ true, %for.body.cleanup_crit_edge ], [ true, %for.body46.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ast_init_3rdtx(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.ast_private, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip, align 8
  %.off = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then:                                          ; preds = %entry
  %call3 = tail call zeroext i8 @ast_get_index_reg_mask(ptr noundef %dev, i32 noundef 84, i8 noundef zeroext -47, i8 noundef zeroext -1) #3
  %2 = and i8 %call3, 14
  %and = zext i8 %2 to i32
  %3 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %sw.default [
    i32 4, label %sw.bb
    i32 8, label %sw.bb5
    i32 12, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @ast_init_dvo(ptr noundef %dev)
  br label %if.end13

sw.bb5:                                           ; preds = %if.then
  %config_mode.i = getelementptr inbounds %struct.ast_private, ptr %dev, i32 0, i32 15
  %4 = ptrtoint ptr %config_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %config_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb5.if.end13_crit_edge

sw.bb5.if.end13_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.end.i:                                         ; preds = %sw.bb5
  %call1.i = tail call i32 @ast_mindwm(ptr noundef %dev, i32 noundef 510533888) #3
  %and.i = and i32 %call1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then2.i, label %if.end.i.if.end13_crit_edge

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then2.i:                                       ; preds = %if.end.i
  %dp501_fw_addr.i = getelementptr inbounds %struct.ast_private, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %dp501_fw_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dp501_fw_addr.i, align 8
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %if.else.i, label %if.then2.i.if.end14.i_crit_edge

if.then2.i.if.end14.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14.i

if.else.i:                                        ; preds = %if.then2.i
  %dp501_fw.i = getelementptr inbounds %struct.ast_private, ptr %dev, i32 0, i32 19
  %8 = ptrtoint ptr %dp501_fw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dp501_fw.i, align 4
  %tobool6.not.i = icmp eq ptr %9, null
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %if.else.i.if.end10.i_crit_edge

if.else.i.if.end10.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %dev1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %10 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i.i, align 4
  %call2.i.i = tail call i32 @request_firmware(ptr noundef %dp501_fw.i, ptr noundef nonnull @.str, ptr noundef %11) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %land.lhs.true.i.ast_load_dp501_microcode.exit.i_crit_edge

land.lhs.true.i.ast_load_dp501_microcode.exit.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ast_load_dp501_microcode.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true.i
  %12 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1.i.i, align 4
  %call.i.i.i = tail call i32 @devm_add_action(ptr noundef %13, ptr noundef nonnull @ast_release_firmware, ptr noundef %dev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.end10.i_crit_edge, label %if.then.i.i.i

if.end.i.i.if.end10.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %dp501_fw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dp501_fw.i, align 4
  tail call void @release_firmware(ptr noundef %15) #3
  %16 = ptrtoint ptr %dp501_fw.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %dp501_fw.i, align 4
  br label %ast_load_dp501_microcode.exit.i

ast_load_dp501_microcode.exit.i:                  ; preds = %if.then.i.i.i, %land.lhs.true.i.ast_load_dp501_microcode.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call2.i.i, %land.lhs.true.i.ast_load_dp501_microcode.exit.i_crit_edge ], [ %call.i.i.i, %if.then.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp8.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp8.i, label %ast_load_dp501_microcode.exit.i.if.end13_crit_edge, label %ast_load_dp501_microcode.exit.i.if.end10.i_crit_edge

ast_load_dp501_microcode.exit.i.if.end10.i_crit_edge: ; preds = %ast_load_dp501_microcode.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10.i

ast_load_dp501_microcode.exit.i.if.end13_crit_edge: ; preds = %ast_load_dp501_microcode.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.end10.i:                                       ; preds = %ast_load_dp501_microcode.exit.i.if.end10.i_crit_edge, %if.end.i.i.if.end10.i_crit_edge, %if.else.i.if.end10.i_crit_edge
  %17 = ptrtoint ptr %dp501_fw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dp501_fw.i, align 4
  %data12.i = getelementptr inbounds %struct.firmware, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %data12.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data12.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %18, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end10.i, %if.then2.i.if.end14.i_crit_edge
  %len.0.i = phi i32 [ %22, %if.end10.i ], [ 32768, %if.then2.i.if.end14.i_crit_edge ]
  %fw_addr.0.i = phi ptr [ %20, %if.end10.i ], [ %7, %if.then2.i.if.end14.i_crit_edge ]
  tail call void @ast_moutdwm(ptr noundef %dev, i32 noundef 510533632, i32 noundef 378054824) #3
  %call15.i = tail call i32 @ast_mindwm(ptr noundef %dev, i32 noundef 510525444) #3
  %and16.i = and i32 %call15.i, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ast_init_3rdtx, i32 0, i32 %and16.i
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load i32, ptr %switch.gep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i)
  %cmp204.not.i = icmp eq i32 %len.0.i, 0
  br i1 %cmp204.not.i, label %if.end14.i.for.end.i_crit_edge, label %if.end14.i.for.body.i_crit_edge

if.end14.i.for.body.i_crit_edge:                  ; preds = %if.end14.i
  br label %for.body.i

if.end14.i.for.end.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end14.i.for.body.i_crit_edge
  %i.05.i = phi i32 [ %add21.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end14.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %fw_addr.0.i, i32 %i.05.i
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i, align 4
  %add.i = add i32 %i.05.i, %switch.load
  tail call void @ast_moutdwm(ptr noundef %dev, i32 noundef %add.i, i32 noundef %25) #3
  %add21.i = add i32 %i.05.i, 4
  %cmp20.i = icmp ult i32 %add21.i, %len.0.i
  br i1 %cmp20.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end14.i.for.end.i_crit_edge
  tail call void @ast_moutdwm(ptr noundef %dev, i32 noundef 510533632, i32 noundef 378054824) #3
  %add221.i = or i32 %switch.load, -2147483648
  tail call void @ast_moutdwm(ptr noundef %dev, i32 noundef 510533892, i32 noundef %add221.i) #3
  tail call void @ast_moutdwm(ptr noundef %dev, i32 noundef 510533888, i32 noundef 1) #3
  %call23.i = tail call i32 @ast_mindwm(ptr noundef %dev, i32 noundef 510533696) #3
  %and24.i = and i32 %call23.i, -3585
  %or.i = or i32 %and24.i, 2048
  tail call void @ast_moutdwm(ptr noundef %dev, i32 noundef 510533696, i32 noundef %or.i) #3
  %call25.i = tail call zeroext i8 @ast_get_index_reg_mask(ptr noundef %dev, i32 noundef 84, i8 noundef zeroext -103, i8 noundef zeroext -4) #3
  %26 = or i8 %call25.i, 2
  %conv1.i.i = zext i8 %26 to i16
  %shl.i.i = shl nuw i16 %conv1.i.i, 8
  %or.i.i = or i16 %shl.i.i, 153
  %ioregs.i.i.i = getelementptr inbounds %struct.ast_private, ptr %dev, i32 0, i32 2
  %27 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %29 = tail call i16 @llvm.bswap.i16(i16 %or.i.i) #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %29) #3, !srcloc !22
  br label %if.end13

sw.bb7:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @ast_init_dvo(ptr noundef %dev)
  br label %if.end13

sw.default:                                       ; preds = %if.then
  %tx_chip_type = getelementptr inbounds %struct.ast_private, ptr %dev, i32 0, i32 16
  %30 = ptrtoint ptr %tx_chip_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_chip_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp9 = icmp eq i32 %31, 1
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @ast_init_dvo(ptr noundef %dev)
  br label %if.end13

if.else:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #5
  %regs.i.i = getelementptr inbounds %struct.ast_private, ptr %dev, i32 0, i32 1
  %32 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 61444
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 28190) #3, !srcloc !24
  %34 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %35, i32 61440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 16777216) #3, !srcloc !24
  %36 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %37, i32 73728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 -1465350122) #3, !srcloc !24
  %38 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %39, i32 73728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 -1465350122) #3, !srcloc !24
  %40 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %41, i32 73728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 -1465350122) #3, !srcloc !24
  %42 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %43, i32 73772
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  %45 = and i32 %44, -769
  %46 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #3, !srcloc !24
  tail call void @ast_set_index_reg_mask(ptr noundef %dev, i32 noundef 84, i8 noundef zeroext -93, i8 noundef zeroext -49, i8 noundef zeroext 0) #3
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11, %sw.bb7, %for.end.i, %ast_load_dp501_microcode.exit.i.if.end13_crit_edge, %if.end.i.if.end13_crit_edge, %sw.bb5.if.end13_crit_edge, %sw.bb, %entry.if.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ast_get_index_reg_mask(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ast_init_dvo(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.ast_private, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 61444
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 28190) #3, !srcloc !24
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %3, i32 61440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 16777216) #3, !srcloc !24
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %5, i32 73728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 -1465350122) #3, !srcloc !24
  %call1 = tail call zeroext i8 @ast_get_index_reg_mask(ptr noundef %dev, i32 noundef 84, i8 noundef zeroext -48, i8 noundef zeroext -1) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call1)
  %tobool.not = icmp sgt i8 %call1, -1
  br i1 %tobool.not, label %if.then, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %7, i32 73736
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  %9 = and i32 %8, -458753
  %10 = or i32 %9, 327680
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %12, i32 73736
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %10) #3, !srcloc !24
  %chip = getelementptr inbounds %struct.ast_private, ptr %dev, i32 0, i32 4
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chip, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %cmp = icmp eq i32 %14, 5
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i10 = getelementptr i8, ptr %16, i32 73860
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  %18 = or i32 %17, 65279
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %20, i32 73860
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %18) #3, !srcloc !24
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %22, i32 73864
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  %24 = or i32 %23, -61696
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %26, i32 73864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %24) #3, !srcloc !24
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %28, i32 73872
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  %30 = and i32 %29, -805306369
  %31 = or i32 %30, 536870912
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %33, i32 73872
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %31) #3, !srcloc !24
  br label %if.end23

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i22 = getelementptr i8, ptr %16, i32 73864
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  %35 = or i32 %34, 48
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %37, i32 73864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %35) #3, !srcloc !24
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %39, i32 73868
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  %41 = or i32 %40, -822083584
  %42 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %43, i32 73868
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %41) #3, !srcloc !24
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %45, i32 73892
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  %47 = or i32 %46, 65535
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %49, i32 73892
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %47) #3, !srcloc !24
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %51, i32 73896
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  %53 = or i32 %52, 251658240
  %54 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %55, i32 73896
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %53) #3, !srcloc !24
  %56 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %57, i32 73876
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  %59 = or i32 %58, 33554432
  %60 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %61, i32 73876
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %59) #3, !srcloc !24
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then5, %entry.if.end23_crit_edge
  %62 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %63, i32 73772
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  %65 = and i32 %64, -1025
  %66 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %67, i32 73772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %65) #3, !srcloc !24
  tail call void @ast_set_index_reg_mask(ptr noundef %dev, i32 noundef 84, i8 noundef zeroext -93, i8 noundef zeroext -49, i8 noundef zeroext -128) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_set_index_reg_mask(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_moutdwm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ast_release_firmware(ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dp501_fw = getelementptr inbounds %struct.ast_private, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %dp501_fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp501_fw, align 4
  tail call void @release_firmware(ptr noundef %1) #3
  %2 = ptrtoint ptr %dp501_fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dp501_fw, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__UNIQUE_ID_firmware306, !1, !"__UNIQUE_ID_firmware306", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/ast/ast_dp501.c", i32 9, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/ast/ast_dp501.c", i32 24, i32 41}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 6853311}
!14 = !{i64 2156431303}
!15 = !{i64 2156431832}
!16 = !{i64 2156433117}
!17 = !{i64 2156434498}
!18 = !{i64 2156435027}
!19 = !{i64 2156436312}
!20 = !{i64 2156436939}
!21 = !{i64 2154386975}
!22 = !{i64 6852273}
!23 = !{i64 2154387525}
!24 = !{i64 6852893}
!25 = !{i64 2154386170}
