; ModuleID = '/llk/IR_all_yes/drivers/media/platform/marvell-ccic/mcam-core.c_pt.bc'
source_filename = "../drivers/media/platform/marvell-ccic/mcam-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mccic_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_mccic_irq\09\09\09\09"
module asm "\09.long\09__crc_mccic_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mccic_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22mccic_irq\22\09\09\09\09\09"
module asm "__kstrtabns_mccic_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mccic_register\22, \22a\22\09"
module asm "\09.weak\09__crc_mccic_register\09\09\09\09"
module asm "\09.long\09__crc_mccic_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mccic_register:\09\09\09\09\09"
module asm "\09.asciz \09\22mccic_register\22\09\09\09\09\09"
module asm "__kstrtabns_mccic_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mccic_shutdown\22, \22a\22\09"
module asm "\09.weak\09__crc_mccic_shutdown\09\09\09\09"
module asm "\09.long\09__crc_mccic_shutdown\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mccic_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22mccic_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_mccic_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mccic_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_mccic_suspend\09\09\09\09"
module asm "\09.long\09__crc_mccic_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mccic_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22mccic_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_mccic_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mccic_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_mccic_resume\09\09\09\09"
module asm "\09.long\09__crc_mccic_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mccic_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22mccic_resume\22\09\09\09\09\09"
module asm "__kstrtabns_mccic_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.97, i32, i32 }
%union.anon.97 = type { i32 }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mcam_format_struct = type { i32, i32, i8, i32 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mcam_camera = type { ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, ptr, i8, i32, [3 x ptr], %struct.clk_hw, ptr, ptr, ptr, ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, i32, i32, %struct.mcam_frame_state, %struct.video_device, %struct.v4l2_async_notifier, ptr, %struct.vb2_queue, %struct.list_head, i32, i32, [32 x i8], i32, [3 x ptr], [3 x i32], %struct.tasklet_struct, i32, [3 x i32], [3 x ptr], ptr, ptr, %struct.v4l2_pix_format, i32, %struct.mutex }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mcam_frame_state = type { i32, i32, i32 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.120, i32 }
%union.anon.120 = type { ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mcam_vb_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, ptr, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.117, i16, i16, i16, [10 x i16] }
%union.anon.117 = type { i16 }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mcam_dma_desc = type { i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_state = type { ptr }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_streamparm = type { i32, %union.anon.112 }
%union.anon.112 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.89 }
%union.anon.89 = type { i32, [28 x i8] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.113, [2 x i32] }
%union.anon.113 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.114, [2 x i32] }
%union.anon.114 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }

@__param_str_alloc_bufs_at_read = internal constant [29 x i8] c"mcam_core.alloc_bufs_at_read\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@alloc_bufs_at_read = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_alloc_bufs_at_read = internal constant %struct.kernel_param { ptr @__param_str_alloc_bufs_at_read, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @alloc_bufs_at_read } }, section "__param", align 4
@__UNIQUE_ID_alloc_bufs_at_readtype299 = internal constant [43 x i8] c"mcam_core.parmtype=alloc_bufs_at_read:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_alloc_bufs_at_read300 = internal constant [297 x i8] c"mcam_core.parm=alloc_bufs_at_read:Non-zero value causes DMA buffers to be allocated when the video capture device is read, rather than at module load time.  This saves memory, but decreases the chances of successfully getting those buffers.  This parameter is only used in the vmalloc buffer mode\00", section ".modinfo", align 1
@__param_str_n_dma_bufs = internal constant [21 x i8] c"mcam_core.n_dma_bufs\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@n_dma_bufs = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__param_n_dma_bufs = internal constant %struct.kernel_param { ptr @__param_str_n_dma_bufs, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @n_dma_bufs } }, section "__param", align 4
@__UNIQUE_ID_n_dma_bufstype301 = internal constant [35 x i8] c"mcam_core.parmtype=n_dma_bufs:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_n_dma_bufs302 = internal constant [131 x i8] c"mcam_core.parm=n_dma_bufs:The number of DMA buffers to allocate.  Can be either two (saves memory, makes timing tighter) or three.\00", section ".modinfo", align 1
@__param_str_dma_buf_size = internal constant [23 x i8] c"mcam_core.dma_buf_size\00", align 1
@dma_buf_size = internal global { i32, [28 x i8] } { i32 614400, [28 x i8] zeroinitializer }, align 32
@__param_dma_buf_size = internal constant %struct.kernel_param { ptr @__param_str_dma_buf_size, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @dma_buf_size } }, section "__param", align 4
@__UNIQUE_ID_dma_buf_sizetype303 = internal constant [37 x i8] c"mcam_core.parmtype=dma_buf_size:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dma_buf_size304 = internal constant [162 x i8] c"mcam_core.parm=dma_buf_size:The size of the allocated DMA buffers.  If actual operating parameters require larger buffers, an attempt to reallocate will be made.\00", section ".modinfo", align 1
@__param_str_flip = internal constant [15 x i8] c"mcam_core.flip\00", align 1
@flip = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_flip = internal constant %struct.kernel_param { ptr @__param_str_flip, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @flip } }, section "__param", align 4
@__UNIQUE_ID_fliptype305 = internal constant [29 x i8] c"mcam_core.parmtype=flip:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_flip306 = internal constant [88 x i8] c"mcam_core.parm=flip:If set, the sensor will be instructed to flip the image vertically.\00", section ".modinfo", align 1
@__param_str_buffer_mode = internal constant [22 x i8] c"mcam_core.buffer_mode\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@buffer_mode = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_buffer_mode = internal constant %struct.kernel_param { ptr @__param_str_buffer_mode, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @buffer_mode } }, section "__param", align 4
@__UNIQUE_ID_buffer_modetype307 = internal constant [35 x i8] c"mcam_core.parmtype=buffer_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_buffer_mode308 = internal constant [161 x i8] c"mcam_core.parm=buffer_mode:Set the buffer mode to be used; default is to go with what the platform driver asks for.  Set to 0 for vmalloc, 1 for DMA contiguous.\00", section ".modinfo", align 1
@__kstrtab_mccic_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_mccic_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_mccic_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mccic_irq to i32), ptr @__kstrtab_mccic_irq, ptr @__kstrtabns_mccic_irq }, section "___ksymtab_gpl+mccic_irq", align 4
@mccic_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013marvell-cam: Cafe can't do S/G I/O, attempting vmalloc mode instead\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mccic_register\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/media/platform/marvell-ccic/mcam-core.c\00", [48 x i8] zeroinitializer }, align 32
@mccic_register._entry_ptr = internal global ptr @mccic_register._entry, section ".printk_index", align 4
@mccic_register._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013marvell-cam: buffer mode %d unsupported\0A\00", [53 x i8] zeroinitializer }, align 32
@mccic_register._entry_ptr.5 = internal global ptr @mccic_register._entry.3, section ".printk_index", align 4
@mccic_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&cam->s_mutex\00", [18 x i8] zeroinitializer }, align 32
@mcam_def_pix_format = internal constant { %struct.v4l2_pix_format, [48 x i8] } { %struct.v4l2_pix_format { i32 640, i32 480, i32 1448695129, i32 1, i32 1280, i32 614400, i32 8, i32 0, i32 0, %union.anon.97 zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@mccic_notify_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @mccic_notify_bound, ptr @mccic_notify_complete, ptr @mccic_notify_unbind }, [20 x i8] zeroinitializer }, align 32
@mccic_register._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 1882, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register a sensor notifier\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mccic_register._entry_ptr.11 = internal global ptr @mccic_register._entry.7, section ".printk_index", align 4
@mclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @mclk_prepare, ptr @mclk_unprepare, ptr null, ptr null, ptr @mclk_enable, ptr @mclk_disable, ptr null, ptr null, ptr null, ptr null, ptr @mclk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@mccic_register._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 1902, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't register clock\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mccic_register._entry_ptr.17 = internal global ptr @mccic_register._entry.14, section ".printk_index", align 4
@mccic_register._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 1911, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Unable to alloc DMA buffers at load will try again later.\00", [38 x i8] zeroinitializer }, align 32
@mccic_register._entry_ptr.20 = internal global ptr @mccic_register._entry.18, section ".printk_index", align 4
@__kstrtab_mccic_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_mccic_register = external dso_local constant [0 x i8], align 1
@__ksymtab_mccic_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mccic_register to i32), ptr @__kstrtab_mccic_register, ptr @__kstrtabns_mccic_register }, section "___ksymtab_gpl+mccic_register", align 4
@mccic_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 1933, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Removing a device with users!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mccic_shutdown\00", [17 x i8] zeroinitializer }, align 32
@mccic_shutdown._entry_ptr = internal global ptr @mccic_shutdown._entry, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@__kstrtab_mccic_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_mccic_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_mccic_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mccic_shutdown to i32), ptr @__kstrtab_mccic_shutdown, ptr @__kstrtabns_mccic_shutdown }, section "___ksymtab_gpl+mccic_shutdown", align 4
@__kstrtab_mccic_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_mccic_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_mccic_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mccic_suspend to i32), ptr @__kstrtab_mccic_suspend, ptr @__kstrtabns_mccic_suspend }, section "___ksymtab_gpl+mccic_suspend", align 4
@__kstrtab_mccic_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_mccic_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_mccic_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mccic_resume to i32), ptr @__kstrtab_mccic_resume, ptr @__kstrtabns_mccic_resume }, section "___ksymtab_gpl+mccic_resume", align 4
@__UNIQUE_ID_file314 = internal constant [61 x i8] c"mcam_core.file=drivers/media/platform/marvell-ccic/mcam-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license315 = internal constant [25 x i8] c"mcam_core.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author316 = internal constant [50 x i8] c"mcam_core.author=Jonathan Corbet <corbet@lwn.net>\00", section ".modinfo", align 1
@mccic_notify_bound._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1766, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sensor already bound\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mccic_notify_bound\00", [45 x i8] zeroinitializer }, align 32
@mccic_notify_bound._entry_ptr = internal global ptr @mccic_notify_bound._entry, section ".printk_index", align 4
@mcam_v4l_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @mcam_v4l_fops, i32 83886081, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"mcam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @mcam_v4l_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@mccic_notify_bound.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.24, ptr @.str.2, ptr @.str.26, i8 1, i8 -63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcam_core\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sensor %s bound\0A\00", [47 x i8] zeroinitializer }, align 32
@mcam_cam_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 988, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cam init with device in funky state %d\00", [57 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mcam_cam_init\00", [18 x i8] zeroinitializer }, align 32
@mcam_cam_init._entry_ptr = internal global ptr @mcam_cam_init._entry, section ".printk_index", align 4
@mcam_vb2_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @mcam_vb_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcam_vb_start_streaming, ptr @mcam_vb_stop_streaming, ptr @mcam_vb_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@mcam_vb2_sg_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @mcam_vb_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr @mcam_vb_sg_buf_init, ptr @mcam_vb_sg_buf_prepare, ptr null, ptr @mcam_vb_sg_buf_cleanup, ptr @mcam_vb_start_streaming, ptr @mcam_vb_stop_streaming, ptr @mcam_vb_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_sg_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@mcam_vb_stop_streaming.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 1, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mcam_vb_stop_streaming\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"stop_streaming: %d frames, %d singles, %d delivered\0A\00", [43 x i8] zeroinitializer }, align 32
@mcam_formats = internal constant { [7 x %struct.mcam_format_struct], [48 x i8] } { [7 x %struct.mcam_format_struct] [%struct.mcam_format_struct { i32 1448695129, i32 2, i8 0, i32 8200 }, %struct.mcam_format_struct { i32 1431918169, i32 2, i8 0, i32 8200 }, %struct.mcam_format_struct { i32 842093913, i32 1, i8 1, i32 8200 }, %struct.mcam_format_struct { i32 842094169, i32 1, i8 1, i32 8200 }, %struct.mcam_format_struct { i32 842093144, i32 2, i8 0, i32 4098 }, %struct.mcam_format_struct { i32 1346520914, i32 2, i8 0, i32 4104 }, %struct.mcam_format_struct { i32 825770306, i32 1, i8 0, i32 12289 }], [48 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@mcam_vb_sg_buf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 1227, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to get DMA descriptor array\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mcam_vb_sg_buf_init\00", [44 x i8] zeroinitializer }, align 32
@mcam_vb_sg_buf_init._entry_ptr = internal global ptr @mcam_vb_sg_buf_init._entry, section ".printk_index", align 4
@mcam_v4l_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @mcam_v4l_open, ptr @mcam_v4l_release }, [60 x i8] zeroinitializer }, align 32
@mcam_v4l_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @mcam_vidioc_querycap, ptr @mcam_vidioc_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcam_vidioc_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcam_vidioc_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcam_vidioc_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr @mcam_vidioc_enum_input, ptr @mcam_vidioc_g_input, ptr @mcam_vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcam_vidioc_g_parm, ptr @mcam_vidioc_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcam_vidioc_g_register, ptr @mcam_vidioc_s_register, ptr null, ptr @mcam_vidioc_enum_framesizes, ptr @mcam_vidioc_enum_frameintervals, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"marvell_ccic\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Camera\00", [25 x i8] zeroinitializer }, align 32
@mccic_notify_complete._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"mcam_core:1830:(&cam->ctrl_handler)->_lock\00", [53 x i8] zeroinitializer }, align 32
@mccic_notify_unbind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 1810, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sensor %s not bound\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mccic_notify_unbind\00", [44 x i8] zeroinitializer }, align 32
@mccic_notify_unbind._entry_ptr = internal global ptr @mccic_notify_unbind._entry, section ".printk_index", align 4
@mccic_notify_unbind.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 1, i8 -58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sensor %s unbound\0A\00", [45 x i8] zeroinitializer }, align 32
@mcam_alloc_dma_bufs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 381, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate DMA buffer\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mcam_alloc_dma_bufs\00", [44 x i8] zeroinitializer }, align 32
@mcam_alloc_dma_bufs._entry_ptr = internal global ptr @mcam_alloc_dma_bufs._entry, section ".printk_index", align 4
@mcam_alloc_dma_bufs._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 394, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Insufficient DMA buffers, cannot operate\0A\00", [54 x i8] zeroinitializer }, align 32
@mcam_alloc_dma_bufs._entry_ptr.44 = internal global ptr @mcam_alloc_dma_bufs._entry.42, section ".printk_index", align 4
@mcam_alloc_dma_bufs._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.2, i32 399, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Will limp along with only 2 buffers\0A\00", [59 x i8] zeroinitializer }, align 32
@mcam_alloc_dma_bufs._entry_ptr.47 = internal global ptr @mcam_alloc_dma_bufs._entry.45, section ".printk_index", align 4
@mcam_ctlr_stop_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 853, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Timeout waiting for DMA to end\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mcam_ctlr_stop_dma\00", [45 x i8] zeroinitializer }, align 32
@mcam_ctlr_stop_dma._entry_ptr = internal global ptr @mcam_ctlr_stop_dma._entry, section ".printk_index", align 4
@mcam_ctlr_image.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 -75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mcam_ctlr_image\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"camera: bytesperline = %d; height = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@mcam_ctlr_image._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 783, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"camera: unknown format: %#x\0A\00", [35 x i8] zeroinitializer }, align 32
@mcam_ctlr_image._entry_ptr = internal global ptr @mcam_ctlr_image._entry, section ".printk_index", align 4
@mcam_enable_mipi.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mcam_enable_mipi\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"camera: DPHY3=0x%x, DPHY5=0x%x, DPHY6=0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@mcam_enable_mipi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 291, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lane number error\0A\00", [45 x i8] zeroinitializer }, align 32
@mcam_enable_mipi._entry_ptr = internal global ptr @mcam_enable_mipi._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 842093913, i64 842094169]
@__sancov_gen_cov_switch_values.59 = internal global [9 x i64] [i64 7, i64 32, i64 825770306, i64 842093144, i64 842093913, i64 842094169, i64 1346520914, i64 1431918169, i64 1448695129]
@__sancov_gen_cov_switch_values.60 = internal global [9 x i64] [i64 7, i64 32, i64 825770306, i64 842093144, i64 842093913, i64 842094169, i64 1346520914, i64 1431918169, i64 1448695129]
@__sancov_gen_cov_switch_values.61 = internal global [9 x i64] [i64 7, i64 32, i64 825770306, i64 842093144, i64 842093913, i64 842094169, i64 1346520914, i64 1431918169, i64 1448695129]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 842093913, i64 842094169]
@__sancov_gen_cov_switch_values.63 = internal global [9 x i64] [i64 7, i64 32, i64 825770306, i64 842093144, i64 842093913, i64 842094169, i64 1346520914, i64 1431918169, i64 1448695129]
@__sancov_gen_cov_switch_values.64 = internal global [9 x i64] [i64 7, i64 32, i64 825770306, i64 842093144, i64 842093913, i64 842094169, i64 1346520914, i64 1431918169, i64 1448695129]
@__sancov_gen_cov_switch_values.65 = internal global [6 x i64] [i64 4, i64 32, i64 842093913, i64 842094169, i64 1431918169, i64 1448695129]
@__sancov_gen_cov_switch_values.66 = internal global [9 x i64] [i64 7, i64 32, i64 825770306, i64 842093144, i64 842093913, i64 842094169, i64 1346520914, i64 1431918169, i64 1448695129]
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c"alloc_bufs_at_read\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 52, i32 13 }
@___asan_gen_.70 = private unnamed_addr constant [11 x i8] c"n_dma_bufs\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 57, i32 12 }
@___asan_gen_.73 = private unnamed_addr constant [13 x i8] c"dma_buf_size\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 62, i32 12 }
@___asan_gen_.76 = private unnamed_addr constant [5 x i8] c"flip\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 71, i32 13 }
@___asan_gen_.79 = private unnamed_addr constant [12 x i8] c"buffer_mode\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 76, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1855, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1860, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1873, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c"mcam_def_pix_format\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 166, i32 37 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"mccic_notify_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1837, i32 52 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1882, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [9 x i8] c"mclk_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 960, i32 29 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1892, i32 19 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1894, i32 45 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1902, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1911, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1933, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1766, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [18 x i8] c"mcam_v4l_template\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1669, i32 34 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1797, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 987, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [13 x i8] c"mcam_vb2_ops\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1201, i32 29 }
@___asan_gen_.187 = private unnamed_addr constant [16 x i8] c"mcam_vb2_sg_ops\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1262, i32 29 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1182, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [13 x i8] c"mcam_formats\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 106, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1163, i32 7 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1227, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [14 x i8] c"mcam_v4l_fops\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1654, i32 42 }
@___asan_gen_.214 = private unnamed_addr constant [19 x i8] c"mcam_v4l_ioctl_ops\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1574, i32 36 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1330, i32 23 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1446, i32 23 }
@___asan_gen_.223 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1830, i32 8 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1810, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1816, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 381, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 394, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 399, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 853, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 726, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 783, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 283, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.292 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.293 = private constant [51 x i8] c"../drivers/media/platform/marvell-ccic/mcam-core.c\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 291, i32 4 }
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_alloc_bufs_at_read300, ptr @__UNIQUE_ID_alloc_bufs_at_readtype299, ptr @__UNIQUE_ID_author316, ptr @__UNIQUE_ID_buffer_mode308, ptr @__UNIQUE_ID_buffer_modetype307, ptr @__UNIQUE_ID_dma_buf_size304, ptr @__UNIQUE_ID_dma_buf_sizetype303, ptr @__UNIQUE_ID_file314, ptr @__UNIQUE_ID_flip306, ptr @__UNIQUE_ID_fliptype305, ptr @__UNIQUE_ID_license315, ptr @__UNIQUE_ID_n_dma_bufs302, ptr @__UNIQUE_ID_n_dma_bufstype301, ptr @__ksymtab_mccic_irq, ptr @__ksymtab_mccic_register, ptr @__ksymtab_mccic_resume, ptr @__ksymtab_mccic_shutdown, ptr @__ksymtab_mccic_suspend, ptr @__param_alloc_bufs_at_read, ptr @__param_buffer_mode, ptr @__param_dma_buf_size, ptr @__param_flip, ptr @__param_n_dma_bufs, ptr @mcam_alloc_dma_bufs._entry, ptr @mcam_alloc_dma_bufs._entry.42, ptr @mcam_alloc_dma_bufs._entry.45, ptr @mcam_alloc_dma_bufs._entry_ptr, ptr @mcam_alloc_dma_bufs._entry_ptr.44, ptr @mcam_alloc_dma_bufs._entry_ptr.47, ptr @mcam_cam_init._entry, ptr @mcam_cam_init._entry_ptr, ptr @mcam_ctlr_image._entry, ptr @mcam_ctlr_image._entry_ptr, ptr @mcam_ctlr_stop_dma._entry, ptr @mcam_ctlr_stop_dma._entry_ptr, ptr @mcam_enable_mipi._entry, ptr @mcam_enable_mipi._entry_ptr, ptr @mcam_vb_sg_buf_init._entry, ptr @mcam_vb_sg_buf_init._entry_ptr, ptr @mccic_notify_bound._entry, ptr @mccic_notify_bound._entry_ptr, ptr @mccic_notify_unbind._entry, ptr @mccic_notify_unbind._entry_ptr, ptr @mccic_register._entry, ptr @mccic_register._entry.14, ptr @mccic_register._entry.18, ptr @mccic_register._entry.3, ptr @mccic_register._entry.7, ptr @mccic_register._entry_ptr, ptr @mccic_register._entry_ptr.11, ptr @mccic_register._entry_ptr.17, ptr @mccic_register._entry_ptr.20, ptr @mccic_register._entry_ptr.5, ptr @mccic_shutdown._entry, ptr @mccic_shutdown._entry_ptr, ptr @alloc_bufs_at_read, ptr @n_dma_bufs, ptr @dma_buf_size, ptr @flip, ptr @buffer_mode, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @mccic_register.__key, ptr @.str.6, ptr @mcam_def_pix_format, ptr @mccic_notify_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @mclk_ops, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @mcam_v4l_template, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @mcam_vb2_ops, ptr @mcam_vb2_sg_ops, ptr @.str.29, ptr @.str.30, ptr @mcam_formats, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @mcam_v4l_fops, ptr @mcam_v4l_ioctl_ops, ptr @.str.34, ptr @.str.35, ptr @mccic_notify_complete._key, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_bufs_at_read to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_dma_bufs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_buf_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flip to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mccic_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mccic_register._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mccic_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcam_def_pix_format to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mccic_notify_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mccic_register._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mccic_register._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mccic_register._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mccic_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mccic_notify_bound._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcam_v4l_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcam_cam_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcam_vb2_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcam_vb2_sg_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcam_formats to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcam_vb_sg_buf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcam_v4l_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcam_v4l_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mccic_notify_complete._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mccic_notify_unbind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcam_alloc_dma_bufs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcam_alloc_dma_bufs._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcam_alloc_dma_bufs._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcam_ctlr_stop_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcam_ctlr_image._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcam_enable_mipi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mccic_irq(ptr noundef %cam, i32 noundef %irqs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cam, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1056964608) #9, !srcloc !195
  %nbufs = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 28
  %2 = ptrtoint ptr %nbufs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp51.not = icmp eq i32 %3, 0
  br i1 %cmp51.not, label %entry.if.end28_crit_edge, label %for.body.lr.ph

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

for.body.lr.ph:                                   ; preds = %entry
  %flags = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 21
  %next_buf.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 29
  %sequence.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 35
  %frame_state.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 22
  %state.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 20
  %frame_complete.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 39
  %buffer_mode = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %handled.055 = phi i32 [ 0, %for.body.lr.ph ], [ %handled.1, %for.inc.for.body_crit_edge ]
  %frame.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %frame.052
  %and = and i32 %shl, %irqs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %add = add i32 %frame.052, 7
  %div3.i = lshr i32 %add, 5
  %arrayidx.i = getelementptr i32, ptr %flags, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %add, 31
  %6 = shl nuw i32 1, %and.i
  %7 = and i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  tail call void @_set_bit(i32 noundef %frame.052, ptr noundef %flags) #9
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #9
  %8 = ptrtoint ptr %next_buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %frame.052, ptr %next_buf.i, align 8
  %9 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sequence.i, align 8
  %inc.i = add i32 %10, 1
  store i32 %inc.i, ptr %sequence.i, align 8
  %arrayidx.i50 = getelementptr %struct.mcam_camera, ptr %cam, i32 0, i32 36, i32 %frame.052
  %11 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx.i50, align 4
  %12 = ptrtoint ptr %frame_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_state.i, align 8
  %inc2.i = add i32 %13, 1
  store i32 %inc2.i, ptr %frame_state.i, align 8
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 3
  br i1 %cmp.not.i, label %if.end.i, label %if.then.mcam_frame_complete.exit_crit_edge

if.then.mcam_frame_complete.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_frame_complete.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %frame_complete.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %frame_complete.i, align 8
  tail call void %17(ptr noundef %cam, i32 noundef %frame.052) #9
  br label %mcam_frame_complete.exit

mcam_frame_complete.exit:                         ; preds = %if.end.i, %if.then.mcam_frame_complete.exit_crit_edge
  tail call void @_clear_bit(i32 noundef %add, ptr noundef %flags) #9
  %18 = ptrtoint ptr %buffer_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buffer_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp4 = icmp eq i32 %19, 2
  br i1 %cmp4, label %for.endthread-pre-split, label %mcam_frame_complete.exit.for.inc_crit_edge

mcam_frame_complete.exit.for.inc_crit_edge:       ; preds = %mcam_frame_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %mcam_frame_complete.exit.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %handled.1 = phi i32 [ 1, %mcam_frame_complete.exit.for.inc_crit_edge ], [ %handled.055, %land.lhs.true.for.inc_crit_edge ], [ %handled.055, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %frame.052, 1
  %20 = ptrtoint ptr %nbufs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nbufs, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.endthread-pre-split:                          ; preds = %mcam_frame_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %nbufs to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %nbufs, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %for.inc.for.end_crit_edge
  %23 = phi i32 [ %.pr, %for.endthread-pre-split ], [ %21, %for.inc.for.end_crit_edge ]
  %handled.2 = phi i32 [ 1, %for.endthread-pre-split ], [ %handled.1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp957.not = icmp eq i32 %23, 0
  br i1 %cmp957.not, label %for.end.for.end20_crit_edge, label %for.body10.lr.ph

for.end.for.end20_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end20

for.body10.lr.ph:                                 ; preds = %for.end
  %flags16 = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 21
  br label %for.body10

for.body10:                                       ; preds = %for.inc18.for.body10_crit_edge, %for.body10.lr.ph
  %handled.360 = phi i32 [ %handled.2, %for.body10.lr.ph ], [ %handled.4, %for.inc18.for.body10_crit_edge ]
  %frame.158 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc19, %for.inc18.for.body10_crit_edge ]
  %shl11 = shl i32 8, %frame.158
  %and12 = and i32 %shl11, %irqs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %for.body10.for.inc18_crit_edge, label %if.then14

for.body10.for.inc18_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc18

if.then14:                                        ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #11
  %add15 = add i32 %frame.158, 7
  tail call void @_set_bit(i32 noundef %add15, ptr noundef %flags16) #9
  br label %for.inc18

for.inc18:                                        ; preds = %if.then14, %for.body10.for.inc18_crit_edge
  %handled.4 = phi i32 [ 1, %if.then14 ], [ %handled.360, %for.body10.for.inc18_crit_edge ]
  %inc19 = add nuw i32 %frame.158, 1
  %24 = ptrtoint ptr %nbufs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nbufs, align 4
  %cmp9 = icmp ult i32 %inc19, %25
  br i1 %cmp9, label %for.inc18.for.body10_crit_edge, label %for.inc18.for.end20_crit_edge

for.inc18.for.end20_crit_edge:                    ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end20

for.inc18.for.body10_crit_edge:                   ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10

for.end20:                                        ; preds = %for.inc18.for.end20_crit_edge, %for.end.for.end20_crit_edge
  %handled.3.lcssa = phi i32 [ %handled.2, %for.end.for.end20_crit_edge ], [ %handled.4, %for.inc18.for.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %handled.3.lcssa)
  %cmp21 = icmp eq i32 %handled.3.lcssa, 1
  br i1 %cmp21, label %if.then22, label %for.end20.if.end28_crit_edge

for.end20.if.end28_crit_edge:                     ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then22:                                        ; preds = %for.end20
  %flags23 = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags23) #9
  %buffer_mode24 = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 5
  %26 = ptrtoint ptr %buffer_mode24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buffer_mode24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp25 = icmp eq i32 %27, 2
  br i1 %cmp25, label %if.then26, label %if.then22.if.end28_crit_edge

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cam, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %29, i32 60
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %31 = and i32 %30, -16777217
  %32 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cam, align 8
  %add.ptr.i6.i.i.i = getelementptr i8, ptr %33, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i.i, i32 %31) #9, !srcloc !195
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then22.if.end28_crit_edge, %for.end20.if.end28_crit_edge, %entry.if.end28_crit_edge
  %handled.3.lcssa66 = phi i32 [ 1, %if.then22.if.end28_crit_edge ], [ 1, %if.then26 ], [ %handled.3.lcssa, %for.end20.if.end28_crit_edge ], [ 0, %entry.if.end28_crit_edge ]
  ret i32 %handled.3.lcssa66
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mccic_register(ptr noundef %cam) #0 align 64 {
entry:
  %mclk_init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %mclk_init) #9
  %0 = call ptr @memset(ptr %mclk_init, i32 0, i32 28)
  %1 = load i32, ptr @buffer_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp sgt i32 %1, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer_mode = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 5
  %2 = ptrtoint ptr %buffer_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %buffer_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %buffer_mode1 = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 5
  %3 = ptrtoint ptr %buffer_mode1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buffer_mode1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp2 = icmp eq i32 %4, 2
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %chip_id = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 4
  %5 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %if.end6.thread, label %if.end6thread-pre-split

if.end6.thread:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  %7 = ptrtoint ptr %buffer_mode1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %buffer_mode1, align 4
  br label %if.end16

if.end6thread-pre-split:                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %buffer_mode1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %buffer_mode1, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end6thread-pre-split, %if.end.if.end6_crit_edge
  %9 = phi i32 [ %.pr, %if.end6thread-pre-split ], [ %4, %if.end.if.end6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %switch.i = icmp ugt i32 %9, 2
  br i1 %switch.i, label %do.end12, label %if.end6.if.end16_crit_edge

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %9) #12
  br label %out

if.end16:                                         ; preds = %if.end6.if.end16_crit_edge, %if.end6.thread
  %dev = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %v4l2_dev = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 18
  %call17 = tail call i32 @v4l2_device_register(ptr noundef %11, ptr noundef %v4l2_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.body21, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body21:                                        ; preds = %if.end16
  %s_mutex = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 42
  tail call void @__mutex_init(ptr noundef %s_mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @mccic_register.__key) #9
  %state = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 20
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %state, align 8
  %flags1.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags1.i) #9
  %pix_format = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 40
  %13 = call ptr @memcpy(ptr %pix_format, ptr @mcam_def_pix_format, i32 48)
  %mbus_code = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 41
  %14 = ptrtoint ptr %mbus_code to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8200, ptr %mbus_code, align 4
  %notifier = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 24
  %15 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mccic_notify_ops, ptr %notifier, align 8
  %call26 = tail call i32 @v4l2_async_nf_register(ptr noundef %v4l2_dev, ptr noundef %notifier) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end31, label %if.end33

do.end31:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.8) #12
  br label %out

if.end33:                                         ; preds = %do.body21
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %mclk_init, i32 0, i32 2
  %18 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %mclk_init, i32 0, i32 5
  %19 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %num_parents, align 4
  %ops34 = getelementptr inbounds %struct.clk_init_data, ptr %mclk_init, i32 0, i32 1
  %20 = ptrtoint ptr %ops34 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @mclk_ops, ptr %ops34, align 4
  %21 = ptrtoint ptr %mclk_init to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.12, ptr %mclk_init, align 4
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %call37 = call i32 @of_property_read_string(ptr noundef %25, ptr noundef nonnull @.str.13, ptr noundef nonnull %mclk_init) #9
  %mclk_hw = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 13
  %init = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 13, i32 2
  %26 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %mclk_init, ptr %init, align 4
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %call40 = call ptr @devm_clk_register(ptr noundef %28, ptr noundef %mclk_hw) #9
  %mclk = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 14
  %29 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call40, ptr %mclk, align 8
  %cmp.i = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then43, label %if.end50

if.then43:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %call40 to i32
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.15) #12
  br label %out

if.end50:                                         ; preds = %if.end33
  %33 = ptrtoint ptr %buffer_mode1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buffer_mode1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp52 = icmp eq i32 %34, 0
  br i1 %cmp52, label %land.lhs.true53, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true53:                                  ; preds = %if.end50
  %35 = load i8, ptr @alloc_bufs_at_read, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool54.not = icmp eq i8 %35, 0
  br i1 %tobool54.not, label %if.then55, label %land.lhs.true53.cleanup_crit_edge

land.lhs.true53.cleanup_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then55:                                        ; preds = %land.lhs.true53
  %call56 = call fastcc i32 @mcam_alloc_dma_bufs(ptr noundef %cam, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then55.cleanup_crit_edge, label %do.end61

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end61:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.19) #12
  br label %cleanup

out:                                              ; preds = %if.then43, %do.end31, %if.end16.out_crit_edge, %do.end12
  %ret.0 = phi i32 [ %call17, %if.end16.out_crit_edge ], [ %call26, %do.end31 ], [ %30, %if.then43 ], [ -22, %do.end12 ]
  %notifier65 = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 24
  call void @v4l2_async_nf_unregister(ptr noundef %notifier65) #9
  %v4l2_dev66 = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 18
  call void @v4l2_device_unregister(ptr noundef %v4l2_dev66) #9
  call void @v4l2_async_nf_cleanup(ptr noundef %notifier65) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end61, %if.then55.cleanup_crit_edge, %land.lhs.true53.cleanup_crit_edge, %if.end50.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %if.then55.cleanup_crit_edge ], [ 0, %do.end61 ], [ 0, %land.lhs.true53.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %mclk_init) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcam_alloc_dma_bufs(ptr noundef %cam, i32 noundef %loadtime) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loadtime)
  %tobool.not = icmp eq i32 %loadtime, 0
  %sizeimage = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 40, i32 5
  %spec.select = select i1 %tobool.not, ptr %sizeimage, ptr @dma_buf_size
  %0 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %0)
  %.sink = load i32, ptr %spec.select, align 4
  %1 = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 31
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink, ptr %1, align 4
  %3 = load i32, ptr @n_dma_bufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp sgt i32 %3, 3
  br i1 %cmp, label %if.end3.thread, label %if.end3

if.end3.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store i32 3, ptr @n_dma_bufs, align 4
  %nbufs60 = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 28
  %4 = ptrtoint ptr %nbufs60 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %nbufs60, align 4
  br label %for.body.lr.ph

if.end3:                                          ; preds = %entry
  %nbufs = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 28
  %5 = ptrtoint ptr %nbufs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %nbufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp458 = icmp sgt i32 %3, 0
  br i1 %cmp458, label %if.end3.for.body.lr.ph_crit_edge, label %if.end3.do.end25_crit_edge

if.end3.do.end25_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25

if.end3.for.body.lr.ph_crit_edge:                 ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end3.for.body.lr.ph_crit_edge, %if.end3.thread
  %nbufs62 = phi ptr [ %nbufs60, %if.end3.thread ], [ %nbufs, %if.end3.for.body.lr.ph_crit_edge ]
  %dev = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 3
  %dma_handles = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 33
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc13, %if.end11.for.body_crit_edge ]
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %add.ptr = getelementptr i32, ptr %dma_handles, i32 %i.059
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %7, i32 noundef %9, ptr noundef %add.ptr, i32 noundef 3264, i32 noundef 0) #9
  %arrayidx = getelementptr %struct.mcam_camera, ptr %cam, i32 0, i32 32, i32 %i.059
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %arrayidx, align 4
  %cmp8 = icmp eq ptr %call.i, null
  br i1 %cmp8, label %do.end, label %if.end11

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.40) #12
  %13 = ptrtoint ptr %nbufs62 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %nbufs62, align 4
  br label %for.end

if.end11:                                         ; preds = %for.body
  %14 = ptrtoint ptr %nbufs62 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nbufs62, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %nbufs62, align 4
  %inc13 = add nuw nsw i32 %i.059, 1
  %16 = load i32, ptr @n_dma_bufs, align 4
  %cmp4 = icmp slt i32 %inc13, %16
  br i1 %cmp4, label %if.end11.for.body_crit_edge, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end11.for.end_crit_edge, %do.end
  %17 = phi i32 [ %.pr, %do.end ], [ %inc, %if.end11.for.end_crit_edge ]
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %for.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %for.end.do.end25_crit_edge
    i32 2, label %sw.bb27
  ]

for.end.do.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev15 = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 3
  %19 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev15, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  %dma_bufs17 = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 32
  %23 = ptrtoint ptr %dma_bufs17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_bufs17, align 8
  %dma_handles19 = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 33
  %25 = ptrtoint ptr %dma_handles19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_handles19, align 4
  tail call void @dma_free_attrs(ptr noundef %20, i32 noundef %22, ptr noundef %24, i32 noundef %26, i32 noundef 0) #9
  %27 = ptrtoint ptr %nbufs62 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %nbufs62, align 4
  br label %do.end25

do.end25:                                         ; preds = %sw.bb, %for.end.do.end25_crit_edge, %if.end3.do.end25_crit_edge
  %dev26 = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 3
  %28 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.43) #12
  br label %cleanup

sw.bb27:                                          ; preds = %for.end
  %30 = load i32, ptr @n_dma_bufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp28 = icmp sgt i32 %30, 2
  br i1 %cmp28, label %do.end32, label %sw.bb27.cleanup_crit_edge

sw.bb27.cleanup_crit_edge:                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end32:                                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #11
  %dev33 = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 3
  %31 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.46) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %sw.bb27.cleanup_crit_edge, %do.end25, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end25 ], [ 0, %sw.bb27.cleanup_crit_edge ], [ 0, %do.end32 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mccic_shutdown(ptr noundef %cam) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fh_list = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 23, i32 20
  %0 = ptrtoint ptr %fh_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %fh_list, align 4
  %cmp.i.not = icmp eq ptr %1, %fh_list
  br i1 %cmp.i.not, label %entry.if.end23_crit_edge, label %do.end

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.21) #12
  %sensor = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 25
  %4 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sensor, align 8
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %do.end.if.end23_crit_edge, label %if.else

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.else:                                          ; preds = %do.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.else.if.end23_crit_edge, label %land.lhs.true

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true:                                    ; preds = %if.else
  %s_power = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %s_power to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_power, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %land.lhs.true.if.end23_crit_edge, label %if.else8

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.else8:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %12 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.else8.if.else16_crit_edge, label %land.lhs.true10

if.else8.if.else16_crit_edge:                     ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else16

land.lhs.true10:                                  ; preds = %if.else8
  %s_power11 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %s_power11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_power11, align 4
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %land.lhs.true10.if.else16_crit_edge, label %land.lhs.true10.if.end23.sink.split_crit_edge

land.lhs.true10.if.end23.sink.split_crit_edge:    ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.sink.split

land.lhs.true10.if.else16_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else16

if.else16:                                        ; preds = %land.lhs.true10.if.else16_crit_edge, %if.else8.if.else16_crit_edge
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %if.else16, %land.lhs.true10.if.end23.sink.split_crit_edge
  %.sink = phi ptr [ %11, %if.else16 ], [ %14, %land.lhs.true10.if.end23.sink.split_crit_edge ]
  %call15 = tail call i32 %.sink(ptr noundef nonnull %5, i32 noundef 0) #9
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %land.lhs.true.if.end23_crit_edge, %if.else.if.end23_crit_edge, %do.end.if.end23_crit_edge, %entry.if.end23_crit_edge
  %buffer_mode = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 5
  %15 = ptrtoint ptr %buffer_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buffer_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %if.then24, label %if.end23.if.end25_crit_edge

if.end23.if.end25_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then24:                                        ; preds = %if.end23
  %nbufs.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 28
  %17 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nbufs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp15.not.i = icmp eq i32 %18, 0
  br i1 %cmp15.not.i, label %if.then24.mcam_free_dma_bufs.exit_crit_edge, label %for.body.lr.ph.i

if.then24.mcam_free_dma_bufs.exit_crit_edge:      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_free_dma_bufs.exit

for.body.lr.ph.i:                                 ; preds = %if.then24
  %dev.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 3
  %dma_buf_size.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 31
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %21 = ptrtoint ptr %dma_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_buf_size.i, align 4
  %arrayidx.i = getelementptr %struct.mcam_camera, ptr %cam, i32 0, i32 32, i32 %i.016.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.mcam_camera, ptr %cam, i32 0, i32 33, i32 %i.016.i
  %25 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx1.i, align 4
  tail call void @dma_free_attrs(ptr noundef %20, i32 noundef %22, ptr noundef %24, i32 noundef %26, i32 noundef 0) #9
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.016.i, 1
  %28 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nbufs.i, align 4
  %cmp.i43 = icmp ult i32 %inc.i, %29
  br i1 %cmp.i43, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mcam_free_dma_bufs.exit_crit_edge

for.body.i.mcam_free_dma_bufs.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_free_dma_bufs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

mcam_free_dma_bufs.exit:                          ; preds = %for.body.i.mcam_free_dma_bufs.exit_crit_edge, %if.then24.mcam_free_dma_bufs.exit_crit_edge
  %30 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %nbufs.i, align 4
  br label %if.end25

if.end25:                                         ; preds = %mcam_free_dma_bufs.exit, %if.end23.if.end25_crit_edge
  %ctrl_handler = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 19
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #9
  %notifier = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 24
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier) #9
  %v4l2_dev = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 18
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #9
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mccic_suspend(ptr noundef %cam) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_mutex = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 42
  tail call void @mutex_lock_nested(ptr noundef %s_mutex, i32 noundef 0) #9
  %fh_list = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 23, i32 20
  %0 = ptrtoint ptr %fh_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %fh_list, align 4
  %cmp.i.not = icmp eq ptr %1, %fh_list
  br i1 %cmp.i.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 20
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  tail call fastcc void @mcam_ctlr_stop_dma(ptr noundef %cam)
  %sensor = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 25
  %4 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sensor, align 8
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.then.if.end22_crit_edge, label %if.else

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.else:                                          ; preds = %if.then
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.else.if.end22_crit_edge, label %land.lhs.true

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true:                                    ; preds = %if.else
  %s_power = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %s_power to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_power, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %land.lhs.true.if.end22_crit_edge, label %if.else8

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.else8:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %12 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.else8.if.else16_crit_edge, label %land.lhs.true10

if.else8.if.else16_crit_edge:                     ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else16

land.lhs.true10:                                  ; preds = %if.else8
  %s_power11 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %s_power11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_power11, align 4
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %land.lhs.true10.if.else16_crit_edge, label %land.lhs.true10.if.end22.sink.split_crit_edge

land.lhs.true10.if.end22.sink.split_crit_edge:    ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.sink.split

land.lhs.true10.if.else16_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else16

if.else16:                                        ; preds = %land.lhs.true10.if.else16_crit_edge, %if.else8.if.else16_crit_edge
  br label %if.end22.sink.split

if.end22.sink.split:                              ; preds = %if.else16, %land.lhs.true10.if.end22.sink.split_crit_edge
  %.sink = phi ptr [ %11, %if.else16 ], [ %14, %land.lhs.true10.if.end22.sink.split_crit_edge ]
  %call20 = tail call i32 %.sink(ptr noundef nonnull %5, i32 noundef 0) #9
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %land.lhs.true.if.end22_crit_edge, %if.else.if.end22_crit_edge, %if.then.if.end22_crit_edge
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %3, ptr %state, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %entry.if.end24_crit_edge
  tail call void @mutex_unlock(ptr noundef %s_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcam_ctlr_stop_dma(ptr noundef %cam) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_lock = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #9
  %flags5 = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags5) #9
  %0 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cam, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cam, align 8
  %add.ptr.i6.i.i.i = getelementptr i8, ptr %5, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i.i, i32 %3) #9, !srcloc !195
  %state = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 20
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %state, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call2) #9
  tail call void @msleep(i32 noundef 150) #9
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags5, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.do.body13_crit_edge, label %do.end11

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body13

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.48) #12
  br label %do.body13

do.body13:                                        ; preds = %do.end11, %entry.do.body13_crit_edge
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #9
  %12 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cam, align 8
  %add.ptr.i.i.i.i37 = getelementptr i8, ptr %13, i32 44
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i37) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %15 = and i32 %14, -1056964609
  %16 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cam, align 8
  %add.ptr.i6.i.i.i38 = getelementptr i8, ptr %17, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i.i38, i32 %15) #9, !srcloc !195
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call21) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mccic_resume(ptr noundef %cam) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_mutex = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 42
  tail call void @mutex_lock_nested(ptr noundef %s_mutex, i32 noundef 0) #9
  %fh_list = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 23, i32 20
  %0 = ptrtoint ptr %fh_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %fh_list, align 4
  %cmp.i.not = icmp eq ptr %1, %fh_list
  %sensor30 = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 25
  %2 = ptrtoint ptr %sensor30 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensor30, align 8
  %tobool32.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %if.else28, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool32.not, label %if.then.if.then24_crit_edge, label %if.else

if.then.if.then24_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

if.else:                                          ; preds = %if.then
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.else.if.then24_crit_edge, label %land.lhs.true

if.else.if.then24_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

land.lhs.true:                                    ; preds = %if.else
  %s_power = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %s_power to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_power, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %land.lhs.true.if.then24_crit_edge, label %if.else8

land.lhs.true.if.then24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

if.else8:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %10 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %if.else8.if.else16_crit_edge, label %land.lhs.true10

if.else8.if.else16_crit_edge:                     ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else16

land.lhs.true10:                                  ; preds = %if.else8
  %s_power11 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %s_power11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_power11, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %land.lhs.true10.if.else16_crit_edge, label %land.lhs.true10.if.end22_crit_edge

land.lhs.true10.if.end22_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true10.if.else16_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else16

if.else16:                                        ; preds = %land.lhs.true10.if.else16_crit_edge, %if.else8.if.else16_crit_edge
  br label %if.end22

if.end22:                                         ; preds = %if.else16, %land.lhs.true10.if.end22_crit_edge
  %.sink = phi ptr [ %9, %if.else16 ], [ %12, %land.lhs.true10.if.end22_crit_edge ]
  %call20 = tail call i32 %.sink(ptr noundef nonnull %3, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool23.not = icmp eq i32 %call20, 0
  br i1 %tobool23.not, label %if.end26, label %if.end22.if.then24_crit_edge

if.end22.if.then24_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

if.then24:                                        ; preds = %if.end22.if.then24_crit_edge, %land.lhs.true.if.then24_crit_edge, %if.else.if.then24_crit_edge, %if.then.if.then24_crit_edge
  %__result.0108 = phi i32 [ %call20, %if.end22.if.then24_crit_edge ], [ -515, %if.else.if.then24_crit_edge ], [ -515, %land.lhs.true.if.then24_crit_edge ], [ -19, %if.then.if.then24_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %s_mutex) #9
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %13 = ptrtoint ptr %sensor30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sensor30, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end26.if.end61_crit_edge, label %if.else.i

if.end26.if.end61_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.else.i:                                        ; preds = %if.end26
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool1.not.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i, label %if.else.i.if.end61_crit_edge, label %land.lhs.true.i

if.else.i.if.end61_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

land.lhs.true.i:                                  ; preds = %if.else.i
  %reset.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reset.i, align 4
  %tobool4.not.i = icmp eq ptr %20, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end61_crit_edge, label %if.else6.i

land.lhs.true.i.if.end61_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.else6.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %21 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool7.not.i = icmp eq ptr %21, null
  br i1 %tobool7.not.i, label %if.else6.i.if.else13.i_crit_edge, label %land.lhs.true8.i

if.else6.i.if.else13.i_crit_edge:                 ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i

land.lhs.true8.i:                                 ; preds = %if.else6.i
  %reset9.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %reset9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reset9.i, align 4
  %tobool10.not.i = icmp eq ptr %23, null
  br i1 %tobool10.not.i, label %land.lhs.true8.i.if.else13.i_crit_edge, label %land.lhs.true8.i.if.end19.sink.split.i_crit_edge

land.lhs.true8.i.if.end19.sink.split.i_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.sink.split.i

land.lhs.true8.i.if.else13.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i

if.else13.i:                                      ; preds = %land.lhs.true8.i.if.else13.i_crit_edge, %if.else6.i.if.else13.i_crit_edge
  br label %if.end19.sink.split.i

if.end19.sink.split.i:                            ; preds = %if.else13.i, %land.lhs.true8.i.if.end19.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %20, %if.else13.i ], [ %23, %land.lhs.true8.i.if.end19.sink.split.i_crit_edge ]
  %call17.i = tail call i32 %.sink.i(ptr noundef nonnull %14, i32 noundef 0) #9
  br label %if.end61

if.else28:                                        ; preds = %entry
  br i1 %tobool32.not, label %if.else28.if.end61_crit_edge, label %if.else34

if.else28.if.end61_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.else34:                                        ; preds = %if.else28
  %ops35 = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %24 = ptrtoint ptr %ops35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops35, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool37.not = icmp eq ptr %27, null
  br i1 %tobool37.not, label %if.else34.if.end61_crit_edge, label %land.lhs.true38

if.else34.if.end61_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

land.lhs.true38:                                  ; preds = %if.else34
  %s_power41 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %s_power41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_power41, align 4
  %tobool42.not = icmp eq ptr %29, null
  br i1 %tobool42.not, label %land.lhs.true38.if.end61_crit_edge, label %if.else44

land.lhs.true38.if.end61_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.else44:                                        ; preds = %land.lhs.true38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %30 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool45.not = icmp eq ptr %30, null
  br i1 %tobool45.not, label %if.else44.if.else52_crit_edge, label %land.lhs.true46

if.else44.if.else52_crit_edge:                    ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else52

land.lhs.true46:                                  ; preds = %if.else44
  %s_power47 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %s_power47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_power47, align 4
  %tobool48.not = icmp eq ptr %32, null
  br i1 %tobool48.not, label %land.lhs.true46.if.else52_crit_edge, label %if.then49

land.lhs.true46.if.else52_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else52

if.then49:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  %call51 = tail call i32 %32(ptr noundef nonnull %3, i32 noundef 0) #9
  br label %if.end61

if.else52:                                        ; preds = %land.lhs.true46.if.else52_crit_edge, %if.else44.if.else52_crit_edge
  %call56 = tail call i32 %29(ptr noundef nonnull %3, i32 noundef 0) #9
  br label %if.end61

if.end61:                                         ; preds = %if.else52, %if.then49, %land.lhs.true38.if.end61_crit_edge, %if.else34.if.end61_crit_edge, %if.else28.if.end61_crit_edge, %if.end19.sink.split.i, %land.lhs.true.i.if.end61_crit_edge, %if.else.i.if.end61_crit_edge, %if.end26.if.end61_crit_edge
  tail call void @mutex_unlock(ptr noundef %s_mutex) #9
  %flags = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #9
  %state = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 20
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp = icmp eq i32 %34, 3
  br i1 %cmp, label %if.then63, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then63:                                        ; preds = %if.end61
  %buffer_mode = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 5
  %35 = ptrtoint ptr %buffer_mode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %buffer_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp64 = icmp eq i32 %36, 2
  br i1 %cmp64, label %land.lhs.true65, label %if.then63.if.end70_crit_edge

if.then63.if.end70_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

land.lhs.true65:                                  ; preds = %if.then63
  %vb_bufs = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 37
  %37 = ptrtoint ptr %vb_bufs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vb_bufs, align 8
  %tobool66.not = icmp eq ptr %38, null
  br i1 %tobool66.not, label %land.lhs.true65.if.end70_crit_edge, label %if.then67

land.lhs.true65.if.end70_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then67:                                        ; preds = %land.lhs.true65
  %queue = getelementptr inbounds %struct.mcam_vb_buffer, ptr %38, i32 0, i32 1
  %buffers = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 27
  %39 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buffers, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %buffers, ptr noundef %40) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then67.if.end70_crit_edge

if.then67.if.end70_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.end.i.i:                                       ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %queue, ptr %prev1.i.i, align 4
  %42 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.mcam_vb_buffer, ptr %38, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %buffers, ptr %prev3.i.i, align 4
  %44 = ptrtoint ptr %buffers to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %queue, ptr %buffers, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.end.i.i, %if.then67.if.end70_crit_edge, %land.lhs.true65.if.end70_crit_edge, %if.then63.if.end70_crit_edge
  %call71 = tail call fastcc i32 @mcam_read_setup(ptr noundef %cam)
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.end61.cleanup_crit_edge, %if.then24
  %retval.0 = phi i32 [ %__result.0108, %if.then24 ], [ %call71, %if.end70 ], [ 0, %if.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcam_read_setup(ptr noundef %cam) unnamed_addr #0 align 64 {
entry:
  %ctrl.i.i = alloca %struct.v4l2_control, align 8
  %format.i = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer_mode = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 5
  %0 = ptrtoint ptr %buffer_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buffer_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %nbufs = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 28
  %2 = ptrtoint ptr %nbufs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call = tail call fastcc i32 @mcam_alloc_dma_bufs(ptr noundef %cam, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true2.if.end_crit_edge, label %land.lhs.true2.cleanup_crit_edge

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %flags.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 21
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.end.do.body12_crit_edge, label %if.then5

if.end.do.body12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format.i) #9
  %7 = getelementptr inbounds i8, ptr %format.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 84)
  %9 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %format.i, align 4
  %format1.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2
  %pix_format.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 40
  %mbus_code.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 41
  %10 = ptrtoint ptr %mbus_code.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mbus_code.i, align 4
  %12 = ptrtoint ptr %pix_format.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pix_format.i, align 4
  %14 = ptrtoint ptr %format1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %format1.i, align 4
  %height.i.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 40, i32 1
  %15 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height.i.i, align 4
  %height2.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %height2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %height2.i.i, align 4
  %field.i.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 40, i32 3
  %18 = ptrtoint ptr %field.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %field.i.i, align 4
  %field3.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %field3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %field3.i.i, align 4
  %colorspace.i.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 40, i32 6
  %21 = ptrtoint ptr %colorspace.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %colorspace.i.i, align 4
  %colorspace4.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %colorspace4.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %colorspace4.i.i, align 4
  %24 = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 40, i32 9
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %conv.i.i = trunc i32 %26 to i16
  %27 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 5
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i.i, ptr %27, align 4
  %quantization.i.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 40, i32 10
  %29 = ptrtoint ptr %quantization.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %quantization.i.i, align 4
  %conv5.i.i = trunc i32 %30 to i16
  %quantization6.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 6
  %31 = ptrtoint ptr %quantization6.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv5.i.i, ptr %quantization6.i.i, align 2
  %xfer_func.i.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 40, i32 11
  %32 = ptrtoint ptr %xfer_func.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %xfer_func.i.i, align 4
  %conv7.i.i = trunc i32 %33 to i16
  %xfer_func8.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 7
  %34 = ptrtoint ptr %xfer_func8.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv7.i.i, ptr %xfer_func8.i.i, align 4
  %code9.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %code9.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %11, ptr %code9.i.i, align 4
  %sensor.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 25
  %36 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sensor.i, align 8
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %if.then5.mcam_cam_configure.exit_crit_edge, label %if.else.i

if.then5.mcam_cam_configure.exit_crit_edge:       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_cam_configure.exit

if.else.i:                                        ; preds = %if.then5
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %tobool2.not.i = icmp eq ptr %41, null
  br i1 %tobool2.not.i, label %if.else.i.mcam_cam_configure.exit_crit_edge, label %land.lhs.true.i

if.else.i.mcam_cam_configure.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_cam_configure.exit

land.lhs.true.i:                                  ; preds = %if.else.i
  %init.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %init.i, align 4
  %tobool5.not.i = icmp eq ptr %43, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.mcam_cam_configure.exit_crit_edge, label %if.else7.i

land.lhs.true.i.mcam_cam_configure.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_cam_configure.exit

if.else7.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %44 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool8.not.i = icmp eq ptr %44, null
  br i1 %tobool8.not.i, label %if.else7.i.if.else14.i_crit_edge, label %land.lhs.true9.i

if.else7.i.if.else14.i_crit_edge:                 ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else14.i

land.lhs.true9.i:                                 ; preds = %if.else7.i
  %init10.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %init10.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init10.i, align 4
  %tobool11.not.i = icmp eq ptr %46, null
  br i1 %tobool11.not.i, label %land.lhs.true9.i.if.else14.i_crit_edge, label %land.lhs.true9.i.if.end20.i_crit_edge

land.lhs.true9.i.if.end20.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

land.lhs.true9.i.if.else14.i_crit_edge:           ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else14.i

if.else14.i:                                      ; preds = %land.lhs.true9.i.if.else14.i_crit_edge, %if.else7.i.if.else14.i_crit_edge
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else14.i, %land.lhs.true9.i.if.end20.i_crit_edge
  %.sink.i = phi ptr [ %43, %if.else14.i ], [ %46, %land.lhs.true9.i.if.end20.i_crit_edge ]
  %call18.i = tail call i32 %.sink.i(ptr noundef nonnull %37, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp.i = icmp eq i32 %call18.i, 0
  br i1 %cmp.i, label %if.then21.i, label %if.end20.i.mcam_cam_configure.exit_crit_edge

if.end20.i.mcam_cam_configure.exit_crit_edge:     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_cam_configure.exit

if.then21.i:                                      ; preds = %if.end20.i
  %47 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sensor.i, align 8
  %tobool25.not.i = icmp eq ptr %48, null
  br i1 %tobool25.not.i, label %if.then21.i.mcam_cam_configure.exit_crit_edge, label %if.else27.i

if.then21.i.mcam_cam_configure.exit_crit_edge:    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_cam_configure.exit

if.else27.i:                                      ; preds = %if.then21.i
  %ops28.i = getelementptr inbounds %struct.v4l2_subdev, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %ops28.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops28.i, align 4
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pad.i, align 4
  %tobool29.not.i = icmp eq ptr %52, null
  br i1 %tobool29.not.i, label %if.else27.i.mcam_cam_configure.exit_crit_edge, label %land.lhs.true30.i

if.else27.i.mcam_cam_configure.exit_crit_edge:    ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_cam_configure.exit

land.lhs.true30.i:                                ; preds = %if.else27.i
  %set_fmt.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %set_fmt.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %set_fmt.i, align 4
  %tobool33.not.i = icmp eq ptr %54, null
  br i1 %tobool33.not.i, label %land.lhs.true30.i.mcam_cam_configure.exit_crit_edge, label %if.else35.i

land.lhs.true30.i.mcam_cam_configure.exit_crit_edge: ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_cam_configure.exit

if.else35.i:                                      ; preds = %land.lhs.true30.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool36.not.i = icmp eq ptr %55, null
  br i1 %tobool36.not.i, label %if.else35.i.if.else43.i_crit_edge, label %land.lhs.true37.i

if.else35.i.if.else43.i_crit_edge:                ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else43.i

land.lhs.true37.i:                                ; preds = %if.else35.i
  %set_fmt38.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %set_fmt38.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %set_fmt38.i, align 4
  %tobool39.not.i = icmp eq ptr %57, null
  br i1 %tobool39.not.i, label %land.lhs.true37.i.if.else43.i_crit_edge, label %land.lhs.true37.i.if.end52.sink.split.i_crit_edge

land.lhs.true37.i.if.end52.sink.split.i_crit_edge: ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.sink.split.i

land.lhs.true37.i.if.else43.i_crit_edge:          ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else43.i

if.else43.i:                                      ; preds = %land.lhs.true37.i.if.else43.i_crit_edge, %if.else35.i.if.else43.i_crit_edge
  br label %if.end52.sink.split.i

if.end52.sink.split.i:                            ; preds = %if.else43.i, %land.lhs.true37.i.if.end52.sink.split.i_crit_edge
  %.sink3.i = phi ptr [ %54, %if.else43.i ], [ %57, %land.lhs.true37.i.if.end52.sink.split.i_crit_edge ]
  %call42.i = call i32 %.sink3.i(ptr noundef nonnull %48, ptr noundef null, ptr noundef nonnull %format.i) #9
  br label %mcam_cam_configure.exit

mcam_cam_configure.exit:                          ; preds = %if.end52.sink.split.i, %land.lhs.true30.i.mcam_cam_configure.exit_crit_edge, %if.else27.i.mcam_cam_configure.exit_crit_edge, %if.then21.i.mcam_cam_configure.exit_crit_edge, %if.end20.i.mcam_cam_configure.exit_crit_edge, %land.lhs.true.i.mcam_cam_configure.exit_crit_edge, %if.else.i.mcam_cam_configure.exit_crit_edge, %if.then5.mcam_cam_configure.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctrl.i.i) #9
  %58 = getelementptr inbounds %struct.v4l2_control, ptr %ctrl.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 42794182258982912, ptr %ctrl.i.i, align 8
  %60 = load i8, ptr @flip, align 1, !range !198
  %61 = zext i8 %60 to i32
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %58, align 4
  %63 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sensor.i, align 8
  %ctrl_handler.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %ctrl_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ctrl_handler.i.i, align 4
  %call.i.i = call i32 @v4l2_s_ctrl(ptr noundef null, ptr noundef %66, ptr noundef nonnull %ctrl.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctrl.i.i) #9
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format.i) #9
  %dev_lock.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 2
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #9
  call void @_clear_bit(i32 noundef 6, ptr noundef %flags.i) #9
  %dma_setup.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 38
  %67 = ptrtoint ptr %dma_setup.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dma_setup.i, align 4
  call void %68(ptr noundef %cam) #9
  call fastcc void @mcam_ctlr_image(ptr noundef %cam) #9
  call void @_clear_bit(i32 noundef 4, ptr noundef %flags.i) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i) #9
  br label %do.body12

do.body12:                                        ; preds = %mcam_cam_configure.exit, %if.end.do.body12_crit_edge
  %dev_lock = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 2
  %call15 = call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #9
  call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i) #9
  %next_buf.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 29
  %69 = ptrtoint ptr %next_buf.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %next_buf.i, align 8
  %nbufs.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 28
  %70 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nbufs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp8.not.i = icmp eq i32 %71, 0
  br i1 %cmp8.not.i, label %do.body12.mcam_reset_buffers.exit_crit_edge, label %do.body12.for.body.i_crit_edge

do.body12.for.body.i_crit_edge:                   ; preds = %do.body12
  br label %for.body.i

do.body12.mcam_reset_buffers.exit_crit_edge:      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_reset_buffers.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body12.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.body12.for.body.i_crit_edge ]
  call void @_clear_bit(i32 noundef %i.09.i, ptr noundef %flags.i) #9
  %add.i = add i32 %i.09.i, 7
  call void @_clear_bit(i32 noundef %add.i, ptr noundef %flags.i) #9
  %inc.i = add nuw i32 %i.09.i, 1
  %72 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nbufs.i, align 4
  %cmp.i48 = icmp ult i32 %inc.i, %73
  br i1 %cmp.i48, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mcam_reset_buffers.exit_crit_edge

for.body.i.mcam_reset_buffers.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_reset_buffers.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

mcam_reset_buffers.exit:                          ; preds = %for.body.i.mcam_reset_buffers.exit_crit_edge, %do.body12.mcam_reset_buffers.exit_crit_edge
  %bus_type = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 8
  %74 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bus_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %75)
  %cmp19 = icmp eq i32 %75, 5
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %mcam_reset_buffers.exit
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @mcam_enable_mipi(ptr noundef %cam)
  br label %if.end22

if.else:                                          ; preds = %mcam_reset_buffers.exit
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cam, align 8
  %add.ptr.i.i = getelementptr i8, ptr %77, i32 256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #9, !srcloc !195
  %78 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cam, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %79, i32 300
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 0) #9, !srcloc !195
  %80 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cam, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %81, i32 308
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 0) #9, !srcloc !195
  %82 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cam, align 8
  %add.ptr.i7.i = getelementptr i8, ptr %83, i32 312
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 0) #9, !srcloc !195
  %mipi_enabled.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 10
  %84 = ptrtoint ptr %mipi_enabled.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %mipi_enabled.i, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then21
  %85 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cam, align 8
  %add.ptr.i.i49 = getelementptr i8, ptr %86, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i49, i32 1056964608) #9, !srcloc !195
  %87 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cam, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %88, i32 44
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #9, !srcloc !196
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %90 = or i32 %89, 1056964608
  %91 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cam, align 8
  %add.ptr.i6.i.i.i = getelementptr i8, ptr %92, i32 44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i.i, i32 %90) #9, !srcloc !195
  %state = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 20
  %93 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 3, ptr %state, align 8
  %94 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %flags.i, align 4
  %96 = and i32 %95, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool25.not = icmp eq i32 %96, 0
  br i1 %tobool25.not, label %if.then26, label %if.end22.if.end27_crit_edge

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cam, align 8
  %add.ptr.i.i.i.i50 = getelementptr i8, ptr %98, i32 60
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i50) #9, !srcloc !196
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %100 = or i32 %99, 16777216
  %101 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cam, align 8
  %add.ptr.i6.i.i.i51 = getelementptr i8, ptr %102, i32 60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i.i51, i32 %100) #9, !srcloc !195
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end22.if.end27_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call15) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %land.lhs.true2.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ -12, %land.lhs.true2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mccic_notify_bound(ptr noundef %notifier, ptr noundef %subdev, ptr nocapture noundef readnone %asd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %notifier, i32 -1816
  %s_mutex = getelementptr i8, ptr %notifier, i32 752
  tail call void @mutex_lock_nested(ptr noundef %s_mutex, i32 noundef 0) #9
  %sensor = getelementptr i8, ptr %notifier, i32 48
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %notifier, i32 -1764
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.23) #12
  br label %out

if.end:                                           ; preds = %entry
  %host_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 12
  %4 = ptrtoint ptr %host_priv.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %host_priv.i, align 4
  %5 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %subdev, ptr %sensor, align 8
  %state.i = getelementptr i8, ptr %notifier, i32 -1376
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %if.end.if.end.i_crit_edge, label %do.end.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr i8, ptr %notifier, i32 -1764
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.27, i32 noundef %7) #12
  %10 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load ptr, ptr %sensor, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  %11 = phi ptr [ %.pr, %do.end.i ], [ %subdev, %if.end.if.end.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.mcam_cam_init.exit.thread_crit_edge, label %if.else.i.i

if.end.i.mcam_cam_init.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_cam_init.exit.thread

if.else.i.i:                                      ; preds = %if.end.i
  %ops.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool1.not.i.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i.i, label %if.else.i.i.mcam_cam_init.exit.thread_crit_edge, label %land.lhs.true.i.i

if.else.i.i.mcam_cam_init.exit.thread_crit_edge:  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_cam_init.exit.thread

land.lhs.true.i.i:                                ; preds = %if.else.i.i
  %reset.i.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reset.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %17, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.mcam_cam_init.exit.thread_crit_edge, label %if.else6.i.i

land.lhs.true.i.i.mcam_cam_init.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_cam_init.exit.thread

if.else6.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %18 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool7.not.i.i = icmp eq ptr %18, null
  br i1 %tobool7.not.i.i, label %if.else6.i.i.if.else13.i.i_crit_edge, label %land.lhs.true8.i.i

if.else6.i.i.if.else13.i.i_crit_edge:             ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i.i

land.lhs.true8.i.i:                               ; preds = %if.else6.i.i
  %reset9.i.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %reset9.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reset9.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %20, null
  br i1 %tobool10.not.i.i, label %land.lhs.true8.i.i.if.else13.i.i_crit_edge, label %land.lhs.true8.i.i.mcam_cam_init.exit_crit_edge

land.lhs.true8.i.i.mcam_cam_init.exit_crit_edge:  ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_cam_init.exit

land.lhs.true8.i.i.if.else13.i.i_crit_edge:       ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i.i

if.else13.i.i:                                    ; preds = %land.lhs.true8.i.i.if.else13.i.i_crit_edge, %if.else6.i.i.if.else13.i.i_crit_edge
  br label %mcam_cam_init.exit

mcam_cam_init.exit.thread:                        ; preds = %land.lhs.true.i.i.mcam_cam_init.exit.thread_crit_edge, %if.else.i.i.mcam_cam_init.exit.thread_crit_edge, %if.end.i.mcam_cam_init.exit.thread_crit_edge
  %__result.0.i.i.ph = phi i32 [ -515, %if.else.i.i.mcam_cam_init.exit.thread_crit_edge ], [ -515, %land.lhs.true.i.i.mcam_cam_init.exit.thread_crit_edge ], [ -19, %if.end.i.mcam_cam_init.exit.thread_crit_edge ]
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %state.i, align 8
  br label %if.then3

mcam_cam_init.exit:                               ; preds = %if.else13.i.i, %land.lhs.true8.i.i.mcam_cam_init.exit_crit_edge
  %.sink.i.i = phi ptr [ %17, %if.else13.i.i ], [ %20, %land.lhs.true8.i.i.mcam_cam_init.exit_crit_edge ]
  %call17.i.i = tail call i32 %.sink.i.i(ptr noundef nonnull %11, i32 noundef 0) #9
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool2.not = icmp eq i32 %call17.i.i, 0
  br i1 %tobool2.not, label %if.end5, label %mcam_cam_init.exit.if.then3_crit_edge

mcam_cam_init.exit.if.then3_crit_edge:            ; preds = %mcam_cam_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.then3:                                         ; preds = %mcam_cam_init.exit.if.then3_crit_edge, %mcam_cam_init.exit.thread
  %__result.0.i.i65 = phi i32 [ %__result.0.i.i.ph, %mcam_cam_init.exit.thread ], [ %call17.i.i, %mcam_cam_init.exit.if.then3_crit_edge ]
  %23 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %sensor, align 8
  br label %out

if.end5:                                          ; preds = %mcam_cam_init.exit
  %vb_queue.i = getelementptr i8, ptr %notifier, i32 52
  %24 = getelementptr i8, ptr %notifier, i32 64
  %25 = call ptr @memset(ptr %24, i32 0, i32 500)
  %26 = ptrtoint ptr %vb_queue.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %vb_queue.i, align 4
  %drv_priv.i = getelementptr i8, ptr %notifier, i32 92
  %27 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr, ptr %drv_priv.i, align 4
  %lock.i = getelementptr i8, ptr %notifier, i32 72
  %28 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %s_mutex, ptr %lock.i, align 4
  %timestamp_flags.i = getelementptr i8, ptr %notifier, i32 104
  %29 = ptrtoint ptr %timestamp_flags.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8192, ptr %timestamp_flags.i, align 4
  %io_modes.i = getelementptr i8, ptr %notifier, i32 56
  %30 = ptrtoint ptr %io_modes.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 23, ptr %io_modes.i, align 4
  %buf_struct_size.i = getelementptr i8, ptr %notifier, i32 100
  %31 = ptrtoint ptr %buf_struct_size.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 752, ptr %buf_struct_size.i, align 4
  %dev.i61 = getelementptr i8, ptr %notifier, i32 -1764
  %32 = ptrtoint ptr %dev.i61 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i61, align 4
  %dev1.i = getelementptr i8, ptr %notifier, i32 60
  %34 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %dev1.i, align 4
  %buffers.i = getelementptr i8, ptr %notifier, i32 564
  %35 = ptrtoint ptr %buffers.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %buffers.i, ptr %buffers.i, align 4
  %prev.i.i = getelementptr i8, ptr %notifier, i32 568
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buffers.i, ptr %prev.i.i, align 4
  %buffer_mode.i = getelementptr i8, ptr %notifier, i32 -1756
  %37 = ptrtoint ptr %buffer_mode.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %buffer_mode.i, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %38, label %if.end5.mcam_setup_vb2.exit_crit_edge [
    i32 1, label %if.end5.sw.epilog.sink.split.i_crit_edge
    i32 2, label %sw.bb2.i
    i32 0, label %sw.bb7.i
  ]

if.end5.sw.epilog.sink.split.i_crit_edge:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

if.end5.mcam_setup_vb2.exit_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_setup_vb2.exit

sw.bb2.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

sw.bb7.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %s_tasklet.i = getelementptr i8, ptr %notifier, i32 640
  tail call void @tasklet_setup(ptr noundef %s_tasklet.i, ptr noundef nonnull @mcam_frame_tasklet) #9
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb7.i, %sw.bb2.i, %if.end5.sw.epilog.sink.split.i_crit_edge
  %mcam_vb2_ops.sink.i = phi ptr [ @mcam_vb2_ops, %sw.bb7.i ], [ @mcam_vb2_sg_ops, %sw.bb2.i ], [ @mcam_vb2_ops, %if.end5.sw.epilog.sink.split.i_crit_edge ]
  %vb2_vmalloc_memops.sink.i = phi ptr [ @vb2_vmalloc_memops, %sw.bb7.i ], [ @vb2_dma_sg_memops, %sw.bb2.i ], [ @vb2_dma_contig_memops, %if.end5.sw.epilog.sink.split.i_crit_edge ]
  %mcam_ctlr_dma_vmalloc.sink.i = phi ptr [ @mcam_ctlr_dma_vmalloc, %sw.bb7.i ], [ @mcam_ctlr_dma_sg, %sw.bb2.i ], [ @mcam_ctlr_dma_contig, %if.end5.sw.epilog.sink.split.i_crit_edge ]
  %mcam_vmalloc_done.sink.i = phi ptr [ @mcam_vmalloc_done, %sw.bb7.i ], [ @mcam_dma_sg_done, %sw.bb2.i ], [ @mcam_dma_contig_done, %if.end5.sw.epilog.sink.split.i_crit_edge ]
  %ops8.i = getelementptr i8, ptr %notifier, i32 80
  %40 = ptrtoint ptr %ops8.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %mcam_vb2_ops.sink.i, ptr %ops8.i, align 4
  %mem_ops9.i = getelementptr i8, ptr %notifier, i32 84
  %41 = ptrtoint ptr %mem_ops9.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %vb2_vmalloc_memops.sink.i, ptr %mem_ops9.i, align 4
  %dma_setup10.i = getelementptr i8, ptr %notifier, i32 692
  %42 = ptrtoint ptr %dma_setup10.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %mcam_ctlr_dma_vmalloc.sink.i, ptr %dma_setup10.i, align 4
  %frame_complete11.i = getelementptr i8, ptr %notifier, i32 696
  %43 = ptrtoint ptr %frame_complete11.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %mcam_vmalloc_done.sink.i, ptr %frame_complete11.i, align 8
  br label %mcam_setup_vb2.exit

mcam_setup_vb2.exit:                              ; preds = %sw.epilog.sink.split.i, %if.end5.mcam_setup_vb2.exit_crit_edge
  %call.i = tail call i32 @vb2_queue_init(ptr noundef %vb_queue.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %mcam_setup_vb2.exit
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %sensor, align 8
  br label %out

if.end10:                                         ; preds = %mcam_setup_vb2.exit
  %vdev = getelementptr i8, ptr %notifier, i32 -1352
  %45 = call ptr @memcpy(ptr %vdev, ptr @mcam_v4l_template, i32 1352)
  %v4l2_dev = getelementptr i8, ptr %notifier, i32 -1688
  %v4l2_dev12 = getelementptr i8, ptr %notifier, i32 -180
  %46 = ptrtoint ptr %v4l2_dev12 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %v4l2_dev, ptr %v4l2_dev12, align 4
  %lock = getelementptr i8, ptr %notifier, i32 -8
  %47 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %s_mutex, ptr %lock, align 8
  %queue = getelementptr i8, ptr %notifier, i32 -168
  %48 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %vb_queue.i, ptr %queue, align 8
  %driver_data.i.i = getelementptr i8, ptr %notifier, i32 -948
  %49 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr, ptr %driver_data.i.i, align 4
  %call.i62 = tail call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool19.not = icmp eq i32 %call.i62, 0
  br i1 %tobool19.not, label %do.body23, label %if.then20

if.then20:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %sensor, align 8
  br label %out

do.body23:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mccic_notify_bound.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mccic_notify_bound, %if.then29)) #9
          to label %out [label %if.then29], !srcloc !199

if.then29:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %dev.i61 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i61, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mccic_notify_bound.__UNIQUE_ID_ddebug312, ptr noundef %52, ptr noundef nonnull @.str.26, ptr noundef %name) #9
  br label %out

out:                                              ; preds = %if.then29, %do.body23, %if.then20, %if.then8, %if.then3, %do.end
  %ret.0 = phi i32 [ -16, %do.end ], [ %__result.0.i.i65, %if.then3 ], [ %call.i, %if.then8 ], [ %call.i62, %if.then20 ], [ 0, %if.then29 ], [ 0, %do.body23 ]
  tail call void @mutex_unlock(ptr noundef %s_mutex) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mccic_notify_complete(ptr noundef %notifier) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr i8, ptr %notifier, i32 -1560
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 10, ptr noundef nonnull @mccic_notify_complete._key, ptr noundef nonnull @.str.36) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_handler3 = getelementptr i8, ptr %notifier, i32 -1588
  %0 = ptrtoint ptr %ctrl_handler3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrl_handler, ptr %ctrl_handler3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mccic_notify_unbind(ptr noundef %notifier, ptr noundef %subdev, ptr nocapture noundef readnone %asd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_mutex = getelementptr i8, ptr %notifier, i32 752
  tail call void @mutex_lock_nested(ptr noundef %s_mutex, i32 noundef 0) #9
  %sensor = getelementptr i8, ptr %notifier, i32 48
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 8
  %cmp.not = icmp eq ptr %1, %subdev
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %notifier, i32 -1764
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef %name) #12
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vdev = getelementptr i8, ptr %notifier, i32 -1352
  tail call void @video_unregister_device(ptr noundef %vdev) #9
  %4 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %sensor, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mccic_notify_unbind.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mccic_notify_unbind, %if.then6)) #9
          to label %out [label %if.then6], !srcloc !199

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev7 = getelementptr i8, ptr %notifier, i32 -1764
  %5 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev7, align 4
  %name8 = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mccic_notify_unbind.__UNIQUE_ID_ddebug313, ptr noundef %6, ptr noundef nonnull @.str.39, ptr noundef %name8) #9
  br label %out

out:                                              ; preds = %if.then6, %if.end, %do.end
  tail call void @mutex_unlock(ptr noundef %s_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcam_ctlr_dma_contig(ptr noundef %cam) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cam, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %3 = or i32 %2, 8
  %4 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cam, align 8
  %add.ptr.i6.i.i = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %3) #9, !srcloc !195
  %nbufs = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 28
  %6 = ptrtoint ptr %nbufs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %nbufs, align 4
  tail call fastcc void @mcam_set_contig_buffer(ptr noundef %cam, i32 noundef 0)
  tail call fastcc void @mcam_set_contig_buffer(ptr noundef %cam, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcam_dma_contig_done(ptr noundef %cam, i32 noundef %frame) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mcam_camera, ptr %cam, i32 0, i32 37, i32 %frame
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %flags = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 21
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %delivered = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 22, i32 2
  %5 = ptrtoint ptr %delivered to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delivered, align 8
  %inc = add i32 %6, 1
  store i32 %inc, ptr %delivered, align 8
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx, align 4
  %sizeimage.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 40, i32 5
  %8 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sizeimage.i, align 4
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 10, i32 0, i32 3
  %10 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %bytesused.i, align 4
  %arrayidx1.i = getelementptr %struct.mcam_camera, ptr %cam, i32 0, i32 36, i32 %frame
  %11 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx1.i, align 4
  %sequence.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %sequence.i, align 8
  %field.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %field.i, align 4
  %call.i.i = tail call i64 @ktime_get() #9
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  %num_planes.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i.i = icmp eq i32 %17, 0
  br i1 %cmp.not.i.i, label %if.then.mcam_buffer_done.exit_crit_edge, label %if.then.i.i

if.then.mcam_buffer_done.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_buffer_done.exit

if.then.i.i:                                      ; preds = %if.then
  %18 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sizeimage.i, align 4
  %length.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 10, i32 0, i32 4
  %20 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %19)
  %cmp1.i.i = icmp ult i32 %21, %19
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %if.then.i.i.if.end42.i.i_crit_edge

if.then.i.i.if.end42.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i.i

land.rhs.i.i:                                     ; preds = %if.then.i.i
  %.b1.i.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.if.then38.i.i_crit_edge, label %if.then8.i.i, !prof !200

land.rhs.i.i.if.then38.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i.i

if.then8.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 1163, i32 noundef 9, ptr noundef null) #9
  br label %if.then38.i.i

if.then38.i.i:                                    ; preds = %if.then8.i.i, %land.rhs.i.i.if.then38.i.i_crit_edge
  %22 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length.i.i, align 8
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then38.i.i, %if.then.i.i.if.end42.i.i_crit_edge
  %size.addr.0.i.i = phi i32 [ %23, %if.then38.i.i ], [ %19, %if.then.i.i.if.end42.i.i_crit_edge ]
  %24 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %size.addr.0.i.i, ptr %bytesused.i, align 4
  br label %mcam_buffer_done.exit

mcam_buffer_done.exit:                            ; preds = %if.end42.i.i, %if.then.mcam_buffer_done.exit_crit_edge
  tail call void @vb2_buffer_done(ptr noundef %1, i32 noundef 5) #9
  br label %if.end

if.end:                                           ; preds = %mcam_buffer_done.exit, %entry.if.end_crit_edge
  tail call fastcc void @mcam_set_contig_buffer(ptr noundef %cam, i32 noundef %frame)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcam_ctlr_dma_sg(ptr noundef %cam) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %buffers = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 27
  %0 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %buffers, align 4
  %cmp.i.not = icmp eq ptr %1, %buffers
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags) #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cam, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %5 = and i32 %4, -131073
  %6 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cam, align 8
  %add.ptr.i6.i.i = getelementptr i8, ptr %7, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %5) #9, !srcloc !195
  tail call fastcc void @mcam_sg_next_buffer(ptr noundef %cam)
  %nbufs = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 28
  %8 = ptrtoint ptr %nbufs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %nbufs, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcam_dma_sg_done(ptr noundef %cam, i32 noundef %frame) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vb_bufs = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 37
  %0 = ptrtoint ptr %vb_bufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb_bufs, align 8
  %state = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 20
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %buffers = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 27
  %4 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %buffers, align 4
  %cmp.i.not = icmp eq ptr %5, %buffers
  br i1 %cmp.i.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mcam_sg_next_buffer(ptr noundef %cam)
  %6 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cam, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 60
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %9 = or i32 %8, 16777216
  %10 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cam, align 8
  %add.ptr.i6.i.i.i = getelementptr i8, ptr %11, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i.i, i32 %9) #9, !srcloc !195
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags) #9
  %singles = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 22, i32 1
  %12 = ptrtoint ptr %singles to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %singles, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %singles, align 4
  %14 = ptrtoint ptr %vb_bufs to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %vb_bufs, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then1
  %delivered = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 22, i32 2
  %15 = ptrtoint ptr %delivered to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delivered, align 8
  %inc6 = add i32 %16, 1
  store i32 %inc6, ptr %delivered, align 8
  %sizeimage.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 40, i32 5
  %17 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sizeimage.i, align 4
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 10, i32 0, i32 3
  %19 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %bytesused.i, align 4
  %arrayidx1.i = getelementptr %struct.mcam_camera, ptr %cam, i32 0, i32 36, i32 %frame
  %20 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx1.i, align 4
  %sequence.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %sequence.i, align 8
  %field.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %field.i, align 4
  %call.i.i = tail call i64 @ktime_get() #9
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  %num_planes.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not.i.i = icmp eq i32 %26, 0
  br i1 %cmp.not.i.i, label %if.end4.mcam_buffer_done.exit_crit_edge, label %if.then.i.i

if.end4.mcam_buffer_done.exit_crit_edge:          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_buffer_done.exit

if.then.i.i:                                      ; preds = %if.end4
  %27 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sizeimage.i, align 4
  %length.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 10, i32 0, i32 4
  %29 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %28)
  %cmp1.i.i = icmp ult i32 %30, %28
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %if.then.i.i.if.end42.i.i_crit_edge

if.then.i.i.if.end42.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i.i

land.rhs.i.i:                                     ; preds = %if.then.i.i
  %.b1.i.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.if.then38.i.i_crit_edge, label %if.then8.i.i, !prof !200

land.rhs.i.i.if.then38.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i.i

if.then8.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 1163, i32 noundef 9, ptr noundef null) #9
  br label %if.then38.i.i

if.then38.i.i:                                    ; preds = %if.then8.i.i, %land.rhs.i.i.if.then38.i.i_crit_edge
  %31 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length.i.i, align 8
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then38.i.i, %if.then.i.i.if.end42.i.i_crit_edge
  %size.addr.0.i.i = phi i32 [ %32, %if.then38.i.i ], [ %28, %if.then.i.i.if.end42.i.i_crit_edge ]
  %33 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %size.addr.0.i.i, ptr %bytesused.i, align 4
  br label %mcam_buffer_done.exit

mcam_buffer_done.exit:                            ; preds = %if.end42.i.i, %if.end4.mcam_buffer_done.exit_crit_edge
  tail call void @vb2_buffer_done(ptr noundef %1, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %mcam_buffer_done.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcam_frame_tasklet(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -2456
  %dev_lock = getelementptr i8, ptr %t, i32 -2448
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #9
  %nbufs = getelementptr i8, ptr %t, i32 -68
  %0 = ptrtoint ptr %nbufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp687.not = icmp eq i32 %1, 0
  br i1 %cmp687.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %next_buf = getelementptr i8, ptr %t, i32 -64
  %state = getelementptr i8, ptr %t, i32 -2016
  %flags19 = getelementptr i8, ptr %t, i32 -2012
  %buffers = getelementptr i8, ptr %t, i32 -76
  %delivered = getelementptr i8, ptr %t, i32 -2000
  %dma_bufs = getelementptr i8, ptr %t, i32 -24
  %sizeimage = getelementptr i8, ptr %t, i32 80
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %2 = phi i32 [ %1, %for.body.lr.ph ], [ %50, %for.inc.for.body_crit_edge ]
  %i.089 = phi i32 [ 0, %for.body.lr.ph ], [ %inc52, %for.inc.for.body_crit_edge ]
  %flags.088 = phi i32 [ %call3, %for.body.lr.ph ], [ %flags.1, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %next_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %next_buf, align 8
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp8.not = icmp ne i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp10 = icmp slt i32 %4, 0
  %or.cond = select i1 %cmp8.not, i1 true, i1 %cmp10
  br i1 %or.cond, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end:                                           ; preds = %for.body
  %inc = add nuw i32 %4, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %2)
  %cmp14.not = icmp ult i32 %inc, %2
  %spec.store.select = select i1 %cmp14.not, i32 %inc, i32 0
  %7 = ptrtoint ptr %next_buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.store.select, ptr %next_buf, align 8
  %div3.i = lshr i32 %4, 5
  %arrayidx.i = getelementptr i32, ptr %flags19, i32 %div3.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %4, 31
  %10 = shl nuw i32 1, %and.i
  %11 = and i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.end22

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end22:                                         ; preds = %if.end
  %12 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %buffers, align 4
  %cmp.i.not = icmp eq ptr %13, %buffers
  br i1 %cmp.i.not, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %singles = getelementptr i8, ptr %t, i32 -2004
  %14 = ptrtoint ptr %singles to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %singles, align 4
  %inc26 = add i32 %15, 1
  store i32 %inc26, ptr %singles, align 4
  br label %for.end

if.end27:                                         ; preds = %if.end22
  %16 = ptrtoint ptr %delivered to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %delivered, align 8
  %inc29 = add i32 %17, 1
  store i32 %inc29, ptr %delivered, align 8
  tail call void @_clear_bit(i32 noundef %4, ptr noundef %flags19) #9
  %18 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffers, align 4
  %add.ptr34 = getelementptr i8, ptr %19, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end27.list_del_init.exit_crit_edge

if.end27.list_del_init.exit_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end27.list_del_init.exit_crit_edge
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %19, ptr %19, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %19, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %flags.088) #9
  %call36 = tail call ptr @vb2_plane_vaddr(ptr noundef %add.ptr34, i32 noundef 0) #9
  %arrayidx = getelementptr [3 x ptr], ptr %dma_bufs, i32 0, i32 %4
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %30 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sizeimage, align 4
  %32 = call ptr @memcpy(ptr %call36, ptr %29, i32 %31)
  %33 = load i32, ptr %sizeimage, align 4
  %bytesused.i = getelementptr i8, ptr %19, i32 -652
  %34 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %bytesused.i, align 4
  %arrayidx1.i = getelementptr %struct.mcam_camera, ptr %add.ptr, i32 0, i32 36, i32 %4
  %35 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx1.i, align 4
  %sequence.i = getelementptr i8, ptr %19, i32 -272
  %37 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %sequence.i, align 8
  %field.i = getelementptr i8, ptr %19, i32 -292
  %38 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %field.i, align 4
  %call.i.i80 = tail call i64 @ktime_get() #9
  %timestamp.i = getelementptr i8, ptr %19, i32 -712
  %39 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %call.i.i80, ptr %timestamp.i, align 8
  %num_planes.i.i = getelementptr i8, ptr %19, i32 -720
  %40 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.not.i.i = icmp eq i32 %41, 0
  br i1 %cmp.not.i.i, label %list_del_init.exit.mcam_buffer_done.exit_crit_edge, label %if.then.i.i

list_del_init.exit.mcam_buffer_done.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_buffer_done.exit

if.then.i.i:                                      ; preds = %list_del_init.exit
  %42 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sizeimage, align 4
  %length.i.i = getelementptr i8, ptr %19, i32 -648
  %44 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %43)
  %cmp1.i.i = icmp ult i32 %45, %43
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %if.then.i.i.if.end42.i.i_crit_edge

if.then.i.i.if.end42.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i.i

land.rhs.i.i:                                     ; preds = %if.then.i.i
  %.b1.i.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.if.then38.i.i_crit_edge, label %if.then8.i.i, !prof !200

land.rhs.i.i.if.then38.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i.i

if.then8.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 1163, i32 noundef 9, ptr noundef null) #9
  br label %if.then38.i.i

if.then38.i.i:                                    ; preds = %if.then8.i.i, %land.rhs.i.i.if.then38.i.i_crit_edge
  %46 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %length.i.i, align 8
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then38.i.i, %if.then.i.i.if.end42.i.i_crit_edge
  %size.addr.0.i.i = phi i32 [ %47, %if.then38.i.i ], [ %43, %if.then.i.i.if.end42.i.i_crit_edge ]
  %48 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %size.addr.0.i.i, ptr %bytesused.i, align 4
  br label %mcam_buffer_done.exit

mcam_buffer_done.exit:                            ; preds = %if.end42.i.i, %list_del_init.exit.mcam_buffer_done.exit_crit_edge
  tail call void @vb2_buffer_done(ptr noundef %add.ptr34, i32 noundef 5) #9
  %call47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #9
  br label %for.inc

for.inc:                                          ; preds = %mcam_buffer_done.exit, %if.end.for.inc_crit_edge
  %flags.1 = phi i32 [ %call47, %mcam_buffer_done.exit ], [ %flags.088, %if.end.for.inc_crit_edge ]
  %inc52 = add nuw i32 %i.089, 1
  %49 = ptrtoint ptr %nbufs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nbufs, align 4
  %cmp6 = icmp ult i32 %inc52, %50
  br i1 %cmp6, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then25, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %flags.086 = phi i32 [ %flags.088, %if.then25 ], [ %call3, %entry.for.end_crit_edge ], [ %flags.1, %for.inc.for.end_crit_edge ], [ %flags.088, %for.body.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %flags.086) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcam_ctlr_dma_vmalloc(ptr nocapture noundef readonly %cam) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_handles = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 33
  %0 = ptrtoint ptr %dma_handles to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_handles, align 4
  tail call fastcc void @mcam_write_yuv_bases(ptr noundef %cam, i32 noundef 0, i32 noundef %1)
  %arrayidx2 = getelementptr %struct.mcam_camera, ptr %cam, i32 0, i32 33, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  tail call fastcc void @mcam_write_yuv_bases(ptr noundef %cam, i32 noundef 1, i32 noundef %3)
  %nbufs = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 28
  %4 = ptrtoint ptr %nbufs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nbufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ugt i32 %5, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx4 = getelementptr %struct.mcam_camera, ptr %cam, i32 0, i32 33, i32 2
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  tail call fastcc void @mcam_write_yuv_bases(ptr noundef %cam, i32 noundef 2, i32 noundef %7)
  %8 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cam, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 64
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %11 = and i32 %10, -9
  %12 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cam, align 8
  %add.ptr.i6.i.i = getelementptr i8, ptr %13, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %11) #9, !srcloc !195
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cam, align 8
  %add.ptr.i.i.i18 = getelementptr i8, ptr %15, i32 64
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i18) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %17 = or i32 %16, 8
  %18 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cam, align 8
  %add.ptr.i6.i.i19 = getelementptr i8, ptr %19, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i19, i32 %17) #9, !srcloc !195
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %chip_id = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 4
  %20 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp5 = icmp eq i32 %21, 0
  br i1 %cmp5, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cam, align 8
  %add.ptr.i = getelementptr i8, ptr %23, i32 196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !195
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcam_vmalloc_done(ptr noundef %cam, i32 noundef %frame) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 34, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %s_tasklet = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 34
  tail call void @__tasklet_schedule(ptr noundef %s_tasklet) #9
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mcam_vb_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbufs, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %buffer_mode = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %buffer_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buffer_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %cond = select i1 %cmp, i32 3, i32 2
  %sizeimage = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 40, i32 5
  %4 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sizeimage, align 4
  %6 = ptrtoint ptr %nbufs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nbufs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %cond)
  %cmp1 = icmp ult i32 %7, %cond
  br i1 %cmp1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %nbufs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %nbufs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %5)
  %cmp3 = icmp ult i32 %12, %5
  %cond4 = select i1 %cmp3, i32 -22, i32 0
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %5, ptr %sizes, align 4
  %14 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %num_planes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then2
  %retval.0 = phi i32 [ %cond4, %if.then2 ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcam_vb_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %state = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mcam_vb_requeue_bufs(ptr noundef %vq, i32 noundef 3)
  br label %cleanup

if.end:                                           ; preds = %entry
  %frame_state = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %frame_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %frame_state, align 8
  %singles = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 22, i32 1
  %5 = ptrtoint ptr %singles to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %singles, align 4
  %delivered = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 22, i32 2
  %6 = ptrtoint ptr %delivered to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %delivered, align 8
  %sequence = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 35
  %7 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %sequence, align 8
  %buffer_mode = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %buffer_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3.not = icmp eq i32 %9, 0
  br i1 %cmp3.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %buffers = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 27
  %10 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %buffers, align 4
  %cmp.i.not = icmp eq ptr %11, %buffers
  br i1 %cmp.i.not, label %if.then5, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %state, align 8
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %nbufs = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 28
  %13 = ptrtoint ptr %nbufs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nbufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp830.not = icmp eq i32 %14, 0
  br i1 %cmp830.not, label %if.end7.for.end_crit_edge, label %for.body.lr.ph

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end7
  %flags = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %frame.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add = add i32 %frame.031, 7
  tail call void @_clear_bit(i32 noundef %add, ptr noundef %flags) #9
  %inc = add nuw i32 %frame.031, 1
  %15 = ptrtoint ptr %nbufs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nbufs, align 4
  %cmp8 = icmp ult i32 %inc, %16
  br i1 %cmp8, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end7.for.end_crit_edge
  %call9 = tail call fastcc i32 @mcam_read_setup(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.end.cleanup_crit_edge, label %if.then11

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mcam_vb_requeue_bufs(ptr noundef %vq, i32 noundef 3)
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %for.end.cleanup_crit_edge, %if.then5, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.then5 ], [ %call9, %if.then11 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcam_vb_stop_streaming(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcam_vb_stop_streaming.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcam_vb_stop_streaming, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !199

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %frame_state = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %frame_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frame_state, align 8
  %singles = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 22, i32 1
  %6 = ptrtoint ptr %singles to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %singles, align 4
  %delivered = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 22, i32 2
  %8 = ptrtoint ptr %delivered to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delivered, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcam_vb_stop_streaming.__UNIQUE_ID_ddebug311, ptr noundef %3, ptr noundef nonnull @.str.30, i32 noundef %5, i32 noundef %7, i32 noundef %9) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %11, label %do.end.cleanup_crit_edge [
    i32 4, label %if.then6
    i32 3, label %if.end12
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %state, align 8
  br label %cleanup

if.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mcam_ctlr_stop_dma(ptr noundef %1)
  tail call fastcc void @mcam_vb_requeue_bufs(ptr noundef %vq, i32 noundef 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then6, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcam_vb_buf_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %dev_lock = getelementptr inbounds %struct.mcam_camera, ptr %3, i32 0, i32 2
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #9
  %state = getelementptr inbounds %struct.mcam_camera, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp8 = icmp eq i32 %5, 4
  br i1 %cmp8, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffers = getelementptr inbounds %struct.mcam_camera, ptr %3, i32 0, i32 27
  %6 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %buffers, align 4
  %cmp.i = icmp ne ptr %7, %buffers
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %8 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp.i, %land.rhs ]
  %queue = getelementptr inbounds %struct.mcam_vb_buffer, ptr %vb, i32 0, i32 1
  %buffers11 = getelementptr inbounds %struct.mcam_camera, ptr %3, i32 0, i32 27
  %9 = ptrtoint ptr %buffers11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffers11, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %buffers11, ptr noundef %10) #9
  br i1 %call.i.i, label %if.end.i.i, label %land.end.list_add.exit_crit_edge

land.end.list_add.exit_crit_edge:                 ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %queue, ptr %prev1.i.i, align 4
  %12 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.mcam_vb_buffer, ptr %vb, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buffers11, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %buffers11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %queue, ptr %buffers11, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %land.end.list_add.exit_crit_edge
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp13 = icmp eq i32 %16, 3
  br i1 %cmp13, label %land.lhs.true, label %list_add.exit.if.end_crit_edge

list_add.exit.if.end_crit_edge:                   ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %list_add.exit
  %flags15 = getelementptr inbounds %struct.mcam_camera, ptr %3, i32 0, i32 21
  %17 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags15, align 4
  %19 = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool17.not = icmp eq i32 %19, 0
  br i1 %tobool17.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %20 = ptrtoint ptr %buffers11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %buffers11, align 4
  %cmp.i.not.i.i = icmp eq ptr %21, %buffers11
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %if.end.i.i32

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags15) #9
  br label %mcam_sg_restart.exit

if.end.i.i32:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 8
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %23, i32 64
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %25 = and i32 %24, -131073
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 8
  %add.ptr.i6.i.i.i.i = getelementptr i8, ptr %27, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i.i.i, i32 %25) #9, !srcloc !195
  tail call fastcc void @mcam_sg_next_buffer(ptr noundef %3) #9
  %nbufs.i.i = getelementptr inbounds %struct.mcam_camera, ptr %3, i32 0, i32 28
  %28 = ptrtoint ptr %nbufs.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %nbufs.i.i, align 4
  br label %mcam_sg_restart.exit

mcam_sg_restart.exit:                             ; preds = %if.end.i.i32, %if.then.i.i
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 8
  %add.ptr.i.i.i.i3.i = getelementptr i8, ptr %30, i32 60
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i3.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %32 = or i32 %31, 16777216
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 8
  %add.ptr.i6.i.i.i4.i = getelementptr i8, ptr %34, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i.i4.i, i32 %32) #9, !srcloc !195
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags15) #9
  br label %if.end

if.end:                                           ; preds = %mcam_sg_restart.exit, %land.lhs.true.if.end_crit_edge, %list_add.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call5) #9
  br i1 %8, label %if.then20, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call fastcc i32 @mcam_read_setup(ptr noundef %3)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end.if.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcam_vb_requeue_bufs(ptr nocapture noundef readonly %vq, i32 noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %dev_lock = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #9
  %buffers = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffers, align 4
  %cmp13.not48 = icmp eq ptr %3, %buffers
  br i1 %cmp13.not48, label %entry.for.cond21.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond21.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond21.preheader

for.cond21.preheader:                             ; preds = %list_del.exit.for.cond21.preheader_crit_edge, %entry.for.cond21.preheader_crit_edge
  %arrayidx = getelementptr %struct.mcam_camera, ptr %1, i32 0, i32 37, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.cond21.preheader.for.inc29_crit_edge, label %if.then

for.cond21.preheader.for.inc29_crit_edge:         ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc29

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in49 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in49, i32 -736
  %6 = ptrtoint ptr %.pn.in49 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in49, align 8
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef %state) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in49) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in49, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %.pn.in49 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in49, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %.pn.in49 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in49, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in49, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp13.not = icmp eq ptr %.pn, %buffers
  br i1 %cmp13.not, label %list_del.exit.for.cond21.preheader_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.for.cond21.preheader_crit_edge:     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond21.preheader

if.then:                                          ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vb2_buffer_done(ptr noundef nonnull %5, i32 noundef %state) #9
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc29

for.inc29:                                        ; preds = %if.then, %for.cond21.preheader.for.inc29_crit_edge
  %arrayidx.1 = getelementptr %struct.mcam_camera, ptr %1, i32 0, i32 37, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %17, null
  br i1 %tobool.not.1, label %for.inc29.for.inc29.1_crit_edge, label %if.then.1

for.inc29.for.inc29.1_crit_edge:                  ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc29.1

if.then.1:                                        ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vb2_buffer_done(ptr noundef nonnull %17, i32 noundef %state) #9
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx.1, align 4
  br label %for.inc29.1

for.inc29.1:                                      ; preds = %if.then.1, %for.inc29.for.inc29.1_crit_edge
  %arrayidx.2 = getelementptr %struct.mcam_camera, ptr %1, i32 0, i32 37, i32 2
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %20, null
  br i1 %tobool.not.2, label %for.inc29.1.for.inc29.2_crit_edge, label %if.then.2

for.inc29.1.for.inc29.2_crit_edge:                ; preds = %for.inc29.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc29.2

if.then.2:                                        ; preds = %for.inc29.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vb2_buffer_done(ptr noundef nonnull %20, i32 noundef %state) #9
  %21 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx.2, align 4
  br label %for.inc29.2

for.inc29.2:                                      ; preds = %if.then.2, %for.inc29.1.for.inc29.2_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcam_set_contig_buffer(ptr noundef %cam, i32 noundef %frame) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %buffers = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 27
  %0 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %buffers, align 4
  %cmp.i.not = icmp eq ptr %1, %buffers
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %xor = xor i32 %frame, 1
  %arrayidx = getelementptr %struct.mcam_camera, ptr %cam, i32 0, i32 37, i32 %xor
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %flags = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #9
  %singles = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 22, i32 1
  %4 = ptrtoint ptr %singles to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %singles, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %singles, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del_init.exit_crit_edge

if.else.list_del_init.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.else.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %prev.i3.i, align 4
  %flags2 = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags2) #9
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %if.then
  %buf.0 = phi ptr [ %3, %if.then ], [ %add.ptr, %list_del_init.exit ]
  %arrayidx4 = getelementptr %struct.mcam_camera, ptr %cam, i32 0, i32 37, i32 %frame
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.0, ptr %arrayidx4, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %buf.0, i32 noundef 0) #9
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call.i, align 4
  tail call fastcc void @mcam_write_yuv_bases(ptr noundef %cam, i32 noundef %frame, i32 noundef %16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcam_write_yuv_bases(ptr nocapture noundef readonly %cam, i32 noundef %frame, i32 noundef %base) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pix_format = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 40
  %0 = ptrtoint ptr %pix_format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pix_format, align 4
  %height = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 40, i32 1
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  %mul = mul i32 %3, %1
  %pixelformat = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 40, i32 2
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 842093913, label %sw.bb
    i32 842094169, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %mul, %base
  %div29 = lshr i32 %mul, 2
  %add1 = add i32 %add, %div29
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add3 = add i32 %mul, %base
  %div428 = lshr i32 %mul, 2
  %add5 = add i32 %add3, %div428
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %u.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %add5, %sw.bb2 ], [ %add, %sw.bb ]
  %v.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %add3, %sw.bb2 ], [ %add1, %sw.bb ]
  %mul6 = shl i32 %frame, 2
  %7 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cam, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 %mul6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %base) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #9, !srcloc !195
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixelformat, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %11, label %sw.epilog.mcam_fmt_is_planar.exit_crit_edge [
    i32 1448695129, label %sw.epilog.if.then.i.i_crit_edge
    i32 1431918169, label %if.then.i.i.fold.split
    i32 842093913, label %if.then.i.i.fold.split32
    i32 842094169, label %if.then.i.i.fold.split33
    i32 842093144, label %if.then.i.i.fold.split34
    i32 1346520914, label %if.then.i.i.fold.split35
    i32 825770306, label %if.then.i.i.fold.split36
  ]

sw.epilog.if.then.i.i_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

sw.epilog.mcam_fmt_is_planar.exit_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_fmt_is_planar.exit

if.then.i.i.fold.split:                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i.fold.split32:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i.fold.split33:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i.fold.split34:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i.fold.split35:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i.fold.split36:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i.i.fold.split36, %if.then.i.i.fold.split35, %if.then.i.i.fold.split34, %if.then.i.i.fold.split33, %if.then.i.i.fold.split32, %if.then.i.i.fold.split, %sw.epilog.if.then.i.i_crit_edge
  %i.07.lcssa.i.i = phi i32 [ 0, %sw.epilog.if.then.i.i_crit_edge ], [ 1, %if.then.i.i.fold.split ], [ 2, %if.then.i.i.fold.split32 ], [ 3, %if.then.i.i.fold.split33 ], [ 4, %if.then.i.i.fold.split34 ], [ 5, %if.then.i.i.fold.split35 ], [ 6, %if.then.i.i.fold.split36 ]
  %add.ptr.i.i = getelementptr %struct.mcam_format_struct, ptr @mcam_formats, i32 %i.07.lcssa.i.i
  br label %mcam_fmt_is_planar.exit

mcam_fmt_is_planar.exit:                          ; preds = %if.then.i.i, %sw.epilog.mcam_fmt_is_planar.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ @mcam_formats, %sw.epilog.mcam_fmt_is_planar.exit_crit_edge ]
  %planar.i = getelementptr inbounds %struct.mcam_format_struct, ptr %retval.0.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %planar.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %planar.i, align 4, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.i.not = icmp eq i8 %14, 0
  br i1 %tobool.i.not, label %mcam_fmt_is_planar.exit.if.end_crit_edge, label %if.then

mcam_fmt_is_planar.exit.if.end_crit_edge:         ; preds = %mcam_fmt_is_planar.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %mcam_fmt_is_planar.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add10 = add i32 %mul6, 12
  %15 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cam, align 8
  %add.ptr.i30 = getelementptr i8, ptr %16, i32 %add10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %u.0) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %17) #9, !srcloc !195
  %add12 = add i32 %mul6, 24
  %18 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cam, align 8
  %add.ptr.i31 = getelementptr i8, ptr %19, i32 %add12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %20 = tail call i32 @llvm.bswap.i32(i32 %v.0) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %20) #9, !srcloc !195
  br label %if.end

if.end:                                           ; preds = %if.then, %mcam_fmt_is_planar.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcam_vb_sg_buf_init(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %sizeimage = getelementptr inbounds %struct.mcam_camera, ptr %3, i32 0, i32 40, i32 5
  %4 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sizeimage, align 4
  %dev = getelementptr inbounds %struct.mcam_camera, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = lshr i32 %5, 9
  %add = and i32 %8, 8388600
  %mul = add nuw nsw i32 %add, 8
  %dma_desc_pa = getelementptr inbounds %struct.mcam_vb_buffer, ptr %vb, i32 0, i32 3
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %7, i32 noundef %mul, ptr noundef %dma_desc_pa, i32 noundef 3264, i32 noundef 0) #9
  %dma_desc = getelementptr inbounds %struct.mcam_vb_buffer, ptr %vb, i32 0, i32 2
  %9 = ptrtoint ptr %dma_desc to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %dma_desc, align 8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.32) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcam_vb_sg_buf_prepare(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #9
  %nents = getelementptr inbounds %struct.sg_table, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10.not = icmp eq i32 %1, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %dma_desc = getelementptr inbounds %struct.mcam_vb_buffer, ptr %vb, i32 0, i32 2
  %4 = ptrtoint ptr %dma_desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_desc, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.013 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.012 = phi ptr [ %call2, %for.body.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %desc.011 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %5, %for.body.preheader ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.012, i32 0, i32 3
  %6 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_address, align 4
  %8 = ptrtoint ptr %desc.011 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %desc.011, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.012, i32 0, i32 4
  %9 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_length, align 4
  %segment_len = getelementptr inbounds %struct.mcam_dma_desc, ptr %desc.011, i32 0, i32 1
  %11 = ptrtoint ptr %segment_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %segment_len, align 4
  %incdec.ptr = getelementptr %struct.mcam_dma_desc, ptr %desc.011, i32 1
  %inc = add nuw i32 %i.013, 1
  %call2 = tail call ptr @sg_next(ptr noundef %sg.012) #9
  %12 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nents, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcam_vb_sg_buf_cleanup(ptr nocapture noundef readonly %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %sizeimage = getelementptr inbounds %struct.mcam_camera, ptr %3, i32 0, i32 40, i32 5
  %4 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sizeimage, align 4
  %dev = getelementptr inbounds %struct.mcam_camera, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = lshr i32 %5, 9
  %add = and i32 %8, 8388600
  %mul = add nuw nsw i32 %add, 8
  %dma_desc = getelementptr inbounds %struct.mcam_vb_buffer, ptr %vb, i32 0, i32 2
  %9 = ptrtoint ptr %dma_desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma_desc, align 8
  %dma_desc_pa = getelementptr inbounds %struct.mcam_vb_buffer, ptr %vb, i32 0, i32 3
  %11 = ptrtoint ptr %dma_desc_pa to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_desc_pa, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef %mul, ptr noundef %10, i32 noundef %12, i32 noundef 0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcam_sg_next_buffer(ptr nocapture noundef %cam) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %buffers = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 27
  %0 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffers, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %1, i32 -736
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %add.ptr, i32 noundef 0) #9
  %10 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cam, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 64
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %13 = and i32 %12, -65537
  %14 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cam, align 8
  %add.ptr.i6.i.i = getelementptr i8, ptr %15, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %13) #9, !srcloc !195
  %dma_desc_pa = getelementptr i8, ptr %1, i32 12
  %16 = ptrtoint ptr %dma_desc_pa to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_desc_pa, align 4
  %18 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cam, align 8
  %add.ptr.i = getelementptr i8, ptr %19, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %20 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %20) #9, !srcloc !195
  %nents = getelementptr inbounds %struct.sg_table, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nents, align 4
  %mul = shl i32 %22, 3
  %23 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cam, align 8
  %add.ptr.i11 = getelementptr i8, ptr %24, i32 524
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %25 = tail call i32 @llvm.bswap.i32(i32 %mul) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %25) #9, !srcloc !195
  %26 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cam, align 8
  %add.ptr.i12 = getelementptr i8, ptr %27, i32 528
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 0) #9, !srcloc !195
  %28 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cam, align 8
  %add.ptr.i13 = getelementptr i8, ptr %29, i32 532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 0) #9, !srcloc !195
  %30 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cam, align 8
  %add.ptr.i.i.i14 = getelementptr i8, ptr %31, i32 64
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i14) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %33 = or i32 %32, 65536
  %34 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cam, align 8
  %add.ptr.i6.i.i15 = getelementptr i8, ptr %35, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i15, i32 %33) #9, !srcloc !195
  %vb_bufs = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 37
  %36 = ptrtoint ptr %vb_bufs to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr, ptr %vb_bufs, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcam_v4l_open(ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %s_mutex = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 42
  tail call void @mutex_lock_nested(ptr noundef %s_mutex, i32 noundef 0) #9
  %call1 = tail call i32 @v4l2_fh_open(ptr noundef %filp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.if.then38_crit_edge

entry.if.then38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

if.end:                                           ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call.i61 = tail call i32 @v4l2_fh_is_singular(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool3.not = icmp eq i32 %call.i61, 0
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %if.then4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then4:                                         ; preds = %if.end
  %sensor = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sensor, align 8
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.then4.if.then38_crit_edge, label %if.else

if.then4.if.then38_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

if.else:                                          ; preds = %if.then4
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.else.if.then38_crit_edge, label %land.lhs.true

if.else.if.then38_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

land.lhs.true:                                    ; preds = %if.else
  %s_power = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %s_power to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_power, align 4
  %tobool10.not = icmp eq ptr %11, null
  br i1 %tobool10.not, label %land.lhs.true.if.then38_crit_edge, label %if.else12

land.lhs.true.if.then38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

if.else12:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %12 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool13.not = icmp eq ptr %12, null
  br i1 %tobool13.not, label %if.else12.if.else20_crit_edge, label %land.lhs.true14

if.else12.if.else20_crit_edge:                    ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else20

land.lhs.true14:                                  ; preds = %if.else12
  %s_power15 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %s_power15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_power15, align 4
  %tobool16.not = icmp eq ptr %14, null
  br i1 %tobool16.not, label %land.lhs.true14.if.else20_crit_edge, label %land.lhs.true14.if.end27_crit_edge

land.lhs.true14.if.end27_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true14.if.else20_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else20

if.else20:                                        ; preds = %land.lhs.true14.if.else20_crit_edge, %if.else12.if.else20_crit_edge
  br label %if.end27

if.end27:                                         ; preds = %if.else20, %land.lhs.true14.if.end27_crit_edge
  %.sink = phi ptr [ %11, %if.else20 ], [ %14, %land.lhs.true14.if.end27_crit_edge ]
  %call24 = tail call i32 %.sink(ptr noundef nonnull %5, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool28.not = icmp eq i32 %call24, 0
  br i1 %tobool28.not, label %if.end30, label %if.end27.if.then38_crit_edge

if.end27.if.then38_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

if.end30:                                         ; preds = %if.end27
  %dev = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %call.i62 = tail call i32 @__pm_runtime_resume(ptr noundef %16, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp.i = icmp slt i32 %call.i62, 0
  br i1 %cmp.i, label %if.then.i, label %if.end33

if.then.i:                                        ; preds = %if.end30
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !202
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.if.then38_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.if.then38_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !203
  br label %if.then38

if.end33:                                         ; preds = %if.end30
  %18 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sensor, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end33.__mcam_cam_reset.exit_crit_edge, label %if.else.i

if.end33.__mcam_cam_reset.exit_crit_edge:         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %__mcam_cam_reset.exit

if.else.i:                                        ; preds = %if.end33
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool1.not.i = icmp eq ptr %23, null
  br i1 %tobool1.not.i, label %if.else.i.__mcam_cam_reset.exit_crit_edge, label %land.lhs.true.i

if.else.i.__mcam_cam_reset.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__mcam_cam_reset.exit

land.lhs.true.i:                                  ; preds = %if.else.i
  %reset.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reset.i, align 4
  %tobool4.not.i = icmp eq ptr %25, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.__mcam_cam_reset.exit_crit_edge, label %if.else6.i

land.lhs.true.i.__mcam_cam_reset.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__mcam_cam_reset.exit

if.else6.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %26 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool7.not.i = icmp eq ptr %26, null
  br i1 %tobool7.not.i, label %if.else6.i.if.else13.i_crit_edge, label %land.lhs.true8.i

if.else6.i.if.else13.i_crit_edge:                 ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i

land.lhs.true8.i:                                 ; preds = %if.else6.i
  %reset9.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %reset9.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reset9.i, align 4
  %tobool10.not.i = icmp eq ptr %28, null
  br i1 %tobool10.not.i, label %land.lhs.true8.i.if.else13.i_crit_edge, label %land.lhs.true8.i.if.end19.sink.split.i_crit_edge

land.lhs.true8.i.if.end19.sink.split.i_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.sink.split.i

land.lhs.true8.i.if.else13.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i

if.else13.i:                                      ; preds = %land.lhs.true8.i.if.else13.i_crit_edge, %if.else6.i.if.else13.i_crit_edge
  br label %if.end19.sink.split.i

if.end19.sink.split.i:                            ; preds = %if.else13.i, %land.lhs.true8.i.if.end19.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %25, %if.else13.i ], [ %28, %land.lhs.true8.i.if.end19.sink.split.i_crit_edge ]
  %call17.i = tail call i32 %.sink.i(ptr noundef nonnull %19, i32 noundef 0) #9
  br label %__mcam_cam_reset.exit

__mcam_cam_reset.exit:                            ; preds = %if.end19.sink.split.i, %land.lhs.true.i.__mcam_cam_reset.exit_crit_edge, %if.else.i.__mcam_cam_reset.exit_crit_edge, %if.end33.__mcam_cam_reset.exit_crit_edge
  %flags1.i = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags1.i) #9
  br label %out

out:                                              ; preds = %__mcam_cam_reset.exit, %if.end.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %s_mutex) #9
  br label %if.end40

if.then38:                                        ; preds = %do.end11.i.i.i.i.i, %if.then.i.if.then38_crit_edge, %if.end27.if.then38_crit_edge, %land.lhs.true.if.then38_crit_edge, %if.else.if.then38_crit_edge, %if.then4.if.then38_crit_edge, %entry.if.then38_crit_edge
  %ret.0.ph = phi i32 [ %call24, %if.end27.if.then38_crit_edge ], [ %call1, %entry.if.then38_crit_edge ], [ -515, %if.else.if.then38_crit_edge ], [ -515, %land.lhs.true.if.then38_crit_edge ], [ -19, %if.then4.if.then38_crit_edge ], [ %call.i62, %if.then.i.if.then38_crit_edge ], [ %call.i62, %do.end11.i.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %s_mutex) #9
  %call39 = tail call i32 @v4l2_fh_release(ptr noundef %filp) #9
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %out
  %ret.071 = phi i32 [ %ret.0.ph, %if.then38 ], [ 0, %out ]
  ret i32 %ret.071
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcam_v4l_release(ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %s_mutex = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 42
  tail call void @mutex_lock_nested(ptr noundef %s_mutex, i32 noundef 0) #9
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call.i49 = tail call i32 @v4l2_fh_is_singular(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool.not = icmp eq i32 %call.i49, 0
  %call2 = tail call i32 @_vb2_fop_release(ptr noundef %filp, ptr noundef null) #9
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %if.then

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #9, !srcloc !195
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %7, i32 300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 0) #9, !srcloc !195
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %9, i32 308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 0) #9, !srcloc !195
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %add.ptr.i7.i = getelementptr i8, ptr %11, i32 312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 0) #9, !srcloc !195
  %mipi_enabled.i = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %mipi_enabled.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %mipi_enabled.i, align 8
  %sensor = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 25
  %13 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sensor, align 8
  %tobool4.not = icmp eq ptr %14, null
  br i1 %tobool4.not, label %if.then.if.end25_crit_edge, label %if.else

if.then.if.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.else:                                          ; preds = %if.then
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool6.not = icmp eq ptr %18, null
  br i1 %tobool6.not, label %if.else.if.end25_crit_edge, label %land.lhs.true

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true:                                    ; preds = %if.else
  %s_power = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %s_power to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_power, align 4
  %tobool9.not = icmp eq ptr %20, null
  br i1 %tobool9.not, label %land.lhs.true.if.end25_crit_edge, label %if.else11

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.else11:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %21 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool12.not = icmp eq ptr %21, null
  br i1 %tobool12.not, label %if.else11.if.else19_crit_edge, label %land.lhs.true13

if.else11.if.else19_crit_edge:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else19

land.lhs.true13:                                  ; preds = %if.else11
  %s_power14 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %s_power14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_power14, align 4
  %tobool15.not = icmp eq ptr %23, null
  br i1 %tobool15.not, label %land.lhs.true13.if.else19_crit_edge, label %land.lhs.true13.if.end25.sink.split_crit_edge

land.lhs.true13.if.end25.sink.split_crit_edge:    ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.sink.split

land.lhs.true13.if.else19_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else19

if.else19:                                        ; preds = %land.lhs.true13.if.else19_crit_edge, %if.else11.if.else19_crit_edge
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %if.else19, %land.lhs.true13.if.end25.sink.split_crit_edge
  %.sink = phi ptr [ %20, %if.else19 ], [ %23, %land.lhs.true13.if.end25.sink.split_crit_edge ]
  %call23 = tail call i32 %.sink(ptr noundef nonnull %14, i32 noundef 0) #9
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %land.lhs.true.if.end25_crit_edge, %if.else.if.end25_crit_edge, %if.then.if.end25_crit_edge
  %dev = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %call.i50 = tail call i32 @__pm_runtime_idle(ptr noundef %25, i32 noundef 5) #9
  %buffer_mode = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %buffer_mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buffer_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp = icmp eq i32 %27, 0
  br i1 %cmp, label %land.lhs.true27, label %if.end25.if.end31_crit_edge

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

land.lhs.true27:                                  ; preds = %if.end25
  %28 = load i8, ptr @alloc_bufs_at_read, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool28.not = icmp eq i8 %28, 0
  br i1 %tobool28.not, label %land.lhs.true27.if.end31_crit_edge, label %if.then29

land.lhs.true27.if.end31_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then29:                                        ; preds = %land.lhs.true27
  %nbufs.i = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 28
  %29 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nbufs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp15.not.i = icmp eq i32 %30, 0
  br i1 %cmp15.not.i, label %if.then29.mcam_free_dma_bufs.exit_crit_edge, label %for.body.lr.ph.i

if.then29.mcam_free_dma_bufs.exit_crit_edge:      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_free_dma_bufs.exit

for.body.lr.ph.i:                                 ; preds = %if.then29
  %dma_buf_size.i = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 31
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %33 = ptrtoint ptr %dma_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_buf_size.i, align 4
  %arrayidx.i = getelementptr %struct.mcam_camera, ptr %1, i32 0, i32 32, i32 %i.016.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.mcam_camera, ptr %1, i32 0, i32 33, i32 %i.016.i
  %37 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx1.i, align 4
  tail call void @dma_free_attrs(ptr noundef %32, i32 noundef %34, ptr noundef %36, i32 noundef %38, i32 noundef 0) #9
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.016.i, 1
  %40 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nbufs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %41
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mcam_free_dma_bufs.exit_crit_edge

for.body.i.mcam_free_dma_bufs.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_free_dma_bufs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

mcam_free_dma_bufs.exit:                          ; preds = %for.body.i.mcam_free_dma_bufs.exit_crit_edge, %if.then29.mcam_free_dma_bufs.exit_crit_edge
  %42 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %nbufs.i, align 4
  br label %if.end31

if.end31:                                         ; preds = %mcam_free_dma_bufs.exit, %land.lhs.true27.if.end31_crit_edge, %if.end25.if.end31_crit_edge, %entry.if.end31_crit_edge
  tail call void @mutex_unlock(ptr noundef %s_mutex) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vb2_fop_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcam_vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.34, i32 noundef 16) #9
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.34, i32 noundef 32) #9
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %bus_info5 = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 30
  %call7 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef %bus_info5, i32 noundef 32) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mcam_vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp ugt i32 %1, 6
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [7 x %struct.mcam_format_struct], ptr @mcam_formats, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %pixelformat2 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %fmt, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixelformat2, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcam_vidioc_g_fmt_vid_cap(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pix_format = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 40
  %2 = call ptr @memcpy(ptr %fmt, ptr %pix_format, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcam_vidioc_s_fmt_vid_cap(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %state = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %num_buffers.i = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 26, i32 21
  %4 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixelformat, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %7, label %if.end.mcam_find_format.exit_crit_edge [
    i32 1448695129, label %if.end.if.then.i_crit_edge
    i32 1431918169, label %if.then.i.fold.split
    i32 842093913, label %if.then.i.fold.split36
    i32 842094169, label %if.then.i.fold.split37
    i32 842093144, label %if.then.i.fold.split38
    i32 1346520914, label %if.then.i.fold.split39
    i32 825770306, label %if.then.i.fold.split40
  ]

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.mcam_find_format.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_find_format.exit

if.then.i.fold.split:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i.fold.split36:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i.fold.split37:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i.fold.split38:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i.fold.split39:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i.fold.split40:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.fold.split40, %if.then.i.fold.split39, %if.then.i.fold.split38, %if.then.i.fold.split37, %if.then.i.fold.split36, %if.then.i.fold.split, %if.end.if.then.i_crit_edge
  %i.07.lcssa.i = phi i32 [ 0, %if.end.if.then.i_crit_edge ], [ 1, %if.then.i.fold.split ], [ 2, %if.then.i.fold.split36 ], [ 3, %if.then.i.fold.split37 ], [ 4, %if.then.i.fold.split38 ], [ 5, %if.then.i.fold.split39 ], [ 6, %if.then.i.fold.split40 ]
  %add.ptr.i = getelementptr %struct.mcam_format_struct, ptr @mcam_formats, i32 %i.07.lcssa.i
  br label %mcam_find_format.exit

mcam_find_format.exit:                            ; preds = %if.then.i, %if.end.mcam_find_format.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ @mcam_formats, %if.end.mcam_find_format.exit_crit_edge ]
  %call4 = tail call i32 @mcam_vidioc_try_fmt_vid_cap(ptr noundef %filp, ptr noundef %priv, ptr noundef %fmt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %mcam_find_format.exit.cleanup_crit_edge

mcam_find_format.exit.cleanup_crit_edge:          ; preds = %mcam_find_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %mcam_find_format.exit
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %pix_format = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 40
  %9 = call ptr @memcpy(ptr %pix_format, ptr %fmt2, i32 48)
  %mbus_code = getelementptr inbounds %struct.mcam_format_struct, ptr %retval.0.i, i32 0, i32 3
  %10 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mbus_code, align 4
  %mbus_code8 = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 41
  %12 = ptrtoint ptr %mbus_code8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %mbus_code8, align 4
  %buffer_mode = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %buffer_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buffer_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp9 = icmp eq i32 %14, 0
  br i1 %cmp9, label %if.then10, label %if.end6.if.end15_crit_edge

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then10:                                        ; preds = %if.end6
  %nbufs.i = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 28
  %15 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nbufs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 0
  br i1 %cmp.not.i, label %if.then10.mcam_check_dma_buffers.exit_crit_edge, label %land.lhs.true.i

if.then10.mcam_check_dma_buffers.exit_crit_edge:  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_check_dma_buffers.exit

land.lhs.true.i:                                  ; preds = %if.then10
  %dma_buf_size.i = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 31
  %17 = ptrtoint ptr %dma_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_buf_size.i, align 4
  %sizeimage.i = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 40, i32 5
  %19 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sizeimage.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp1.i = icmp ult i32 %18, %20
  br i1 %cmp1.i, label %for.body.lr.ph.i.i, label %land.lhs.true.i.if.end15_crit_edge

land.lhs.true.i.if.end15_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

for.body.lr.ph.i.i:                               ; preds = %land.lhs.true.i
  %dev.i.i = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.016.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %21 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i.i, align 4
  %23 = ptrtoint ptr %dma_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_buf_size.i, align 4
  %arrayidx.i.i = getelementptr %struct.mcam_camera, ptr %1, i32 0, i32 32, i32 %i.016.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx1.i.i = getelementptr %struct.mcam_camera, ptr %1, i32 0, i32 33, i32 %i.016.i.i
  %27 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx1.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %22, i32 noundef %24, ptr noundef %26, i32 noundef %28, i32 noundef 0) #9
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw i32 %i.016.i.i, 1
  %30 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nbufs.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %31
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %mcam_free_dma_bufs.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

mcam_free_dma_bufs.exit.i:                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %nbufs.i, align 4
  br label %mcam_check_dma_buffers.exit

mcam_check_dma_buffers.exit:                      ; preds = %mcam_free_dma_bufs.exit.i, %if.then10.mcam_check_dma_buffers.exit_crit_edge
  %call.i30 = tail call fastcc i32 @mcam_alloc_dma_bufs(ptr noundef %1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool12.not = icmp eq i32 %call.i30, 0
  br i1 %tobool12.not, label %mcam_check_dma_buffers.exit.if.end15_crit_edge, label %mcam_check_dma_buffers.exit.cleanup_crit_edge

mcam_check_dma_buffers.exit.cleanup_crit_edge:    ; preds = %mcam_check_dma_buffers.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mcam_check_dma_buffers.exit.if.end15_crit_edge:   ; preds = %mcam_check_dma_buffers.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end15:                                         ; preds = %mcam_check_dma_buffers.exit.if.end15_crit_edge, %land.lhs.true.i.if.end15_crit_edge, %if.end6.if.end15_crit_edge
  %flags1.i = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags1.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %mcam_check_dma_buffers.exit.cleanup_crit_edge, %mcam_find_format.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %entry.cleanup_crit_edge ], [ %call4, %mcam_find_format.exit.cleanup_crit_edge ], [ %call.i30, %mcam_check_dma_buffers.exit.cleanup_crit_edge ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcam_vidioc_try_fmt_vid_cap(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  %pad_cfg = alloca %struct.v4l2_subdev_pad_config, align 4
  %pad_state = alloca %struct.v4l2_subdev_state, align 4
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %pad_cfg) #9
  %2 = call ptr @memset(ptr %pad_cfg, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pad_state) #9
  %3 = ptrtoint ptr %pad_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pad_cfg, ptr %pad_state, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #9
  %4 = call ptr @memset(ptr %format, i32 0, i32 88)
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pixelformat, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %6, label %entry.mcam_find_format.exit_crit_edge [
    i32 1448695129, label %entry.if.then.i_crit_edge
    i32 1431918169, label %if.then.i.fold.split
    i32 842093913, label %if.then.i.fold.split72
    i32 842094169, label %if.then.i.fold.split73
    i32 842093144, label %if.then.i.fold.split74
    i32 1346520914, label %if.then.i.fold.split75
    i32 825770306, label %if.then.i.fold.split76
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

entry.mcam_find_format.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_find_format.exit

if.then.i.fold.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i.fold.split72:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i.fold.split73:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i.fold.split74:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i.fold.split75:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i.fold.split76:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.fold.split76, %if.then.i.fold.split75, %if.then.i.fold.split74, %if.then.i.fold.split73, %if.then.i.fold.split72, %if.then.i.fold.split, %entry.if.then.i_crit_edge
  %i.07.lcssa.i = phi i32 [ 0, %entry.if.then.i_crit_edge ], [ 1, %if.then.i.fold.split ], [ 2, %if.then.i.fold.split72 ], [ 3, %if.then.i.fold.split73 ], [ 4, %if.then.i.fold.split74 ], [ 5, %if.then.i.fold.split75 ], [ 6, %if.then.i.fold.split76 ]
  %add.ptr.i = getelementptr %struct.mcam_format_struct, ptr @mcam_formats, i32 %i.07.lcssa.i
  br label %mcam_find_format.exit

mcam_find_format.exit:                            ; preds = %if.then.i, %entry.mcam_find_format.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ @mcam_formats, %entry.mcam_find_format.exit_crit_edge ]
  %8 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %retval.0.i, align 4
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pixelformat, align 4
  %format5 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %mbus_code = getelementptr inbounds %struct.mcam_format_struct, ptr %retval.0.i, i32 0, i32 3
  %11 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mbus_code, align 4
  %13 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fmt1, align 4
  %15 = ptrtoint ptr %format5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %format5, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %height2.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %field.i, align 4
  %field3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %field3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %22 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %colorspace4.i, align 4
  %25 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %conv.i = trunc i32 %27 to i16
  %28 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i, ptr %28, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 1
  %30 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %quantization.i, align 4
  %conv5.i = trunc i32 %31 to i16
  %quantization6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %32 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv5.i, ptr %quantization6.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %33 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %xfer_func.i, align 4
  %conv7.i = trunc i32 %34 to i16
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %35 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv7.i, ptr %xfer_func8.i, align 4
  %code9.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %36 = ptrtoint ptr %code9.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %12, ptr %code9.i, align 4
  %sensor = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 25
  %37 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sensor, align 8
  %tobool.not = icmp eq ptr %38, null
  br i1 %tobool.not, label %mcam_find_format.exit.if.end25_crit_edge, label %if.else

mcam_find_format.exit.if.end25_crit_edge:         ; preds = %mcam_find_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.else:                                          ; preds = %mcam_find_format.exit
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pad, align 4
  %tobool6.not = icmp eq ptr %42, null
  br i1 %tobool6.not, label %if.else.if.end25_crit_edge, label %land.lhs.true

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true:                                    ; preds = %if.else
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_fmt, align 4
  %tobool9.not = icmp eq ptr %44, null
  br i1 %tobool9.not, label %land.lhs.true.if.end25_crit_edge, label %if.else11

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.else11:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool12.not = icmp eq ptr %45, null
  br i1 %tobool12.not, label %if.else11.if.else19_crit_edge, label %land.lhs.true13

if.else11.if.else19_crit_edge:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else19

land.lhs.true13:                                  ; preds = %if.else11
  %set_fmt14 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %set_fmt14 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %set_fmt14, align 4
  %tobool15.not = icmp eq ptr %47, null
  br i1 %tobool15.not, label %land.lhs.true13.if.else19_crit_edge, label %land.lhs.true13.if.end25.sink.split_crit_edge

land.lhs.true13.if.end25.sink.split_crit_edge:    ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.sink.split

land.lhs.true13.if.else19_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else19

if.else19:                                        ; preds = %land.lhs.true13.if.else19_crit_edge, %if.else11.if.else19_crit_edge
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %if.else19, %land.lhs.true13.if.end25.sink.split_crit_edge
  %.sink = phi ptr [ %44, %if.else19 ], [ %47, %land.lhs.true13.if.end25.sink.split_crit_edge ]
  %call23 = call i32 %.sink(ptr noundef nonnull %38, ptr noundef nonnull %pad_state, ptr noundef nonnull %format) #9
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %land.lhs.true.if.end25_crit_edge, %if.else.if.end25_crit_edge, %mcam_find_format.exit.if.end25_crit_edge
  %__result.0 = phi i32 [ -19, %mcam_find_format.exit.if.end25_crit_edge ], [ -515, %land.lhs.true.if.end25_crit_edge ], [ -515, %if.else.if.end25_crit_edge ], [ %call23, %if.end25.sink.split ]
  %48 = ptrtoint ptr %format5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %format5, align 4
  %50 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %fmt1, align 4
  %51 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %height2.i, align 4
  %53 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %height.i, align 4
  %54 = ptrtoint ptr %field3.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %field3.i, align 4
  %56 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %field.i, align 4
  %57 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %colorspace4.i, align 4
  %59 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %colorspace.i, align 4
  %60 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %28, align 4
  %conv.i65 = zext i16 %61 to i32
  %62 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv.i65, ptr %25, align 4
  %63 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %quantization6.i, align 2
  %conv5.i67 = zext i16 %64 to i32
  %65 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv5.i67, ptr %quantization.i, align 4
  %66 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %xfer_func8.i, align 4
  %conv7.i70 = zext i16 %67 to i32
  %68 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv7.i70, ptr %xfer_func.i, align 4
  %bpp = getelementptr inbounds %struct.mcam_format_struct, ptr %retval.0.i, i32 0, i32 1
  %69 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bpp, align 4
  %mul = mul i32 %70, %49
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %71 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %mul, ptr %bytesperline, align 4
  %72 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %retval.0.i, align 4
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %73, label %sw.default [
    i32 842093913, label %if.end25.sw.bb_crit_edge
    i32 842094169, label %if.end25.sw.bb_crit_edge77
  ]

if.end25.sw.bb_crit_edge77:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end25.sw.bb_crit_edge:                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %if.end25.sw.bb_crit_edge, %if.end25.sw.bb_crit_edge77
  %75 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %height.i, align 4
  %mul29 = mul i32 %mul, 3
  %mul30 = mul i32 %mul29, %76
  %div58 = lshr i32 %mul30, 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %height.i, align 4
  %mul33 = mul i32 %78, %mul
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %mul33.sink = phi i32 [ %mul33, %sw.default ], [ %div58, %sw.bb ]
  %sizeimage34 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %79 = ptrtoint ptr %sizeimage34 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %mul33.sink, ptr %sizeimage34, align 4
  %80 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 8, ptr %colorspace.i, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pad_state) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %pad_cfg) #9
  ret i32 %__result.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcam_vidioc_enum_input(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %priv, ptr noundef %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %type = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 4
  %name = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.35, i32 noundef 32) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mcam_vidioc_g_input(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mcam_vidioc_s_input(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %priv, i32 noundef %i) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %cmp.not = icmp eq i32 %i, 0
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcam_vidioc_g_parm(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr noundef %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %filp) #9
  %sensor = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensor, align 8
  %call2 = tail call i32 @v4l2_g_parm_cap(ptr noundef %call1, ptr noundef %3, ptr noundef %a) #9
  %4 = load i32, ptr @n_dma_bufs, align 4
  %readbuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %readbuffers to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %readbuffers, align 4
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcam_vidioc_s_parm(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr noundef %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %filp) #9
  %sensor = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensor, align 8
  %call2 = tail call i32 @v4l2_s_parm_cap(ptr noundef %call1, ptr noundef %3, ptr noundef %a) #9
  %4 = load i32, ptr @n_dma_bufs, align 4
  %readbuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %readbuffers to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %readbuffers, align 4
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcam_vidioc_g_register(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %2 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %reg1, align 1
  %regs_size = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regs_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %regs_size, align 4
  %sub = add i32 %5, -4
  %conv = zext i32 %sub to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv)
  %cmp = icmp ugt i64 %3, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv4 = trunc i64 %3 to i32
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !196
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %conv6 = zext i32 %9 to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %10 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %conv6, ptr %val, align 1
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %11 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 4, ptr %size, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcam_vidioc_s_register(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %2 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %reg1, align 1
  %regs_size = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regs_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %regs_size, align 4
  %sub = add i32 %5, -4
  %conv = zext i32 %sub to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv)
  %cmp = icmp ugt i64 %3, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv4 = trunc i64 %3 to i32
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %6 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %val, align 1
  %conv5 = trunc i64 %7 to i32
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 %conv4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv5) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #9, !srcloc !195
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcam_vidioc_enum_framesizes(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %sizes) #0 align 64 {
entry:
  %fse = alloca %struct.v4l2_subdev_frame_size_enum, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fse) #9
  %2 = getelementptr inbounds i8, ptr %fse, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 60)
  %4 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sizes, align 4
  %6 = ptrtoint ptr %fse to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fse, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 7
  %7 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %which, align 4
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %sizes, i32 0, i32 1
  %8 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixel_format, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %9, label %entry.mcam_find_format.exit_crit_edge [
    i32 1448695129, label %entry.if.then.i_crit_edge
    i32 1431918169, label %if.then.i.fold.split
    i32 842093913, label %if.then.i.fold.split72
    i32 842094169, label %if.then.i.fold.split73
    i32 842093144, label %if.then.i.fold.split74
    i32 1346520914, label %if.then.i.fold.split75
    i32 825770306, label %if.then.i.fold.split76
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

entry.mcam_find_format.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_find_format.exit

if.then.i.fold.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i.fold.split72:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i.fold.split73:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i.fold.split74:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i.fold.split75:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i.fold.split76:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.fold.split76, %if.then.i.fold.split75, %if.then.i.fold.split74, %if.then.i.fold.split73, %if.then.i.fold.split72, %if.then.i.fold.split, %entry.if.then.i_crit_edge
  %i.07.lcssa.i = phi i32 [ 0, %entry.if.then.i_crit_edge ], [ 1, %if.then.i.fold.split ], [ 2, %if.then.i.fold.split72 ], [ 3, %if.then.i.fold.split73 ], [ 4, %if.then.i.fold.split74 ], [ 5, %if.then.i.fold.split75 ], [ 6, %if.then.i.fold.split76 ]
  %add.ptr.i = getelementptr %struct.mcam_format_struct, ptr @mcam_formats, i32 %i.07.lcssa.i
  br label %mcam_find_format.exit

mcam_find_format.exit:                            ; preds = %if.then.i, %entry.mcam_find_format.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ @mcam_formats, %entry.mcam_find_format.exit_crit_edge ]
  %11 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %retval.0.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %9)
  %cmp.not = icmp eq i32 %12, %9
  br i1 %cmp.not, label %if.end, label %mcam_find_format.exit.cleanup_crit_edge

mcam_find_format.exit.cleanup_crit_edge:          ; preds = %mcam_find_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %mcam_find_format.exit
  %mbus_code = getelementptr inbounds %struct.mcam_format_struct, ptr %retval.0.i, i32 0, i32 3
  %13 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mbus_code, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %15 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %code, align 4
  %sensor = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 25
  %16 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sensor, align 8
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pad, align 4
  %tobool5.not = icmp eq ptr %21, null
  br i1 %tobool5.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %enum_frame_size = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %enum_frame_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %enum_frame_size, align 4
  %tobool8.not = icmp eq ptr %23, null
  br i1 %tobool8.not, label %land.lhs.true.cleanup_crit_edge, label %if.else10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else10:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool11.not = icmp eq ptr %24, null
  br i1 %tobool11.not, label %if.else10.if.else18_crit_edge, label %land.lhs.true12

if.else10.if.else18_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else18

land.lhs.true12:                                  ; preds = %if.else10
  %enum_frame_size13 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %enum_frame_size13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %enum_frame_size13, align 4
  %tobool14.not = icmp eq ptr %26, null
  br i1 %tobool14.not, label %land.lhs.true12.if.else18_crit_edge, label %land.lhs.true12.if.end25_crit_edge

land.lhs.true12.if.end25_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true12.if.else18_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else18

if.else18:                                        ; preds = %land.lhs.true12.if.else18_crit_edge, %if.else10.if.else18_crit_edge
  br label %if.end25

if.end25:                                         ; preds = %if.else18, %land.lhs.true12.if.end25_crit_edge
  %.sink = phi ptr [ %23, %if.else18 ], [ %26, %land.lhs.true12.if.end25_crit_edge ]
  %call22 = call i32 %.sink(ptr noundef nonnull %17, ptr noundef null, ptr noundef nonnull %fse) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool26.not = icmp eq i32 %call22, 0
  br i1 %tobool26.not, label %if.end28, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end25
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %27 = ptrtoint ptr %min_width to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %29 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp29 = icmp eq i32 %28, %30
  br i1 %cmp29, label %land.lhs.true30, label %if.end28.if.end35_crit_edge

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true30:                                  ; preds = %if.end28
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %31 = ptrtoint ptr %min_height to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %33 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp31 = icmp eq i32 %32, %34
  br i1 %cmp31, label %if.then32, label %land.lhs.true30.if.end35_crit_edge

land.lhs.true30.if.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then32:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %sizes, i32 0, i32 2
  %35 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %type, align 4
  %36 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %sizes, i32 0, i32 3
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %28, ptr %36, align 4
  %height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %sizes, i32 0, i32 3, i32 0, i32 1
  %38 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %32, ptr %height, align 4
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true30.if.end35_crit_edge, %if.end28.if.end35_crit_edge
  %type36 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %sizes, i32 0, i32 2
  %39 = ptrtoint ptr %type36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %type36, align 4
  %40 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %sizes, i32 0, i32 3
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %28, ptr %40, align 4
  %max_width40 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %sizes, i32 0, i32 3, i32 0, i32 1
  %42 = ptrtoint ptr %max_width40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %30, ptr %max_width40, align 4
  %min_height41 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %43 = ptrtoint ptr %min_height41 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %min_height41, align 4
  %min_height42 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %sizes, i32 0, i32 3, i32 0, i32 3
  %45 = ptrtoint ptr %min_height42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %min_height42, align 4
  %max_height43 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %46 = ptrtoint ptr %max_height43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_height43, align 4
  %max_height44 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %sizes, i32 0, i32 3, i32 0, i32 4
  %48 = ptrtoint ptr %max_height44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %max_height44, align 4
  %step_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %sizes, i32 0, i32 3, i32 0, i32 2
  %49 = ptrtoint ptr %step_width to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %step_width, align 4
  %step_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %sizes, i32 0, i32 3, i32 0, i32 5
  %50 = ptrtoint ptr %step_height to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %step_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then32, %if.end25.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mcam_find_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then32 ], [ 0, %if.end35 ], [ -22, %mcam_find_format.exit.cleanup_crit_edge ], [ %call22, %if.end25.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fse) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcam_vidioc_enum_frameintervals(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %interval) #0 align 64 {
entry:
  %fie = alloca %struct.v4l2_subdev_frame_interval_enum, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fie) #9
  %2 = getelementptr inbounds i8, ptr %fie, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 60)
  %4 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interval, align 4
  %6 = ptrtoint ptr %fie to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fie, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 3
  %width2 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %interval, i32 0, i32 2
  %7 = ptrtoint ptr %width2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %width2, align 4
  %9 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 4
  %height3 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %interval, i32 0, i32 3
  %10 = ptrtoint ptr %height3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height3, align 4
  %12 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %height, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 6
  %13 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %which, align 4
  %pixel_format = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %interval, i32 0, i32 1
  %14 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixel_format, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %15, label %entry.mcam_find_format.exit_crit_edge [
    i32 1448695129, label %entry.if.then.i_crit_edge
    i32 1431918169, label %if.then.i.fold.split
    i32 842093913, label %if.then.i.fold.split54
    i32 842094169, label %if.then.i.fold.split55
    i32 842093144, label %if.then.i.fold.split56
    i32 1346520914, label %if.then.i.fold.split57
    i32 825770306, label %if.then.i.fold.split58
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

entry.mcam_find_format.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_find_format.exit

if.then.i.fold.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i.fold.split54:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i.fold.split55:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i.fold.split56:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i.fold.split57:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i.fold.split58:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.fold.split58, %if.then.i.fold.split57, %if.then.i.fold.split56, %if.then.i.fold.split55, %if.then.i.fold.split54, %if.then.i.fold.split, %entry.if.then.i_crit_edge
  %i.07.lcssa.i = phi i32 [ 0, %entry.if.then.i_crit_edge ], [ 1, %if.then.i.fold.split ], [ 2, %if.then.i.fold.split54 ], [ 3, %if.then.i.fold.split55 ], [ 4, %if.then.i.fold.split56 ], [ 5, %if.then.i.fold.split57 ], [ 6, %if.then.i.fold.split58 ]
  %add.ptr.i = getelementptr %struct.mcam_format_struct, ptr @mcam_formats, i32 %i.07.lcssa.i
  br label %mcam_find_format.exit

mcam_find_format.exit:                            ; preds = %if.then.i, %entry.mcam_find_format.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ @mcam_formats, %entry.mcam_find_format.exit_crit_edge ]
  %17 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %retval.0.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %15)
  %cmp.not = icmp eq i32 %18, %15
  br i1 %cmp.not, label %if.end, label %mcam_find_format.exit.cleanup_crit_edge

mcam_find_format.exit.cleanup_crit_edge:          ; preds = %mcam_find_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %mcam_find_format.exit
  %mbus_code = getelementptr inbounds %struct.mcam_format_struct, ptr %retval.0.i, i32 0, i32 3
  %19 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mbus_code, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 2
  %21 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %code, align 4
  %sensor = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 25
  %22 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sensor, align 8
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pad, align 4
  %tobool8.not = icmp eq ptr %27, null
  br i1 %tobool8.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %enum_frame_interval = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %enum_frame_interval to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %enum_frame_interval, align 4
  %tobool11.not = icmp eq ptr %29, null
  br i1 %tobool11.not, label %land.lhs.true.cleanup_crit_edge, label %if.else13

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else13:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool14.not = icmp eq ptr %30, null
  br i1 %tobool14.not, label %if.else13.if.else21_crit_edge, label %land.lhs.true15

if.else13.if.else21_crit_edge:                    ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else21

land.lhs.true15:                                  ; preds = %if.else13
  %enum_frame_interval16 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %enum_frame_interval16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %enum_frame_interval16, align 4
  %tobool17.not = icmp eq ptr %32, null
  br i1 %tobool17.not, label %land.lhs.true15.if.else21_crit_edge, label %land.lhs.true15.if.end28_crit_edge

land.lhs.true15.if.end28_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.lhs.true15.if.else21_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else21

if.else21:                                        ; preds = %land.lhs.true15.if.else21_crit_edge, %if.else13.if.else21_crit_edge
  br label %if.end28

if.end28:                                         ; preds = %if.else21, %land.lhs.true15.if.end28_crit_edge
  %.sink = phi ptr [ %29, %if.else21 ], [ %32, %land.lhs.true15.if.end28_crit_edge ]
  %call25 = call i32 %.sink(ptr noundef nonnull %23, ptr noundef null, ptr noundef nonnull %fie) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool29.not = icmp eq i32 %call25, 0
  br i1 %tobool29.not, label %if.end31, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %type = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %interval, i32 0, i32 4
  %33 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %type, align 4
  %34 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %interval, i32 0, i32 5
  %interval32 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5
  %35 = ptrtoint ptr %interval32 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %36 = load i64, ptr %interval32, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %36, ptr %34, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end28.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mcam_find_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31 ], [ -22, %mcam_find_format.exit.cleanup_crit_edge ], [ %call25, %if.end28.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fie) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_g_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_s_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mclk_prepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr i8, ptr %hw, i32 -12
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 8
  %call = tail call i32 @clk_prepare(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mclk_unprepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr i8, ptr %hw, i32 -12
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 8
  tail call void @clk_unprepare(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mclk_enable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -100
  %bus_type = getelementptr i8, ptr %hw, i32 -28
  %0 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bus_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mclk_src1 = getelementptr i8, ptr %hw, i32 -36
  %2 = ptrtoint ptr %mclk_src1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mclk_src1, align 8
  %mclk_div2 = getelementptr i8, ptr %hw, i32 -32
  %4 = ptrtoint ptr %mclk_div2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mclk_div2, align 4
  %phi.bo = shl i32 %3, 29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mclk_src.0 = phi i32 [ %phi.bo, %if.then ], [ 1610612736, %entry.if.end_crit_edge ]
  %mclk_div.0 = phi i32 [ %5, %if.then ], [ 2, %entry.if.end_crit_edge ]
  %dev = getelementptr i8, ptr %hw, i32 -48
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end5

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !202
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !203
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %clk = getelementptr i8, ptr %hw, i32 -12
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 8
  %call6 = tail call i32 @clk_enable(ptr noundef %10) #9
  %or = or i32 %mclk_div.0, %mclk_src.0
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i = getelementptr i8, ptr %12, i32 136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #9, !srcloc !195
  %dev_lock.i = getelementptr i8, ptr %hw, i32 -92
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #9
  %plat_power_up.i = getelementptr i8, ptr %hw, i32 16
  %14 = ptrtoint ptr %plat_power_up.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %plat_power_up.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end5.if.end10.i_crit_edge, label %if.then.i18

if.end5.if.end10.i_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then.i18:                                      ; preds = %if.end5
  %call6.i = tail call i32 %15(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then.i18.if.end10.i_crit_edge, label %if.then.i18.mcam_ctlr_power_up.exit_crit_edge

if.then.i18.mcam_ctlr_power_up.exit_crit_edge:    ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_ctlr_power_up.exit

if.then.i18.if.end10.i_crit_edge:                 ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i18.if.end10.i_crit_edge, %if.end5.if.end10.i_crit_edge
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %17, i32 64
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %19 = and i32 %18, -17
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i6.i.i.i = getelementptr i8, ptr %21, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i.i, i32 %19) #9, !srcloc !195
  br label %mcam_ctlr_power_up.exit

mcam_ctlr_power_up.exit:                          ; preds = %if.end10.i, %if.then.i18.mcam_ctlr_power_up.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i) #9
  br label %cleanup

cleanup:                                          ; preds = %mcam_ctlr_power_up.exit, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mcam_ctlr_power_up.exit ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mclk_disable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -100
  %dev_lock.i = getelementptr i8, ptr %hw, i32 -92
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #9
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %3 = or i32 %2, 16
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i6.i.i.i = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i.i, i32 %3) #9, !srcloc !195
  %plat_power_down.i = getelementptr i8, ptr %hw, i32 20
  %6 = ptrtoint ptr %plat_power_down.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plat_power_down.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.mcam_ctlr_power_down.exit_crit_edge, label %if.then.i

entry.mcam_ctlr_power_down.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcam_ctlr_power_down.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %7(ptr noundef %add.ptr) #9
  br label %mcam_ctlr_power_down.exit

mcam_ctlr_power_down.exit:                        ; preds = %if.then.i, %entry.mcam_ctlr_power_down.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i) #9
  %clk = getelementptr i8, ptr %hw, i32 -12
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %9) #9
  %dev = getelementptr i8, ptr %hw, i32 -48
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 5) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mclk_recalc_rate(ptr nocapture noundef readnone %hw, i32 noundef %parent_rate) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 48000000
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcam_enable_mipi(ptr noundef %mcam) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %calc_dphy = getelementptr inbounds %struct.mcam_camera, ptr %mcam, i32 0, i32 17
  %0 = ptrtoint ptr %calc_dphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %calc_dphy, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %1(ptr noundef %mcam) #9
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcam_enable_mipi.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcam_enable_mipi, %if.then5)) #9
          to label %do.end [label %if.then5], !srcloc !199

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mcam_camera, ptr %mcam, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dphy = getelementptr inbounds %struct.mcam_camera, ptr %mcam, i32 0, i32 9
  %4 = ptrtoint ptr %dphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dphy, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %arrayidx7 = getelementptr i32, ptr %5, i32 1
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  %arrayidx9 = getelementptr i32, ptr %5, i32 2
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcam_enable_mipi.__UNIQUE_ID_ddebug309, ptr noundef %3, ptr noundef nonnull @.str.54, i32 noundef %7, i32 noundef %9, i32 noundef %11) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %dphy11 = getelementptr inbounds %struct.mcam_camera, ptr %mcam, i32 0, i32 9
  %12 = ptrtoint ptr %dphy11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dphy11, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = ptrtoint ptr %mcam to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mcam, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #9, !srcloc !195
  %19 = ptrtoint ptr %dphy11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dphy11, align 4
  %arrayidx14 = getelementptr i32, ptr %20, i32 1
  %21 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx14, align 4
  %23 = ptrtoint ptr %mcam to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mcam, align 8
  %add.ptr.i51 = getelementptr i8, ptr %24, i32 308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %25 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %25) #9, !srcloc !195
  %26 = ptrtoint ptr %dphy11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dphy11, align 4
  %arrayidx16 = getelementptr i32, ptr %27, i32 2
  %28 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx16, align 4
  %30 = ptrtoint ptr %mcam to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mcam, align 8
  %add.ptr.i52 = getelementptr i8, ptr %31, i32 312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %32 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %32) #9, !srcloc !195
  %mipi_enabled = getelementptr inbounds %struct.mcam_camera, ptr %mcam, i32 0, i32 10
  %33 = ptrtoint ptr %mipi_enabled to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %mipi_enabled, align 8, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool17.not = icmp eq i8 %34, 0
  br i1 %tobool17.not, label %if.then18, label %do.end.if.end29_crit_edge

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then18:                                        ; preds = %do.end
  %lane = getelementptr inbounds %struct.mcam_camera, ptr %mcam, i32 0, i32 11
  %35 = ptrtoint ptr %lane to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lane, align 4
  %37 = add i32 %36, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %37)
  %38 = icmp ult i32 %37, -4
  br i1 %38, label %do.end23, label %if.then18.if.end26_crit_edge

if.then18.if.end26_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

do.end23:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %dev24 = getelementptr inbounds %struct.mcam_camera, ptr %mcam, i32 0, i32 3
  %39 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.55) #12
  %41 = ptrtoint ptr %lane to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %lane, align 4
  br label %if.end26

if.end26:                                         ; preds = %do.end23, %if.then18.if.end26_crit_edge
  %42 = ptrtoint ptr %lane to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lane, align 4
  %sub = shl i32 %43, 1
  %or = add i32 %sub, -1
  %44 = ptrtoint ptr %mcam to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mcam, align 8
  %add.ptr.i53 = getelementptr i8, ptr %45, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %46 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %46) #9, !srcloc !195
  %47 = ptrtoint ptr %mipi_enabled to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %mipi_enabled, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.end26, %do.end.if.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_s_ctrl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcam_ctlr_image(ptr noundef readonly %cam) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pix_format = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcam_ctlr_image.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcam_ctlr_image, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !199

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %bytesperline = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 40, i32 4
  %2 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytesperline, align 4
  %sizeimage = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 40, i32 5
  %4 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sizeimage, align 4
  %div = udiv i32 %5, %3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcam_ctlr_image.__UNIQUE_ID_ddebug310, ptr noundef %1, ptr noundef nonnull @.str.51, i32 noundef %3, i32 noundef %div) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %height = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 40, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %shl = shl i32 %7, 16
  %and = and i32 %shl, 536805376
  %8 = ptrtoint ptr %pix_format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pix_format, align 4
  %mul = shl i32 %9, 1
  %and4 = and i32 %mul, 16382
  %pixelformat = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 40, i32 2
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixelformat, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %11, label %sw.default [
    i32 1448695129, label %do.end.sw.epilog_crit_edge
    i32 1431918169, label %do.end.sw.epilog_crit_edge81
    i32 842093913, label %do.end.sw.bb7_crit_edge
    i32 842094169, label %do.end.sw.bb7_crit_edge82
  ]

do.end.sw.bb7_crit_edge82:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

do.end.sw.bb7_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

do.end.sw.epilog_crit_edge81:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end.sw.bb7_crit_edge, %do.end.sw.bb7_crit_edge82
  %13 = shl i32 %9, 15
  %phi.bo = and i32 %13, -65536
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %bytesperline11 = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 40, i32 4
  %14 = ptrtoint ptr %bytesperline11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bytesperline11, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge81
  %widthuv.0 = phi i32 [ 0, %sw.default ], [ %phi.bo, %sw.bb7 ], [ 0, %do.end.sw.epilog_crit_edge ], [ 0, %do.end.sw.epilog_crit_edge81 ]
  %widthy.0 = phi i32 [ %15, %sw.default ], [ %9, %sw.bb7 ], [ %mul, %do.end.sw.epilog_crit_edge ], [ %mul, %do.end.sw.epilog_crit_edge81 ]
  %or = or i32 %widthy.0, %widthuv.0
  %16 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cam, align 8
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 36
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %19 = and i32 %18, 62915520
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %and1.i = and i32 %or, 1073496060
  %or.i = or i32 %20, %and1.i
  %21 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cam, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %22, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %23) #9, !srcloc !195
  %or13 = or i32 %and4, %and
  %24 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cam, align 8
  %add.ptr.i = getelementptr i8, ptr %25, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %26 = tail call i32 @llvm.bswap.i32(i32 %or13) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %26) #9, !srcloc !195
  %27 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cam, align 8
  %add.ptr.i52 = getelementptr i8, ptr %28, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 0) #9, !srcloc !195
  %29 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pixelformat, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %30, label %do.end24 [
    i32 842093913, label %sw.epilog.sw.bb15_crit_edge
    i32 842094169, label %sw.epilog.sw.bb15_crit_edge83
    i32 1448695129, label %sw.bb16
    i32 1431918169, label %sw.bb17
    i32 842093144, label %sw.bb18
    i32 1346520914, label %sw.bb19
    i32 825770306, label %sw.bb20
  ]

sw.epilog.sw.bb15_crit_edge83:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

sw.epilog.sw.bb15_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

sw.bb15:                                          ; preds = %sw.epilog.sw.bb15_crit_edge, %sw.epilog.sw.bb15_crit_edge83
  %32 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cam, align 8
  %add.ptr.i.i53 = getelementptr i8, ptr %33, i32 60
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i53) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %35 = and i32 %34, 50331903
  %36 = or i32 %35, 10486272
  %37 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cam, align 8
  %add.ptr.i6.i56 = getelementptr i8, ptr %38, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i56, i32 %36) #9, !srcloc !195
  br label %sw.epilog27

sw.bb16:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cam, align 8
  %add.ptr.i.i57 = getelementptr i8, ptr %40, i32 60
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %42 = and i32 %41, 50331903
  %43 = or i32 %42, 8388608
  %44 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cam, align 8
  %add.ptr.i6.i60 = getelementptr i8, ptr %45, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i60, i32 %43) #9, !srcloc !195
  br label %sw.epilog27

sw.bb17:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cam, align 8
  %add.ptr.i.i61 = getelementptr i8, ptr %47, i32 60
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i61) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %49 = and i32 %48, 50331903
  %50 = or i32 %49, 8389120
  %51 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cam, align 8
  %add.ptr.i6.i64 = getelementptr i8, ptr %52, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i64, i32 %50) #9, !srcloc !195
  br label %sw.epilog27

sw.bb18:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cam, align 8
  %add.ptr.i.i65 = getelementptr i8, ptr %54, i32 60
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i65) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %56 = and i32 %55, 50331903
  %57 = or i32 %56, -1408761856
  %58 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cam, align 8
  %add.ptr.i6.i68 = getelementptr i8, ptr %59, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i68, i32 %57) #9, !srcloc !195
  br label %sw.epilog27

sw.bb19:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cam, align 8
  %add.ptr.i.i69 = getelementptr i8, ptr %61, i32 60
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i69) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %63 = and i32 %62, 50331903
  %64 = or i32 %63, -1409286144
  %65 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cam, align 8
  %add.ptr.i6.i72 = getelementptr i8, ptr %66, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i72, i32 %64) #9, !srcloc !195
  br label %sw.epilog27

sw.bb20:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cam, align 8
  %add.ptr.i.i73 = getelementptr i8, ptr %68, i32 60
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i73) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %70 = and i32 %69, 50331903
  %71 = or i32 %70, -1543503872
  %72 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cam, align 8
  %add.ptr.i6.i76 = getelementptr i8, ptr %73, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i76, i32 %71) #9, !srcloc !195
  br label %sw.epilog27

do.end24:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %dev25 = getelementptr inbounds %struct.mcam_camera, ptr %cam, i32 0, i32 3
  %74 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.52, i32 noundef %30) #12
  br label %sw.epilog27

sw.epilog27:                                      ; preds = %do.end24, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15
  %76 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cam, align 8
  %add.ptr.i.i77 = getelementptr i8, ptr %77, i32 60
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i77) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %79 = and i32 %78, -193
  %80 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cam, align 8
  %add.ptr.i6.i79 = getelementptr i8, ptr %81, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i79, i32 %79) #9, !srcloc !195
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !44, !45, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !63, !64, !65, !66, !68, !70, !72, !74, !75, !77, !79, !81, !82, !83, !85, !86, !88, !89, !90, !92, !94, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !114, !115, !116, !118, !120, !121, !123, !125, !126, !127, !128, !130, !132, !134, !136, !138, !140, !141, !143, !144, !145, !146, !148, !149, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184}
!llvm.module.flags = !{!185, !186, !187, !188, !189, !190, !191, !192}
!llvm.ident = !{!193}

!0 = !{ptr @__param_alloc_bufs_at_read, !1, !"__param_alloc_bufs_at_read", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 53, i32 1}
!2 = !{ptr @__UNIQUE_ID_alloc_bufs_at_readtype299, !1, !"__UNIQUE_ID_alloc_bufs_at_readtype299", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alloc_bufs_at_read300, !4, !"__UNIQUE_ID_alloc_bufs_at_read300", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 54, i32 1}
!5 = !{ptr @__param_n_dma_bufs, !6, !"__param_n_dma_bufs", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 58, i32 1}
!7 = !{ptr @__UNIQUE_ID_n_dma_bufstype301, !6, !"__UNIQUE_ID_n_dma_bufstype301", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_n_dma_bufs302, !9, !"__UNIQUE_ID_n_dma_bufs302", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 59, i32 1}
!10 = !{ptr @__param_dma_buf_size, !11, !"__param_dma_buf_size", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 63, i32 1}
!12 = !{ptr @__UNIQUE_ID_dma_buf_sizetype303, !11, !"__UNIQUE_ID_dma_buf_sizetype303", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_dma_buf_size304, !14, !"__UNIQUE_ID_dma_buf_size304", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 64, i32 1}
!15 = !{ptr @__param_flip, !16, !"__param_flip", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 72, i32 1}
!17 = !{ptr @__UNIQUE_ID_fliptype305, !16, !"__UNIQUE_ID_fliptype305", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_flip306, !19, !"__UNIQUE_ID_flip306", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 73, i32 1}
!20 = !{ptr @__param_buffer_mode, !21, !"__param_buffer_mode", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 77, i32 1}
!22 = !{ptr @__UNIQUE_ID_buffer_modetype307, !21, !"__UNIQUE_ID_buffer_modetype307", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_buffer_mode308, !24, !"__UNIQUE_ID_buffer_mode308", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 78, i32 1}
!25 = !{ptr @__ksymtab_mccic_irq, !26, !"__ksymtab_mccic_irq", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1751, i32 1}
!27 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1855, i32 3}
!29 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mccic_register._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @mccic_register._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1860, i32 3}
!35 = !{ptr @mccic_register._entry.3, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mccic_register._entry_ptr.5, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @mccic_register.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1873, i32 2}
!39 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1882, i32 3}
!42 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mccic_register._entry.7, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @mccic_register._entry_ptr.11, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1892, i32 19}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1894, i32 45}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1902, i32 3}
!52 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @mccic_register._entry.14, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @mccic_register._entry_ptr.17, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1911, i32 4}
!57 = !{ptr @mccic_register._entry.18, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @mccic_register._entry_ptr.20, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @__ksymtab_mccic_register, !60, !"__ksymtab_mccic_register", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1922, i32 1}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1933, i32 3}
!63 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mccic_shutdown._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @mccic_shutdown._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @__ksymtab_mccic_shutdown, !67, !"__ksymtab_mccic_shutdown", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1943, i32 1}
!68 = !{ptr @__ksymtab_mccic_suspend, !69, !"__ksymtab_mccic_suspend", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1960, i32 1}
!70 = !{ptr @__ksymtab_mccic_resume, !71, !"__ksymtab_mccic_resume", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1991, i32 1}
!72 = !{ptr @__UNIQUE_ID_file314, !73, !"__UNIQUE_ID_file314", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1993, i32 1}
!74 = !{ptr @__UNIQUE_ID_license315, !73, !"__UNIQUE_ID_license315", i1 false, i1 false}
!75 = !{ptr @__UNIQUE_ID_author316, !76, !"__UNIQUE_ID_author316", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1994, i32 1}
!77 = !{ptr @alloc_bufs_at_read, !78, !"alloc_bufs_at_read", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 52, i32 13}
!79 = !{ptr @flip, !80, !"flip", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 71, i32 13}
!81 = !{ptr @__param_str_alloc_bufs_at_read, !1, !"__param_str_alloc_bufs_at_read", i1 false, i1 false}
!82 = !{ptr @__param_str_n_dma_bufs, !6, !"__param_str_n_dma_bufs", i1 false, i1 false}
!83 = !{ptr @n_dma_bufs, !84, !"n_dma_bufs", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 57, i32 12}
!85 = !{ptr @__param_str_dma_buf_size, !11, !"__param_str_dma_buf_size", i1 false, i1 false}
!86 = !{ptr @dma_buf_size, !87, !"dma_buf_size", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 62, i32 12}
!88 = !{ptr @__param_str_flip, !16, !"__param_str_flip", i1 false, i1 false}
!89 = !{ptr @__param_str_buffer_mode, !21, !"__param_str_buffer_mode", i1 false, i1 false}
!90 = !{ptr @buffer_mode, !91, !"buffer_mode", i1 false, i1 false}
!91 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 76, i32 12}
!92 = !{ptr @mcam_def_pix_format, !93, !"mcam_def_pix_format", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 166, i32 37}
!94 = !{ptr @mccic_notify_ops, !95, !"mccic_notify_ops", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1837, i32 52}
!96 = !{ptr @.str.23, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1766, i32 3}
!98 = !{ptr @.str.24, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @mccic_notify_bound._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @mccic_notify_bound._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.25, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1797, i32 2}
!103 = !{ptr @.str.26, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @mccic_notify_bound.__UNIQUE_ID_ddebug312, !102, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!105 = !{ptr @.str.27, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 987, i32 3}
!107 = !{ptr @.str.28, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @mcam_cam_init._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @mcam_cam_init._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @mcam_vb2_ops, !111, !"mcam_vb2_ops", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1201, i32 29}
!112 = !{ptr @.str.29, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1182, i32 2}
!114 = !{ptr @.str.30, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @mcam_vb_stop_streaming.__UNIQUE_ID_ddebug311, !113, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!116 = !{ptr @mcam_formats, !117, !"mcam_formats", i1 false, i1 false}
!117 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 106, i32 3}
!118 = distinct !{null, !119, !"__already_done", i1 false, i1 false}
!119 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!120 = !{ptr @.str.31, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @mcam_vb2_sg_ops, !122, !"mcam_vb2_sg_ops", i1 false, i1 false}
!122 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1262, i32 29}
!123 = !{ptr @.str.32, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1227, i32 3}
!125 = !{ptr @.str.33, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @mcam_vb_sg_buf_init._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @mcam_vb_sg_buf_init._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @mcam_v4l_template, !129, !"mcam_v4l_template", i1 false, i1 false}
!129 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1669, i32 34}
!130 = !{ptr @mcam_v4l_fops, !131, !"mcam_v4l_fops", i1 false, i1 false}
!131 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1654, i32 42}
!132 = !{ptr @mcam_v4l_ioctl_ops, !133, !"mcam_v4l_ioctl_ops", i1 false, i1 false}
!133 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1574, i32 36}
!134 = !{ptr @.str.34, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1330, i32 23}
!136 = !{ptr @.str.35, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1446, i32 23}
!138 = !{ptr @mccic_notify_complete._key, !139, !"_key", i1 false, i1 false}
!139 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1830, i32 8}
!140 = !{ptr @.str.36, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.37, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1810, i32 3}
!143 = !{ptr @.str.38, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @mccic_notify_unbind._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @mccic_notify_unbind._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.39, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 1816, i32 2}
!148 = !{ptr @mccic_notify_unbind.__UNIQUE_ID_ddebug313, !147, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!149 = !{ptr @mclk_ops, !150, !"mclk_ops", i1 false, i1 false}
!150 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 960, i32 29}
!151 = !{ptr @.str.40, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 381, i32 4}
!153 = !{ptr @.str.41, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @mcam_alloc_dma_bufs._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @mcam_alloc_dma_bufs._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.43, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 394, i32 3}
!158 = !{ptr @mcam_alloc_dma_bufs._entry.42, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @mcam_alloc_dma_bufs._entry_ptr.44, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.46, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 399, i32 4}
!162 = !{ptr @mcam_alloc_dma_bufs._entry.45, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @mcam_alloc_dma_bufs._entry_ptr.47, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.48, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 853, i32 3}
!166 = !{ptr @.str.49, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @mcam_ctlr_stop_dma._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @mcam_ctlr_stop_dma._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.50, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 726, i32 2}
!171 = !{ptr @.str.51, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @mcam_ctlr_image.__UNIQUE_ID_ddebug310, !170, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!173 = !{ptr @.str.52, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 783, i32 3}
!175 = !{ptr @mcam_ctlr_image._entry, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @mcam_ctlr_image._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.53, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 283, i32 2}
!179 = !{ptr @.str.54, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @mcam_enable_mipi.__UNIQUE_ID_ddebug309, !178, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!181 = !{ptr @.str.55, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/platform/marvell-ccic/mcam-core.c", i32 291, i32 4}
!183 = !{ptr @mcam_enable_mipi._entry, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @mcam_enable_mipi._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{i32 1, !"wchar_size", i32 2}
!186 = !{i32 1, !"min_enum_size", i32 4}
!187 = !{i32 8, !"branch-target-enforcement", i32 0}
!188 = !{i32 8, !"sign-return-address", i32 0}
!189 = !{i32 8, !"sign-return-address-all", i32 0}
!190 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!191 = !{i32 7, !"uwtable", i32 1}
!192 = !{i32 7, !"frame-pointer", i32 2}
!193 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!194 = !{i64 2154734417}
!195 = !{i64 7199785}
!196 = !{i64 7200203}
!197 = !{i64 2154733062}
!198 = !{i8 0, i8 2}
!199 = !{i64 2148741443, i64 2148741448, i64 2148741461, i64 2148741505, i64 2148741539, i64 2148741560}
!200 = !{!"branch_weights", i32 2000, i32 1}
!201 = !{i64 2148259047}
!202 = !{i64 743870, i64 743895, i64 743917, i64 743933, i64 743945, i64 743965, i64 743989, i64 744005, i64 744017}
!203 = !{i64 2148259235}
