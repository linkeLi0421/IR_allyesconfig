; ModuleID = '/llk/IR_all_yes/drivers/media/platform/s5p-mfc/s5p_mfc_cmd_v5.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-mfc/s5p_mfc_cmd_v5.c"
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
%struct.s5p_mfc_cmd_args = type { [4 x i32] }
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

@s5p_mfc_cmds_v5 = internal global { %struct.s5p_mfc_hw_cmds, [40 x i8] } { %struct.s5p_mfc_hw_cmds { ptr @s5p_mfc_cmd_host2risc_v5, ptr @s5p_mfc_sys_init_cmd_v5, ptr @s5p_mfc_sleep_cmd_v5, ptr @s5p_mfc_wakeup_cmd_v5, ptr @s5p_mfc_open_inst_cmd_v5, ptr @s5p_mfc_close_inst_cmd_v5 }, [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@s5p_mfc_cmd_host2risc_v5._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 26, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s:%d: Timeout while waiting for hardware\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s5p_mfc_cmd_host2risc_v5\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/media/platform/s5p-mfc/s5p_mfc_cmd_v5.c\00", [48 x i8] zeroinitializer }, align 32
@s5p_mfc_cmd_host2risc_v5._entry_ptr = internal global ptr @s5p_mfc_cmd_host2risc_v5._entry, section ".printk_index", align 4
@mfc_debug_level = external dso_local local_unnamed_addr global i32, align 4
@s5p_mfc_open_inst_cmd_v5._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s:%d: Getting instance number (codec: %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s5p_mfc_open_inst_cmd_v5\00", [39 x i8] zeroinitializer }, align 32
@s5p_mfc_open_inst_cmd_v5._entry_ptr = internal global ptr @s5p_mfc_open_inst_cmd_v5._entry, section ".printk_index", align 4
@s5p_mfc_open_inst_cmd_v5._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s:%d: Failed to create a new instance\0A\00", [54 x i8] zeroinitializer }, align 32
@s5p_mfc_open_inst_cmd_v5._entry_ptr.7 = internal global ptr @s5p_mfc_open_inst_cmd_v5._entry.5, section ".printk_index", align 4
@s5p_mfc_close_inst_cmd_v5._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s:%d: Instance already returned\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s5p_mfc_close_inst_cmd_v5\00", [38 x i8] zeroinitializer }, align 32
@s5p_mfc_close_inst_cmd_v5._entry_ptr = internal global ptr @s5p_mfc_close_inst_cmd_v5._entry, section ".printk_index", align 4
@s5p_mfc_close_inst_cmd_v5._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s:%d: Returning instance number %d\0A\00", [57 x i8] zeroinitializer }, align 32
@s5p_mfc_close_inst_cmd_v5._entry_ptr.12 = internal global ptr @s5p_mfc_close_inst_cmd_v5._entry.10, section ".printk_index", align 4
@s5p_mfc_close_inst_cmd_v5._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s:%d: Failed to return an instance\0A\00", [57 x i8] zeroinitializer }, align 32
@s5p_mfc_close_inst_cmd_v5._entry_ptr.15 = internal global ptr @s5p_mfc_close_inst_cmd_v5._entry.13, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 20, i64 22, i64 23]
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"s5p_mfc_cmds_v5\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 151, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 26, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 78, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 118, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 131, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 136, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [51 x i8] c"../drivers/media/platform/s5p-mfc/s5p_mfc_cmd_v5.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 143, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @s5p_mfc_close_inst_cmd_v5._entry, ptr @s5p_mfc_close_inst_cmd_v5._entry.10, ptr @s5p_mfc_close_inst_cmd_v5._entry.13, ptr @s5p_mfc_close_inst_cmd_v5._entry_ptr, ptr @s5p_mfc_close_inst_cmd_v5._entry_ptr.12, ptr @s5p_mfc_close_inst_cmd_v5._entry_ptr.15, ptr @s5p_mfc_cmd_host2risc_v5._entry, ptr @s5p_mfc_cmd_host2risc_v5._entry_ptr, ptr @s5p_mfc_open_inst_cmd_v5._entry, ptr @s5p_mfc_open_inst_cmd_v5._entry.5, ptr @s5p_mfc_open_inst_cmd_v5._entry_ptr, ptr @s5p_mfc_open_inst_cmd_v5._entry_ptr.7, ptr @s5p_mfc_cmds_v5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_cmds_v5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_cmd_host2risc_v5._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_open_inst_cmd_v5._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_open_inst_cmd_v5._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_close_inst_cmd_v5._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_close_inst_cmd_v5._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_close_inst_cmd_v5._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @s5p_mfc_init_hw_cmds_v5() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @s5p_mfc_cmds_v5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_cmd_host2risc_v5(ptr nocapture noundef readonly %dev, i32 noundef %cmd, ptr nocapture noundef readonly %args) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 50
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 26) #9
  br label %cleanup

if.end:                                           ; preds = %do.body
  %2 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  %cmp10.not = icmp eq i32 %4, 0
  br i1 %cmp10.not, label %do.body12, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %args, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs_base, align 4
  %add.ptr16 = getelementptr i8, ptr %9, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %7) #6, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %arrayidx21 = getelementptr [4 x i32], ptr %args, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx21, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs_base, align 4
  %add.ptr23 = getelementptr i8, ptr %14, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %12) #6, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %arrayidx28 = getelementptr [4 x i32], ptr %args, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx28, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs_base, align 4
  %add.ptr30 = getelementptr i8, ptr %19, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %17) #6, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %arrayidx35 = getelementptr [4 x i32], ptr %args, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx35, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs_base, align 4
  %add.ptr37 = getelementptr i8, ptr %24, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %22) #6, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %cmd)
  %26 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs_base, align 4
  %add.ptr42 = getelementptr i8, ptr %27, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %25) #6, !srcloc !42
  br label %cleanup

cleanup:                                          ; preds = %do.body12, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %do.body12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_sys_init_cmd_v5(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  %h2r_args = alloca %struct.s5p_mfc_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %h2r_args) #6
  %0 = getelementptr inbounds i8, ptr %h2r_args, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %size = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 19, i32 3
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %4 = ptrtoint ptr %h2r_args to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %h2r_args, align 4
  %call = call i32 @s5p_mfc_cmd_host2risc_v5(ptr noundef %dev, i32 noundef 3, ptr noundef nonnull %h2r_args)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %h2r_args) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_sleep_cmd_v5(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  %h2r_args = alloca %struct.s5p_mfc_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %h2r_args) #6
  %0 = call ptr @memset(ptr %h2r_args, i32 0, i32 16)
  %call = call i32 @s5p_mfc_cmd_host2risc_v5(ptr noundef %dev, i32 noundef 5, ptr noundef nonnull %h2r_args)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %h2r_args) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_wakeup_cmd_v5(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  %h2r_args = alloca %struct.s5p_mfc_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %h2r_args) #6
  %0 = call ptr @memset(ptr %h2r_args, i32 0, i32 16)
  %call = call i32 @s5p_mfc_cmd_host2risc_v5(ptr noundef %dev, i32 noundef 6, ptr noundef nonnull %h2r_args)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %h2r_args) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_open_inst_cmd_v5(ptr nocapture noundef %ctx) #1 align 64 {
entry:
  %h2r_args = alloca %struct.s5p_mfc_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %h2r_args) #6
  %2 = getelementptr inbounds [4 x i32], ptr %h2r_args, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i32], ptr %h2r_args, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i32], ptr %h2r_args, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %5 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %codec_mode = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 39
  %6 = ptrtoint ptr %codec_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %codec_mode, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 78, i32 noundef %7) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %num = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 2
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num, align 4
  %curr_ctx = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 27
  %10 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %curr_ctx, align 4
  %11 = ptrtoint ptr %h2r_args to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %h2r_args, align 4
  %codec_mode5 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 39
  %12 = ptrtoint ptr %codec_mode5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %codec_mode5, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %sw.default [
    i32 0, label %do.end4.sw.epilog_crit_edge
    i32 2, label %sw.bb6
    i32 3, label %sw.bb9
    i32 4, label %sw.bb12
    i32 5, label %sw.bb15
    i32 6, label %sw.bb18
    i32 20, label %sw.bb21
    i32 22, label %sw.bb24
    i32 23, label %sw.bb27
  ]

do.end4.sw.epilog_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %h2r_args to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %h2r_args, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %h2r_args to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %h2r_args, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %h2r_args to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %h2r_args, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %h2r_args to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %h2r_args, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %h2r_args to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 5, ptr %h2r_args, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %h2r_args to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16, ptr %h2r_args, align 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %h2r_args to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 17, ptr %h2r_args, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %h2r_args to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 18, ptr %h2r_args, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %h2r_args to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %h2r_args, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb27, %sw.bb24, %sw.bb21, %sw.bb18, %sw.bb15, %sw.bb12, %sw.bb9, %sw.bb6, %do.end4.sw.epilog_crit_edge
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %2, align 4
  %ctx34 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 49
  %25 = ptrtoint ptr %ctx34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ctx34, align 4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %3, align 4
  %size = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 49, i32 3
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size, align 4
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %4, align 4
  %call40 = call i32 @s5p_mfc_cmd_host2risc_v5(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %h2r_args)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool.not = icmp eq i32 %call40, 0
  br i1 %tobool.not, label %sw.epilog.if.end50_crit_edge, label %do.end45

sw.epilog.if.end50_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.end45:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef 118) #9
  %state = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 16
  %31 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 109, ptr %state, align 4
  br label %if.end50

if.end50:                                         ; preds = %do.end45, %sw.epilog.if.end50_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %h2r_args) #6
  ret i32 %call40
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_close_inst_cmd_v5(ptr nocapture noundef %ctx) #1 align 64 {
entry:
  %h2r_args = alloca %struct.s5p_mfc_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %h2r_args) #6
  %state = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 16
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.end, label %do.body6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 131) #9
  br label %cleanup.sink.split

do.body6:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %4 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp7 = icmp sgt i32 %4, 1
  br i1 %cmp7, label %do.end11, label %do.body6.do.end16_crit_edge

do.body6.do.end16_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

do.end11:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %inst_no = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 17
  %5 = ptrtoint ptr %inst_no to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %inst_no, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i32 noundef 136, i32 noundef %6) #9
  br label %do.end16

do.end16:                                         ; preds = %do.end11, %do.body6.do.end16_crit_edge
  %num = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 2
  %7 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num, align 4
  %curr_ctx = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 27
  %9 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %curr_ctx, align 4
  %10 = getelementptr inbounds i8, ptr %h2r_args, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 12)
  %inst_no17 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 17
  %12 = ptrtoint ptr %inst_no17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %inst_no17, align 4
  %14 = ptrtoint ptr %h2r_args to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %h2r_args, align 4
  %call18 = call i32 @s5p_mfc_cmd_host2risc_v5(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %h2r_args)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %do.end16.cleanup_crit_edge, label %do.end23

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end23:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 143) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end23, %do.end
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 109, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end16.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end16.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %h2r_args) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @s5p_mfc_cmds_v5, !1, !"s5p_mfc_cmds_v5", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_cmd_v5.c", i32 151, i32 31}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_cmd_v5.c", i32 26, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @s5p_mfc_cmd_host2risc_v5._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @s5p_mfc_cmd_host2risc_v5._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_cmd_v5.c", i32 78, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @s5p_mfc_open_inst_cmd_v5._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @s5p_mfc_open_inst_cmd_v5._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_cmd_v5.c", i32 118, i32 3}
!15 = !{ptr @s5p_mfc_open_inst_cmd_v5._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @s5p_mfc_open_inst_cmd_v5._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_cmd_v5.c", i32 131, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @s5p_mfc_close_inst_cmd_v5._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @s5p_mfc_close_inst_cmd_v5._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_cmd_v5.c", i32 136, i32 2}
!24 = !{ptr @s5p_mfc_close_inst_cmd_v5._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @s5p_mfc_close_inst_cmd_v5._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_cmd_v5.c", i32 143, i32 3}
!28 = !{ptr @s5p_mfc_close_inst_cmd_v5._entry.13, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @s5p_mfc_close_inst_cmd_v5._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 7398132}
!40 = !{i64 2156464475}
!41 = !{i64 2156464808}
!42 = !{i64 7397714}
!43 = !{i64 2156465374}
!44 = !{i64 2156465940}
!45 = !{i64 2156466506}
!46 = !{i64 2156467054}
