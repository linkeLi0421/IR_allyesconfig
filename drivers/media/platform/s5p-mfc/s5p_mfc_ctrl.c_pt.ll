; ModuleID = '/llk/IR_all_yes/drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.s5p_mfc_hw_cmds = type { ptr, ptr, ptr, ptr, ptr, ptr }
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

@s5p_mfc_alloc_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013%s:%d: Attempting to allocate firmware when it seems that it is already loaded\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s5p_mfc_alloc_firmware\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c\00", [50 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_firmware._entry_ptr = internal global ptr @s5p_mfc_alloc_firmware._entry, section ".printk_index", align 4
@s5p_mfc_alloc_firmware._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s:%d: Allocating bitprocessor buffer failed\0A\00", [48 x i8] zeroinitializer }, align 32
@s5p_mfc_alloc_firmware._entry_ptr.5 = internal global ptr @s5p_mfc_alloc_firmware._entry.3, section ".printk_index", align 4
@mfc_debug_level = external dso_local local_unnamed_addr global i32, align 4
@s5p_mfc_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s:%d: enter\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s5p_mfc_load_firmware\00", [42 x i8] zeroinitializer }, align 32
@s5p_mfc_load_firmware._entry_ptr = internal global ptr @s5p_mfc_load_firmware._entry, section ".printk_index", align 4
@s5p_mfc_load_firmware._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\013%s:%d: Firmware is not present in the /lib/firmware directory nor compiled in kernel\0A\00", [40 x i8] zeroinitializer }, align 32
@s5p_mfc_load_firmware._entry_ptr.10 = internal global ptr @s5p_mfc_load_firmware._entry.8, section ".printk_index", align 4
@s5p_mfc_load_firmware._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s:%d: MFC firmware is too big to be loaded\0A\00", [49 x i8] zeroinitializer }, align 32
@s5p_mfc_load_firmware._entry_ptr.13 = internal global ptr @s5p_mfc_load_firmware._entry.11, section ".printk_index", align 4
@s5p_mfc_load_firmware._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s:%d: leave\0A\00", [16 x i8] zeroinitializer }, align 32
@s5p_mfc_load_firmware._entry_ptr.16 = internal global ptr @s5p_mfc_load_firmware._entry.14, section ".printk_index", align 4
@s5p_mfc_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.17, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s5p_mfc_reset\00", [18 x i8] zeroinitializer }, align 32
@s5p_mfc_reset._entry_ptr = internal global ptr @s5p_mfc_reset._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@s5p_mfc_reset._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s:%d: Timeout while resetting MFC\0A\00", [58 x i8] zeroinitializer }, align 32
@s5p_mfc_reset._entry_ptr.20 = internal global ptr @s5p_mfc_reset._entry.18, section ".printk_index", align 4
@s5p_mfc_reset._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.17, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_reset._entry_ptr.22 = internal global ptr @s5p_mfc_reset._entry.21, section ".printk_index", align 4
@s5p_mfc_init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.23, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s5p_mfc_init_hw\00", [16 x i8] zeroinitializer }, align 32
@s5p_mfc_init_hw._entry_ptr = internal global ptr @s5p_mfc_init_hw._entry, section ".printk_index", align 4
@s5p_mfc_init_hw._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s:%d: Firmware memory is not allocated.\0A\00", [52 x i8] zeroinitializer }, align 32
@s5p_mfc_init_hw._entry_ptr.26 = internal global ptr @s5p_mfc_init_hw._entry.24, section ".printk_index", align 4
@s5p_mfc_init_hw._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s:%d: MFC reset..\0A\00", [42 x i8] zeroinitializer }, align 32
@s5p_mfc_init_hw._entry_ptr.29 = internal global ptr @s5p_mfc_init_hw._entry.27, section ".printk_index", align 4
@s5p_mfc_init_hw._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s:%d: Failed to reset MFC - timeout\0A\00", [56 x i8] zeroinitializer }, align 32
@s5p_mfc_init_hw._entry_ptr.32 = internal global ptr @s5p_mfc_init_hw._entry.30, section ".printk_index", align 4
@s5p_mfc_init_hw._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s:%d: Done MFC reset..\0A\00", [37 x i8] zeroinitializer }, align 32
@s5p_mfc_init_hw._entry_ptr.35 = internal global ptr @s5p_mfc_init_hw._entry.33, section ".printk_index", align 4
@s5p_mfc_init_hw._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.23, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017%s:%d: Will now wait for completion of firmware transfer\0A\00", [36 x i8] zeroinitializer }, align 32
@s5p_mfc_init_hw._entry_ptr.38 = internal global ptr @s5p_mfc_init_hw._entry.36, section ".printk_index", align 4
@s5p_mfc_init_hw._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.23, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s:%d: Failed to load firmware\0A\00", [62 x i8] zeroinitializer }, align 32
@s5p_mfc_init_hw._entry_ptr.41 = internal global ptr @s5p_mfc_init_hw._entry.39, section ".printk_index", align 4
@s5p_mfc_init_hw._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.23, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s:%d: Failed to send command to MFC - timeout\0A\00", [46 x i8] zeroinitializer }, align 32
@s5p_mfc_init_hw._entry_ptr.44 = internal global ptr @s5p_mfc_init_hw._entry.42, section ".printk_index", align 4
@s5p_mfc_init_hw._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.23, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017%s:%d: Ok, now will wait for completion of hardware init\0A\00", [36 x i8] zeroinitializer }, align 32
@s5p_mfc_init_hw._entry_ptr.47 = internal global ptr @s5p_mfc_init_hw._entry.45, section ".printk_index", align 4
@s5p_mfc_init_hw._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.23, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s:%d: Failed to init hardware\0A\00", [62 x i8] zeroinitializer }, align 32
@s5p_mfc_init_hw._entry_ptr.50 = internal global ptr @s5p_mfc_init_hw._entry.48, section ".printk_index", align 4
@s5p_mfc_init_hw._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.23, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s:%d: Failed to init firmware - error: %d int: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@s5p_mfc_init_hw._entry_ptr.53 = internal global ptr @s5p_mfc_init_hw._entry.51, section ".printk_index", align 4
@s5p_mfc_init_hw._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.23, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s:%d: MFC F/W version : %02xyy, %02xmm, %02xdd\0A\00", [45 x i8] zeroinitializer }, align 32
@s5p_mfc_init_hw._entry_ptr.56 = internal global ptr @s5p_mfc_init_hw._entry.54, section ".printk_index", align 4
@s5p_mfc_init_hw._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.23, ptr @.str.2, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_init_hw._entry_ptr.58 = internal global ptr @s5p_mfc_init_hw._entry.57, section ".printk_index", align 4
@s5p_mfc_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.59, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s5p_mfc_sleep\00", [18 x i8] zeroinitializer }, align 32
@s5p_mfc_sleep._entry_ptr = internal global ptr @s5p_mfc_sleep._entry, section ".printk_index", align 4
@s5p_mfc_sleep._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.59, ptr @.str.2, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_sleep._entry_ptr.61 = internal global ptr @s5p_mfc_sleep._entry.60, section ".printk_index", align 4
@s5p_mfc_sleep._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.59, ptr @.str.2, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s:%d: Failed to sleep\0A\00", [38 x i8] zeroinitializer }, align 32
@s5p_mfc_sleep._entry_ptr.64 = internal global ptr @s5p_mfc_sleep._entry.62, section ".printk_index", align 4
@s5p_mfc_sleep._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.59, ptr @.str.2, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s:%d: Failed to sleep - error: %d int: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@s5p_mfc_sleep._entry_ptr.67 = internal global ptr @s5p_mfc_sleep._entry.65, section ".printk_index", align 4
@s5p_mfc_sleep._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.59, ptr @.str.2, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_sleep._entry_ptr.69 = internal global ptr @s5p_mfc_sleep._entry.68, section ".printk_index", align 4
@s5p_mfc_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.70, ptr @.str.2, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5p_mfc_wakeup\00", [17 x i8] zeroinitializer }, align 32
@s5p_mfc_wakeup._entry_ptr = internal global ptr @s5p_mfc_wakeup._entry, section ".printk_index", align 4
@s5p_mfc_wakeup._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.70, ptr @.str.2, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_wakeup._entry_ptr.72 = internal global ptr @s5p_mfc_wakeup._entry.71, section ".printk_index", align 4
@s5p_mfc_wakeup._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.70, ptr @.str.2, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_wakeup._entry_ptr.74 = internal global ptr @s5p_mfc_wakeup._entry.73, section ".printk_index", align 4
@s5p_mfc_wakeup._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.70, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_wakeup._entry_ptr.76 = internal global ptr @s5p_mfc_wakeup._entry.75, section ".printk_index", align 4
@s5p_mfc_wakeup._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.70, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s:%d: Failed to wakeup - error: %d int: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@s5p_mfc_wakeup._entry_ptr.79 = internal global ptr @s5p_mfc_wakeup._entry.77, section ".printk_index", align 4
@s5p_mfc_wakeup._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.70, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_wakeup._entry_ptr.81 = internal global ptr @s5p_mfc_wakeup._entry.80, section ".printk_index", align 4
@s5p_mfc_open_mfc_inst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s:%d: Failed allocating instance buffer\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s5p_mfc_open_mfc_inst\00", [42 x i8] zeroinitializer }, align 32
@s5p_mfc_open_mfc_inst._entry_ptr = internal global ptr @s5p_mfc_open_mfc_inst._entry, section ".printk_index", align 4
@s5p_mfc_open_mfc_inst._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s:%d: Failed allocating temporary buffers\0A\00", [50 x i8] zeroinitializer }, align 32
@s5p_mfc_open_mfc_inst._entry_ptr.86 = internal global ptr @s5p_mfc_open_mfc_inst._entry.84, section ".printk_index", align 4
@s5p_mfc_open_mfc_inst._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.83, ptr @.str.2, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s:%d: Error getting instance from hardware\0A\00", [49 x i8] zeroinitializer }, align 32
@s5p_mfc_open_mfc_inst._entry_ptr.89 = internal global ptr @s5p_mfc_open_mfc_inst._entry.87, section ".printk_index", align 4
@s5p_mfc_open_mfc_inst._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.83, ptr @.str.2, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s:%d: Got instance number: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@s5p_mfc_open_mfc_inst._entry_ptr.92 = internal global ptr @s5p_mfc_open_mfc_inst._entry.90, section ".printk_index", align 4
@s5p_mfc_close_mfc_inst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s:%d: Err returning instance\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s5p_mfc_close_mfc_inst\00", [41 x i8] zeroinitializer }, align 32
@s5p_mfc_close_mfc_inst._entry_ptr = internal global ptr @s5p_mfc_close_mfc_inst._entry, section ".printk_index", align 4
@s5p_mfc_bus_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s:%d: Timeout while resetting MFC.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s5p_mfc_bus_reset\00", [46 x i8] zeroinitializer }, align 32
@s5p_mfc_bus_reset._entry_ptr = internal global ptr @s5p_mfc_bus_reset._entry, section ".printk_index", align 4
@s5p_mfc_init_memctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s:%d: Base Address : %pad\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s5p_mfc_init_memctrl\00", [43 x i8] zeroinitializer }, align 32
@s5p_mfc_init_memctrl._entry_ptr = internal global ptr @s5p_mfc_init_memctrl._entry, section ".printk_index", align 4
@s5p_mfc_init_memctrl._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s:%d: Bank1: %pad, Bank2: %pad\0A\00", [61 x i8] zeroinitializer }, align 32
@s5p_mfc_init_memctrl._entry_ptr.101 = internal global ptr @s5p_mfc_init_memctrl._entry.99, section ".printk_index", align 4
@s5p_mfc_v8_wait_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s:%d: Failed to reset MFCV8\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s5p_mfc_v8_wait_wakeup\00", [41 x i8] zeroinitializer }, align 32
@s5p_mfc_v8_wait_wakeup._entry_ptr = internal global ptr @s5p_mfc_v8_wait_wakeup._entry, section ".printk_index", align 4
@s5p_mfc_v8_wait_wakeup._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s:%d: Write command to wakeup MFCV8\0A\00", [56 x i8] zeroinitializer }, align 32
@s5p_mfc_v8_wait_wakeup._entry_ptr.106 = internal global ptr @s5p_mfc_v8_wait_wakeup._entry.104, section ".printk_index", align 4
@s5p_mfc_v8_wait_wakeup._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.103, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s:%d: Failed to send command to MFCV8 - timeout\0A\00", [44 x i8] zeroinitializer }, align 32
@s5p_mfc_v8_wait_wakeup._entry_ptr.109 = internal global ptr @s5p_mfc_v8_wait_wakeup._entry.107, section ".printk_index", align 4
@s5p_mfc_v8_wait_wakeup._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.103, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s:%d: Failed to wakeup MFC\0A\00", [33 x i8] zeroinitializer }, align 32
@s5p_mfc_v8_wait_wakeup._entry_ptr.112 = internal global ptr @s5p_mfc_v8_wait_wakeup._entry.110, section ".printk_index", align 4
@s5p_mfc_wait_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.113, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s5p_mfc_wait_wakeup\00", [44 x i8] zeroinitializer }, align 32
@s5p_mfc_wait_wakeup._entry_ptr = internal global ptr @s5p_mfc_wait_wakeup._entry, section ".printk_index", align 4
@s5p_mfc_wait_wakeup._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.113, ptr @.str.2, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_wait_wakeup._entry_ptr.115 = internal global ptr @s5p_mfc_wait_wakeup._entry.114, section ".printk_index", align 4
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 31, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 37, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 52, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 69, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 73, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 81, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 121, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 157, i32 5 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 169, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 210, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 212, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 217, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 222, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 225, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 242, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 244, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 253, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 258, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 260, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 269, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 280, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 283, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 303, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 308, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 312, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 320, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 324, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 384, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 386, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 391, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 395, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 415, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 419, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 429, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 437, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 447, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 452, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 472, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 106, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 178, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 185, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 337, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 340, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 343, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 348, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 361, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.393 = private constant [49 x i8] c"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 374, i32 3 }
@llvm.compiler.used = appending global [140 x ptr] [ptr @s5p_mfc_alloc_firmware._entry, ptr @s5p_mfc_alloc_firmware._entry.3, ptr @s5p_mfc_alloc_firmware._entry_ptr, ptr @s5p_mfc_alloc_firmware._entry_ptr.5, ptr @s5p_mfc_bus_reset._entry, ptr @s5p_mfc_bus_reset._entry_ptr, ptr @s5p_mfc_close_mfc_inst._entry, ptr @s5p_mfc_close_mfc_inst._entry_ptr, ptr @s5p_mfc_init_hw._entry, ptr @s5p_mfc_init_hw._entry.24, ptr @s5p_mfc_init_hw._entry.27, ptr @s5p_mfc_init_hw._entry.30, ptr @s5p_mfc_init_hw._entry.33, ptr @s5p_mfc_init_hw._entry.36, ptr @s5p_mfc_init_hw._entry.39, ptr @s5p_mfc_init_hw._entry.42, ptr @s5p_mfc_init_hw._entry.45, ptr @s5p_mfc_init_hw._entry.48, ptr @s5p_mfc_init_hw._entry.51, ptr @s5p_mfc_init_hw._entry.54, ptr @s5p_mfc_init_hw._entry.57, ptr @s5p_mfc_init_hw._entry_ptr, ptr @s5p_mfc_init_hw._entry_ptr.26, ptr @s5p_mfc_init_hw._entry_ptr.29, ptr @s5p_mfc_init_hw._entry_ptr.32, ptr @s5p_mfc_init_hw._entry_ptr.35, ptr @s5p_mfc_init_hw._entry_ptr.38, ptr @s5p_mfc_init_hw._entry_ptr.41, ptr @s5p_mfc_init_hw._entry_ptr.44, ptr @s5p_mfc_init_hw._entry_ptr.47, ptr @s5p_mfc_init_hw._entry_ptr.50, ptr @s5p_mfc_init_hw._entry_ptr.53, ptr @s5p_mfc_init_hw._entry_ptr.56, ptr @s5p_mfc_init_hw._entry_ptr.58, ptr @s5p_mfc_init_memctrl._entry, ptr @s5p_mfc_init_memctrl._entry.99, ptr @s5p_mfc_init_memctrl._entry_ptr, ptr @s5p_mfc_init_memctrl._entry_ptr.101, ptr @s5p_mfc_load_firmware._entry, ptr @s5p_mfc_load_firmware._entry.11, ptr @s5p_mfc_load_firmware._entry.14, ptr @s5p_mfc_load_firmware._entry.8, ptr @s5p_mfc_load_firmware._entry_ptr, ptr @s5p_mfc_load_firmware._entry_ptr.10, ptr @s5p_mfc_load_firmware._entry_ptr.13, ptr @s5p_mfc_load_firmware._entry_ptr.16, ptr @s5p_mfc_open_mfc_inst._entry, ptr @s5p_mfc_open_mfc_inst._entry.84, ptr @s5p_mfc_open_mfc_inst._entry.87, ptr @s5p_mfc_open_mfc_inst._entry.90, ptr @s5p_mfc_open_mfc_inst._entry_ptr, ptr @s5p_mfc_open_mfc_inst._entry_ptr.86, ptr @s5p_mfc_open_mfc_inst._entry_ptr.89, ptr @s5p_mfc_open_mfc_inst._entry_ptr.92, ptr @s5p_mfc_reset._entry, ptr @s5p_mfc_reset._entry.18, ptr @s5p_mfc_reset._entry.21, ptr @s5p_mfc_reset._entry_ptr, ptr @s5p_mfc_reset._entry_ptr.20, ptr @s5p_mfc_reset._entry_ptr.22, ptr @s5p_mfc_sleep._entry, ptr @s5p_mfc_sleep._entry.60, ptr @s5p_mfc_sleep._entry.62, ptr @s5p_mfc_sleep._entry.65, ptr @s5p_mfc_sleep._entry.68, ptr @s5p_mfc_sleep._entry_ptr, ptr @s5p_mfc_sleep._entry_ptr.61, ptr @s5p_mfc_sleep._entry_ptr.64, ptr @s5p_mfc_sleep._entry_ptr.67, ptr @s5p_mfc_sleep._entry_ptr.69, ptr @s5p_mfc_v8_wait_wakeup._entry, ptr @s5p_mfc_v8_wait_wakeup._entry.104, ptr @s5p_mfc_v8_wait_wakeup._entry.107, ptr @s5p_mfc_v8_wait_wakeup._entry.110, ptr @s5p_mfc_v8_wait_wakeup._entry_ptr, ptr @s5p_mfc_v8_wait_wakeup._entry_ptr.106, ptr @s5p_mfc_v8_wait_wakeup._entry_ptr.109, ptr @s5p_mfc_v8_wait_wakeup._entry_ptr.112, ptr @s5p_mfc_wait_wakeup._entry, ptr @s5p_mfc_wait_wakeup._entry.114, ptr @s5p_mfc_wait_wakeup._entry_ptr, ptr @s5p_mfc_wait_wakeup._entry_ptr.115, ptr @s5p_mfc_wakeup._entry, ptr @s5p_mfc_wakeup._entry.71, ptr @s5p_mfc_wakeup._entry.73, ptr @s5p_mfc_wakeup._entry.75, ptr @s5p_mfc_wakeup._entry.77, ptr @s5p_mfc_wakeup._entry.80, ptr @s5p_mfc_wakeup._entry_ptr, ptr @s5p_mfc_wakeup._entry_ptr.72, ptr @s5p_mfc_wakeup._entry_ptr.74, ptr @s5p_mfc_wakeup._entry_ptr.76, ptr @s5p_mfc_wakeup._entry_ptr.79, ptr @s5p_mfc_wakeup._entry_ptr.81, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.59, ptr @.str.63, ptr @.str.66, ptr @.str.70, ptr @.str.78, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.113], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_alloc_firmware._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_load_firmware._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_load_firmware._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_load_firmware._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_reset._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_reset._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_init_hw._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_init_hw._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_init_hw._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_init_hw._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_init_hw._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_init_hw._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_init_hw._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_init_hw._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_init_hw._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_init_hw._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_init_hw._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_init_hw._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_sleep._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_sleep._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_sleep._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_sleep._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_wakeup._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_wakeup._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_wakeup._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_wakeup._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_wakeup._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_open_mfc_inst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_open_mfc_inst._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_open_mfc_inst._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_open_mfc_inst._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_close_mfc_inst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_bus_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_init_memctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_init_memctrl._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_v8_wait_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_v8_wait_wakeup._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_v8_wait_wakeup._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_v8_wait_wakeup._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_wait_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_wait_wakeup._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_alloc_firmware(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  %buf_size = getelementptr inbounds %struct.s5p_mfc_variant, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf_size, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %size = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 19, i32 3
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %size, align 4
  %virt = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 19, i32 1
  %7 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %virt, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 31) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_buf1 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 19
  %call6 = tail call i32 @s5p_mfc_alloc_priv_buf(ptr noundef %dev, i32 noundef 0, ptr noundef %fw_buf1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %do.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 37) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call6, %do.end12 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_alloc_priv_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_load_firmware(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %fw_blob = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_blob) #5
  %0 = ptrtoint ptr %fw_blob to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_blob, align 4, !annotation !196
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %1 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp sgt i32 %1, 4
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 52) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %fw_get_done = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 40
  %2 = ptrtoint ptr %fw_get_done to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_get_done, align 4, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end3
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 10
  %plat_dev = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant, align 4
  %arrayidx = getelementptr %struct.s5p_mfc_variant, ptr %5, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %for.cond.preheader.for.inc_crit_edge, label %if.end9

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end9:                                          ; preds = %for.cond.preheader
  %8 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plat_dev, align 4
  %dev13 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %call14 = call i32 @request_firmware(ptr noundef nonnull %fw_blob, ptr noundef nonnull %7, ptr noundef %dev13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end9.if.end28_crit_edge, label %if.end9.for.inc_crit_edge

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end9.if.end28_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

for.inc:                                          ; preds = %if.end9.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %10 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %variant, align 4
  %arrayidx.1 = getelementptr %struct.s5p_mfc_variant, ptr %11, i32 0, i32 4, i32 0
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %tobool7.not.1 = icmp eq ptr %13, null
  br i1 %tobool7.not.1, label %for.inc.do.end23_crit_edge, label %if.end9.1

for.inc.do.end23_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

if.end9.1:                                        ; preds = %for.inc
  %14 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %plat_dev, align 4
  %dev13.1 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %call14.1 = call i32 @request_firmware(ptr noundef nonnull %fw_blob, ptr noundef nonnull %13, ptr noundef %dev13.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.1)
  %tobool15.not.1 = icmp eq i32 %call14.1, 0
  br i1 %tobool15.not.1, label %if.end9.1.if.end28_crit_edge, label %if.end9.1.do.end23_crit_edge

if.end9.1.do.end23_crit_edge:                     ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

if.end9.1.if.end28_crit_edge:                     ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

do.end23:                                         ; preds = %if.end9.1.do.end23_crit_edge, %for.inc.do.end23_crit_edge
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef 69) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end9.1.if.end28_crit_edge, %if.end9.if.end28_crit_edge
  %i.078.lcssa = phi i32 [ 1, %if.end9.if.end28_crit_edge ], [ 0, %if.end9.1.if.end28_crit_edge ]
  %fw_ver = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 39
  %16 = ptrtoint ptr %fw_ver to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %i.078.lcssa, ptr %fw_ver, align 4
  %17 = ptrtoint ptr %fw_blob to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw_blob, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %size29 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 19, i32 3
  %21 = ptrtoint ptr %size29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp30 = icmp ugt i32 %20, %22
  br i1 %cmp30, label %do.end35, label %if.end40

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.7, i32 noundef 73) #8
  %23 = ptrtoint ptr %fw_blob to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fw_blob, align 4
  call void @release_firmware(ptr noundef %24) #5
  br label %cleanup

if.end40:                                         ; preds = %if.end28
  %virt = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 19, i32 1
  %25 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %virt, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %18, i32 0, i32 1
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %29 = call ptr @memcpy(ptr %26, ptr %28, i32 %20)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !198
  call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %fw_get_done to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %fw_get_done, align 4
  %31 = ptrtoint ptr %fw_blob to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fw_blob, align 4
  call void @release_firmware(ptr noundef %32) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %33 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp48 = icmp sgt i32 %33, 4
  br i1 %cmp48, label %do.end52, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end52:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.7, i32 noundef 81) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %if.end40.cleanup_crit_edge, %do.end35, %do.end23, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end23 ], [ -12, %do.end35 ], [ 0, %do.end3.cleanup_crit_edge ], [ 0, %do.end52 ], [ 0, %if.end40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_blob) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_release_firmware(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_buf = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 19
  tail call void @s5p_mfc_release_priv_buf(ptr noundef %dev, ptr noundef %fw_buf) #5
  %fw_get_done = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 40
  %0 = ptrtoint ptr %fw_get_done to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %fw_get_done, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_release_priv_buf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_reset(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %0 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.17, i32 noundef 121) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 10
  %1 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %variant, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %4)
  %cmp4 = icmp ugt i32 %4, 95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 5
  %5 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs_base, align 4
  br i1 %cmp4, label %do.body6, label %do.body55

do.body6:                                         ; preds = %do.end3
  %add.ptr = getelementptr i8, ptr %6, i32 4356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !200
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs_base, align 4
  %add.ptr13 = getelementptr i8, ptr %8, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #5, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs_base, align 4
  %add.ptr18 = getelementptr i8, ptr %10, i32 61440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #5, !srcloc !199
  br label %do.body20

do.body20:                                        ; preds = %do.body20.do.body20_crit_edge, %do.body6
  %i.0135 = phi i32 [ 0, %do.body6 ], [ %inc, %do.body20.do.body20_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !202
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs_base, align 4
  %mul = shl i32 %i.0135, 2
  %add = add nuw nsw i32 %mul, 61440
  %add.ptr24 = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 0) #5, !srcloc !199
  %inc = add nuw nsw i32 %i.0135, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end, label %do.body20.do.body20_crit_edge

do.body20.do.body20_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body20

for.end:                                          ; preds = %do.body20
  %risc_on = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 41
  %13 = ptrtoint ptr %risc_on to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %risc_on, align 1, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %for.end.do.body39_crit_edge, label %if.then25

for.end.do.body39_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39

if.then25:                                        ; preds = %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !203
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs_base, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 28944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #5, !srcloc !199
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %17, 50
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.end.i.do.body1.i_crit_edge, %if.then25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %s5p_mfc_bus_reset.exit, label %if.end.i

if.end.i:                                         ; preds = %do.body1.i
  %19 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs_base, align 4
  %add.ptr10.i = getelementptr i8, ptr %20, i32 28944
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #5, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !205
  %22 = and i32 %21, 33554432
  %cmp15.i = icmp eq i32 %22, 0
  br i1 %cmp15.i, label %if.end.i.do.body1.i_crit_edge, label %if.end30

if.end.i.do.body1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1.i

s5p_mfc_bus_reset.exit:                           ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, i32 noundef 106) #8
  br label %cleanup

if.end30:                                         ; preds = %if.end.i
  %23 = ptrtoint ptr %risc_on to i32
  call void @__asan_load1_noabort(i32 %23)
  %.pr = load i8, ptr %risc_on, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool32.not = icmp eq i8 %.pr, 0
  br i1 %tobool32.not, label %if.end30.do.body39_crit_edge, label %lor.lhs.false

if.end30.do.body39_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39

lor.lhs.false:                                    ; preds = %if.end30
  %24 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %variant, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 111, i32 %27)
  %cmp35 = icmp ugt i32 %27, 111
  br i1 %cmp35, label %lor.lhs.false.do.body45_crit_edge, label %lor.lhs.false.do.body39_crit_edge

lor.lhs.false.do.body39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39

lor.lhs.false.do.body45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body45

do.body39:                                        ; preds = %lor.lhs.false.do.body39_crit_edge, %if.end30.do.body39_crit_edge, %for.end.do.body39_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !206
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #5, !srcloc !199
  br label %do.body45

do.body45:                                        ; preds = %do.body39, %lor.lhs.false.do.body45_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !207
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs_base, align 4
  %add.ptr49 = getelementptr i8, ptr %31, i32 4208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 -14745600) #5, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !208
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs_base, align 4
  %add.ptr54 = getelementptr i8, ptr %33, i32 4208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 0) #5, !srcloc !199
  br label %do.body99

do.body55:                                        ; preds = %do.end3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 -167575552) #5, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !209
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 -503119872) #5, !srcloc !199
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %add67 = add i32 %46, 50
  br label %do.body68

do.body68:                                        ; preds = %if.end79.do.body68_crit_edge, %do.body55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add67, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp69 = icmp slt i32 %sub, 0
  br i1 %cmp69, label %do.end74, label %if.end79

do.end74:                                         ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #7
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef 157) #8
  br label %cleanup

if.end79:                                         ; preds = %do.body68
  %48 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs_base, align 4
  %add.ptr81 = getelementptr i8, ptr %49, i32 1296
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #5, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !210
  %51 = and i32 %50, 50331648
  %tobool86.not = icmp eq i32 %51, 0
  br i1 %tobool86.not, label %do.body88, label %if.end79.do.body68_crit_edge

if.end79.do.body68_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body68

do.body88:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !211
  tail call void @arm_heavy_mb() #5
  %52 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 0) #5, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !212
  tail call void @arm_heavy_mb() #5
  %54 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 -33357824) #5, !srcloc !199
  br label %do.body99

do.body99:                                        ; preds = %do.body88, %do.body45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %56 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %56)
  %cmp100 = icmp sgt i32 %56, 4
  br i1 %cmp100, label %do.end104, label %do.body99.cleanup_crit_edge

do.body99.cleanup_crit_edge:                      ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end104:                                        ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #7
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, i32 noundef 169) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end104, %do.body99.cleanup_crit_edge, %do.end74, %s5p_mfc_bus_reset.exit
  %retval.0 = phi i32 [ -5, %do.end74 ], [ -5, %s5p_mfc_bus_reset.exit ], [ 0, %do.end104 ], [ 0, %do.body99.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_init_hw(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %0 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.23, i32 noundef 210) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %virt = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 19, i32 1
  %1 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %virt, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.end8, label %do.body14

do.end8:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef 212) #8
  br label %cleanup

do.body14:                                        ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %3 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp15 = icmp sgt i32 %3, 1
  br i1 %cmp15, label %do.end19, label %do.body14.do.end24_crit_edge

do.body14.do.end24_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24

do.end19:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.23, i32 noundef 217) #8
  br label %do.end24

do.end24:                                         ; preds = %do.end19, %do.body14.do.end24_crit_edge
  %call25 = tail call i32 @s5p_mfc_clock_on() #5
  %risc_on = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 41
  %4 = ptrtoint ptr %risc_on to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %risc_on, align 1
  %call26 = tail call i32 @s5p_mfc_reset(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.body38, label %do.end32

do.end32:                                         ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #7
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.23, i32 noundef 222) #8
  br label %cleanup

do.body38:                                        ; preds = %do.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %5 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp39 = icmp sgt i32 %5, 1
  br i1 %cmp39, label %do.end43, label %do.body38.do.end48_crit_edge

do.body38.do.end48_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end48

do.end43:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.23, i32 noundef 225) #8
  br label %do.end48

do.end48:                                         ; preds = %do.end43, %do.body38.do.end48_crit_edge
  %variant.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 10
  %6 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %variant.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %9)
  %cmp.i = icmp ugt i32 %9, 95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %dma_base.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 24
  %10 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_base.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  %regs_base.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 5
  %13 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs_base.i, align 4
  br i1 %cmp.i, label %do.body.i, label %do.body9.i

do.body.i:                                        ; preds = %do.end48
  %add.ptr.i = getelementptr i8, ptr %14, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #5, !srcloc !199
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %15 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp2.i = icmp sgt i32 %15, 1
  br i1 %cmp2.i, label %do.end5.i, label %do.body.i.s5p_mfc_init_memctrl.exit_crit_edge

do.body.i.s5p_mfc_init_memctrl.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %s5p_mfc_init_memctrl.exit

do.end5.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef 179, ptr noundef %dma_base.i) #8
  br label %s5p_mfc_init_memctrl.exit

do.body9.i:                                       ; preds = %do.end48
  %add.ptr14.i = getelementptr i8, ptr %14, i32 1288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %12) #5, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !213
  tail call void @arm_heavy_mb() #5
  %arrayidx18.i = getelementptr %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 24, i32 1
  %16 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx18.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #5
  %19 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs_base.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %20, i32 1292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %18) #5, !srcloc !199
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %21 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp22.i = icmp sgt i32 %21, 1
  br i1 %cmp22.i, label %do.end25.i, label %do.body9.i.s5p_mfc_init_memctrl.exit_crit_edge

do.body9.i.s5p_mfc_init_memctrl.exit_crit_edge:   ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %s5p_mfc_init_memctrl.exit

do.end25.i:                                       ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #7
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.98, i32 noundef 187, ptr noundef %dma_base.i, ptr noundef %arrayidx18.i) #8
  br label %s5p_mfc_init_memctrl.exit

s5p_mfc_init_memctrl.exit:                        ; preds = %do.end25.i, %do.body9.i.s5p_mfc_init_memctrl.exit_crit_edge, %do.end5.i, %do.body.i.s5p_mfc_init_memctrl.exit_crit_edge
  %22 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %variant.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %25)
  %cmp.i239 = icmp ugt i32 %25, 95
  br i1 %cmp.i239, label %s5p_mfc_init_memctrl.exit.s5p_mfc_clear_cmds.exit_crit_edge, label %do.body.i242

s5p_mfc_init_memctrl.exit.s5p_mfc_clear_cmds.exit_crit_edge: ; preds = %s5p_mfc_init_memctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %s5p_mfc_clear_cmds.exit

do.body.i242:                                     ; preds = %s5p_mfc_init_memctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !214
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs_base.i, align 4
  %add.ptr.i241 = getelementptr i8, ptr %27, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i241, i32 -1) #5, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !215
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs_base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %29, i32 8320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 -1) #5, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !216
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs_base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %31, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 0) #5, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !217
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs_base.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %33, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 0) #5, !srcloc !199
  br label %s5p_mfc_clear_cmds.exit

s5p_mfc_clear_cmds.exit:                          ; preds = %do.body.i242, %s5p_mfc_init_memctrl.exit.s5p_mfc_clear_cmds.exit_crit_edge
  tail call void @s5p_mfc_clean_dev_int_flags(ptr noundef %dev) #5
  %34 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %variant.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %37)
  %cmp49 = icmp ugt i32 %37, 95
  br i1 %cmp49, label %if.then50, label %do.body55

if.then50:                                        ; preds = %s5p_mfc_clear_cmds.exit
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %risc_on to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %risc_on, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !218
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 16777216) #5, !srcloc !199
  br label %if.end60

do.body55:                                        ; preds = %s5p_mfc_clear_cmds.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !219
  tail call void @arm_heavy_mb() #5
  %41 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 -16580608) #5, !srcloc !199
  br label %if.end60

if.end60:                                         ; preds = %do.body55, %if.then50
  %43 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %variant.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %46)
  %cmp63 = icmp ugt i32 %46, 159
  br i1 %cmp63, label %do.body67, label %if.end60.do.body73_crit_edge

if.end60.do.body73_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body73

do.body67:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !220
  tail call void @arm_heavy_mb() #5
  %47 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs_base.i, align 4
  %add.ptr71 = getelementptr i8, ptr %48, i32 28960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 0) #5, !srcloc !199
  br label %do.body73

do.body73:                                        ; preds = %do.body67, %if.end60.do.body73_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %49 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp74 = icmp sgt i32 %49, 1
  br i1 %cmp74, label %do.end78, label %do.body73.do.end83_crit_edge

do.body73.do.end83_crit_edge:                     ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end83

do.end78:                                         ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #7
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.23, i32 noundef 242) #8
  br label %do.end83

do.end83:                                         ; preds = %do.end78, %do.body73.do.end83_crit_edge
  %call84 = tail call i32 @s5p_mfc_wait_for_done_dev(ptr noundef %dev, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end96, label %do.end90

do.end90:                                         ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #7
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.23, i32 noundef 244) #8
  %call95 = tail call i32 @s5p_mfc_reset(ptr noundef %dev)
  tail call void @s5p_mfc_clock_off() #5
  br label %cleanup

if.end96:                                         ; preds = %do.end83
  tail call void @s5p_mfc_clean_dev_int_flags(ptr noundef %dev) #5
  %mfc_cmds = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 37
  %50 = ptrtoint ptr %mfc_cmds to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mfc_cmds, align 4
  %tobool97.not = icmp eq ptr %51, null
  br i1 %tobool97.not, label %if.end96.do.end110_crit_edge, label %land.lhs.true

if.end96.do.end110_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end110

land.lhs.true:                                    ; preds = %if.end96
  %sys_init_cmd = getelementptr inbounds %struct.s5p_mfc_hw_cmds, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %sys_init_cmd to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sys_init_cmd, align 4
  %tobool99.not = icmp eq ptr %53, null
  br i1 %tobool99.not, label %land.lhs.true.do.end110_crit_edge, label %cond.end

land.lhs.true.do.end110_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end110

cond.end:                                         ; preds = %land.lhs.true
  %call103 = tail call i32 %53(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool105.not = icmp eq i32 %call103, 0
  br i1 %tobool105.not, label %do.body117, label %cond.end.do.end110_crit_edge

cond.end.do.end110_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end110

do.end110:                                        ; preds = %cond.end.do.end110_crit_edge, %land.lhs.true.do.end110_crit_edge, %if.end96.do.end110_crit_edge
  %cond245 = phi i32 [ %call103, %cond.end.do.end110_crit_edge ], [ -19, %land.lhs.true.do.end110_crit_edge ], [ -19, %if.end96.do.end110_crit_edge ]
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.23, i32 noundef 253) #8
  %call115 = tail call i32 @s5p_mfc_reset(ptr noundef %dev)
  tail call void @s5p_mfc_clock_off() #5
  br label %cleanup

do.body117:                                       ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %54 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp118 = icmp sgt i32 %54, 1
  br i1 %cmp118, label %do.end122, label %do.body117.do.end127_crit_edge

do.body117.do.end127_crit_edge:                   ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end127

do.end122:                                        ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #7
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.23, i32 noundef 258) #8
  br label %do.end127

do.end127:                                        ; preds = %do.end122, %do.body117.do.end127_crit_edge
  %call128 = tail call i32 @s5p_mfc_wait_for_done_dev(ptr noundef %dev, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end140, label %do.end134

do.end134:                                        ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #7
  %call136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.23, i32 noundef 260) #8
  %call139 = tail call i32 @s5p_mfc_reset(ptr noundef %dev)
  tail call void @s5p_mfc_clock_off() #5
  br label %cleanup

if.end140:                                        ; preds = %do.end127
  %int_cond = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 15
  %55 = ptrtoint ptr %int_cond to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %int_cond, align 4
  %int_err = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 17
  %56 = ptrtoint ptr %int_err to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %int_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp141.not = icmp eq i32 %57, 0
  br i1 %cmp141.not, label %lor.lhs.false, label %if.end140.do.end147_crit_edge

if.end140.do.end147_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end147

lor.lhs.false:                                    ; preds = %if.end140
  %int_type = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 16
  %58 = ptrtoint ptr %int_type to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %int_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp142.not = icmp eq i32 %59, 1
  br i1 %cmp142.not, label %if.end155, label %lor.lhs.false.do.end147_crit_edge

lor.lhs.false.do.end147_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end147

do.end147:                                        ; preds = %lor.lhs.false.do.end147_crit_edge, %if.end140.do.end147_crit_edge
  %int_type150 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 16
  %60 = ptrtoint ptr %int_type150 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %int_type150, align 4
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.23, i32 noundef 270, i32 noundef %57, i32 noundef %61) #8
  %call154 = tail call i32 @s5p_mfc_reset(ptr noundef %dev)
  tail call void @s5p_mfc_clock_off() #5
  br label %cleanup

if.end155:                                        ; preds = %lor.lhs.false
  %62 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %variant.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %65)
  %cmp158 = icmp ugt i32 %65, 95
  %66 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs_base.i, align 4
  br i1 %cmp158, label %if.then161, label %if.else167

if.then161:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr163 = getelementptr i8, ptr %67, i32 61440
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr163) #5, !srcloc !204
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !221
  br label %do.body176

if.else167:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr171 = getelementptr i8, ptr %67, i32 88
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr171) #5, !srcloc !204
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !222
  br label %do.body176

do.body176:                                       ; preds = %if.else167, %if.then161
  %ver.0 = phi i32 [ %69, %if.then161 ], [ %71, %if.else167 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %72 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp177 = icmp sgt i32 %72, 1
  br i1 %cmp177, label %do.end181, label %do.body176.do.end189_crit_edge

do.body176.do.end189_crit_edge:                   ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end189

do.end181:                                        ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #7
  %shr = lshr i32 %ver.0, 16
  %and = and i32 %shr, 255
  %shr183 = lshr i32 %ver.0, 8
  %and184 = and i32 %shr183, 255
  %and185 = and i32 %ver.0, 255
  %call186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.23, i32 noundef 281, i32 noundef %and, i32 noundef %and184, i32 noundef %and185) #8
  br label %do.end189

do.end189:                                        ; preds = %do.end181, %do.body176.do.end189_crit_edge
  tail call void @s5p_mfc_clock_off() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %73 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %73)
  %cmp191 = icmp sgt i32 %73, 4
  br i1 %cmp191, label %do.end195, label %do.end189.cleanup_crit_edge

do.end189.cleanup_crit_edge:                      ; preds = %do.end189
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end195:                                        ; preds = %do.end189
  call void @__sanitizer_cov_trace_pc() #7
  %call197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.23, i32 noundef 283) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end195, %do.end189.cleanup_crit_edge, %do.end147, %do.end134, %do.end110, %do.end90, %do.end32, %do.end8
  %retval.0 = phi i32 [ %call26, %do.end32 ], [ -5, %do.end90 ], [ %cond245, %do.end110 ], [ -5, %do.end134 ], [ -5, %do.end147 ], [ -22, %do.end8 ], [ 0, %do.end195 ], [ 0, %do.end189.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_clock_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_clean_dev_int_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_wait_for_done_dev(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_clock_off() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s5p_mfc_deinit_hw(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @s5p_mfc_clock_on() #5
  %call1 = tail call i32 @s5p_mfc_reset(ptr noundef %dev)
  %mfc_ops = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 36
  %0 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfc_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %land.lhs.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

land.lhs.true:                                    ; preds = %entry
  %release_dev_context_buffer = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %release_dev_context_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release_dev_context_buffer, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %3(ptr noundef %dev) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  tail call void @s5p_mfc_clock_off() #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_sleep(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %0 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.59, i32 noundef 303) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call i32 @s5p_mfc_clock_on() #5
  tail call void @s5p_mfc_clean_dev_int_flags(ptr noundef %dev) #5
  %mfc_cmds = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 37
  %1 = ptrtoint ptr %mfc_cmds to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mfc_cmds, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.end3.do.end15_crit_edge, label %land.lhs.true

do.end3.do.end15_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

land.lhs.true:                                    ; preds = %do.end3
  %sleep_cmd = getelementptr inbounds %struct.s5p_mfc_hw_cmds, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %sleep_cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sleep_cmd, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %land.lhs.true.do.end15_crit_edge, label %cond.end

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

cond.end:                                         ; preds = %land.lhs.true
  %call9 = tail call i32 %4(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end20, label %cond.end.do.end15_crit_edge

cond.end.do.end15_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

do.end15:                                         ; preds = %cond.end.do.end15_crit_edge, %land.lhs.true.do.end15_crit_edge, %do.end3.do.end15_crit_edge
  %cond73 = phi i32 [ %call9, %cond.end.do.end15_crit_edge ], [ -19, %land.lhs.true.do.end15_crit_edge ], [ -19, %do.end3.do.end15_crit_edge ]
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.59, i32 noundef 308) #8
  br label %cleanup

if.end20:                                         ; preds = %cond.end
  %call21 = tail call i32 @s5p_mfc_wait_for_done_dev(ptr noundef %dev, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end32, label %do.end27

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.59, i32 noundef 312) #8
  br label %cleanup

if.end32:                                         ; preds = %if.end20
  tail call void @s5p_mfc_clock_off() #5
  %int_cond = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 15
  %5 = ptrtoint ptr %int_cond to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %int_cond, align 4
  %int_err = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 17
  %6 = ptrtoint ptr %int_err to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %int_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp33.not = icmp eq i32 %7, 0
  br i1 %cmp33.not, label %lor.lhs.false, label %if.end32.do.end39_crit_edge

if.end32.do.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39

lor.lhs.false:                                    ; preds = %if.end32
  %int_type = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 16
  %8 = ptrtoint ptr %int_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %int_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %cmp34.not = icmp eq i32 %9, 7
  br i1 %cmp34.not, label %do.body47, label %lor.lhs.false.do.end39_crit_edge

lor.lhs.false.do.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39

do.end39:                                         ; preds = %lor.lhs.false.do.end39_crit_edge, %if.end32.do.end39_crit_edge
  %int_type42 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 16
  %10 = ptrtoint ptr %int_type42 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %int_type42, align 4
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.59, i32 noundef 321, i32 noundef %7, i32 noundef %11) #8
  br label %cleanup

do.body47:                                        ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %12 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp48 = icmp sgt i32 %12, 4
  br i1 %cmp48, label %do.end52, label %do.body47.cleanup_crit_edge

do.body47.cleanup_crit_edge:                      ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end52:                                         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #7
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.59, i32 noundef 324) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %do.body47.cleanup_crit_edge, %do.end39, %do.end27, %do.end15
  %retval.0 = phi i32 [ %cond73, %do.end15 ], [ -5, %do.end27 ], [ -5, %do.end39 ], [ 0, %do.end52 ], [ 0, %do.body47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_wakeup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %0 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %do.end, label %entry.do.body4_crit_edge

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.70, i32 noundef 384) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %.pr = load i32, ptr @mfc_debug_level, align 4
  br label %do.body4

do.body4:                                         ; preds = %do.end, %entry.do.body4_crit_edge
  %1 = phi i32 [ %0, %entry.do.body4_crit_edge ], [ %.pr, %do.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp5 = icmp sgt i32 %1, 1
  br i1 %cmp5, label %do.end9, label %do.body4.do.end14_crit_edge

do.body4.do.end14_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.end9:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.70, i32 noundef 386) #8
  br label %do.end14

do.end14:                                         ; preds = %do.end9, %do.body4.do.end14_crit_edge
  %call15 = tail call i32 @s5p_mfc_clock_on() #5
  %risc_on = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 41
  %2 = ptrtoint ptr %risc_on to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %risc_on, align 1
  %call16 = tail call i32 @s5p_mfc_reset(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %do.body27, label %do.end21

do.end21:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.70, i32 noundef 391) #8
  tail call void @s5p_mfc_clock_off() #5
  br label %cleanup

do.body27:                                        ; preds = %do.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %3 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp28 = icmp sgt i32 %3, 1
  br i1 %cmp28, label %do.end32, label %do.body27.do.end37_crit_edge

do.body27.do.end37_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end37

do.end32:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #7
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.70, i32 noundef 395) #8
  br label %do.end37

do.end37:                                         ; preds = %do.end32, %do.body27.do.end37_crit_edge
  %variant.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %7)
  %cmp.i = icmp ugt i32 %7, 95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %dma_base.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 24
  %8 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_base.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  %regs_base.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 5
  %11 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs_base.i, align 4
  br i1 %cmp.i, label %do.body.i, label %do.body9.i

do.body.i:                                        ; preds = %do.end37
  %add.ptr.i = getelementptr i8, ptr %12, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #5, !srcloc !199
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %13 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp2.i = icmp sgt i32 %13, 1
  br i1 %cmp2.i, label %do.end5.i, label %do.body.i.s5p_mfc_init_memctrl.exit_crit_edge

do.body.i.s5p_mfc_init_memctrl.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %s5p_mfc_init_memctrl.exit

do.end5.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef 179, ptr noundef %dma_base.i) #8
  br label %s5p_mfc_init_memctrl.exit

do.body9.i:                                       ; preds = %do.end37
  %add.ptr14.i = getelementptr i8, ptr %12, i32 1288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %10) #5, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !213
  tail call void @arm_heavy_mb() #5
  %arrayidx18.i = getelementptr %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 24, i32 1
  %14 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx18.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  %17 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs_base.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %18, i32 1292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %16) #5, !srcloc !199
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %19 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp22.i = icmp sgt i32 %19, 1
  br i1 %cmp22.i, label %do.end25.i, label %do.body9.i.s5p_mfc_init_memctrl.exit_crit_edge

do.body9.i.s5p_mfc_init_memctrl.exit_crit_edge:   ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %s5p_mfc_init_memctrl.exit

do.end25.i:                                       ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #7
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.98, i32 noundef 187, ptr noundef %dma_base.i, ptr noundef %arrayidx18.i) #8
  br label %s5p_mfc_init_memctrl.exit

s5p_mfc_init_memctrl.exit:                        ; preds = %do.end25.i, %do.body9.i.s5p_mfc_init_memctrl.exit_crit_edge, %do.end5.i, %do.body.i.s5p_mfc_init_memctrl.exit_crit_edge
  %20 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %variant.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %23)
  %cmp.i87 = icmp ugt i32 %23, 95
  br i1 %cmp.i87, label %s5p_mfc_init_memctrl.exit.s5p_mfc_clear_cmds.exit_crit_edge, label %do.body.i90

s5p_mfc_init_memctrl.exit.s5p_mfc_clear_cmds.exit_crit_edge: ; preds = %s5p_mfc_init_memctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %s5p_mfc_clear_cmds.exit

do.body.i90:                                      ; preds = %s5p_mfc_init_memctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !214
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs_base.i, align 4
  %add.ptr.i89 = getelementptr i8, ptr %25, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 -1) #5, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !215
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs_base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %27, i32 8320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 -1) #5, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !216
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs_base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %29, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 0) #5, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !217
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs_base.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %31, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 0) #5, !srcloc !199
  br label %s5p_mfc_clear_cmds.exit

s5p_mfc_clear_cmds.exit:                          ; preds = %do.body.i90, %s5p_mfc_init_memctrl.exit.s5p_mfc_clear_cmds.exit_crit_edge
  tail call void @s5p_mfc_clean_dev_int_flags(ptr noundef %dev) #5
  %32 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %variant.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %35)
  %cmp38 = icmp ugt i32 %35, 127
  br i1 %cmp38, label %if.then39, label %if.else

if.then39:                                        ; preds = %s5p_mfc_clear_cmds.exit
  %36 = ptrtoint ptr %risc_on to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %risc_on, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !223
  tail call void @arm_heavy_mb() #5
  %37 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 16777216) #5, !srcloc !199
  %call.i92 = tail call i32 @s5p_mfc_wait_for_done_dev(ptr noundef %dev, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool.not.i = icmp eq i32 %call.i92, 0
  br i1 %tobool.not.i, label %do.body8.i, label %do.end4.i

do.end4.i:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103, i32 noundef 337) #8
  br label %if.end42.thread

do.body8.i:                                       ; preds = %if.then39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %39 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.i93 = icmp sgt i32 %39, 1
  br i1 %cmp.i93, label %do.end12.i, label %do.body8.i.do.end17.i_crit_edge

do.body8.i.do.end17.i_crit_edge:                  ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17.i

do.end12.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.103, i32 noundef 340) #8
  br label %do.end17.i

do.end17.i:                                       ; preds = %do.end12.i, %do.body8.i.do.end17.i_crit_edge
  %mfc_cmds.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 37
  %40 = ptrtoint ptr %mfc_cmds.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mfc_cmds.i, align 4
  %tobool18.not.i = icmp eq ptr %41, null
  br i1 %tobool18.not.i, label %do.end17.i.do.end29.i_crit_edge, label %land.lhs.true.i

do.end17.i.do.end29.i_crit_edge:                  ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end29.i

land.lhs.true.i:                                  ; preds = %do.end17.i
  %wakeup_cmd.i = getelementptr inbounds %struct.s5p_mfc_hw_cmds, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %wakeup_cmd.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wakeup_cmd.i, align 4
  %tobool20.not.i = icmp eq ptr %43, null
  br i1 %tobool20.not.i, label %land.lhs.true.i.do.end29.i_crit_edge, label %cond.end.i

land.lhs.true.i.do.end29.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end29.i

cond.end.i:                                       ; preds = %land.lhs.true.i
  %call23.i = tail call i32 %43(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end34.i, label %cond.end.i.do.end29.i_crit_edge

cond.end.i.do.end29.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end29.i

do.end29.i:                                       ; preds = %cond.end.i.do.end29.i_crit_edge, %land.lhs.true.i.do.end29.i_crit_edge, %do.end17.i.do.end29.i_crit_edge
  %cond59.i = phi i32 [ %call23.i, %cond.end.i.do.end29.i_crit_edge ], [ -19, %land.lhs.true.i.do.end29.i_crit_edge ], [ -19, %do.end17.i.do.end29.i_crit_edge ]
  %call31.i94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.103, i32 noundef 343) #8
  br label %if.end42.thread

if.end34.i:                                       ; preds = %cond.end.i
  %call35.i = tail call i32 @s5p_mfc_wait_for_done_dev(ptr noundef %dev, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end34.i.if.end45_crit_edge, label %do.end41.i

if.end34.i.if.end45_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

do.end41.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.103, i32 noundef 348) #8
  br label %if.end42.thread

if.else:                                          ; preds = %s5p_mfc_clear_cmds.exit
  %mfc_cmds.i95 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 37
  %44 = ptrtoint ptr %mfc_cmds.i95 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mfc_cmds.i95, align 4
  %tobool.not.i96 = icmp eq ptr %45, null
  br i1 %tobool.not.i96, label %if.else.do.end.i_crit_edge, label %land.lhs.true.i98

if.else.do.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

land.lhs.true.i98:                                ; preds = %if.else
  %wakeup_cmd.i97 = getelementptr inbounds %struct.s5p_mfc_hw_cmds, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %wakeup_cmd.i97 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wakeup_cmd.i97, align 4
  %tobool2.not.i = icmp eq ptr %47, null
  br i1 %tobool2.not.i, label %land.lhs.true.i98.do.end.i_crit_edge, label %cond.end.i100

land.lhs.true.i98.do.end.i_crit_edge:             ; preds = %land.lhs.true.i98
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

cond.end.i100:                                    ; preds = %land.lhs.true.i98
  %call.i99 = tail call i32 %47(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool5.not.i = icmp eq i32 %call.i99, 0
  br i1 %tobool5.not.i, label %if.end.i, label %cond.end.i100.do.end.i_crit_edge

cond.end.i100.do.end.i_crit_edge:                 ; preds = %cond.end.i100
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %cond.end.i100.do.end.i_crit_edge, %land.lhs.true.i98.do.end.i_crit_edge, %if.else.do.end.i_crit_edge
  %cond47.i = phi i32 [ %call.i99, %cond.end.i100.do.end.i_crit_edge ], [ -19, %land.lhs.true.i98.do.end.i_crit_edge ], [ -19, %if.else.do.end.i_crit_edge ]
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.113, i32 noundef 361) #8
  br label %if.end42.thread

if.end.i:                                         ; preds = %cond.end.i100
  %48 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %variant.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %51)
  %cmp.i102 = icmp ugt i32 %51, 95
  br i1 %cmp.i102, label %if.then12.i, label %do.body16.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %risc_on to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %risc_on, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !224
  tail call void @arm_heavy_mb() #5
  %53 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 16777216) #5, !srcloc !199
  br label %if.end21.i

do.body16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !225
  tail call void @arm_heavy_mb() #5
  %55 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 -16580608) #5, !srcloc !199
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.body16.i, %if.then12.i
  %call22.i = tail call i32 @s5p_mfc_wait_for_done_dev(ptr noundef %dev, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end21.i.if.end45_crit_edge, label %do.end28.i

if.end21.i.if.end45_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

do.end28.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.113, i32 noundef 374) #8
  br label %if.end42.thread

if.end42.thread:                                  ; preds = %do.end28.i, %do.end.i, %do.end41.i, %do.end29.i, %do.end4.i
  %ret.0.ph = phi i32 [ -5, %do.end28.i ], [ %cond47.i, %do.end.i ], [ -5, %do.end41.i ], [ %cond59.i, %do.end29.i ], [ -5, %do.end4.i ]
  tail call void @s5p_mfc_clock_off() #5
  br label %cleanup

if.end45:                                         ; preds = %if.end21.i.if.end45_crit_edge, %if.end34.i.if.end45_crit_edge
  tail call void @s5p_mfc_clock_off() #5
  %int_cond = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 15
  %57 = ptrtoint ptr %int_cond to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %int_cond, align 4
  %int_err = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 17
  %58 = ptrtoint ptr %int_err to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %int_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp46.not = icmp eq i32 %59, 0
  br i1 %cmp46.not, label %lor.lhs.false, label %if.end45.do.end52_crit_edge

if.end45.do.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end52

lor.lhs.false:                                    ; preds = %if.end45
  %int_type = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 16
  %60 = ptrtoint ptr %int_type to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %int_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %61)
  %cmp47.not = icmp eq i32 %61, 8
  br i1 %cmp47.not, label %do.body60, label %lor.lhs.false.do.end52_crit_edge

lor.lhs.false.do.end52_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end52

do.end52:                                         ; preds = %lor.lhs.false.do.end52_crit_edge, %if.end45.do.end52_crit_edge
  %int_type55 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 16
  %62 = ptrtoint ptr %int_type55 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %int_type55, align 4
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.70, i32 noundef 416, i32 noundef %59, i32 noundef %63) #8
  br label %cleanup

do.body60:                                        ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %64 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %64)
  %cmp61 = icmp sgt i32 %64, 4
  br i1 %cmp61, label %do.end65, label %do.body60.cleanup_crit_edge

do.body60.cleanup_crit_edge:                      ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end65:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #7
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.70, i32 noundef 419) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %do.body60.cleanup_crit_edge, %do.end52, %if.end42.thread, %do.end21
  %retval.0 = phi i32 [ %call16, %do.end21 ], [ -5, %do.end52 ], [ 0, %do.end65 ], [ 0, %do.body60.cleanup_crit_edge ], [ %ret.0.ph, %if.end42.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_open_mfc_inst(ptr noundef %dev, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mfc_ops = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 36
  %0 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfc_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %alloc_instance_buffer = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %alloc_instance_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alloc_instance_buffer, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %cond.end

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

cond.end:                                         ; preds = %land.lhs.true
  %call = tail call i32 %3(ptr noundef %ctx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end, label %cond.end.do.end_crit_edge

cond.end.do.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %cond.end.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %cond129 = phi i32 [ %call, %cond.end.do.end_crit_edge ], [ -19, %land.lhs.true.do.end_crit_edge ], [ -19, %entry.do.end_crit_edge ]
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, i32 noundef 429) #8
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %type = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 15
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then10, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then10:                                        ; preds = %if.end
  %6 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mfc_ops, align 4
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %if.then10.do.end28_crit_edge, label %land.lhs.true13

if.then10.do.end28_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

land.lhs.true13:                                  ; preds = %if.then10
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool15.not = icmp eq ptr %9, null
  br i1 %tobool15.not, label %land.lhs.true13.do.end28_crit_edge, label %cond.end21

land.lhs.true13.do.end28_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

cond.end21:                                       ; preds = %land.lhs.true13
  %call19 = tail call i32 %9(ptr noundef %ctx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool23.not = icmp eq i32 %call19, 0
  br i1 %tobool23.not, label %cond.end21.if.end34_crit_edge, label %cond.end21.do.end28_crit_edge

cond.end21.do.end28_crit_edge:                    ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

cond.end21.if.end34_crit_edge:                    ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

do.end28:                                         ; preds = %cond.end21.do.end28_crit_edge, %land.lhs.true13.do.end28_crit_edge, %if.then10.do.end28_crit_edge
  %cond22132 = phi i32 [ %call19, %cond.end21.do.end28_crit_edge ], [ -19, %land.lhs.true13.do.end28_crit_edge ], [ -19, %if.then10.do.end28_crit_edge ]
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.83, i32 noundef 437) #8
  br label %err_free_inst_buf

if.end34:                                         ; preds = %cond.end21.if.end34_crit_edge, %if.end.if.end34_crit_edge
  tail call void @set_work_bit_irqsave(ptr noundef %ctx) #5
  %10 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mfc_ops, align 4
  %tobool36.not = icmp eq ptr %11, null
  br i1 %tobool36.not, label %if.end34.cond.end44_crit_edge, label %land.lhs.true37

if.end34.cond.end44_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end44

land.lhs.true37:                                  ; preds = %if.end34
  %try_run = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %try_run to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %try_run, align 4
  %tobool39.not = icmp eq ptr %13, null
  br i1 %tobool39.not, label %land.lhs.true37.cond.end44_crit_edge, label %cond.true40

land.lhs.true37.cond.end44_crit_edge:             ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end44

cond.true40:                                      ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %13(ptr noundef %dev) #5
  br label %cond.end44

cond.end44:                                       ; preds = %cond.true40, %land.lhs.true37.cond.end44_crit_edge, %if.end34.cond.end44_crit_edge
  %call45 = tail call i32 @s5p_mfc_wait_for_done_ctx(ptr noundef %ctx, i32 noundef 2, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %do.body57, label %do.end51

do.end51:                                         ; preds = %cond.end44
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.83, i32 noundef 447) #8
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp69 = icmp eq i32 %15, 1
  br i1 %cmp69, label %if.then70, label %do.end51.err_free_inst_buf_crit_edge

do.end51.err_free_inst_buf_crit_edge:             ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_inst_buf

do.body57:                                        ; preds = %cond.end44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mfc_debug_level to i32))
  %16 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp58 = icmp sgt i32 %16, 1
  br i1 %cmp58, label %do.end62, label %do.body57.cleanup_crit_edge

do.body57.cleanup_crit_edge:                      ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end62:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #7
  %inst_no = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 17
  %17 = ptrtoint ptr %inst_no to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %inst_no, align 4
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.83, i32 noundef 452, i32 noundef %18) #8
  br label %cleanup

if.then70:                                        ; preds = %do.end51
  %19 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mfc_ops, align 4
  %tobool72.not = icmp eq ptr %20, null
  br i1 %tobool72.not, label %if.then70.cleanup_crit_edge, label %land.lhs.true73

if.then70.cleanup_crit_edge:                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true73:                                  ; preds = %if.then70
  %release_dec_desc_buffer = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %release_dec_desc_buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %release_dec_desc_buffer, align 4
  %tobool75.not = icmp eq ptr %22, null
  br i1 %tobool75.not, label %land.lhs.true73.err_free_inst_buf_crit_edge, label %cond.true76

land.lhs.true73.err_free_inst_buf_crit_edge:      ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_inst_buf

cond.true76:                                      ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %22(ptr noundef %ctx) #5
  br label %err_free_inst_buf

err_free_inst_buf:                                ; preds = %cond.true76, %land.lhs.true73.err_free_inst_buf_crit_edge, %do.end51.err_free_inst_buf_crit_edge, %do.end28
  %ret.1.ph = phi i32 [ -5, %do.end51.err_free_inst_buf_crit_edge ], [ -5, %land.lhs.true73.err_free_inst_buf_crit_edge ], [ -5, %cond.true76 ], [ %cond22132, %do.end28 ]
  %23 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load ptr, ptr %mfc_ops, align 4
  %tobool83.not = icmp eq ptr %.pr, null
  br i1 %tobool83.not, label %err_free_inst_buf.cleanup_crit_edge, label %land.lhs.true84

err_free_inst_buf.cleanup_crit_edge:              ; preds = %err_free_inst_buf
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true84:                                  ; preds = %err_free_inst_buf
  %release_instance_buffer = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %.pr, i32 0, i32 5
  %24 = ptrtoint ptr %release_instance_buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %release_instance_buffer, align 4
  %tobool86.not = icmp eq ptr %25, null
  br i1 %tobool86.not, label %land.lhs.true84.cleanup_crit_edge, label %cond.true87

land.lhs.true84.cleanup_crit_edge:                ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.true87:                                      ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %25(ptr noundef %ctx) #5
  br label %cleanup

cleanup:                                          ; preds = %cond.true87, %land.lhs.true84.cleanup_crit_edge, %err_free_inst_buf.cleanup_crit_edge, %if.then70.cleanup_crit_edge, %do.end62, %do.body57.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end62 ], [ 0, %do.body57.cleanup_crit_edge ], [ %cond129, %do.end ], [ %ret.1.ph, %cond.true87 ], [ %ret.1.ph, %land.lhs.true84.cleanup_crit_edge ], [ %ret.1.ph, %err_free_inst_buf.cleanup_crit_edge ], [ -5, %if.then70.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_work_bit_irqsave(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_wait_for_done_ctx(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s5p_mfc_close_mfc_inst(ptr noundef %dev, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 16
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 108, ptr %state, align 4
  tail call void @set_work_bit_irqsave(ptr noundef %ctx) #5
  %mfc_ops = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 36
  %1 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mfc_ops, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %land.lhs.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

land.lhs.true:                                    ; preds = %entry
  %try_run = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %try_run to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %try_run, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %4(ptr noundef %dev) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %call = tail call i32 @s5p_mfc_wait_for_done_ctx(ptr noundef %ctx, i32 noundef 6, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %cond.end.if.end_crit_edge, label %do.end

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, i32 noundef 472) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %cond.end.if.end_crit_edge
  %5 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mfc_ops, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %if.end.cond.end28_crit_edge, label %land.lhs.true11

if.end.cond.end28_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end28

land.lhs.true11:                                  ; preds = %if.end
  %release_codec_buffers = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %release_codec_buffers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %release_codec_buffers, align 4
  %tobool13.not = icmp eq ptr %8, null
  br i1 %tobool13.not, label %land.lhs.true11.cond.end18_crit_edge, label %cond.true14

land.lhs.true11.cond.end18_crit_edge:             ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end18

cond.true14:                                      ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %8(ptr noundef %ctx) #5
  br label %cond.end18

cond.end18:                                       ; preds = %cond.true14, %land.lhs.true11.cond.end18_crit_edge
  %9 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load ptr, ptr %mfc_ops, align 4
  %tobool20.not = icmp eq ptr %.pr, null
  br i1 %tobool20.not, label %cond.end18.cond.end28_crit_edge, label %land.lhs.true21

cond.end18.cond.end28_crit_edge:                  ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end28

land.lhs.true21:                                  ; preds = %cond.end18
  %release_instance_buffer = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %.pr, i32 0, i32 5
  %10 = ptrtoint ptr %release_instance_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %release_instance_buffer, align 4
  %tobool23.not = icmp eq ptr %11, null
  br i1 %tobool23.not, label %land.lhs.true21.cond.end28_crit_edge, label %cond.true24

land.lhs.true21.cond.end28_crit_edge:             ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end28

cond.true24:                                      ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %11(ptr noundef %ctx) #5
  br label %cond.end28

cond.end28:                                       ; preds = %cond.true24, %land.lhs.true21.cond.end28_crit_edge, %cond.end18.cond.end28_crit_edge, %if.end.cond.end28_crit_edge
  %type = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 15
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %if.then29, label %cond.end28.if.end40_crit_edge

cond.end28.if.end40_crit_edge:                    ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then29:                                        ; preds = %cond.end28
  %14 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mfc_ops, align 4
  %tobool31.not = icmp eq ptr %15, null
  br i1 %tobool31.not, label %if.then29.if.end40_crit_edge, label %land.lhs.true32

if.then29.if.end40_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

land.lhs.true32:                                  ; preds = %if.then29
  %release_dec_desc_buffer = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %release_dec_desc_buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %release_dec_desc_buffer, align 4
  %tobool34.not = icmp eq ptr %17, null
  br i1 %tobool34.not, label %land.lhs.true32.if.end40_crit_edge, label %cond.true35

land.lhs.true32.if.end40_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

cond.true35:                                      ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %17(ptr noundef %ctx) #5
  br label %if.end40

if.end40:                                         ; preds = %cond.true35, %land.lhs.true32.if.end40_crit_edge, %if.then29.if.end40_crit_edge, %cond.end28.if.end40_crit_edge
  %inst_no = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 17
  %18 = ptrtoint ptr %inst_no to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %inst_no, align 4
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %state, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !91, !92, !93, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !109, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !124, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186}
!llvm.module.flags = !{!187, !188, !189, !190, !191, !192, !193, !194}
!llvm.ident = !{!195}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 31, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @s5p_mfc_alloc_firmware._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @s5p_mfc_alloc_firmware._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 37, i32 3}
!8 = !{ptr @s5p_mfc_alloc_firmware._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @s5p_mfc_alloc_firmware._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 52, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @s5p_mfc_load_firmware._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @s5p_mfc_load_firmware._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 69, i32 3}
!17 = !{ptr @s5p_mfc_load_firmware._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @s5p_mfc_load_firmware._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 73, i32 3}
!21 = !{ptr @s5p_mfc_load_firmware._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @s5p_mfc_load_firmware._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 81, i32 2}
!25 = !{ptr @s5p_mfc_load_firmware._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @s5p_mfc_load_firmware._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 121, i32 2}
!29 = !{ptr @s5p_mfc_reset._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @s5p_mfc_reset._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 157, i32 5}
!33 = !{ptr @s5p_mfc_reset._entry.18, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @s5p_mfc_reset._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @s5p_mfc_reset._entry.21, !36, !"_entry", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 169, i32 2}
!37 = !{ptr @s5p_mfc_reset._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 210, i32 2}
!40 = !{ptr @s5p_mfc_init_hw._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @s5p_mfc_init_hw._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 212, i32 3}
!44 = !{ptr @s5p_mfc_init_hw._entry.24, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @s5p_mfc_init_hw._entry_ptr.26, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 217, i32 2}
!48 = !{ptr @s5p_mfc_init_hw._entry.27, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @s5p_mfc_init_hw._entry_ptr.29, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.31, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 222, i32 3}
!52 = !{ptr @s5p_mfc_init_hw._entry.30, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @s5p_mfc_init_hw._entry_ptr.32, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.34, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 225, i32 2}
!56 = !{ptr @s5p_mfc_init_hw._entry.33, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @s5p_mfc_init_hw._entry_ptr.35, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.37, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 242, i32 2}
!60 = !{ptr @s5p_mfc_init_hw._entry.36, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @s5p_mfc_init_hw._entry_ptr.38, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.40, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 244, i32 3}
!64 = !{ptr @s5p_mfc_init_hw._entry.39, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @s5p_mfc_init_hw._entry_ptr.41, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.43, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 253, i32 3}
!68 = !{ptr @s5p_mfc_init_hw._entry.42, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @s5p_mfc_init_hw._entry_ptr.44, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.46, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 258, i32 2}
!72 = !{ptr @s5p_mfc_init_hw._entry.45, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @s5p_mfc_init_hw._entry_ptr.47, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.49, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 260, i32 3}
!76 = !{ptr @s5p_mfc_init_hw._entry.48, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @s5p_mfc_init_hw._entry_ptr.50, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.52, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 269, i32 3}
!80 = !{ptr @s5p_mfc_init_hw._entry.51, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @s5p_mfc_init_hw._entry_ptr.53, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.55, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 280, i32 2}
!84 = !{ptr @s5p_mfc_init_hw._entry.54, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @s5p_mfc_init_hw._entry_ptr.56, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @s5p_mfc_init_hw._entry.57, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 283, i32 2}
!88 = !{ptr @s5p_mfc_init_hw._entry_ptr.58, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.59, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 303, i32 2}
!91 = !{ptr @s5p_mfc_sleep._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @s5p_mfc_sleep._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @s5p_mfc_sleep._entry.60, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 308, i32 3}
!95 = !{ptr @s5p_mfc_sleep._entry_ptr.61, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.63, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 312, i32 3}
!98 = !{ptr @s5p_mfc_sleep._entry.62, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @s5p_mfc_sleep._entry_ptr.64, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.66, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 320, i32 3}
!102 = !{ptr @s5p_mfc_sleep._entry.65, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @s5p_mfc_sleep._entry_ptr.67, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @s5p_mfc_sleep._entry.68, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 324, i32 2}
!106 = !{ptr @s5p_mfc_sleep._entry_ptr.69, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.70, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 384, i32 2}
!109 = !{ptr @s5p_mfc_wakeup._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @s5p_mfc_wakeup._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @s5p_mfc_wakeup._entry.71, !112, !"_entry", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 386, i32 2}
!113 = !{ptr @s5p_mfc_wakeup._entry_ptr.72, !112, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @s5p_mfc_wakeup._entry.73, !115, !"_entry", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 391, i32 3}
!116 = !{ptr @s5p_mfc_wakeup._entry_ptr.74, !115, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @s5p_mfc_wakeup._entry.75, !118, !"_entry", i1 false, i1 false}
!118 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 395, i32 2}
!119 = !{ptr @s5p_mfc_wakeup._entry_ptr.76, !118, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.78, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 415, i32 3}
!122 = !{ptr @s5p_mfc_wakeup._entry.77, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @s5p_mfc_wakeup._entry_ptr.79, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @s5p_mfc_wakeup._entry.80, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 419, i32 2}
!126 = !{ptr @s5p_mfc_wakeup._entry_ptr.81, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.82, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 429, i32 3}
!129 = !{ptr @.str.83, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @s5p_mfc_open_mfc_inst._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @s5p_mfc_open_mfc_inst._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.85, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 437, i32 4}
!134 = !{ptr @s5p_mfc_open_mfc_inst._entry.84, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @s5p_mfc_open_mfc_inst._entry_ptr.86, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.88, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 447, i32 3}
!138 = !{ptr @s5p_mfc_open_mfc_inst._entry.87, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @s5p_mfc_open_mfc_inst._entry_ptr.89, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.91, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 452, i32 2}
!142 = !{ptr @s5p_mfc_open_mfc_inst._entry.90, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @s5p_mfc_open_mfc_inst._entry_ptr.92, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.93, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 472, i32 3}
!146 = !{ptr @.str.94, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @s5p_mfc_close_mfc_inst._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @s5p_mfc_close_mfc_inst._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.95, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 106, i32 4}
!151 = !{ptr @.str.96, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @s5p_mfc_bus_reset._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @s5p_mfc_bus_reset._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.97, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 178, i32 3}
!156 = !{ptr @.str.98, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @s5p_mfc_init_memctrl._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @s5p_mfc_init_memctrl._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.100, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 185, i32 3}
!161 = !{ptr @s5p_mfc_init_memctrl._entry.99, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @s5p_mfc_init_memctrl._entry_ptr.101, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.102, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 337, i32 3}
!165 = !{ptr @.str.103, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @s5p_mfc_v8_wait_wakeup._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @s5p_mfc_v8_wait_wakeup._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.105, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 340, i32 2}
!170 = !{ptr @s5p_mfc_v8_wait_wakeup._entry.104, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @s5p_mfc_v8_wait_wakeup._entry_ptr.106, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.108, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 343, i32 3}
!174 = !{ptr @s5p_mfc_v8_wait_wakeup._entry.107, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @s5p_mfc_v8_wait_wakeup._entry_ptr.109, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.111, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 348, i32 3}
!178 = !{ptr @s5p_mfc_v8_wait_wakeup._entry.110, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @s5p_mfc_v8_wait_wakeup._entry_ptr.112, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.113, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 361, i32 3}
!182 = !{ptr @s5p_mfc_wait_wakeup._entry, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @s5p_mfc_wait_wakeup._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @s5p_mfc_wait_wakeup._entry.114, !185, !"_entry", i1 false, i1 false}
!185 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c", i32 374, i32 3}
!186 = !{ptr @s5p_mfc_wait_wakeup._entry_ptr.115, !185, !"_entry_ptr", i1 false, i1 false}
!187 = !{i32 1, !"wchar_size", i32 2}
!188 = !{i32 1, !"min_enum_size", i32 4}
!189 = !{i32 8, !"branch-target-enforcement", i32 0}
!190 = !{i32 8, !"sign-return-address", i32 0}
!191 = !{i32 8, !"sign-return-address-all", i32 0}
!192 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!193 = !{i32 7, !"uwtable", i32 1}
!194 = !{i32 7, !"frame-pointer", i32 2}
!195 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!196 = !{!"auto-init"}
!197 = !{i8 0, i8 2}
!198 = !{i64 2156504539}
!199 = !{i64 7397193}
!200 = !{i64 2156511759}
!201 = !{i64 2156512270}
!202 = !{i64 2156512802}
!203 = !{i64 2156506451}
!204 = !{i64 7397611}
!205 = !{i64 2156509294}
!206 = !{i64 2156513367}
!207 = !{i64 2156513888}
!208 = !{i64 2156514414}
!209 = !{i64 2156515464}
!210 = !{i64 2156519604}
!211 = !{i64 2156519917}
!212 = !{i64 2156520442}
!213 = !{i64 2156525771}
!214 = !{i64 2156528460}
!215 = !{i64 2156529016}
!216 = !{i64 2156529554}
!217 = !{i64 2156530065}
!218 = !{i64 2156538947}
!219 = !{i64 2156539472}
!220 = !{i64 2156540043}
!221 = !{i64 2156551833}
!222 = !{i64 2156552414}
!223 = !{i64 2156565128}
!224 = !{i64 2156574642}
!225 = !{i64 2156575167}
