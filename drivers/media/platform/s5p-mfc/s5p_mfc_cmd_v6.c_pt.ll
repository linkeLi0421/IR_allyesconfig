; ModuleID = '/llk/IR_all_yes/drivers/media/platform/s5p-mfc/s5p_mfc_cmd_v6.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-mfc/s5p_mfc_cmd_v6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.s5p_mfc_hw_cmds = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.s5p_mfc_dev = type { %struct.v4l2_device, ptr, ptr, ptr, [2 x ptr], ptr, i32, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.s5p_mfc_pm, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.mutex, i32, i32, i32, %struct.wait_queue_head, %struct.s5p_mfc_priv_buf, i32, i32, ptr, ptr, [2 x i32], i32, [4 x ptr], i32, i32, %struct.atomic_t, %struct.timer_list, ptr, %struct.work_struct, i32, %struct.s5p_mfc_priv_buf, i32, ptr, ptr, ptr, i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.s5p_mfc_pm = type { ptr, ptr, [4 x ptr], i32, i8, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.s5p_mfc_priv_buf = type { i32, ptr, i32, i32, i32 }
%struct.s5p_mfc_variant = type { i32, i32, i32, ptr, [2 x ptr], [4 x ptr], i32, i8 }
%struct.s5p_mfc_buf_size = type { i32, i32, ptr }
%struct.s5p_mfc_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s5p_mfc_ctx = type { ptr, %struct.v4l2_fh, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, %struct.vb2_queue, %struct.vb2_queue, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, i32, i32, [32 x %struct.s5p_mfc_buf], i32, [32 x %struct.s5p_mfc_buf], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_enc_params, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i32, %union.anon.117, ptr, [128 x ptr], %struct.v4l2_ctrl_handler, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.s5p_mfc_buf = type { ptr, %struct.list_head, %union.anon.114, i32 }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { i32, i32 }
%struct.s5p_mfc_enc_params = type { i16, i16, i32, i32, i16, i32, i16, i32, i16, i32, i8, i8, i8, i32, i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, %struct.anon.116 }
%struct.anon.116 = type { %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_vp8_enc_params, %struct.s5p_mfc_hevc_enc_params }
%struct.s5p_mfc_h264_enc_params = type { i32, i32, i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i16, i8, i8, i8, i8, i8, i32, i32, i16, i32, i8, i8, i8, [7 x i8], i8, i8, i8, i8, i8, i8, i8, i32, [4 x i32], i8, [8 x i32] }
%struct.s5p_mfc_mpeg4_enc_params = type { i32, i32, i16, i16, i8, i8, i8, i8, i8, i32, i32 }
%struct.s5p_mfc_vp8_enc_params = type { i8, i32, i32, i8, i8, i32, i32, i8, [3 x i8], i8, i8, i8, i8, i8 }
%struct.s5p_mfc_hevc_enc_params = type { i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, [7 x i8], [7 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%union.anon.117 = type { i32 }

@s5p_mfc_cmds_v6 = internal global { %struct.s5p_mfc_hw_cmds, [40 x i8] } { %struct.s5p_mfc_hw_cmds { ptr @s5p_mfc_cmd_host2risc_v6, ptr @s5p_mfc_sys_init_cmd_v6, ptr @s5p_mfc_sleep_cmd_v6, ptr @s5p_mfc_wakeup_cmd_v6, ptr @s5p_mfc_open_inst_cmd_v6, ptr @s5p_mfc_close_inst_cmd_v6 }, [40 x i8] zeroinitializer }, align 32
@mfc_debug_level = external dso_local local_unnamed_addr global i32, align 4
@s5p_mfc_cmd_host2risc_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 20, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s:%d: Issue the command: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s5p_mfc_cmd_host2risc_v6\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/media/platform/s5p-mfc/s5p_mfc_cmd_v6.c\00", [48 x i8] zeroinitializer }, align 32
@s5p_mfc_cmd_host2risc_v6._entry_ptr = internal global ptr @s5p_mfc_cmd_host2risc_v6._entry, section ".printk_index", align 4
@s5p_mfc_open_inst_cmd_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s:%d: Requested codec mode: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s5p_mfc_open_inst_cmd_v6\00", [39 x i8] zeroinitializer }, align 32
@s5p_mfc_open_inst_cmd_v6._entry_ptr = internal global ptr @s5p_mfc_open_inst_cmd_v6._entry, section ".printk_index", align 4
@switch.table.s5p_mfc_open_inst_cmd_v6 = internal constant { [27 x i32], [52 x i8] } { [27 x i32] [i32 0, i32 1, i32 10, i32 3, i32 13, i32 8, i32 9, i32 14, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 17, i32 18, i32 -1, i32 20, i32 21, i32 23, i32 24, i32 25, i32 -1, i32 26], [52 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [16 x i8] c"s5p_mfc_cmds_v6\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 157, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 20, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [51 x i8] c"../drivers/media/platform/s5p-mfc/s5p_mfc_cmd_v6.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 73, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [38 x i8] c"switch.table.s5p_mfc_open_inst_cmd_v6\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @s5p_mfc_cmd_host2risc_v6._entry, ptr @s5p_mfc_cmd_host2risc_v6._entry_ptr, ptr @s5p_mfc_open_inst_cmd_v6._entry, ptr @s5p_mfc_open_inst_cmd_v6._entry_ptr, ptr @s5p_mfc_cmds_v6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @switch.table.s5p_mfc_open_inst_cmd_v6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_cmds_v6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_cmd_host2risc_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_open_inst_cmd_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s5p_mfc_open_inst_cmd_v6 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @s5p_mfc_init_hw_cmds_v6() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @s5p_mfc_cmds_v6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_cmd_host2risc_v6(ptr nocapture noundef readonly %dev, i32 noundef %cmd, ptr nocapture noundef readnone %args) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %0 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 20, i32 noundef %cmd) #8
  br label %do.body3

do.body3:                                         ; preds = %do.end, %entry.do.body3_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 4356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %3 = tail call i32 @llvm.bswap.i32(i32 %cmd)
  %4 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_base, align 4
  %add.ptr8 = getelementptr i8, ptr %5, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %3) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs_base, align 4
  %add.ptr12 = getelementptr i8, ptr %7, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 16777216) #5, !srcloc !23
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_sys_init_cmd_v6(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  %buf_size1 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %buf_size1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf_size1, align 4
  %priv = getelementptr inbounds %struct.s5p_mfc_buf_size, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %mfc_ops = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 36
  %6 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mfc_ops, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %alloc_dev_context_buffer = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %alloc_dev_context_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %alloc_dev_context_buffer, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %cond.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.end:                                         ; preds = %land.lhs.true
  %call = tail call i32 %9(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %do.body, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %cond.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %dma = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 34, i32 2
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 5
  %13 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 61460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %5, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs_base, align 4
  %add.ptr11 = getelementptr i8, ptr %19, i32 61464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %17) #5, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %20 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i = icmp sgt i32 %20, 1
  br i1 %cmp.i, label %do.end.i, label %do.body.s5p_mfc_cmd_host2risc_v6.exit_crit_edge

do.body.s5p_mfc_cmd_host2risc_v6.exit_crit_edge:  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %s5p_mfc_cmd_host2risc_v6.exit

do.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 20, i32 noundef 1) #8
  br label %s5p_mfc_cmd_host2risc_v6.exit

s5p_mfc_cmd_host2risc_v6.exit:                    ; preds = %do.end.i, %do.body.s5p_mfc_cmd_host2risc_v6.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs_base, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 4356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs_base, align 4
  %add.ptr8.i = getelementptr i8, ptr %24, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 16777216) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs_base, align 4
  %add.ptr12.i = getelementptr i8, ptr %26, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 16777216) #5, !srcloc !23
  br label %cleanup

cleanup:                                          ; preds = %s5p_mfc_cmd_host2risc_v6.exit, %cond.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %s5p_mfc_cmd_host2risc_v6.exit ], [ %call, %cond.end.cleanup_crit_edge ], [ -19, %land.lhs.true.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_sleep_cmd_v6(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %0 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp.i = icmp sgt i32 %0, 1
  br i1 %cmp.i, label %do.end.i, label %entry.s5p_mfc_cmd_host2risc_v6.exit_crit_edge

entry.s5p_mfc_cmd_host2risc_v6.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %s5p_mfc_cmd_host2risc_v6.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 20, i32 noundef 7) #8
  br label %s5p_mfc_cmd_host2risc_v6.exit

s5p_mfc_cmd_host2risc_v6.exit:                    ; preds = %do.end.i, %entry.s5p_mfc_cmd_host2risc_v6.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %regs_base.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 4356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %3 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs_base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %4, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 117440512) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs_base.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %6, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 16777216) #5, !srcloc !23
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_wakeup_cmd_v6(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %0 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp.i = icmp sgt i32 %0, 1
  br i1 %cmp.i, label %do.end.i, label %entry.s5p_mfc_cmd_host2risc_v6.exit_crit_edge

entry.s5p_mfc_cmd_host2risc_v6.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %s5p_mfc_cmd_host2risc_v6.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 20, i32 noundef 8) #8
  br label %s5p_mfc_cmd_host2risc_v6.exit

s5p_mfc_cmd_host2risc_v6.exit:                    ; preds = %do.end.i, %entry.s5p_mfc_cmd_host2risc_v6.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %regs_base.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 4356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %3 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs_base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %4, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 134217728) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs_base.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %6, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 16777216) #5, !srcloc !23
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_open_inst_cmd_v6(ptr nocapture noundef readonly %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %2 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %codec_mode = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 39
  %3 = ptrtoint ptr %codec_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %codec_mode, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 73, i32 noundef %4) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %num = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 2
  %5 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num, align 4
  %curr_ctx = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 27
  %7 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %curr_ctx, align 4
  %codec_mode5 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 39
  %8 = ptrtoint ptr %codec_mode5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %codec_mode5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %9)
  %10 = icmp ult i32 %9, 27
  br i1 %10, label %switch.lookup, label %do.end4.do.body21_crit_edge

do.end4.do.body21_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body21

switch.lookup:                                    ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [27 x i32], ptr @switch.table.s5p_mfc_open_inst_cmd_v6, i32 0, i32 %9
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %do.body21

do.body21:                                        ; preds = %switch.lookup, %do.end4.do.body21_crit_edge
  %codec_type.0 = phi i32 [ %switch.load, %switch.lookup ], [ -1, %do.end4.do.body21_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %codec_type.0)
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 61452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  %dma = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 49, i32 2
  %15 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs_base, align 4
  %add.ptr29 = getelementptr i8, ptr %19, i32 61460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %17) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 49, i32 3
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs_base, align 4
  %add.ptr35 = getelementptr i8, ptr %24, i32 61464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %22) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs_base, align 4
  %add.ptr40 = getelementptr i8, ptr %26, i32 61616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 0) #5, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %27 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i = icmp sgt i32 %27, 1
  br i1 %cmp.i, label %do.end.i, label %do.body21.s5p_mfc_cmd_host2risc_v6.exit_crit_edge

do.body21.s5p_mfc_cmd_host2risc_v6.exit_crit_edge: ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  br label %s5p_mfc_cmd_host2risc_v6.exit

do.end.i:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 20, i32 noundef 2) #8
  br label %s5p_mfc_cmd_host2risc_v6.exit

s5p_mfc_cmd_host2risc_v6.exit:                    ; preds = %do.end.i, %do.body21.s5p_mfc_cmd_host2risc_v6.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs_base, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 4356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs_base, align 4
  %add.ptr8.i = getelementptr i8, ptr %31, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 33554432) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs_base, align 4
  %add.ptr12.i = getelementptr i8, ptr %33, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 16777216) #5, !srcloc !23
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_close_inst_cmd_v6(ptr nocapture noundef readonly %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %num = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 4
  %curr_ctx = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %curr_ctx, align 4
  %state = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 16
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %inst_no = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 17
  %7 = ptrtoint ptr %inst_no to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inst_no, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 61448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #5, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %12 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp sgt i32 %12, 1
  br i1 %cmp.i, label %do.end.i, label %do.body.s5p_mfc_cmd_host2risc_v6.exit_crit_edge

do.body.s5p_mfc_cmd_host2risc_v6.exit_crit_edge:  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %s5p_mfc_cmd_host2risc_v6.exit

do.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 20, i32 noundef 6) #8
  br label %s5p_mfc_cmd_host2risc_v6.exit

s5p_mfc_cmd_host2risc_v6.exit:                    ; preds = %do.end.i, %do.body.s5p_mfc_cmd_host2risc_v6.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs_base, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 4356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs_base, align 4
  %add.ptr8.i = getelementptr i8, ptr %16, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 100663296) #5, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs_base, align 4
  %add.ptr12.i = getelementptr i8, ptr %18, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 16777216) #5, !srcloc !23
  br label %if.end

if.end:                                           ; preds = %s5p_mfc_cmd_host2risc_v6.exit, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %s5p_mfc_cmd_host2risc_v6.exit ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @s5p_mfc_cmds_v6, !1, !"s5p_mfc_cmds_v6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_cmd_v6.c", i32 157, i32 31}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_cmd_v6.c", i32 20, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @s5p_mfc_cmd_host2risc_v6._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @s5p_mfc_cmd_host2risc_v6._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_cmd_v6.c", i32 73, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @s5p_mfc_open_inst_cmd_v6._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @s5p_mfc_open_inst_cmd_v6._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2156478007}
!23 = !{i64 7378143}
!24 = !{i64 2156478528}
!25 = !{i64 2156479049}
!26 = !{i64 2156479796}
!27 = !{i64 2156480384}
!28 = !{i64 2156482813}
!29 = !{i64 2156483373}
!30 = !{i64 2156483941}
!31 = !{i64 2156484488}
!32 = !{i64 2156485023}
