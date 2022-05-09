; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ivtv/ivtv-irq.c_pt.bc'
source_filename = "../drivers/media/pci/ivtv/ivtv-irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_event_vsync = type { i8 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.ivtv = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i64, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.ivtv_options, %struct.v4l2_device, %struct.cx2341x_handler, %struct.anon.126, %struct.anon.127, %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i8, i8, %struct.spinlock, %struct.mutex, [9 x i32], [9 x %struct.ivtv_stream], %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.work_struct, i32, i32, %struct.kthread_worker, ptr, %struct.kthread_work, %struct.spinlock, i32, i32, i32, i32, i32, %struct.ivtv_user_dma, %struct.timer_list, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.ivtv_mailbox_data, %struct.ivtv_mailbox_data, [256 x %struct.ivtv_api_cache], %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, %struct.mutex, %struct.IR_i2c_init_data, i32, i32, i32, i32, [400 x %struct.v4l2_enc_idx_entry], i32, i32, i32, i8, i64, i64, [3 x i32], i32, i32, %struct.vbi_info, %struct.yuv_playback_info, i32, i32, i32, i32, i8, i32, %struct.v4l2_rect, %struct.v4l2_rect, ptr, ptr }
%struct.ivtv_options = type { [9 x i32], i32, i32, i32, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.118, %struct.anon.119, %struct.anon.120, %struct.anon.121, %struct.anon.122, %struct.anon.123, %struct.anon.124, %struct.anon.125 }
%struct.anon.118 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.119 = type { ptr, ptr }
%struct.anon.120 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.121 = type { ptr, ptr }
%struct.anon.122 = type { ptr, ptr, ptr }
%struct.anon.123 = type { ptr, ptr }
%struct.anon.124 = type { ptr, ptr }
%struct.anon.125 = type { ptr, ptr, ptr, ptr }
%struct.anon.126 = type { ptr, ptr }
%struct.anon.127 = type { ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.ivtv_stream = type { %struct.video_device, ptr, ptr, i32, i32, ptr, %struct.spinlock, i32, i32, i32, i32, i64, i32, i32, i64, i32, %struct.wait_queue_head, i32, i32, i32, i32, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, i16, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.85], %struct.media_entity_enum, i32 }
%struct.anon.85 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ivtv_queue = type { %struct.list_head, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.ivtv_user_dma = type { %struct.mutex, i32, [704 x ptr], [704 x ptr], [704 x %struct.ivtv_sg_element], i32, i32, [704 x %struct.scatterlist] }
%struct.ivtv_sg_element = type { i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ivtv_mailbox_data = type { ptr, i32, i8 }
%struct.ivtv_api_cache = type { i32, [16 x i32] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_enc_idx_entry = type { i64, i64, i32, i32, [2 x i32] }
%struct.vbi_info = type { i32, i8, i8, i32, i8, i8, [2 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_format, ptr, i32, i32, [256 x %struct.vbi_cc], i32, i8, i32, i8, %struct.vbi_vps, [36 x %struct.v4l2_sliced_vbi_data], [36 x %struct.v4l2_sliced_vbi_data], [32 x ptr], [32 x i32], %struct.ivtv_buffer, i32 }
%struct.v4l2_format = type { i32, %union.anon.94 }
%union.anon.94 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.96, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.96 = type { i8 }
%struct.vbi_cc = type { [2 x i8], [2 x i8] }
%struct.vbi_vps = type { [5 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.ivtv_buffer = type { %struct.list_head, i32, i16, i16, ptr, i32, i32 }
%struct.yuv_playback_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, [8 x %struct.yuv_frame_info], %struct.yuv_frame_info, %struct.yuv_frame_info, ptr, i32, i32, i8, i8, %struct.v4l2_rect, i32, i32, i8 }
%struct.yuv_frame_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.ivtv_sg_host_element = type { i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }

@ivtv_debug = external dso_local local_unnamed_addr global i32, align 4
@ivtv_dma_stream_dec_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s:  dma: DEC PREPARE DMA %s: %08x %08x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ivtv_dma_stream_dec_prepare\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/pci/ivtv/ivtv-irq.c\00", [62 x i8] zeroinitializer }, align 32
@ivtv_dma_stream_dec_prepare._entry_ptr = internal global ptr @ivtv_dma_stream_dec_prepare._entry, section ".printk_index", align 4
@ivtv_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s:  yuv: VSync interrupt missed %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ivtv_irq_handler\00", [47 x i8] zeroinitializer }, align 32
@ivtv_irq_handler._entry_ptr = internal global ptr @ivtv_irq_handler._entry, section ".printk_index", align 4
@ivtv_irq_handler._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 960, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s:  irq: ======= valid IRQ bits: 0x%08x ======\0A\00", [45 x i8] zeroinitializer }, align 32
@ivtv_irq_handler._entry_ptr.7 = internal global ptr @ivtv_irq_handler._entry.5, section ".printk_index", align 4
@ivtv_irq_handler._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s:  irq: DEC DMA COMPLETE\0A\00", [34 x i8] zeroinitializer }, align 32
@ivtv_irq_handler._entry_ptr.10 = internal global ptr @ivtv_irq_handler._entry.8, section ".printk_index", align 4
@ivtv_irq_handler._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s:  irq: ENC EOS\0A\00", [43 x i8] zeroinitializer }, align 32
@ivtv_irq_handler._entry_ptr.13 = internal global ptr @ivtv_irq_handler._entry.11, section ".printk_index", align 4
@ivtv_irq_handler._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 1010, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s:  irq: VIM RST\0A\00", [43 x i8] zeroinitializer }, align 32
@ivtv_irq_handler._entry_ptr.16 = internal global ptr @ivtv_irq_handler._entry.14, section ".printk_index", align 4
@ivtv_irq_handler._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.2, i32 1015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s:  info: Stereo mode changed\0A\00", [62 x i8] zeroinitializer }, align 32
@ivtv_irq_handler._entry_ptr.19 = internal global ptr @ivtv_irq_handler._entry.17, section ".printk_index", align 4
@ivtv_unfinished_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 1071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: DMA TIMEOUT %08x %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ivtv_unfinished_dma\00", [44 x i8] zeroinitializer }, align 32
@ivtv_unfinished_dma._entry_ptr = internal global ptr @ivtv_unfinished_dma._entry, section ".printk_index", align 4
@ivtv_pio_work_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s:  dma: ivtv_pio_work_handler\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ivtv_pio_work_handler\00", [42 x i8] zeroinitializer }, align 32
@ivtv_pio_work_handler._entry_ptr = internal global ptr @ivtv_pio_work_handler._entry, section ".printk_index", align 4
@ivtv_pio_work_handler._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s:  dma: Process PIO %s\0A\00", [36 x i8] zeroinitializer }, align 32
@ivtv_pio_work_handler._entry_ptr.26 = internal global ptr @ivtv_pio_work_handler._entry.24, section ".printk_index", align 4
@ivtv_dma_dec_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s:  dma: start DMA for %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ivtv_dma_dec_start\00", [45 x i8] zeroinitializer }, align 32
@ivtv_dma_dec_start._entry_ptr = internal global ptr @ivtv_dma_dec_start._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ivtv_irq_dma_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s:  irq: DEC DMA READ\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ivtv_irq_dma_read\00", [46 x i8] zeroinitializer }, align 32
@ivtv_irq_dma_read._entry_ptr = internal global ptr @ivtv_irq_dma_read._entry, section ".printk_index", align 4
@ivtv_irq_dma_read._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s:  warn: DEC DMA ERROR %x (xfer %d of %d, retry %d)\0A\00", [39 x i8] zeroinitializer }, align 32
@ivtv_irq_dma_read._entry_ptr.33 = internal global ptr @ivtv_irq_dma_read._entry.31, section ".printk_index", align 4
@ivtv_irq_dma_read._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s:  dma: DEC DATA READ %s: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ivtv_irq_dma_read._entry_ptr.36 = internal global ptr @ivtv_irq_dma_read._entry.34, section ".printk_index", align 4
@ivtv_irq_enc_dma_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s:  irq: ENC DMA COMPLETE %x %d (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ivtv_irq_enc_dma_complete\00", [38 x i8] zeroinitializer }, align 32
@ivtv_irq_enc_dma_complete._entry_ptr = internal global ptr @ivtv_irq_enc_dma_complete._entry, section ".printk_index", align 4
@ivtv_irq_enc_dma_complete._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016%s:  warn: ENC DMA ERROR %x (offset %08x, xfer %d of %d, retry %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@ivtv_irq_enc_dma_complete._entry_ptr.41 = internal global ptr @ivtv_irq_enc_dma_complete._entry.39, section ".printk_index", align 4
@dma_post._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s:  dma: %s %s completed (%x)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dma_post\00", [23 x i8] zeroinitializer }, align 32
@dma_post._entry_ptr = internal global ptr @dma_post._entry, section ".printk_index", align 4
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PIO\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DMA\00", [28 x i8] zeroinitializer }, align 32
@dma_post._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.43, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016%s:  warn: %s: Couldn't find start of buffer within the first 256 bytes\0A\00", [53 x i8] zeroinitializer }, align 32
@dma_post._entry_ptr.48 = internal global ptr @dma_post._entry.46, section ".printk_index", align 4
@dma_post._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.43, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s:  warn: %s: offset %d -> %d\0A\00", [62 x i8] zeroinitializer }, align 32
@dma_post._entry_ptr.51 = internal global ptr @dma_post._entry.49, section ".printk_index", align 4
@ivtv_irq_enc_pio_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s:  irq: ENC PIO COMPLETE %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ivtv_irq_enc_pio_complete\00", [38 x i8] zeroinitializer }, align 32
@ivtv_irq_enc_pio_complete._entry_ptr = internal global ptr @ivtv_irq_enc_pio_complete._entry, section ".printk_index", align 4
@ivtv_irq_dma_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s:  warn: DMA ERROR %08x %08x %08x %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ivtv_irq_dma_err\00", [47 x i8] zeroinitializer }, align 32
@ivtv_irq_dma_err._entry_ptr = internal global ptr @ivtv_irq_dma_err._entry, section ".printk_index", align 4
@ivtv_irq_enc_start_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s:  irq: ENC START CAP %d: %08x %08x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ivtv_irq_enc_start_cap\00", [41 x i8] zeroinitializer }, align 32
@ivtv_irq_enc_start_cap._entry_ptr = internal global ptr @ivtv_irq_enc_start_cap._entry, section ".printk_index", align 4
@ivtv_irq_enc_start_cap._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s:  warn: Unknown input: %08x %08x %08x\0A\00", [52 x i8] zeroinitializer }, align 32
@ivtv_irq_enc_start_cap._entry_ptr.60 = internal global ptr @ivtv_irq_enc_start_cap._entry.58, section ".printk_index", align 4
@ivtv_stream_map = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 3, i32 2], [16 x i8] zeroinitializer }, align 32
@stream_enc_dma_append._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s:  warn: Stream %s not started\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stream_enc_dma_append\00", [42 x i8] zeroinitializer }, align 32
@stream_enc_dma_append._entry_ptr = internal global ptr @stream_enc_dma_append._entry, section ".printk_index", align 4
@stream_enc_dma_append._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s:  warn: Stream %s not open\0A\00", [63 x i8] zeroinitializer }, align 32
@stream_enc_dma_append._entry_ptr.65 = internal global ptr @stream_enc_dma_append._entry.63, section ".printk_index", align 4
@stream_enc_dma_append._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s:  info: VBI offset == 0\0A\00", [34 x i8] zeroinitializer }, align 32
@stream_enc_dma_append._entry_ptr.68 = internal global ptr @stream_enc_dma_append._entry.66, section ".printk_index", align 4
@stream_enc_dma_append._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s:  dma: %s %s: 0x%08x bytes at 0x%08x\0A\00", [53 x i8] zeroinitializer }, align 32
@stream_enc_dma_append._entry_ptr.71 = internal global ptr @stream_enc_dma_append._entry.69, section ".printk_index", align 4
@stream_enc_dma_append._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.62, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016%s:  warn: Cannot obtain %d bytes for %s data transfer\0A\00", [38 x i8] zeroinitializer }, align 32
@stream_enc_dma_append._entry_ptr.74 = internal global ptr @stream_enc_dma_append._entry.72, section ".printk_index", align 4
@stream_enc_dma_append._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.62, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014%s: All %s stream buffers are full. Dropping data.\0A\00", [42 x i8] zeroinitializer }, align 32
@stream_enc_dma_append._entry_ptr.77 = internal global ptr @stream_enc_dma_append._entry.75, section ".printk_index", align 4
@stream_enc_dma_append._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.62, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014%s: Cause: the application is not reading fast enough.\0A\00", [38 x i8] zeroinitializer }, align 32
@stream_enc_dma_append._entry_ptr.80 = internal global ptr @stream_enc_dma_append._entry.78, section ".printk_index", align 4
@ivtv_irq_enc_vbi_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s:  irq: ENC START VBI CAP\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ivtv_irq_enc_vbi_cap\00", [43 x i8] zeroinitializer }, align 32
@ivtv_irq_enc_vbi_cap._entry_ptr = internal global ptr @ivtv_irq_enc_vbi_cap._entry, section ".printk_index", align 4
@ivtv_irq_dec_vbi_reinsert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s:  irq: DEC VBI REINSERT\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ivtv_irq_dec_vbi_reinsert\00", [38 x i8] zeroinitializer }, align 32
@ivtv_irq_dec_vbi_reinsert._entry_ptr = internal global ptr @ivtv_irq_dec_vbi_reinsert._entry, section ".printk_index", align 4
@ivtv_irq_dec_data_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s:  irq: DEC DATA REQ %s: %d %08x %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ivtv_irq_dec_data_req\00", [42 x i8] zeroinitializer }, align 32
@ivtv_irq_dec_data_req._entry_ptr = internal global ptr @ivtv_irq_dec_data_req._entry, section ".printk_index", align 4
@yuv_offset = external dso_local local_unnamed_addr constant [8 x i32], align 4
@ivtv_irq_vsync.evtop = internal constant { { i32, [4 x i8], { %struct.v4l2_event_vsync, [63 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }, [56 x i8] } { { i32, [4 x i8], { %struct.v4l2_event_vsync, [63 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] } { i32 1, [4 x i8] undef, { %struct.v4l2_event_vsync, [63 x i8] } { %struct.v4l2_event_vsync { i8 2 }, [63 x i8] undef }, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@ivtv_irq_vsync.evbottom = internal constant { { i32, [4 x i8], { %struct.v4l2_event_vsync, [63 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }, [56 x i8] } { { i32, [4 x i8], { %struct.v4l2_event_vsync, [63 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] } { i32 1, [4 x i8] undef, { %struct.v4l2_event_vsync, [63 x i8] } { %struct.v4l2_event_vsync { i8 3 }, [63 x i8] undef }, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@ivtv_dma_enc_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s:  dma: start %s for %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ivtv_dma_enc_start\00", [45 x i8] zeroinitializer }, align 32
@ivtv_dma_enc_start._entry_ptr = internal global ptr @ivtv_dma_enc_start._entry, section ".printk_index", align 4
@ivtv_dma_enc_start._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s:  dma: include DMA for %s\0A\00", [32 x i8] zeroinitializer }, align 32
@ivtv_dma_enc_start._entry_ptr.91 = internal global ptr @ivtv_dma_enc_start._entry.89, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 6]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.94 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 6]
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 350, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 944, i32 5 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 960, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 963, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 995, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1010, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1015, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1071, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 64, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 72, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 520, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 533, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 545, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 568, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 598, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 609, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 255, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 273, i32 6 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 277, i32 6 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 650, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 677, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 749, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 752, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant [16 x i8] c"ivtv_stream_map\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 22, i32 18 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 124, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 128, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 161, i32 5 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 201, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 206, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 211, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 212, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 767, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 779, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 808, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant [6 x i8] c"evtop\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 857, i32 34 }
@___asan_gen_.354 = private unnamed_addr constant [9 x i8] c"evbottom\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 861, i32 34 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 453, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.370 = private constant [37 x i8] c"../drivers/media/pci/ivtv/ivtv-irq.c\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 482, i32 3 }
@llvm.compiler.used = appending global [127 x ptr] [ptr @dma_post._entry, ptr @dma_post._entry.46, ptr @dma_post._entry.49, ptr @dma_post._entry_ptr, ptr @dma_post._entry_ptr.48, ptr @dma_post._entry_ptr.51, ptr @ivtv_dma_dec_start._entry, ptr @ivtv_dma_dec_start._entry_ptr, ptr @ivtv_dma_enc_start._entry, ptr @ivtv_dma_enc_start._entry.89, ptr @ivtv_dma_enc_start._entry_ptr, ptr @ivtv_dma_enc_start._entry_ptr.91, ptr @ivtv_dma_stream_dec_prepare._entry, ptr @ivtv_dma_stream_dec_prepare._entry_ptr, ptr @ivtv_irq_dec_data_req._entry, ptr @ivtv_irq_dec_data_req._entry_ptr, ptr @ivtv_irq_dec_vbi_reinsert._entry, ptr @ivtv_irq_dec_vbi_reinsert._entry_ptr, ptr @ivtv_irq_dma_err._entry, ptr @ivtv_irq_dma_err._entry_ptr, ptr @ivtv_irq_dma_read._entry, ptr @ivtv_irq_dma_read._entry.31, ptr @ivtv_irq_dma_read._entry.34, ptr @ivtv_irq_dma_read._entry_ptr, ptr @ivtv_irq_dma_read._entry_ptr.33, ptr @ivtv_irq_dma_read._entry_ptr.36, ptr @ivtv_irq_enc_dma_complete._entry, ptr @ivtv_irq_enc_dma_complete._entry.39, ptr @ivtv_irq_enc_dma_complete._entry_ptr, ptr @ivtv_irq_enc_dma_complete._entry_ptr.41, ptr @ivtv_irq_enc_pio_complete._entry, ptr @ivtv_irq_enc_pio_complete._entry_ptr, ptr @ivtv_irq_enc_start_cap._entry, ptr @ivtv_irq_enc_start_cap._entry.58, ptr @ivtv_irq_enc_start_cap._entry_ptr, ptr @ivtv_irq_enc_start_cap._entry_ptr.60, ptr @ivtv_irq_enc_vbi_cap._entry, ptr @ivtv_irq_enc_vbi_cap._entry_ptr, ptr @ivtv_irq_handler._entry, ptr @ivtv_irq_handler._entry.11, ptr @ivtv_irq_handler._entry.14, ptr @ivtv_irq_handler._entry.17, ptr @ivtv_irq_handler._entry.5, ptr @ivtv_irq_handler._entry.8, ptr @ivtv_irq_handler._entry_ptr, ptr @ivtv_irq_handler._entry_ptr.10, ptr @ivtv_irq_handler._entry_ptr.13, ptr @ivtv_irq_handler._entry_ptr.16, ptr @ivtv_irq_handler._entry_ptr.19, ptr @ivtv_irq_handler._entry_ptr.7, ptr @ivtv_pio_work_handler._entry, ptr @ivtv_pio_work_handler._entry.24, ptr @ivtv_pio_work_handler._entry_ptr, ptr @ivtv_pio_work_handler._entry_ptr.26, ptr @ivtv_unfinished_dma._entry, ptr @ivtv_unfinished_dma._entry_ptr, ptr @stream_enc_dma_append._entry, ptr @stream_enc_dma_append._entry.63, ptr @stream_enc_dma_append._entry.66, ptr @stream_enc_dma_append._entry.69, ptr @stream_enc_dma_append._entry.72, ptr @stream_enc_dma_append._entry.75, ptr @stream_enc_dma_append._entry.78, ptr @stream_enc_dma_append._entry_ptr, ptr @stream_enc_dma_append._entry_ptr.65, ptr @stream_enc_dma_append._entry_ptr.68, ptr @stream_enc_dma_append._entry_ptr.71, ptr @stream_enc_dma_append._entry_ptr.74, ptr @stream_enc_dma_append._entry_ptr.77, ptr @stream_enc_dma_append._entry_ptr.80, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @ivtv_stream_map, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @ivtv_irq_vsync.evtop, ptr @ivtv_irq_vsync.evbottom, ptr @.str.87, ptr @.str.88, ptr @.str.90], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_dma_stream_dec_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_irq_handler._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_irq_handler._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_irq_handler._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_irq_handler._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_irq_handler._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_unfinished_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pio_work_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pio_work_handler._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_dma_dec_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_irq_dma_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_irq_dma_read._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_irq_dma_read._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_irq_enc_dma_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_irq_enc_dma_complete._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_post._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_post._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_post._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_irq_enc_pio_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_irq_dma_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_irq_enc_start_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_irq_enc_start_cap._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_stream_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stream_enc_dma_append._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stream_enc_dma_append._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stream_enc_dma_append._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stream_enc_dma_append._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stream_enc_dma_append._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stream_enc_dma_append._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stream_enc_dma_append._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_irq_enc_vbi_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_irq_dec_vbi_reinsert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_irq_dec_data_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_irq_vsync.evtop to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_irq_vsync.evbottom to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_dma_enc_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_dma_enc_start._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_irq_work_handler(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16320
  %i_flags = getelementptr i8, ptr %work, i32 -15336
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 18, ptr noundef %i_flags) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %cur_pio_stream.i = getelementptr i8, ptr %work, i32 68
  %0 = ptrtoint ptr %cur_pio_stream.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_pio_stream.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %2 = load i32, ptr @ivtv_debug, align 4
  %3 = and i32 %2, 1056
  call void @__sanitizer_cov_trace_const_cmp4(i32 1056, i32 %3)
  %.not.i = icmp eq i32 %3, 1056
  br i1 %.not.i, label %do.end.i, label %if.then.do.end5.i_crit_edge

if.then.do.end5.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr i8, ptr %work, i32 -16136
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name.i) #8
  %4 = ptrtoint ptr %cur_pio_stream.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr.i = load i32, ptr %cur_pio_stream.i, align 4
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %if.then.do.end5.i_crit_edge
  %5 = phi i32 [ %.pr.i, %do.end.i ], [ %1, %if.then.do.end5.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %6 = icmp ugt i32 %5, 8
  br i1 %6, label %do.end5.i.if.then15.i_crit_edge, label %lor.lhs.false9.i

do.end5.i.if.then15.i_crit_edge:                  ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15.i

lor.lhs.false9.i:                                 ; preds = %do.end5.i
  %v4l2_dev10.i = getelementptr %struct.ivtv, ptr %add.ptr, i32 0, i32 42, i32 %1, i32 0, i32 7
  %7 = ptrtoint ptr %v4l2_dev10.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %v4l2_dev10.i, align 4
  %cmp11.i = icmp eq ptr %8, null
  br i1 %cmp11.i, label %lor.lhs.false9.i.if.then15.i_crit_edge, label %lor.lhs.false12.i

lor.lhs.false9.i.if.then15.i_crit_edge:           ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15.i

lor.lhs.false12.i:                                ; preds = %lor.lhs.false9.i
  %dma.i.i = getelementptr %struct.ivtv, ptr %add.ptr, i32 0, i32 42, i32 %1, i32 8
  %9 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp.i.not.i = icmp eq i32 %10, 3
  br i1 %cmp.i.not.i, label %do.body21.i, label %lor.lhs.false12.i.if.then15.i_crit_edge

lor.lhs.false12.i.if.then15.i_crit_edge:          ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15.i

if.then15.i:                                      ; preds = %lor.lhs.false12.i.if.then15.i_crit_edge, %lor.lhs.false9.i.if.then15.i_crit_edge, %do.end5.i.if.then15.i_crit_edge
  %11 = ptrtoint ptr %cur_pio_stream.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %cur_pio_stream.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !174
  tail call void @arm_heavy_mb() #5
  %reg_mem.i = getelementptr i8, ptr %work, i32 -16256
  %12 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 2) #5, !srcloc !175
  br label %if.end

do.body21.i:                                      ; preds = %lor.lhs.false12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %14 = load i32, ptr @ivtv_debug, align 4
  %15 = and i32 %14, 1056
  call void @__sanitizer_cov_trace_const_cmp4(i32 1056, i32 %15)
  %.not109.i = icmp eq i32 %15, 1056
  br i1 %.not109.i, label %do.end30.i, label %do.body21.i.do.end39.i_crit_edge

do.body21.i.do.end39.i_crit_edge:                 ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39.i

do.end30.i:                                       ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #7
  %name33.i = getelementptr i8, ptr %work, i32 -16136
  %name35.i = getelementptr %struct.ivtv, ptr %add.ptr, i32 0, i32 42, i32 %1, i32 2
  %16 = ptrtoint ptr %name35.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name35.i, align 4
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name33.i, ptr noundef %17) #8
  br label %do.end39.i

do.end39.i:                                       ; preds = %do.end30.i, %do.body21.i.do.end39.i_crit_edge
  %q_dma.i = getelementptr %struct.ivtv, ptr %add.ptr, i32 0, i32 42, i32 %1, i32 24
  %sg_processing.i = getelementptr %struct.ivtv, ptr %add.ptr, i32 0, i32 42, i32 %1, i32 28
  %type.i = getelementptr %struct.ivtv, ptr %add.ptr, i32 0, i32 42, i32 %1, i32 3
  %enc_mem.i = getelementptr i8, ptr %work, i32 -16264
  %dec_mem.i = getelementptr i8, ptr %work, i32 -16260
  %sg_processing_size.i = getelementptr %struct.ivtv, ptr %add.ptr, i32 0, i32 42, i32 %1, i32 32
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end61.i.for.cond.i_crit_edge, %do.end39.i
  %i.0.i = phi i32 [ 0, %do.end39.i ], [ %inc.i, %if.end61.i.for.cond.i_crit_edge ]
  %buf.0.in.i = phi ptr [ %q_dma.i, %do.end39.i ], [ %buf.0.i, %if.end61.i.for.cond.i_crit_edge ]
  %18 = ptrtoint ptr %buf.0.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %buf.0.i = load ptr, ptr %buf.0.in.i, align 4
  %cmp45.not.i = icmp eq ptr %buf.0.i, %q_dma.i
  br i1 %cmp45.not.i, label %for.cond.i.do.body70.i_crit_edge, label %for.body.i

for.cond.i.do.body70.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body70.i

for.body.i:                                       ; preds = %for.cond.i
  %19 = ptrtoint ptr %sg_processing.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sg_processing.i, align 4
  %arrayidx46.i = getelementptr %struct.ivtv_sg_host_element, ptr %20, i32 %i.0.i
  %size47.i = getelementptr %struct.ivtv_sg_host_element, ptr %20, i32 %i.0.i, i32 2
  %21 = ptrtoint ptr %size47.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size47.i, align 4
  %and48.i = and i32 %22, 262143
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %24)
  %cmp49.i = icmp eq i32 %24, 6
  %buf51.i = getelementptr inbounds %struct.ivtv_buffer, ptr %buf.0.i, i32 0, i32 4
  %25 = ptrtoint ptr %buf51.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf51.i, align 4
  br i1 %cmp49.i, label %if.then50.i, label %if.else.i

if.then50.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %dec_mem.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dec_mem.i, align 4
  %29 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx46.i, align 4
  %add.ptr54.i = getelementptr i8, ptr %28, i32 -16777216
  %add.ptr55.i = getelementptr i8, ptr %add.ptr54.i, i32 %30
  br label %if.end61.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %enc_mem.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %enc_mem.i, align 8
  %33 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx46.i, align 4
  %add.ptr60.i = getelementptr i8, ptr %32, i32 %34
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.else.i, %if.then50.i
  %add.ptr60.sink.i = phi ptr [ %add.ptr60.i, %if.else.i ], [ %add.ptr55.i, %if.then50.i ]
  tail call void @mmiocpy(ptr noundef %26, ptr noundef %add.ptr60.sink.i, i32 noundef %and48.i) #5
  %inc.i = add i32 %i.0.i, 1
  %35 = ptrtoint ptr %sg_processing_size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sg_processing_size.i, align 4
  %cmp62.i = icmp eq i32 %inc.i, %36
  br i1 %cmp62.i, label %if.end61.i.do.body70.i_crit_edge, label %if.end61.i.for.cond.i_crit_edge

if.end61.i.for.cond.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

if.end61.i.do.body70.i_crit_edge:                 ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body70.i

do.body70.i:                                      ; preds = %if.end61.i.do.body70.i_crit_edge, %for.cond.i.do.body70.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !176
  tail call void @arm_heavy_mb() #5
  %reg_mem73.i = getelementptr i8, ptr %work, i32 -16256
  %37 = ptrtoint ptr %reg_mem73.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_mem73.i, align 8
  %add.ptr74.i = getelementptr i8, ptr %38, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.i, i32 2) #5, !srcloc !175
  br label %if.end

if.end:                                           ; preds = %do.body70.i, %if.then15.i, %entry.if.end_crit_edge
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 16, ptr noundef %i_flags) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ivtv_vbi_work_handler(ptr noundef %add.ptr) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef 17, ptr noundef %i_flags) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end5.if.end10_crit_edge, label %if.then9

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ivtv_yuv_work_handler(ptr noundef %add.ptr) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end5.if.end10_crit_edge
  %call12 = tail call i32 @_test_and_clear_bit(i32 noundef 23, ptr noundef %i_flags) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end10.if.end15_crit_edge, label %if.then14

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then14:                                        ; preds = %if.end10
  %arrayidx.i = getelementptr i8, ptr %work, i32 -10128
  %q_full.i = getelementptr i8, ptr %work, i32 -8580
  %q_io.i = getelementptr i8, ptr %work, i32 -8560
  %pcm_announce_callback.i = getelementptr i8, ptr %work, i32 -132
  %alsa.i = getelementptr i8, ptr %work, i32 -136
  %q_free.i = getelementptr i8, ptr %work, i32 -8600
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end11.i, %if.then14
  %call.i23 = tail call ptr @ivtv_dequeue(ptr noundef %arrayidx.i, ptr noundef %q_io.i) #5
  %cmp.i = icmp eq ptr %call.i23, null
  br i1 %cmp.i, label %if.end.i, label %while.cond.i.if.end4.i_crit_edge

while.cond.i.if.end4.i_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.end.i:                                         ; preds = %while.cond.i
  %call1.i = tail call ptr @ivtv_dequeue(ptr noundef %arrayidx.i, ptr noundef %q_full.i) #5
  %cmp2.i = icmp eq ptr %call1.i, null
  br i1 %cmp2.i, label %if.end.i.if.end15_crit_edge, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.end.i.if.end15_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end4.i:                                        ; preds = %if.end.i.if.end4.i_crit_edge, %while.cond.i.if.end4.i_crit_edge
  %buf.030.i = phi ptr [ %call1.i, %if.end.i.if.end4.i_crit_edge ], [ %call.i23, %while.cond.i.if.end4.i_crit_edge ]
  %readpos.i = getelementptr inbounds %struct.ivtv_buffer, ptr %buf.030.i, i32 0, i32 6
  %39 = ptrtoint ptr %readpos.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %readpos.i, align 4
  %bytesused.i = getelementptr inbounds %struct.ivtv_buffer, ptr %buf.030.i, i32 0, i32 5
  %41 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bytesused.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %40)
  %cmp5.i = icmp ugt i32 %42, %40
  br i1 %cmp5.i, label %if.then6.i, label %if.end4.i.if.end11.i_crit_edge

if.end4.i.if.end11.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %pcm_announce_callback.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pcm_announce_callback.i, align 4
  %45 = ptrtoint ptr %alsa.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %alsa.i, align 8
  %buf7.i = getelementptr inbounds %struct.ivtv_buffer, ptr %buf.030.i, i32 0, i32 4
  %47 = ptrtoint ptr %buf7.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buf7.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %48, i32 %40
  %sub.i = sub i32 %42, %40
  tail call void %44(ptr noundef %46, ptr noundef %add.ptr.i24, i32 noundef %sub.i) #5
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then6.i, %if.end4.i.if.end11.i_crit_edge
  tail call void @ivtv_enqueue(ptr noundef %arrayidx.i, ptr noundef nonnull %buf.030.i, ptr noundef %q_free.i) #5
  br label %while.cond.i

if.end15:                                         ; preds = %if.end.i.if.end15_crit_edge, %if.end10.if.end15_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_vbi_work_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_yuv_work_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_dma_stream_dec_prepare(ptr noundef %s, i32 noundef %offset, i32 noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 8
  %draw_frame = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 64
  %2 = ptrtoint ptr %draw_frame to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %draw_frame, align 4
  %idxprom = zext i8 %3 to i32
  %src_h = getelementptr %struct.ivtv, ptr %1, i32 0, i32 90, i32 58, i32 %idxprom, i32 4
  %4 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_h, align 4
  %add = add i32 %5, 31
  %and = and i32 %add, -32
  %mul = mul i32 %and, 720
  %add2 = add i32 %offset, 414720
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %6 = load i32, ptr @ivtv_debug, align 4
  %7 = and i32 %6, 1056
  call void @__sanitizer_cov_trace_const_cmp4(i32 1056, i32 %7)
  %.not = icmp eq i32 %7, 1056
  br i1 %.not, label %do.end, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %name7 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 2
  %8 = ptrtoint ptr %name7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name7, align 4
  %bytesused = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 25, i32 3
  %10 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bytesused, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef %9, i32 noundef %11, i32 noundef %offset) #8
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %type = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 3
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %cmp = icmp eq i32 %13, 8
  br i1 %cmp, label %land.lhs.true10, label %do.end9.if.end23_crit_edge

do.end9.if.end23_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

land.lhs.true10:                                  ; preds = %do.end9
  %offset_y = getelementptr %struct.ivtv, ptr %1, i32 0, i32 90, i32 58, i32 %idxprom, i32 18
  %14 = ptrtoint ptr %offset_y to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset_y, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11.not = icmp eq i32 %15, 0
  br i1 %tobool11.not, label %land.lhs.true10.if.end23_crit_edge, label %if.then12

land.lhs.true10.if.end23_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then12:                                        ; preds = %land.lhs.true10
  %blanking_dmaptr = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 90, i32 62
  %16 = ptrtoint ptr %blanking_dmaptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blanking_dmaptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool13.not = icmp eq i32 %17, 0
  br i1 %tobool13.not, label %if.then12.if.end21_crit_edge, label %if.then14

if.then12.if.end21_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %sg_pending = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 27
  %18 = ptrtoint ptr %sg_pending to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sg_pending, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %19, align 4
  %21 = load ptr, ptr %sg_pending, align 8
  %dst = getelementptr inbounds %struct.ivtv_sg_host_element, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %offset, ptr %dst, align 4
  %23 = load ptr, ptr %sg_pending, align 8
  %size = getelementptr inbounds %struct.ivtv_sg_host_element, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 11520, ptr %size, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %if.then12.if.end21_crit_edge
  %add22 = add i32 %offset, 11520
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %land.lhs.true10.if.end23_crit_edge, %do.end9.if.end23_crit_edge
  %idx.0 = phi i32 [ 1, %if.end21 ], [ 0, %land.lhs.true10.if.end23_crit_edge ], [ 0, %do.end9.if.end23_crit_edge ]
  %offset.addr.0 = phi i32 [ %add22, %if.end21 ], [ %offset, %land.lhs.true10.if.end23_crit_edge ], [ %offset, %do.end9.if.end23_crit_edge ]
  %q_predma24 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 25
  %25 = ptrtoint ptr %q_predma24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %buf.0217 = load ptr, ptr %q_predma24, align 4
  %cmp29.not218 = icmp eq ptr %buf.0217, %q_predma24
  br i1 %cmp29.not218, label %if.end23.for.end_crit_edge, label %for.body.lr.ph

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end23
  %sg_pending39 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 27
  %dma.i.i.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 8
  %buf_size.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %ivtv_buf_sync_for_device.exit.for.body_crit_edge, %for.body.lr.ph
  %buf.0227 = phi ptr [ %buf.0217, %for.body.lr.ph ], [ %buf.0, %ivtv_buf_sync_for_device.exit.for.body_crit_edge ]
  %offset.addr.1225 = phi i32 [ %offset.addr.0, %for.body.lr.ph ], [ %offset.addr.3, %ivtv_buf_sync_for_device.exit.for.body_crit_edge ]
  %idx.1223 = phi i32 [ %idx.0, %for.body.lr.ph ], [ %inc97, %ivtv_buf_sync_for_device.exit.for.body_crit_edge ]
  %bytes_written.0220 = phi i32 [ 0, %for.body.lr.ph ], [ %add96, %ivtv_buf_sync_for_device.exit.for.body_crit_edge ]
  %y_done.0219 = phi i32 [ 0, %for.body.lr.ph ], [ %y_done.1, %ivtv_buf_sync_for_device.exit.for.body_crit_edge ]
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %27)
  %cmp31 = icmp eq i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %y_done.0219)
  %tobool33.not = icmp eq i32 %y_done.0219, 0
  %or.cond210 = select i1 %cmp31, i1 %tobool33.not, i1 false
  br i1 %or.cond210, label %land.lhs.true34, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true34:                                  ; preds = %for.body
  %bytesused35 = getelementptr inbounds %struct.ivtv_buffer, ptr %buf.0227, i32 0, i32 5
  %28 = ptrtoint ptr %bytesused35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bytesused35, align 4
  %add36 = add i32 %29, %bytes_written.0220
  call void @__sanitizer_cov_trace_cmp4(i32 %add36, i32 %mul)
  %cmp37.not = icmp ult i32 %add36, %mul
  br i1 %cmp37.not, label %land.lhs.true34.if.else_crit_edge, label %if.then38

land.lhs.true34.if.else_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then38:                                        ; preds = %land.lhs.true34
  %dma_handle = getelementptr inbounds %struct.ivtv_buffer, ptr %buf.0227, i32 0, i32 1
  %30 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_handle, align 4
  %32 = ptrtoint ptr %sg_pending39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sg_pending39, align 8
  %arrayidx40 = getelementptr %struct.ivtv_sg_host_element, ptr %33, i32 %idx.1223
  %34 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %31, ptr %arrayidx40, align 4
  %35 = load ptr, ptr %sg_pending39, align 8
  %dst44 = getelementptr %struct.ivtv_sg_host_element, ptr %35, i32 %idx.1223, i32 1
  %36 = ptrtoint ptr %dst44 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %offset.addr.1225, ptr %dst44, align 4
  %sub = sub i32 %mul, %bytes_written.0220
  %37 = load ptr, ptr %sg_pending39, align 8
  %size47 = getelementptr %struct.ivtv_sg_host_element, ptr %37, i32 %idx.1223, i32 2
  %38 = ptrtoint ptr %size47 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub, ptr %size47, align 4
  %39 = load ptr, ptr %sg_pending39, align 8
  %size50 = getelementptr %struct.ivtv_sg_host_element, ptr %39, i32 %idx.1223, i32 2
  %40 = ptrtoint ptr %size50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size50, align 4
  %42 = ptrtoint ptr %bytesused35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bytesused35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp52.not = icmp eq i32 %41, %43
  br i1 %cmp52.not, label %if.then38.if.end94_crit_edge, label %if.then53

if.then38.if.end94_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.then53:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  %inc54 = add i32 %idx.1223, 1
  %44 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_handle, align 4
  %add60 = add i32 %45, %41
  %arrayidx62 = getelementptr %struct.ivtv_sg_host_element, ptr %39, i32 %inc54
  %46 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add60, ptr %arrayidx62, align 4
  %47 = ptrtoint ptr %sg_pending39 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sg_pending39, align 8
  %dst66 = getelementptr %struct.ivtv_sg_host_element, ptr %48, i32 %inc54, i32 1
  %49 = ptrtoint ptr %dst66 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add2, ptr %dst66, align 4
  %50 = ptrtoint ptr %bytesused35 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bytesused35, align 4
  %52 = load ptr, ptr %sg_pending39, align 8
  %size71 = getelementptr %struct.ivtv_sg_host_element, ptr %52, i32 %idx.1223, i32 2
  %53 = ptrtoint ptr %size71 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size71, align 4
  %sub72 = sub i32 %51, %54
  %size75 = getelementptr %struct.ivtv_sg_host_element, ptr %52, i32 %inc54, i32 2
  %55 = ptrtoint ptr %size75 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %sub72, ptr %size75, align 4
  %56 = load ptr, ptr %sg_pending39, align 8
  %size78 = getelementptr %struct.ivtv_sg_host_element, ptr %56, i32 %inc54, i32 2
  br label %if.end94.sink.split

if.else:                                          ; preds = %land.lhs.true34.if.else_crit_edge, %for.body.if.else_crit_edge
  %dma_handle81 = getelementptr inbounds %struct.ivtv_buffer, ptr %buf.0227, i32 0, i32 1
  %57 = ptrtoint ptr %dma_handle81 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dma_handle81, align 4
  %59 = ptrtoint ptr %sg_pending39 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sg_pending39, align 8
  %arrayidx83 = getelementptr %struct.ivtv_sg_host_element, ptr %60, i32 %idx.1223
  %61 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %58, ptr %arrayidx83, align 4
  %62 = load ptr, ptr %sg_pending39, align 8
  %dst87 = getelementptr %struct.ivtv_sg_host_element, ptr %62, i32 %idx.1223, i32 1
  %63 = ptrtoint ptr %dst87 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %offset.addr.1225, ptr %dst87, align 4
  %bytesused88 = getelementptr inbounds %struct.ivtv_buffer, ptr %buf.0227, i32 0, i32 5
  %64 = ptrtoint ptr %bytesused88 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bytesused88, align 4
  %66 = load ptr, ptr %sg_pending39, align 8
  %size91 = getelementptr %struct.ivtv_sg_host_element, ptr %66, i32 %idx.1223, i32 2
  %67 = ptrtoint ptr %size91 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %65, ptr %size91, align 4
  br label %if.end94.sink.split

if.end94.sink.split:                              ; preds = %if.else, %if.then53
  %size78.sink = phi ptr [ %size78, %if.then53 ], [ %bytesused88, %if.else ]
  %add2.sink = phi i32 [ %add2, %if.then53 ], [ %offset.addr.1225, %if.else ]
  %y_done.1.ph = phi i32 [ 1, %if.then53 ], [ %y_done.0219, %if.else ]
  %idx.3.ph = phi i32 [ %inc54, %if.then53 ], [ %idx.1223, %if.else ]
  %68 = ptrtoint ptr %size78.sink to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %size78.sink, align 4
  %add79 = add i32 %69, %add2.sink
  br label %if.end94

if.end94:                                         ; preds = %if.end94.sink.split, %if.then38.if.end94_crit_edge
  %y_done.1 = phi i32 [ 1, %if.then38.if.end94_crit_edge ], [ %y_done.1.ph, %if.end94.sink.split ]
  %idx.3 = phi i32 [ %idx.1223, %if.then38.if.end94_crit_edge ], [ %idx.3.ph, %if.end94.sink.split ]
  %offset.addr.3 = phi i32 [ %add2, %if.then38.if.end94_crit_edge ], [ %add79, %if.end94.sink.split ]
  %bytesused95 = getelementptr inbounds %struct.ivtv_buffer, ptr %buf.0227, i32 0, i32 5
  %70 = ptrtoint ptr %bytesused95 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bytesused95, align 4
  %add96 = add i32 %71, %bytes_written.0220
  %72 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dma.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %73)
  %cmp.i.i.not.i = icmp eq i32 %73, 3
  br i1 %cmp.i.i.not.i, label %if.end94.ivtv_buf_sync_for_device.exit_crit_edge, label %if.then.i

if.end94.ivtv_buf_sync_for_device.exit_crit_edge: ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %ivtv_buf_sync_for_device.exit

if.then.i:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %itv1, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 8
  %dma_handle.i = getelementptr inbounds %struct.ivtv_buffer, ptr %buf.0227, i32 0, i32 1
  %78 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dma_handle.i, align 4
  %80 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %buf_size.i, align 8
  %add.i = add i32 %81, 256
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  tail call void @dma_sync_single_for_device(ptr noundef %dev.i.i, i32 noundef %79, i32 noundef %add.i, i32 noundef %73) #5
  br label %ivtv_buf_sync_for_device.exit

ivtv_buf_sync_for_device.exit:                    ; preds = %if.then.i, %if.end94.ivtv_buf_sync_for_device.exit_crit_edge
  %inc97 = add i32 %idx.3, 1
  %82 = ptrtoint ptr %buf.0227 to i32
  call void @__asan_load4_noabort(i32 %82)
  %buf.0 = load ptr, ptr %buf.0227, align 4
  %cmp29.not = icmp eq ptr %buf.0, %q_predma24
  br i1 %cmp29.not, label %ivtv_buf_sync_for_device.exit.for.end_crit_edge, label %ivtv_buf_sync_for_device.exit.for.body_crit_edge

ivtv_buf_sync_for_device.exit.for.body_crit_edge: ; preds = %ivtv_buf_sync_for_device.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

ivtv_buf_sync_for_device.exit.for.end_crit_edge:  ; preds = %ivtv_buf_sync_for_device.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %ivtv_buf_sync_for_device.exit.for.end_crit_edge, %if.end23.for.end_crit_edge
  %idx.1.lcssa = phi i32 [ %idx.0, %if.end23.for.end_crit_edge ], [ %inc97, %ivtv_buf_sync_for_device.exit.for.end_crit_edge ]
  %sg_pending_size = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 31
  %83 = ptrtoint ptr %sg_pending_size to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %idx.1.lcssa, ptr %sg_pending_size, align 8
  %dma.i.i.i212 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 8
  %84 = ptrtoint ptr %dma.i.i.i212 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dma.i.i.i212, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %85)
  %cmp.i.i.not.i213 = icmp eq i32 %85, 3
  br i1 %cmp.i.i.not.i213, label %for.end.ivtv_stream_sync_for_device.exit_crit_edge, label %if.then.i216

for.end.ivtv_stream_sync_for_device.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ivtv_stream_sync_for_device.exit

if.then.i216:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %86 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %itv1, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 8
  %sg_handle.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 30
  %90 = ptrtoint ptr %sg_handle.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sg_handle.i, align 4
  %dev.i.i215 = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 44
  tail call void @dma_sync_single_for_device(ptr noundef %dev.i.i215, i32 noundef %91, i32 noundef 12, i32 noundef 1) #5
  br label %ivtv_stream_sync_for_device.exit

ivtv_stream_sync_for_device.exit:                 ; preds = %if.then.i216, %for.end.ivtv_stream_sync_for_device.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lock)
  %tobool103.not = icmp eq i32 %lock, 0
  br i1 %tobool103.not, label %if.else121, label %if.then104

if.then104:                                       ; preds = %ivtv_stream_sync_for_device.exit
  %dma_reg_lock = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 53
  %call110 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dma_reg_lock) #5
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 26
  %92 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %i_flags, align 4
  %and1.i = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool116.not = icmp eq i32 %and1.i, 0
  br i1 %tobool116.not, label %if.then117, label %if.else118

if.then117:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @ivtv_dma_dec_start(ptr noundef %s)
  br label %if.end119

if.else118:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #7
  %s_flags = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 0, ptr noundef %s_flags) #5
  br label %if.end119

if.end119:                                        ; preds = %if.else118, %if.then117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dma_reg_lock, i32 noundef %call110) #5
  br label %if.end129

if.else121:                                       ; preds = %ivtv_stream_sync_for_device.exit
  %i_flags122 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 26
  %94 = ptrtoint ptr %i_flags122 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %i_flags122, align 4
  %and1.i211 = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i211)
  %tobool124.not = icmp eq i32 %and1.i211, 0
  br i1 %tobool124.not, label %if.then125, label %if.else126

if.then125:                                       ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @ivtv_dma_dec_start(ptr noundef %s)
  br label %if.end129

if.else126:                                       ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #7
  %s_flags127 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 0, ptr noundef %s_flags127) #5
  br label %if.end129

if.end129:                                        ; preds = %if.else126, %if.then125, %if.end119
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ivtv_dma_dec_start(ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 8
  %bytesused = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 25, i32 3
  %2 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytesused, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %q_predma = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 25
  %q_dma = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 24
  %call = tail call i32 @ivtv_queue_move(ptr noundef %s, ptr noundef %q_predma, ptr noundef null, ptr noundef %q_dma, i32 noundef %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dma_xfer_cnt = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 26
  %4 = ptrtoint ptr %dma_xfer_cnt to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dma_xfer_cnt, align 4
  %inc = add i16 %5, 1
  store i16 %inc, ptr %dma_xfer_cnt, align 4
  %sg_processing = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 28
  %6 = ptrtoint ptr %sg_processing to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sg_processing, align 4
  %sg_pending = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 27
  %8 = ptrtoint ptr %sg_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg_pending, align 8
  %sg_pending_size = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 31
  %10 = ptrtoint ptr %sg_pending_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg_pending_size, align 8
  %mul = mul i32 %11, 12
  %12 = call ptr @memcpy(ptr %7, ptr %9, i32 %mul)
  %13 = load i32, ptr %sg_pending_size, align 8
  %sg_processing_size = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 32
  %14 = ptrtoint ptr %sg_processing_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %sg_processing_size, align 4
  store i32 0, ptr %sg_pending_size, align 8
  %sg_processed = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 33
  %15 = ptrtoint ptr %sg_processed to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %sg_processed, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %16 = load i32, ptr @ivtv_debug, align 4
  %17 = and i32 %16, 1056
  call void @__sanitizer_cov_trace_const_cmp4(i32 1056, i32 %17)
  %.not = icmp eq i32 %17, 1056
  br i1 %.not, label %do.end, label %if.end.do.end16_crit_edge

if.end.do.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end16

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %name12 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 2
  %18 = ptrtoint ptr %name12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name12, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name, ptr noundef %19) #8
  br label %do.end16

do.end16:                                         ; preds = %do.end, %if.end.do.end16_crit_edge
  %dma_retries = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 58
  %20 = ptrtoint ptr %dma_retries to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %dma_retries, align 8
  tail call fastcc void @ivtv_dma_dec_start_xfer(ptr noundef %s)
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 26
  tail call void @_set_bit(i32 noundef 0, ptr noundef %i_flags) #5
  %type = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 3
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type, align 8
  %cur_dma_stream = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 54
  %23 = ptrtoint ptr %cur_dma_stream to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %cur_dma_stream, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_irq_handler(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  %data.i425 = alloca [16 x i32], align 4
  %data.i417 = alloca [16 x i32], align 4
  %data.i404 = alloca [16 x i32], align 4
  %data.i392 = alloca [16 x i32], align 4
  %data.i374 = alloca [16 x i32], align 4
  %data.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_reg_lock = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 53
  tail call void @_raw_spin_lock(ptr noundef %dma_reg_lock) #5
  %reg_mem = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 17
  %0 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !177
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !178
  %irqmask = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 48
  %4 = ptrtoint ptr %irqmask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irqmask, align 4
  %neg = xor i32 %5, -1
  %and = and i32 %3, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then4, label %if.end46

if.then4:                                         ; preds = %entry
  %6 = ptrtoint ptr %irqmask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irqmask, align 4
  %neg6 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg6)
  %tobool8.not.not = icmp eq i32 %neg6, 0
  br i1 %tobool8.not.not, label %if.then9, label %if.then4.if.then43_crit_edge

if.then4.if.then43_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

if.then9:                                         ; preds = %if.then4
  %last_vsync_field = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 61
  %8 = ptrtoint ptr %last_vsync_field to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_vsync_field, align 4
  %10 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_mem, align 8
  %add.ptr14 = getelementptr i8, ptr %11, i32 10432
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #5, !srcloc !177
  %13 = lshr i32 %12, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !179
  %14 = xor i32 %13, %9
  %15 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp19.not = icmp eq i32 %15, 0
  br i1 %cmp19.not, label %if.then9.if.then43_crit_edge, label %do.body21

if.then9.if.then43_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

do.body21:                                        ; preds = %if.then9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %16 = load i32, ptr @ivtv_debug, align 4
  %and22 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body21.if.end140_crit_edge, label %do.end27

do.body21.if.end140_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end140

do.end27:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 19, i32 4
  %17 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_mem, align 8
  %add.ptr32 = getelementptr i8, ptr %18, i32 10432
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #5, !srcloc !177
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !180
  %shr = lshr i32 %20, 16
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %shr) #8
  br label %if.end140

if.then43:                                        ; preds = %if.then9.if.then43_crit_edge, %if.then4.if.then43_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dma_reg_lock) #5
  br label %cleanup256

if.end46:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %and)
  %22 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_mem, align 8
  %add.ptr3 = getelementptr i8, ptr %23, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %21) #5, !srcloc !175
  %and47 = and i32 %and, 9632767
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end67_crit_edge, label %do.body50

if.end46.if.end67_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

do.body50:                                        ; preds = %if.end46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %24 = load i32, ptr @ivtv_debug, align 4
  %25 = and i32 %24, 1088
  call void @__sanitizer_cov_trace_const_cmp4(i32 1088, i32 %25)
  %.not = icmp eq i32 %25, 1088
  br i1 %.not, label %do.end58, label %do.body50.if.end67_crit_edge

do.body50.if.end67_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

do.end58:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #7
  %name61 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 19, i32 4
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name61, i32 noundef %and) #8
  br label %if.end67

if.end67:                                         ; preds = %do.end58, %do.body50.if.end67_crit_edge, %if.end46.if.end67_crit_edge
  %and68 = and i32 %and, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end67.if.end89_crit_edge, label %do.body71

if.end67.if.end89_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

do.body71:                                        ; preds = %if.end67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %26 = load i32, ptr @ivtv_debug, align 4
  %27 = and i32 %26, 1088
  call void @__sanitizer_cov_trace_const_cmp4(i32 1088, i32 %27)
  %.not501 = icmp eq i32 %27, 1088
  br i1 %.not501, label %do.end80, label %do.body71.if.end89_crit_edge

do.body71.if.end89_crit_edge:                     ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

do.end80:                                         ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #7
  %name83 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 19, i32 4
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name83) #8
  br label %if.end89

if.end89:                                         ; preds = %do.end80, %do.body71.if.end89_crit_edge, %if.end67.if.end89_crit_edge
  %and90 = and i32 %and, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end89.if.end93_crit_edge, label %if.then92

if.end89.if.end93_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

if.then92:                                        ; preds = %if.end89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %28 = load i32, ptr @ivtv_debug, align 4
  %29 = and i32 %28, 1088
  call void @__sanitizer_cov_trace_const_cmp4(i32 1088, i32 %29)
  %.not.i = icmp eq i32 %29, 1088
  br i1 %.not.i, label %do.end.i, label %if.then92.do.end5.i_crit_edge

if.then92.do.end5.i_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5.i

do.end.i:                                         ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 19, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i) #8
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %if.then92.do.end5.i_crit_edge
  %dma_timer.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 60
  %call6.i = tail call i32 @del_timer(ptr noundef %dma_timer.i) #5
  %i_flags.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 26
  %30 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %i_flags.i, align 4
  %32 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool8.not.i = icmp eq i32 %32, 0
  br i1 %tobool8.not.i, label %land.lhs.true9.i, label %do.end5.i.if.end11.i_crit_edge

do.end5.i.if.end11.i_crit_edge:                   ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i

land.lhs.true9.i:                                 ; preds = %do.end5.i
  %cur_dma_stream.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 54
  %33 = ptrtoint ptr %cur_dma_stream.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cur_dma_stream.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i = icmp slt i32 %34, 0
  br i1 %cmp.i, label %land.lhs.true9.i.if.end93_crit_edge, label %land.lhs.true9.i.if.end11.i_crit_edge

land.lhs.true9.i.if.end11.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i

land.lhs.true9.i.if.end93_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

if.end11.i:                                       ; preds = %land.lhs.true9.i.if.end11.i_crit_edge, %do.end5.i.if.end11.i_crit_edge
  %35 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %i_flags.i, align 4
  %37 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool14.not.i = icmp eq i32 %37, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end11.i.if.end101.i_crit_edge

if.end11.i.if.end101.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101.i

if.then15.i:                                      ; preds = %if.end11.i
  %cur_dma_stream16.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 54
  %38 = ptrtoint ptr %cur_dma_stream16.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cur_dma_stream16.i, align 8
  %arrayidx.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %39
  %dma.i.i.i.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %39, i32 8
  %40 = ptrtoint ptr %dma.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp.i.i.not.i.i = icmp eq i32 %41, 3
  br i1 %cmp.i.i.not.i.i, label %if.then15.i.ivtv_stream_sync_for_cpu.exit.i_crit_edge, label %if.then.i.i

if.then15.i.ivtv_stream_sync_for_cpu.exit.i_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ivtv_stream_sync_for_cpu.exit.i

if.then.i.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #7
  %itv.i.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %39, i32 1
  %42 = ptrtoint ptr %itv.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %itv.i.i, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %sg_handle.i.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %39, i32 30
  %46 = ptrtoint ptr %sg_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sg_handle.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i.i.i, i32 noundef %47, i32 noundef 12, i32 noundef 1) #5
  br label %ivtv_stream_sync_for_cpu.exit.i

ivtv_stream_sync_for_cpu.exit.i:                  ; preds = %if.then.i.i, %if.then15.i.ivtv_stream_sync_for_cpu.exit.i_crit_edge
  %48 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_mem, align 8
  %add.ptr.i = getelementptr i8, ptr %49, i32 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !182
  %51 = and i32 %50, 335544320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool21.not.i = icmp eq i32 %51, 0
  br i1 %tobool21.not.i, label %ivtv_stream_sync_for_cpu.exit.i.if.end67.i_crit_edge, label %do.body23.i

ivtv_stream_sync_for_cpu.exit.i.if.end67.i_crit_edge: ; preds = %ivtv_stream_sync_for_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67.i

do.body23.i:                                      ; preds = %ivtv_stream_sync_for_cpu.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %52 = load i32, ptr @ivtv_debug, align 4
  %and24.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %do.body23.i.do.body45.i_crit_edge, label %do.end29.i

do.body23.i.do.body45.i_crit_edge:                ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body45.i

do.end29.i:                                       ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #7
  %name32.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 19, i32 4
  %53 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_mem, align 8
  %add.ptr37.i = getelementptr i8, ptr %54, i32 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.i) #5, !srcloc !177
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !183
  %sg_processed.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %39, i32 33
  %57 = ptrtoint ptr %sg_processed.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sg_processed.i, align 8
  %sg_processing_size.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %39, i32 32
  %59 = ptrtoint ptr %sg_processing_size.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sg_processing_size.i, align 4
  %dma_retries.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 58
  %61 = ptrtoint ptr %dma_retries.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dma_retries.i, align 8
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name32.i, i32 noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef %62) #8
  br label %do.body45.i

do.body45.i:                                      ; preds = %do.end29.i, %do.body23.i.do.body45.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !184
  tail call void @arm_heavy_mb() #5
  %63 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg_mem, align 8
  %add.ptr51.i = getelementptr i8, ptr %64, i32 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i) #5, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !185
  %and55.i = and i32 %65, 50331648
  %66 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_mem, align 8
  %add.ptr57.i = getelementptr i8, ptr %67, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.i, i32 %and55.i) #5, !srcloc !175
  %dma_retries58.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 58
  %68 = ptrtoint ptr %dma_retries58.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dma_retries58.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %69)
  %cmp59.i = icmp eq i32 %69, 3
  br i1 %cmp59.i, label %if.then60.i, label %if.else.i

if.then60.i:                                      ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %dma_retries58.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %dma_retries58.i, align 8
  %sg_processing_size62.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %39, i32 32
  %71 = ptrtoint ptr %sg_processing_size62.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sg_processing_size62.i, align 4
  %sg_processed63.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %39, i32 33
  %73 = ptrtoint ptr %sg_processed63.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %sg_processed63.i, align 8
  br label %if.end67.i

if.else.i:                                        ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #7
  %sg_processed64.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %39, i32 33
  %74 = ptrtoint ptr %sg_processed64.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %sg_processed64.i, align 8
  %inc.i = add i32 %69, 1
  %75 = ptrtoint ptr %dma_retries58.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %inc.i, ptr %dma_retries58.i, align 8
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.else.i, %if.then60.i, %ivtv_stream_sync_for_cpu.exit.i.if.end67.i_crit_edge
  %sg_processed68.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %39, i32 33
  %76 = ptrtoint ptr %sg_processed68.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sg_processed68.i, align 8
  %sg_processing_size69.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %39, i32 32
  %78 = ptrtoint ptr %sg_processing_size69.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sg_processing_size69.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %79)
  %cmp70.i = icmp slt i32 %77, %79
  br i1 %cmp70.i, label %if.then71.i, label %if.end72.i

if.then71.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @ivtv_dma_dec_start_xfer(ptr noundef %arrayidx.i) #5
  br label %if.end93

if.end72.i:                                       ; preds = %if.end67.i
  %type.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %39, i32 3
  %80 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %81)
  %cmp73.i = icmp eq i32 %81, 8
  %spec.select.i = select i1 %cmp73.i, i32 2, i32 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %82 = load i32, ptr @ivtv_debug, align 4
  %83 = and i32 %82, 1056
  call void @__sanitizer_cov_trace_const_cmp4(i32 1056, i32 %83)
  %.not155.i = icmp eq i32 %83, 1056
  br i1 %.not155.i, label %do.end85.i, label %if.end72.i.do.end94.i_crit_edge

if.end72.i.do.end94.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end94.i

do.end85.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #7
  %name88.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 19, i32 4
  %name90.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %39, i32 2
  %84 = ptrtoint ptr %name90.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %name90.i, align 4
  %bytesused.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %39, i32 24, i32 3
  %86 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bytesused.i, align 4
  %call91.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name88.i, ptr noundef %85, i32 noundef %87) #8
  br label %do.end94.i

do.end94.i:                                       ; preds = %do.end85.i, %if.end72.i.do.end94.i_crit_edge
  %q_dma95.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %39, i32 24
  %bytesused96.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %39, i32 24, i32 3
  %88 = ptrtoint ptr %bytesused96.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bytesused96.i, align 4
  %call97.i = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %dev_id, i32 noundef 11, i32 noundef 3, i32 noundef 0, i32 noundef %89, i32 noundef %spec.select.i) #5
  %call99156.i = tail call ptr @ivtv_dequeue(ptr noundef %arrayidx.i, ptr noundef %q_dma95.i) #5
  %cmp100.not157.i = icmp eq ptr %call99156.i, null
  br i1 %cmp100.not157.i, label %do.end94.i.while.end.i_crit_edge, label %while.body.lr.ph.i

do.end94.i.while.end.i_crit_edge:                 ; preds = %do.end94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %do.end94.i
  %itv.i152.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %39, i32 1
  %buf_size.i.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %39, i32 19
  %q_free.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %39, i32 21
  br label %while.body.i

while.body.i:                                     ; preds = %ivtv_buf_sync_for_cpu.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call99158.i = phi ptr [ %call99156.i, %while.body.lr.ph.i ], [ %call99.i, %ivtv_buf_sync_for_cpu.exit.i.while.body.i_crit_edge ]
  %90 = ptrtoint ptr %dma.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dma.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %91)
  %cmp.i.i.not.i151.i = icmp eq i32 %91, 3
  br i1 %cmp.i.i.not.i151.i, label %while.body.i.ivtv_buf_sync_for_cpu.exit.i_crit_edge, label %if.then.i154.i

while.body.i.ivtv_buf_sync_for_cpu.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ivtv_buf_sync_for_cpu.exit.i

if.then.i154.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %92 = ptrtoint ptr %itv.i152.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %itv.i152.i, align 8
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 8
  %dma_handle.i.i = getelementptr inbounds %struct.ivtv_buffer, ptr %call99158.i, i32 0, i32 1
  %96 = ptrtoint ptr %dma_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dma_handle.i.i, align 4
  %98 = ptrtoint ptr %buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %buf_size.i.i, align 8
  %add.i.i = add i32 %99, 256
  %dev.i.i153.i = getelementptr inbounds %struct.pci_dev, ptr %95, i32 0, i32 44
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i.i153.i, i32 noundef %97, i32 noundef %add.i.i, i32 noundef %91) #5
  br label %ivtv_buf_sync_for_cpu.exit.i

ivtv_buf_sync_for_cpu.exit.i:                     ; preds = %if.then.i154.i, %while.body.i.ivtv_buf_sync_for_cpu.exit.i_crit_edge
  tail call void @ivtv_enqueue(ptr noundef %arrayidx.i, ptr noundef nonnull %call99158.i, ptr noundef %q_free.i) #5
  %call99.i = tail call ptr @ivtv_dequeue(ptr noundef %arrayidx.i, ptr noundef %q_dma95.i) #5
  %cmp100.not.i = icmp eq ptr %call99.i, null
  br i1 %cmp100.not.i, label %ivtv_buf_sync_for_cpu.exit.i.while.end.i_crit_edge, label %ivtv_buf_sync_for_cpu.exit.i.while.body.i_crit_edge

ivtv_buf_sync_for_cpu.exit.i.while.body.i_crit_edge: ; preds = %ivtv_buf_sync_for_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

ivtv_buf_sync_for_cpu.exit.i.while.end.i_crit_edge: ; preds = %ivtv_buf_sync_for_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %ivtv_buf_sync_for_cpu.exit.i.while.end.i_crit_edge, %do.end94.i.while.end.i_crit_edge
  %waitq.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %39, i32 16
  tail call void @__wake_up(ptr noundef %waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %if.end101.i

if.end101.i:                                      ; preds = %while.end.i, %if.end11.i.if.end101.i_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %i_flags.i) #5
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %i_flags.i) #5
  %cur_dma_stream104.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 54
  %100 = ptrtoint ptr %cur_dma_stream104.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -1, ptr %cur_dma_stream104.i, align 8
  %dma_waitq.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 62
  tail call void @__wake_up(ptr noundef %dma_waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %if.end93

if.end93:                                         ; preds = %if.end101.i, %if.then71.i, %land.lhs.true9.i.if.end93_crit_edge, %if.end89.if.end93_crit_edge
  %and94 = and i32 %and, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end93.if.end97_crit_edge, label %if.then96

if.end93.if.end97_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

if.then96:                                        ; preds = %if.end93
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i) #5
  %101 = call ptr @memset(ptr %data.i, i32 255, i32 64)
  %enc_mbox.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 66
  call void @ivtv_api_get_data(ptr noundef %enc_mbox.i, i32 noundef 8, i32 noundef 2, ptr noundef nonnull %data.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %102 = load i32, ptr @ivtv_debug, align 4
  %103 = and i32 %102, 1088
  call void @__sanitizer_cov_trace_const_cmp4(i32 1088, i32 %103)
  %.not.i340 = icmp eq i32 %103, 1088
  br i1 %.not.i340, label %do.end.i344, label %if.then96.do.end7.i_crit_edge

if.then96.do.end7.i_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i

do.end.i344:                                      ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #7
  %name.i341 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 19, i32 4
  %104 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %data.i, align 4
  %arrayidx5.i = getelementptr inbounds [16 x i32], ptr %data.i, i32 0, i32 1
  %106 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx5.i, align 4
  %cur_dma_stream.i342 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 54
  %108 = ptrtoint ptr %cur_dma_stream.i342 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %cur_dma_stream.i342, align 8
  %call.i343 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name.i341, i32 noundef %105, i32 noundef %107, i32 noundef %109) #8
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i344, %if.then96.do.end7.i_crit_edge
  %dma_timer.i345 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 60
  %call8.i = call i32 @del_timer(ptr noundef %dma_timer.i345) #5
  %cur_dma_stream9.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 54
  %110 = ptrtoint ptr %cur_dma_stream9.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cur_dma_stream9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp.i346 = icmp slt i32 %111, 0
  br i1 %cmp.i346, label %do.end7.i.ivtv_irq_enc_dma_complete.exit_crit_edge, label %if.end11.i349

do.end7.i.ivtv_irq_enc_dma_complete.exit_crit_edge: ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ivtv_irq_enc_dma_complete.exit

if.end11.i349:                                    ; preds = %do.end7.i
  %arrayidx13.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %111
  %dma.i.i.i.i347 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %111, i32 8
  %112 = ptrtoint ptr %dma.i.i.i.i347 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %dma.i.i.i.i347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %113)
  %cmp.i.i.not.i.i348 = icmp eq i32 %113, 3
  br i1 %cmp.i.i.not.i.i348, label %if.end11.i349.ivtv_stream_sync_for_cpu.exit.i354_crit_edge, label %if.then.i.i353

if.end11.i349.ivtv_stream_sync_for_cpu.exit.i354_crit_edge: ; preds = %if.end11.i349
  call void @__sanitizer_cov_trace_pc() #7
  br label %ivtv_stream_sync_for_cpu.exit.i354

if.then.i.i353:                                   ; preds = %if.end11.i349
  call void @__sanitizer_cov_trace_pc() #7
  %itv.i.i350 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %111, i32 1
  %114 = ptrtoint ptr %itv.i.i350 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %itv.i.i350, align 8
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 8
  %sg_handle.i.i351 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %111, i32 30
  %118 = ptrtoint ptr %sg_handle.i.i351 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %sg_handle.i.i351, align 4
  %dev.i.i.i352 = getelementptr inbounds %struct.pci_dev, ptr %117, i32 0, i32 44
  call void @dma_sync_single_for_cpu(ptr noundef %dev.i.i.i352, i32 noundef %119, i32 noundef 12, i32 noundef 1) #5
  br label %ivtv_stream_sync_for_cpu.exit.i354

ivtv_stream_sync_for_cpu.exit.i354:               ; preds = %if.then.i.i353, %if.end11.i349.ivtv_stream_sync_for_cpu.exit.i354_crit_edge
  %120 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %data.i, align 4
  %and15.i = and i32 %121, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %ivtv_stream_sync_for_cpu.exit.i354.if.end52.i_crit_edge, label %do.body18.i

ivtv_stream_sync_for_cpu.exit.i354.if.end52.i_crit_edge: ; preds = %ivtv_stream_sync_for_cpu.exit.i354
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52.i

do.body18.i:                                      ; preds = %ivtv_stream_sync_for_cpu.exit.i354
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %122 = load i32, ptr @ivtv_debug, align 4
  %and19.i = and i32 %122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %do.body18.i.do.body34.i_crit_edge, label %do.end24.i

do.body18.i.do.body34.i_crit_edge:                ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body34.i

do.end24.i:                                       ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #7
  %name27.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 19, i32 4
  %dma_offset.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %111, i32 12
  %123 = ptrtoint ptr %dma_offset.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %dma_offset.i, align 8
  %sg_processed.i355 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %111, i32 33
  %125 = ptrtoint ptr %sg_processed.i355 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %sg_processed.i355, align 8
  %sg_processing_size.i356 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %111, i32 32
  %127 = ptrtoint ptr %sg_processing_size.i356 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %sg_processing_size.i356, align 4
  %dma_retries.i357 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 58
  %129 = ptrtoint ptr %dma_retries.i357 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %dma_retries.i357, align 8
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name27.i, i32 noundef %121, i32 noundef %124, i32 noundef %126, i32 noundef %128, i32 noundef %130) #8
  br label %do.body34.i

do.body34.i:                                      ; preds = %do.end24.i, %do.body18.i.do.body34.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !186
  call void @arm_heavy_mb() #5
  %131 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %reg_mem, align 8
  %add.ptr.i359 = getelementptr i8, ptr %132, i32 4
  %133 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i359) #5, !srcloc !177
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !187
  %and40.i = and i32 %133, 50331648
  %134 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %reg_mem, align 8
  %add.ptr42.i = getelementptr i8, ptr %135, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 %and40.i) #5, !srcloc !175
  %dma_retries43.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 58
  %136 = ptrtoint ptr %dma_retries43.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %dma_retries43.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %137)
  %cmp44.i = icmp eq i32 %137, 3
  br i1 %cmp44.i, label %if.then45.i, label %if.else.i361

if.then45.i:                                      ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #7
  %138 = ptrtoint ptr %dma_retries43.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %dma_retries43.i, align 8
  %sg_processing_size47.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %111, i32 32
  %139 = ptrtoint ptr %sg_processing_size47.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %sg_processing_size47.i, align 4
  %sg_processed48.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %111, i32 33
  %141 = ptrtoint ptr %sg_processed48.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %sg_processed48.i, align 8
  br label %if.end52.i

if.else.i361:                                     ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #7
  %sg_processed49.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %111, i32 33
  %142 = ptrtoint ptr %sg_processed49.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %sg_processed49.i, align 8
  %inc.i360 = add i32 %137, 1
  %143 = ptrtoint ptr %dma_retries43.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %inc.i360, ptr %dma_retries43.i, align 8
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.else.i361, %if.then45.i, %ivtv_stream_sync_for_cpu.exit.i354.if.end52.i_crit_edge
  %sg_processed53.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %111, i32 33
  %144 = ptrtoint ptr %sg_processed53.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %sg_processed53.i, align 8
  %sg_processing_size54.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %111, i32 32
  %146 = ptrtoint ptr %sg_processing_size54.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %sg_processing_size54.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %147)
  %cmp55.i = icmp slt i32 %145, %147
  br i1 %cmp55.i, label %if.then56.i, label %if.end57.i

if.then56.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @ivtv_dma_enc_start_xfer(ptr noundef %arrayidx13.i) #5
  br label %ivtv_irq_enc_dma_complete.exit

if.end57.i:                                       ; preds = %if.end52.i
  %i_flags.i362 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 26
  call void @_clear_bit(i32 noundef 0, ptr noundef %i_flags.i362) #5
  %148 = ptrtoint ptr %cur_dma_stream9.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 -1, ptr %cur_dma_stream9.i, align 8
  call fastcc void @dma_post(ptr noundef %arrayidx13.i) #5
  %s_flags.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %111, i32 7
  %call59.i = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %s_flags.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %if.end57.i.if.end64.i_crit_edge, label %if.then61.i

if.end57.i.if.end64.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64.i

if.then61.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx63.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 2
  call fastcc void @dma_post(ptr noundef %arrayidx63.i) #5
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then61.i, %if.end57.i.if.end64.i_crit_edge
  %s.0.i = phi ptr [ %arrayidx63.i, %if.then61.i ], [ %arrayidx13.i, %if.end57.i.if.end64.i_crit_edge ]
  %sg_processing_size65.i = getelementptr inbounds %struct.ivtv_stream, ptr %s.0.i, i32 0, i32 32
  %149 = ptrtoint ptr %sg_processing_size65.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %sg_processing_size65.i, align 4
  %sg_processed66.i = getelementptr inbounds %struct.ivtv_stream, ptr %s.0.i, i32 0, i32 33
  %150 = ptrtoint ptr %sg_processed66.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %sg_processed66.i, align 8
  %dma_waitq.i363 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 62
  call void @__wake_up(ptr noundef %dma_waitq.i363, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %ivtv_irq_enc_dma_complete.exit

ivtv_irq_enc_dma_complete.exit:                   ; preds = %if.end64.i, %if.then56.i, %do.end7.i.ivtv_irq_enc_dma_complete.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i) #5
  br label %if.end97

if.end97:                                         ; preds = %ivtv_irq_enc_dma_complete.exit, %if.end93.if.end97_crit_edge
  %and98 = and i32 %and, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.end97.if.end101_crit_edge, label %if.then100

if.end97.if.end101_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

if.then100:                                       ; preds = %if.end97
  %cur_pio_stream.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 55
  %151 = ptrtoint ptr %cur_pio_stream.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %cur_pio_stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %152)
  %153 = icmp ugt i32 %152, 8
  br i1 %153, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #7
  %154 = ptrtoint ptr %cur_pio_stream.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 -1, ptr %cur_pio_stream.i, align 4
  br label %if.end101

if.end.i:                                         ; preds = %if.then100
  %arrayidx.i364 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %152
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %155 = load i32, ptr @ivtv_debug, align 4
  %156 = and i32 %155, 1088
  call void @__sanitizer_cov_trace_const_cmp4(i32 1088, i32 %156)
  %.not.i365 = icmp eq i32 %156, 1088
  br i1 %.not.i365, label %do.end.i368, label %if.end.i.do.end12.i_crit_edge

if.end.i.do.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12.i

do.end.i368:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i366 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 19, i32 4
  %name9.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %152, i32 2
  %157 = ptrtoint ptr %name9.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %name9.i, align 4
  %call.i367 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i366, ptr noundef %158) #8
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i368, %if.end.i.do.end12.i_crit_edge
  %i_flags.i369 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 26
  call void @_clear_bit(i32 noundef 19, ptr noundef %i_flags.i369) #5
  %159 = ptrtoint ptr %cur_pio_stream.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 -1, ptr %cur_pio_stream.i, align 4
  call fastcc void @dma_post(ptr noundef %arrayidx.i364) #5
  %type.i370 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %152, i32 3
  %160 = ptrtoint ptr %type.i370 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %type.i370, align 8
  %162 = zext i32 %161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values)
  switch i32 %161, label %do.end12.i.if.end28.i_crit_edge [
    i32 0, label %do.end12.i.if.end28.sink.split.i_crit_edge
    i32 1, label %if.then19.i
    i32 3, label %if.then24.i
  ]

do.end12.i.if.end28.sink.split.i_crit_edge:       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.sink.split.i

do.end12.i.if.end28.i_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

if.then19.i:                                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.sink.split.i

if.then24.i:                                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.sink.split.i

if.end28.sink.split.i:                            ; preds = %if.then24.i, %if.then19.i, %do.end12.i.if.end28.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1, %if.then19.i ], [ 2, %if.then24.i ], [ %161, %do.end12.i.if.end28.sink.split.i_crit_edge ]
  %call20.i = call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %dev_id, i32 noundef 204, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef %.sink.i) #5
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.end28.sink.split.i, %do.end12.i.if.end28.i_crit_edge
  call void @_clear_bit(i32 noundef 19, ptr noundef %i_flags.i369) #5
  %s_flags.i371 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %152, i32 7
  %call30.i372 = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %s_flags.i371) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i372)
  %tobool31.not.i = icmp eq i32 %call30.i372, 0
  br i1 %tobool31.not.i, label %if.end28.i.if.end35.i_crit_edge, label %if.then32.i

if.end28.i.if.end35.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

if.then32.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx34.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 2
  call fastcc void @dma_post(ptr noundef %arrayidx34.i) #5
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then32.i, %if.end28.i.if.end35.i_crit_edge
  %dma_waitq.i373 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 62
  call void @__wake_up(ptr noundef %dma_waitq.i373, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %if.end101

if.end101:                                        ; preds = %if.end35.i, %if.then.i, %if.end97.if.end101_crit_edge
  %and102 = and i32 %and, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end101.if.end105_crit_edge, label %if.then104

if.end101.if.end105_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105

if.then104:                                       ; preds = %if.end101
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i374) #5
  %163 = call ptr @memset(ptr %data.i374, i32 255, i32 64)
  %dma_timer.i375 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 60
  %call.i376 = call i32 @del_timer(ptr noundef %dma_timer.i375) #5
  %enc_mbox.i377 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 66
  call void @ivtv_api_get_data(ptr noundef %enc_mbox.i377, i32 noundef 8, i32 noundef 2, ptr noundef nonnull %data.i374) #5
  %164 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %reg_mem, align 8
  %add.ptr.i379 = getelementptr i8, ptr %165, i32 4
  %166 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i379) #5, !srcloc !177
  %167 = call i32 @llvm.bswap.i32(i32 %166) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !188
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %168 = load i32, ptr @ivtv_debug, align 4
  %and.i = and i32 %168, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then104.do.end9.i_crit_edge, label %do.end.i382

if.then104.do.end9.i_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i

do.end.i382:                                      ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #7
  %name.i380 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 19, i32 4
  %169 = ptrtoint ptr %data.i374 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %data.i374, align 4
  %arrayidx6.i = getelementptr inbounds [16 x i32], ptr %data.i374, i32 0, i32 1
  %171 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx6.i, align 4
  %cur_dma_stream.i381 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 54
  %173 = ptrtoint ptr %cur_dma_stream.i381 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %cur_dma_stream.i381, align 8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %name.i380, i32 noundef %170, i32 noundef %172, i32 noundef %167, i32 noundef %174) #8
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i382, %if.then104.do.end9.i_crit_edge
  %and10.i = and i32 %167, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and10.i)
  %cmp.i383 = icmp eq i32 %and10.i, 3
  br i1 %cmp.i383, label %do.body12.i, label %do.end9.i.if.end17.i_crit_edge

do.end9.i.if.end17.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

do.body12.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !189
  call void @arm_heavy_mb() #5
  %175 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %reg_mem, align 8
  %add.ptr16.i = getelementptr i8, ptr %176, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 50331648) #5, !srcloc !175
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.body12.i, %do.end9.i.if.end17.i_crit_edge
  %i_flags.i384 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 26
  %177 = ptrtoint ptr %i_flags.i384 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load volatile i32, ptr %i_flags.i384, align 4
  %179 = and i32 %178, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool19.not.i = icmp eq i32 %179, 0
  br i1 %tobool19.not.i, label %land.lhs.true.i, label %if.end17.i.if.end42.i_crit_edge

if.end17.i.if.end42.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

land.lhs.true.i:                                  ; preds = %if.end17.i
  %cur_dma_stream20.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 54
  %180 = ptrtoint ptr %cur_dma_stream20.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %cur_dma_stream20.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %181)
  %182 = icmp ult i32 %181, 9
  br i1 %182, label %if.then25.i, label %land.lhs.true.i.if.end42.i_crit_edge

land.lhs.true.i.if.end42.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

if.then25.i:                                      ; preds = %land.lhs.true.i
  %arrayidx27.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %181
  %type.i385 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %181, i32 3
  %183 = ptrtoint ptr %type.i385 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %type.i385, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %184)
  %cmp28.i = icmp sgt i32 %184, 4
  br i1 %cmp28.i, label %if.then29.i, label %if.else.i386

if.then29.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @ivtv_dma_dec_start(ptr noundef %arrayidx27.i) #5
  br label %ivtv_irq_dma_err.exit

if.else.i386:                                     ; preds = %if.then25.i
  %and30.i = and i32 %167, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %cmp31.i = icmp eq i32 %and30.i, 0
  br i1 %cmp31.i, label %if.then32.i387, label %if.end36.i

if.then32.i387:                                   ; preds = %if.else.i386
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %185 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %185, 60
  %expires.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 60, i32 1
  %186 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %add.i, ptr %expires.i, align 4
  call void @add_timer(ptr noundef %dma_timer.i375) #5
  br label %ivtv_irq_dma_err.exit

if.end36.i:                                       ; preds = %if.else.i386
  %dma_retries.i388 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 58
  %187 = ptrtoint ptr %dma_retries.i388 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %dma_retries.i388, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %188)
  %cmp37.i = icmp slt i32 %188, 3
  br i1 %cmp37.i, label %if.then38.i, label %if.end36.i.if.end42.i_crit_edge

if.end36.i.if.end42.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

if.then38.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  %sg_processed.i389 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %181, i32 33
  %189 = ptrtoint ptr %sg_processed.i389 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %sg_processed.i389, align 8
  %inc.i390 = add nsw i32 %188, 1
  %190 = ptrtoint ptr %dma_retries.i388 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %inc.i390, ptr %dma_retries.i388, align 8
  call fastcc void @ivtv_dma_enc_start_xfer(ptr noundef %arrayidx27.i) #5
  br label %ivtv_irq_dma_err.exit

if.end42.i:                                       ; preds = %if.end36.i.if.end42.i_crit_edge, %land.lhs.true.i.if.end42.i_crit_edge, %if.end17.i.if.end42.i_crit_edge
  %191 = ptrtoint ptr %i_flags.i384 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load volatile i32, ptr %i_flags.i384, align 4
  %193 = and i32 %192, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool45.not.i = icmp eq i32 %193, 0
  br i1 %tobool45.not.i, label %if.end47.i, label %if.then46.i

if.then46.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @ivtv_udma_start(ptr noundef %dev_id) #5
  br label %ivtv_irq_dma_err.exit

if.end47.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @_clear_bit(i32 noundef 1, ptr noundef %i_flags.i384) #5
  call void @_clear_bit(i32 noundef 0, ptr noundef %i_flags.i384) #5
  %cur_dma_stream50.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 54
  %194 = ptrtoint ptr %cur_dma_stream50.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 -1, ptr %cur_dma_stream50.i, align 8
  %dma_waitq.i391 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 62
  call void @__wake_up(ptr noundef %dma_waitq.i391, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %ivtv_irq_dma_err.exit

ivtv_irq_dma_err.exit:                            ; preds = %if.end47.i, %if.then46.i, %if.then38.i, %if.then32.i387, %if.then29.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i374) #5
  br label %if.end105

if.end105:                                        ; preds = %ivtv_irq_dma_err.exit, %if.end101.if.end105_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and)
  %tobool107.not = icmp sgt i32 %and, -1
  br i1 %tobool107.not, label %if.end105.if.end109_crit_edge, label %if.then108

if.end105.if.end109_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109

if.then108:                                       ; preds = %if.end105
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i392) #5
  %195 = call ptr @memset(ptr %data.i392, i32 255, i32 64)
  %enc_mbox.i393 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 66
  call void @ivtv_api_get_data(ptr noundef %enc_mbox.i393, i32 noundef 9, i32 noundef 7, ptr noundef nonnull %data.i392) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %196 = load i32, ptr @ivtv_debug, align 4
  %197 = and i32 %196, 1088
  call void @__sanitizer_cov_trace_const_cmp4(i32 1088, i32 %197)
  %.not.i394 = icmp eq i32 %197, 1088
  br i1 %.not.i394, label %do.end.i399, label %if.then108.do.end8.i_crit_edge

if.then108.do.end8.i_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8.i

do.end.i399:                                      ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #7
  %name.i395 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 19, i32 4
  %198 = ptrtoint ptr %data.i392 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %data.i392, align 4
  %arrayidx5.i396 = getelementptr inbounds [16 x i32], ptr %data.i392, i32 0, i32 1
  %200 = ptrtoint ptr %arrayidx5.i396 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx5.i396, align 4
  %arrayidx6.i397 = getelementptr inbounds [16 x i32], ptr %data.i392, i32 0, i32 2
  %202 = ptrtoint ptr %arrayidx6.i397 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx6.i397, align 4
  %call.i398 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name.i395, i32 noundef %199, i32 noundef %201, i32 noundef %203) #8
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i399, %if.then108.do.end8.i_crit_edge
  %204 = ptrtoint ptr %data.i392 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %data.i392, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %205)
  %cmp.i400 = icmp ugt i32 %205, 2
  br i1 %cmp.i400, label %do.end8.i.do.body16.i_crit_edge, label %lor.lhs.false.i

do.end8.i.do.body16.i_crit_edge:                  ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body16.i

lor.lhs.false.i:                                  ; preds = %do.end8.i
  %arrayidx10.i = getelementptr inbounds [16 x i32], ptr %data.i392, i32 0, i32 1
  %206 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %cmp11.i = icmp eq i32 %207, 0
  br i1 %cmp11.i, label %lor.lhs.false.i.do.body16.i_crit_edge, label %lor.lhs.false12.i

lor.lhs.false.i.do.body16.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body16.i

lor.lhs.false12.i:                                ; preds = %lor.lhs.false.i
  %arrayidx13.i401 = getelementptr inbounds [16 x i32], ptr %data.i392, i32 0, i32 2
  %208 = ptrtoint ptr %arrayidx13.i401 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx13.i401, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %cmp14.i = icmp eq i32 %209, 0
  br i1 %cmp14.i, label %lor.lhs.false12.i.do.body16.i_crit_edge, label %if.end34.i

lor.lhs.false12.i.do.body16.i_crit_edge:          ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body16.i

do.body16.i:                                      ; preds = %lor.lhs.false12.i.do.body16.i_crit_edge, %lor.lhs.false.i.do.body16.i_crit_edge, %do.end8.i.do.body16.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %210 = load i32, ptr @ivtv_debug, align 4
  %and17.i = and i32 %210, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %do.body16.i.ivtv_irq_enc_start_cap.exit_crit_edge, label %do.end22.i

do.body16.i.ivtv_irq_enc_start_cap.exit_crit_edge: ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ivtv_irq_enc_start_cap.exit

do.end22.i:                                       ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #7
  %name25.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 19, i32 4
  %arrayidx28.i = getelementptr inbounds [16 x i32], ptr %data.i392, i32 0, i32 1
  %211 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %arrayidx28.i, align 4
  %arrayidx29.i = getelementptr inbounds [16 x i32], ptr %data.i392, i32 0, i32 2
  %213 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx29.i, align 4
  %call30.i402 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name25.i, i32 noundef %205, i32 noundef %212, i32 noundef %214) #8
  br label %ivtv_irq_enc_start_cap.exit

if.end34.i:                                       ; preds = %lor.lhs.false12.i
  %arrayidx36.i = getelementptr [4 x i32], ptr @ivtv_stream_map, i32 0, i32 %205
  %215 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %arrayidx36.i, align 4
  %arrayidx37.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %216
  %call39.i = call fastcc i32 @stream_enc_dma_append(ptr noundef %arrayidx37.i, ptr noundef nonnull %data.i392) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.then41.i, label %if.end34.i.ivtv_irq_enc_start_cap.exit_crit_edge

if.end34.i.ivtv_irq_enc_start_cap.exit_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ivtv_irq_enc_start_cap.exit

if.then41.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  %dma.i.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %216, i32 8
  %217 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %dma.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %218)
  %cmp.i.not.i = icmp eq i32 %218, 3
  %cond.i = select i1 %cmp.i.not.i, i32 9, i32 0
  %s_flags.i403 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %216, i32 7
  call void @_set_bit(i32 noundef %cond.i, ptr noundef %s_flags.i403) #5
  br label %ivtv_irq_enc_start_cap.exit

ivtv_irq_enc_start_cap.exit:                      ; preds = %if.then41.i, %if.end34.i.ivtv_irq_enc_start_cap.exit_crit_edge, %do.end22.i, %do.body16.i.ivtv_irq_enc_start_cap.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i392) #5
  br label %if.end109

if.end109:                                        ; preds = %ivtv_irq_enc_start_cap.exit, %if.end105.if.end109_crit_edge
  %and110 = and i32 %and, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.end109.if.end113_crit_edge, label %if.then112

if.end109.if.end113_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end113

if.then112:                                       ; preds = %if.end109
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i404) #5
  %219 = call ptr @memset(ptr %data.i404, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %220 = load i32, ptr @ivtv_debug, align 4
  %221 = and i32 %220, 1088
  call void @__sanitizer_cov_trace_const_cmp4(i32 1088, i32 %221)
  %.not.i405 = icmp eq i32 %221, 1088
  br i1 %.not.i405, label %do.end.i408, label %if.then112.do.end5.i412_crit_edge

if.then112.do.end5.i412_crit_edge:                ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5.i412

do.end.i408:                                      ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #7
  %name.i406 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 19, i32 4
  %call.i407 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %name.i406) #8
  br label %do.end5.i412

do.end5.i412:                                     ; preds = %do.end.i408, %if.then112.do.end5.i412_crit_edge
  %arrayidx.i409 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 2
  %call7.i410 = call fastcc i32 @stream_enc_dma_append(ptr noundef %arrayidx.i409, ptr noundef nonnull %data.i404) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i410)
  %tobool8.not.i411 = icmp eq i32 %call7.i410, 0
  br i1 %tobool8.not.i411, label %if.then9.i, label %do.end5.i412.ivtv_irq_enc_vbi_cap.exit_crit_edge

do.end5.i412.ivtv_irq_enc_vbi_cap.exit_crit_edge: ; preds = %do.end5.i412
  call void @__sanitizer_cov_trace_pc() #7
  br label %ivtv_irq_enc_vbi_cap.exit

if.then9.i:                                       ; preds = %do.end5.i412
  call void @__sanitizer_cov_trace_pc() #7
  %dma.i.i413 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 2, i32 8
  %222 = ptrtoint ptr %dma.i.i413 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %dma.i.i413, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %223)
  %cmp.i.not.i414 = icmp eq i32 %223, 3
  %cond.i415 = select i1 %cmp.i.not.i414, i32 9, i32 0
  %s_flags.i416 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 2, i32 7
  call void @_set_bit(i32 noundef %cond.i415, ptr noundef %s_flags.i416) #5
  br label %ivtv_irq_enc_vbi_cap.exit

ivtv_irq_enc_vbi_cap.exit:                        ; preds = %if.then9.i, %do.end5.i412.ivtv_irq_enc_vbi_cap.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i404) #5
  br label %if.end113

if.end113:                                        ; preds = %ivtv_irq_enc_vbi_cap.exit, %if.end109.if.end113_crit_edge
  %and114 = and i32 %and, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end113.if.end117_crit_edge, label %if.then116

if.end113.if.end117_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

if.then116:                                       ; preds = %if.end113
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i417) #5
  %224 = call ptr @memset(ptr %data.i417, i32 255, i32 64)
  %arrayidx.i418 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %225 = load i32, ptr @ivtv_debug, align 4
  %226 = and i32 %225, 1088
  call void @__sanitizer_cov_trace_const_cmp4(i32 1088, i32 %226)
  %.not.i419 = icmp eq i32 %226, 1088
  br i1 %.not.i419, label %do.end.i422, label %if.then116.do.end5.i424_crit_edge

if.then116.do.end5.i424_crit_edge:                ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5.i424

do.end.i422:                                      ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #7
  %name.i420 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 19, i32 4
  %call.i421 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %name.i420) #8
  br label %do.end5.i424

do.end5.i424:                                     ; preds = %do.end.i422, %if.then116.do.end5.i424_crit_edge
  %s_flags.i423 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 6, i32 7
  %227 = ptrtoint ptr %s_flags.i423 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load volatile i32, ptr %s_flags.i423, align 4
  %229 = and i32 %228, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %tobool7.not.i = icmp eq i32 %229, 0
  br i1 %tobool7.not.i, label %do.end5.i424.ivtv_irq_dec_vbi_reinsert.exit_crit_edge, label %land.lhs.true8.i

do.end5.i424.ivtv_irq_dec_vbi_reinsert.exit_crit_edge: ; preds = %do.end5.i424
  call void @__sanitizer_cov_trace_pc() #7
  br label %ivtv_irq_dec_vbi_reinsert.exit

land.lhs.true8.i:                                 ; preds = %do.end5.i424
  %call10.i = call fastcc i32 @stream_enc_dma_append(ptr noundef %arrayidx.i418, ptr noundef nonnull %data.i417) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %land.lhs.true8.i.ivtv_irq_dec_vbi_reinsert.exit_crit_edge

land.lhs.true8.i.ivtv_irq_dec_vbi_reinsert.exit_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ivtv_irq_dec_vbi_reinsert.exit

if.then12.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @_set_bit(i32 noundef 9, ptr noundef %s_flags.i423) #5
  br label %ivtv_irq_dec_vbi_reinsert.exit

ivtv_irq_dec_vbi_reinsert.exit:                   ; preds = %if.then12.i, %land.lhs.true8.i.ivtv_irq_dec_vbi_reinsert.exit_crit_edge, %do.end5.i424.ivtv_irq_dec_vbi_reinsert.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i417) #5
  br label %if.end117

if.end117:                                        ; preds = %ivtv_irq_dec_vbi_reinsert.exit, %if.end113.if.end117_crit_edge
  %and118 = and i32 %and, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end117.if.end136_crit_edge, label %do.body121

if.end117.if.end136_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end136

do.body121:                                       ; preds = %if.end117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %230 = load i32, ptr @ivtv_debug, align 4
  %and122 = and i32 %230, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %do.body121.do.end135_crit_edge, label %do.end127

do.body121.do.end135_crit_edge:                   ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end135

do.end127:                                        ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #7
  %name130 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 19, i32 4
  %call132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name130) #8
  br label %do.end135

do.end135:                                        ; preds = %do.end127, %do.body121.do.end135_crit_edge
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 26
  call void @_set_bit(i32 noundef 4, ptr noundef %i_flags) #5
  %eos_waitq = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 63
  call void @__wake_up(ptr noundef %eos_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %if.end136

if.end136:                                        ; preds = %do.end135, %if.end117.if.end136_crit_edge
  %and137 = and i32 %and, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.end136.if.end140_crit_edge, label %if.then139

if.end136.if.end140_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end140

if.then139:                                       ; preds = %if.end136
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i425) #5
  %231 = call ptr @memset(ptr %data.i425, i32 255, i32 64)
  %i_flags.i426 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 26
  %232 = ptrtoint ptr %i_flags.i426 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load volatile i32, ptr %i_flags.i426, align 4
  %234 = and i32 %233, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %tobool.not.i427 = icmp eq i32 %234, 0
  %dec_mbox5.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 67
  br i1 %tobool.not.i427, label %if.else.i436, label %if.then.i432

if.then.i432:                                     ; preds = %if.then139
  call void @ivtv_api_get_data(ptr noundef %dec_mbox5.i, i32 noundef 9, i32 noundef 2, ptr noundef nonnull %data.i425) #5
  %v4l2_src_h.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 90, i32 68
  %235 = ptrtoint ptr %v4l2_src_h.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %v4l2_src_h.i, align 4
  %add.i428 = add i32 %236, 31
  %and.i429 = and i32 %add.i428, -32
  %mul.i = mul i32 %and.i429, 1080
  %dma_data_req_size.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 57
  %237 = ptrtoint ptr %dma_data_req_size.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %mul.i, ptr %dma_data_req_size.i, align 4
  %arrayidx.i430 = getelementptr inbounds [16 x i32], ptr %data.i425, i32 0, i32 1
  %238 = ptrtoint ptr %arrayidx.i430 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx.i430, align 4
  %dma_data_req_offset.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 56
  %240 = ptrtoint ptr %dma_data_req_offset.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %239, ptr %dma_data_req_offset.i, align 8
  %next_dma_frame.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 90, i32 53
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %next_dma_frame.i, i32 noundef 4) #5
  %241 = ptrtoint ptr %next_dma_frame.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load volatile i32, ptr %next_dma_frame.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %242)
  %cmp.i431 = icmp sgt i32 %242, -1
  br i1 %cmp.i431, label %if.then3.i, label %if.then.i432.if.end.i433_crit_edge

if.then.i432.if.end.i433_crit_edge:               ; preds = %if.then.i432
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i433

if.then3.i:                                       ; preds = %if.then.i432
  call void @__sanitizer_cov_trace_pc() #7
  call void @ivtv_yuv_frame_complete(ptr noundef %dev_id) #5
  br label %if.end.i433

if.end.i433:                                      ; preds = %if.then3.i, %if.then.i432.if.end.i433_crit_edge
  %arrayidx4.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 8
  br label %do.body.i

if.else.i436:                                     ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #7
  call void @ivtv_api_get_data(ptr noundef %dec_mbox5.i, i32 noundef 9, i32 noundef 3, ptr noundef nonnull %data.i425) #5
  %arrayidx7.i = getelementptr inbounds [16 x i32], ptr %data.i425, i32 0, i32 2
  %243 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %arrayidx7.i, align 4
  %245 = call i32 @llvm.umin.i32(i32 %244, i32 65536) #5
  %dma_data_req_size9.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 57
  %246 = ptrtoint ptr %dma_data_req_size9.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %245, ptr %dma_data_req_size9.i, align 4
  %arrayidx10.i434 = getelementptr inbounds [16 x i32], ptr %data.i425, i32 0, i32 1
  %247 = ptrtoint ptr %arrayidx10.i434 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx10.i434, align 4
  %dma_data_req_offset11.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 56
  %249 = ptrtoint ptr %dma_data_req_offset11.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %dma_data_req_offset11.i, align 8
  %arrayidx13.i435 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 5
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i436, %if.end.i433
  %s.0.i437 = phi ptr [ %arrayidx4.i, %if.end.i433 ], [ %arrayidx13.i435, %if.else.i436 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %250 = load i32, ptr @ivtv_debug, align 4
  %251 = and i32 %250, 1088
  call void @__sanitizer_cov_trace_const_cmp4(i32 1088, i32 %251)
  %.not.i438 = icmp eq i32 %251, 1088
  br i1 %.not.i438, label %do.end.i441, label %do.body.i.do.end29.i443_crit_edge

do.body.i.do.end29.i443_crit_edge:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end29.i443

do.end.i441:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i439 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 19, i32 4
  %name23.i = getelementptr inbounds %struct.ivtv_stream, ptr %s.0.i437, i32 0, i32 2
  %252 = ptrtoint ptr %name23.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %name23.i, align 4
  %bytesused.i440 = getelementptr inbounds %struct.ivtv_stream, ptr %s.0.i437, i32 0, i32 22, i32 3
  %254 = ptrtoint ptr %bytesused.i440 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %bytesused.i440, align 4
  %dma_data_req_offset24.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 56
  %256 = ptrtoint ptr %dma_data_req_offset24.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %dma_data_req_offset24.i, align 8
  %dma_data_req_size25.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 57
  %258 = ptrtoint ptr %dma_data_req_size25.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %dma_data_req_size25.i, align 4
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name.i439, ptr noundef %253, i32 noundef %255, i32 noundef %257, i32 noundef %259) #8
  br label %do.end29.i443

do.end29.i443:                                    ; preds = %do.end.i441, %do.body.i.do.end29.i443_crit_edge
  %dma_data_req_size30.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 57
  %260 = ptrtoint ptr %dma_data_req_size30.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %dma_data_req_size30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %261)
  %cmp31.i442 = icmp eq i32 %261, 0
  br i1 %cmp31.i442, label %do.end29.i443.if.then36.i_crit_edge, label %lor.lhs.false.i444

do.end29.i443.if.then36.i_crit_edge:              ; preds = %do.end29.i443
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then36.i

lor.lhs.false.i444:                               ; preds = %do.end29.i443
  %q_full32.i = getelementptr inbounds %struct.ivtv_stream, ptr %s.0.i437, i32 0, i32 22
  %bytesused33.i = getelementptr inbounds %struct.ivtv_stream, ptr %s.0.i437, i32 0, i32 22, i32 3
  %262 = ptrtoint ptr %bytesused33.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %bytesused33.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %263, i32 %261)
  %cmp35.i = icmp ult i32 %263, %261
  br i1 %cmp35.i, label %lor.lhs.false.i444.if.then36.i_crit_edge, label %if.else37.i

lor.lhs.false.i444.if.then36.i_crit_edge:         ; preds = %lor.lhs.false.i444
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then36.i

if.then36.i:                                      ; preds = %lor.lhs.false.i444.if.then36.i_crit_edge, %do.end29.i443.if.then36.i_crit_edge
  %s_flags.i445 = getelementptr inbounds %struct.ivtv_stream, ptr %s.0.i437, i32 0, i32 7
  call void @_set_bit(i32 noundef 2, ptr noundef %s_flags.i445) #5
  br label %ivtv_irq_dec_data_req.exit

if.else37.i:                                      ; preds = %lor.lhs.false.i444
  %264 = ptrtoint ptr %i_flags.i426 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load volatile i32, ptr %i_flags.i426, align 4
  %266 = and i32 %265, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %tobool40.not.i446 = icmp eq i32 %266, 0
  br i1 %tobool40.not.i446, label %if.else37.i.if.end42.i448_crit_edge, label %if.then41.i447

if.else37.i.if.end42.i448_crit_edge:              ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i448

if.then41.i447:                                   ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @ivtv_yuv_setup_stream_frame(ptr noundef %dev_id) #5
  br label %if.end42.i448

if.end42.i448:                                    ; preds = %if.then41.i447, %if.else37.i.if.end42.i448_crit_edge
  %s_flags43.i = getelementptr inbounds %struct.ivtv_stream, ptr %s.0.i437, i32 0, i32 7
  call void @_clear_bit(i32 noundef 2, ptr noundef %s_flags43.i) #5
  %q_predma.i = getelementptr inbounds %struct.ivtv_stream, ptr %s.0.i437, i32 0, i32 25
  %267 = ptrtoint ptr %dma_data_req_size30.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %dma_data_req_size30.i, align 4
  %call46.i = call i32 @ivtv_queue_move(ptr noundef %s.0.i437, ptr noundef %q_full32.i, ptr noundef null, ptr noundef %q_predma.i, i32 noundef %268) #5
  %dma_data_req_offset47.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 56
  %269 = ptrtoint ptr %dma_data_req_offset47.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %dma_data_req_offset47.i, align 8
  %add48.i = add i32 %270, 16777216
  call void @ivtv_dma_stream_dec_prepare(ptr noundef %s.0.i437, i32 noundef %add48.i, i32 noundef 0) #5
  br label %ivtv_irq_dec_data_req.exit

ivtv_irq_dec_data_req.exit:                       ; preds = %if.end42.i448, %if.then36.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i425) #5
  br label %if.end140

if.end140:                                        ; preds = %ivtv_irq_dec_data_req.exit, %if.end136.if.end140_crit_edge, %do.end27, %do.body21.if.end140_crit_edge
  %271 = xor i1 %tobool.not, true
  %272 = ptrtoint ptr %irqmask to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %irqmask, align 4
  %neg142 = and i32 %273, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg142)
  %tobool144.not.not = icmp eq i32 %neg142, 0
  br i1 %tobool144.not.not, label %if.then145, label %if.end140.if.end146_crit_edge

if.end140.if.end146_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end146

if.then145:                                       ; preds = %if.end140
  %274 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %reg_mem, align 8
  %add.ptr.i450 = getelementptr i8, ptr %275, i32 10432
  %276 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i450) #5, !srcloc !177
  %277 = lshr i32 %276, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !190
  %and.i451 = and i32 %277, 1
  %next_dma_frame.i452 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 90, i32 53
  %call.i.i.i453 = call zeroext i1 @__kasan_check_read(ptr noundef %next_dma_frame.i452, i32 noundef 4) #5
  %278 = ptrtoint ptr %next_dma_frame.i452 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load volatile i32, ptr %next_dma_frame.i452, align 4
  %arrayidx.i454 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 90, i32 58, i32 %279
  %sync_field.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 90, i32 58, i32 %279, i32 20
  %280 = ptrtoint ptr %sync_field.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %sync_field.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i451, i32 %281)
  %cmp.i455 = icmp eq i32 %and.i451, %281
  br i1 %cmp.i455, label %land.lhs.true.i457, label %if.then145.lor.lhs.false.i458_crit_edge

if.then145.lor.lhs.false.i458_crit_edge:          ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false.i458

land.lhs.true.i457:                               ; preds = %if.then145
  %last_vsync_field.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 61
  %282 = ptrtoint ptr %last_vsync_field.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %last_vsync_field.i, align 4
  %and3.i = and i32 %283, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %and.i451)
  %tobool.not.i456 = icmp eq i32 %and3.i, %and.i451
  br i1 %tobool.not.i456, label %land.lhs.true.i457.lor.lhs.false.i458_crit_edge, label %land.lhs.true.i457.if.then.i460_crit_edge

land.lhs.true.i457.if.then.i460_crit_edge:        ; preds = %land.lhs.true.i457
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i460

land.lhs.true.i457.lor.lhs.false.i458_crit_edge:  ; preds = %land.lhs.true.i457
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false.i458

lor.lhs.false.i458:                               ; preds = %land.lhs.true.i457.lor.lhs.false.i458_crit_edge, %if.then145.lor.lhs.false.i458_crit_edge
  %last_vsync_field6.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 61
  %284 = ptrtoint ptr %last_vsync_field6.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %last_vsync_field6.i, align 4
  %and7.i = and i32 %285, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i451, i32 %and7.i)
  %cmp8.not.i = icmp eq i32 %and.i451, %and7.i
  br i1 %cmp8.not.i, label %lor.lhs.false.i458.if.end56.i_crit_edge, label %land.lhs.true9.i459

lor.lhs.false.i458.if.end56.i_crit_edge:          ; preds = %lor.lhs.false.i458
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i

land.lhs.true9.i459:                              ; preds = %lor.lhs.false.i458
  %interlaced.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 90, i32 58, i32 %279, i32 22
  %286 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %interlaced.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %tobool10.not.i = icmp eq i32 %287, 0
  br i1 %tobool10.not.i, label %land.lhs.true9.i459.if.then.i460_crit_edge, label %land.lhs.true9.i459.if.end56.i_crit_edge

land.lhs.true9.i459.if.end56.i_crit_edge:         ; preds = %land.lhs.true9.i459
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i

land.lhs.true9.i459.if.then.i460_crit_edge:       ; preds = %land.lhs.true9.i459
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i460

if.then.i460:                                     ; preds = %land.lhs.true9.i459.if.then.i460_crit_edge, %land.lhs.true.i457.if.then.i460_crit_edge
  %interlaced12.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 90, i32 58, i32 %279, i32 22
  %288 = ptrtoint ptr %interlaced12.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %interlaced12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %289)
  %tobool13.not.i = icmp eq i32 %289, 0
  br i1 %tobool13.not.i, label %if.then.i460.if.then19.i461_crit_edge, label %land.lhs.true14.i

if.then.i460.if.then19.i461_crit_edge:            ; preds = %if.then.i460
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19.i461

land.lhs.true14.i:                                ; preds = %if.then.i460
  %delay.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 90, i32 58, i32 %279, i32 21
  %290 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %tobool15.not.i = icmp eq i32 %291, 0
  br i1 %tobool15.not.i, label %land.lhs.true14.i.if.then19.i461_crit_edge, label %land.lhs.true16.i

land.lhs.true14.i.if.then19.i461_crit_edge:       ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19.i461

land.lhs.true16.i:                                ; preds = %land.lhs.true14.i
  %fields_lapsed.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 90, i32 57
  %292 = ptrtoint ptr %fields_lapsed.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %fields_lapsed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %293)
  %cmp17.i = icmp ne i8 %293, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %279)
  %cmp20.i = icmp sgt i32 %279, -1
  %or.cond.i = select i1 %cmp17.i, i1 %cmp20.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true16.i.land.lhs.true22.i_crit_edge, label %land.lhs.true16.i.if.end56.i_crit_edge

land.lhs.true16.i.if.end56.i_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i

land.lhs.true16.i.land.lhs.true22.i_crit_edge:    ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true22.i

if.then19.i461:                                   ; preds = %land.lhs.true14.i.if.then19.i461_crit_edge, %if.then.i460.if.then19.i461_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %279)
  %cmp20.old.i = icmp sgt i32 %279, -1
  br i1 %cmp20.old.i, label %if.then19.i461.land.lhs.true22.i_crit_edge, label %if.then19.i461.if.end56.i_crit_edge

if.then19.i461.if.end56.i_crit_edge:              ; preds = %if.then19.i461
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i

if.then19.i461.land.lhs.true22.i_crit_edge:       ; preds = %if.then19.i461
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true22.i

land.lhs.true22.i:                                ; preds = %if.then19.i461.land.lhs.true22.i_crit_edge, %land.lhs.true16.i.land.lhs.true22.i_crit_edge
  %next_fill_frame.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 90, i32 54
  %call.i.i202.i = call zeroext i1 @__kasan_check_read(ptr noundef %next_fill_frame.i, i32 noundef 4) #5
  %294 = ptrtoint ptr %next_fill_frame.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load volatile i32, ptr %next_fill_frame.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %279, i32 %295)
  %cmp24.not.i = icmp eq i32 %279, %295
  br i1 %cmp24.not.i, label %land.lhs.true22.i.if.end56.i_crit_edge, label %do.body.i466

land.lhs.true22.i.if.end56.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i

do.body.i466:                                     ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !191
  call void @arm_heavy_mb() #5
  %arrayidx27.i462 = getelementptr [8 x i32], ptr @yuv_offset, i32 0, i32 %279
  %296 = ptrtoint ptr %arrayidx27.i462 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %arrayidx27.i462, align 4
  %shr.i463 = lshr i32 %297, 4
  %298 = call i32 @llvm.bswap.i32(i32 %shr.i463) #5
  %299 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %reg_mem, align 8
  %add.ptr29.i = getelementptr i8, ptr %300, i32 2092
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 %298) #5, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !192
  call void @arm_heavy_mb() #5
  %add.i464 = add i32 %297, 414720
  %shr34.i = lshr i32 %add.i464, 4
  %301 = call i32 @llvm.bswap.i32(i32 %shr34.i) #5
  %302 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %reg_mem, align 8
  %add.ptr36.i = getelementptr i8, ptr %303, i32 2096
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %301) #5, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !193
  call void @arm_heavy_mb() #5
  %304 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %reg_mem, align 8
  %add.ptr43.i = getelementptr i8, ptr %305, i32 2100
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 %298) #5, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !194
  call void @arm_heavy_mb() #5
  %306 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %reg_mem, align 8
  %add.ptr51.i465 = getelementptr i8, ptr %307, i32 2104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i465, i32 %301) #5, !srcloc !175
  %add52.i = add nuw i32 %279, 1
  %rem.i = srem i32 %add52.i, 8
  %call.i.i203.i = call zeroext i1 @__kasan_check_write(ptr noundef %next_dma_frame.i452, i32 noundef 4) #5
  %308 = ptrtoint ptr %next_dma_frame.i452 to i32
  call void @__asan_store4_noabort(i32 %308)
  store volatile i32 %rem.i, ptr %next_dma_frame.i452, align 4
  %fields_lapsed54.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 90, i32 57
  %309 = ptrtoint ptr %fields_lapsed54.i to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 -1, ptr %fields_lapsed54.i, align 4
  %running.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 90, i32 69
  %310 = ptrtoint ptr %running.i to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 1, ptr %running.i, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %do.body.i466, %land.lhs.true22.i.if.end56.i_crit_edge, %if.then19.i461.if.end56.i_crit_edge, %land.lhs.true16.i.if.end56.i_crit_edge, %land.lhs.true9.i459.if.end56.i_crit_edge, %lor.lhs.false.i458.if.end56.i_crit_edge
  %last_vsync_field57.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 61
  %311 = ptrtoint ptr %last_vsync_field57.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %last_vsync_field57.i, align 4
  %and58.i = and i32 %312, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i451, i32 %and58.i)
  %cmp59.not.i = icmp eq i32 %and.i451, %and58.i
  br i1 %cmp59.not.i, label %if.end56.i.if.end146_crit_edge, label %if.then61.i468

if.end56.i.if.end146_crit_edge:                   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end146

if.then61.i468:                                   ; preds = %if.end56.i
  %call62.i = call ptr @ivtv_get_output_stream(ptr noundef %dev_id) #5
  %313 = ptrtoint ptr %last_vsync_field57.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %last_vsync_field57.i, align 4
  %add64.i = add i32 %314, 1
  store i32 %add64.i, ptr %last_vsync_field57.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i451)
  %cmp65.i = icmp eq i32 %and.i451, 0
  %i_flags.i467 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 26
  br i1 %cmp65.i, label %if.then67.i, label %if.else.i469

if.then67.i:                                      ; preds = %if.then61.i468
  call void @__sanitizer_cov_trace_pc() #7
  call void @_clear_bit(i32 noundef 14, ptr noundef %i_flags.i467) #5
  call void @_clear_bit(i32 noundef 30, ptr noundef %i_flags.i467) #5
  br label %if.end70.i

if.else.i469:                                     ; preds = %if.then61.i468
  call void @__sanitizer_cov_trace_pc() #7
  call void @_set_bit(i32 noundef 30, ptr noundef %i_flags.i467) #5
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.else.i469, %if.then67.i
  %315 = ptrtoint ptr %i_flags.i467 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load volatile i32, ptr %i_flags.i467, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %316)
  %tobool73.not.i = icmp sgt i32 %316, -1
  br i1 %tobool73.not.i, label %if.end79.i, label %if.then74.i

if.then74.i:                                      ; preds = %if.end70.i
  call void @_set_bit(i32 noundef 29, ptr noundef %i_flags.i467) #5
  %event_waitq.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 64
  call void @__wake_up(ptr noundef %event_waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  %cond201.i = icmp eq ptr %call62.i, null
  br i1 %cond201.i, label %if.then74.i.if.end86.i_crit_edge, label %if.end79.thread.i

if.then74.i.if.end86.i_crit_edge:                 ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86.i

if.end79.thread.i:                                ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #7
  %waitq.i470 = getelementptr inbounds %struct.ivtv_stream, ptr %call62.i, i32 0, i32 16
  call void @__wake_up(ptr noundef %waitq.i470, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %land.lhs.true81.i

if.end79.i:                                       ; preds = %if.end70.i
  %tobool80.not.i = icmp eq ptr %call62.i, null
  br i1 %tobool80.not.i, label %if.end79.i.if.end86.i_crit_edge, label %if.end79.i.land.lhs.true81.i_crit_edge

if.end79.i.land.lhs.true81.i_crit_edge:           ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true81.i

if.end79.i.if.end86.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86.i

land.lhs.true81.i:                                ; preds = %if.end79.i.land.lhs.true81.i_crit_edge, %if.end79.thread.i
  %v4l2_dev.i = getelementptr inbounds %struct.video_device, ptr %call62.i, i32 0, i32 7
  %317 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %v4l2_dev.i, align 4
  %tobool82.not.i = icmp eq ptr %318, null
  br i1 %tobool82.not.i, label %land.lhs.true81.i.if.end86.i_crit_edge, label %if.then83.i

land.lhs.true81.i.if.end86.i_crit_edge:           ; preds = %land.lhs.true81.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86.i

if.then83.i:                                      ; preds = %land.lhs.true81.i
  call void @__sanitizer_cov_trace_pc() #7
  %cond.i471 = select i1 %cmp65.i, ptr @ivtv_irq_vsync.evbottom, ptr @ivtv_irq_vsync.evtop
  call void @v4l2_event_queue(ptr noundef nonnull %call62.i, ptr noundef nonnull %cond.i471) #5
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.then83.i, %land.lhs.true81.i.if.end86.i_crit_edge, %if.end79.i.if.end86.i_crit_edge, %if.then74.i.if.end86.i_crit_edge
  %vsync_waitq.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 65
  call void @__wake_up(ptr noundef %vsync_waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br i1 %cmp65.i, label %if.end86.i.if.end106.i_crit_edge, label %land.lhs.true88.i

if.end86.i.if.end106.i_crit_edge:                 ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106.i

land.lhs.true88.i:                                ; preds = %if.end86.i
  %output_mode.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 31
  %319 = ptrtoint ptr %output_mode.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %output_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %320)
  %cmp89.i = icmp eq i32 %320, 4
  br i1 %cmp89.i, label %land.lhs.true88.i.if.then103.i_crit_edge, label %lor.lhs.false91.i

land.lhs.true88.i.if.then103.i_crit_edge:         ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then103.i

lor.lhs.false91.i:                                ; preds = %land.lhs.true88.i
  %321 = ptrtoint ptr %i_flags.i467 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load volatile i32, ptr %i_flags.i467, align 4
  %323 = and i32 %322, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %323)
  %tobool94.not.i = icmp eq i32 %323, 0
  br i1 %tobool94.not.i, label %lor.lhs.false95.i, label %lor.lhs.false91.i.if.then103.i_crit_edge

lor.lhs.false91.i.if.then103.i_crit_edge:         ; preds = %lor.lhs.false91.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then103.i

lor.lhs.false95.i:                                ; preds = %lor.lhs.false91.i
  %324 = ptrtoint ptr %i_flags.i467 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load volatile i32, ptr %i_flags.i467, align 4
  %326 = and i32 %325, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %326)
  %tobool98.not.i = icmp eq i32 %326, 0
  br i1 %tobool98.not.i, label %lor.lhs.false99.i, label %lor.lhs.false95.i.if.then103.i_crit_edge

lor.lhs.false95.i.if.then103.i_crit_edge:         ; preds = %lor.lhs.false95.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then103.i

lor.lhs.false99.i:                                ; preds = %lor.lhs.false95.i
  %327 = ptrtoint ptr %i_flags.i467 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load volatile i32, ptr %i_flags.i467, align 4
  %329 = and i32 %328, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %329)
  %tobool102.not.i = icmp eq i32 %329, 0
  br i1 %tobool102.not.i, label %lor.lhs.false99.i.if.end106.i_crit_edge, label %lor.lhs.false99.i.if.then103.i_crit_edge

lor.lhs.false99.i.if.then103.i_crit_edge:         ; preds = %lor.lhs.false99.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then103.i

lor.lhs.false99.i.if.end106.i_crit_edge:          ; preds = %lor.lhs.false99.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106.i

if.then103.i:                                     ; preds = %lor.lhs.false99.i.if.then103.i_crit_edge, %lor.lhs.false95.i.if.then103.i_crit_edge, %lor.lhs.false91.i.if.then103.i_crit_edge, %land.lhs.true88.i.if.then103.i_crit_edge
  call void @_set_bit(i32 noundef 16, ptr noundef %i_flags.i467) #5
  call void @_set_bit(i32 noundef 15, ptr noundef %i_flags.i467) #5
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then103.i, %lor.lhs.false99.i.if.end106.i_crit_edge, %if.end86.i.if.end106.i_crit_edge
  %running107.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 90, i32 69
  %330 = ptrtoint ptr %running107.i to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %running107.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %331)
  %tobool109.not.i = icmp eq i8 %331, 0
  br i1 %tobool109.not.i, label %if.end106.i.if.end133.i_crit_edge, label %land.lhs.true110.i

if.end106.i.if.end133.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133.i

land.lhs.true110.i:                               ; preds = %if.end106.i
  %yuv_forced_update.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 90, i32 55
  %332 = ptrtoint ptr %yuv_forced_update.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %yuv_forced_update.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %333)
  %tobool111.not.i = icmp eq i32 %333, 0
  %334 = ptrtoint ptr %arrayidx.i454 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %arrayidx.i454, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %335)
  %tobool113.not.i = icmp eq i32 %335, 0
  br i1 %tobool111.not.i, label %lor.lhs.false112.i, label %if.then114.i

lor.lhs.false112.i:                               ; preds = %land.lhs.true110.i
  br i1 %tobool113.not.i, label %lor.lhs.false112.i.if.end133.i_crit_edge, label %lor.lhs.false112.i.if.end125.i_crit_edge

lor.lhs.false112.i.if.end125.i_crit_edge:         ; preds = %lor.lhs.false112.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end125.i

lor.lhs.false112.i.if.end133.i_crit_edge:         ; preds = %lor.lhs.false112.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133.i

if.then114.i:                                     ; preds = %land.lhs.true110.i
  br i1 %tobool113.not.i, label %if.then117.i, label %if.then114.i.if.end125.i_crit_edge

if.then114.i.if.end125.i_crit_edge:               ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end125.i

if.then117.i:                                     ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i209.i = call zeroext i1 @__kasan_check_read(ptr noundef %next_dma_frame.i452, i32 noundef 4) #5
  %336 = ptrtoint ptr %next_dma_frame.i452 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load volatile i32, ptr %next_dma_frame.i452, align 4
  %conv120.i = add i32 %337, 7
  %conv121.i = and i32 %conv120.i, 7
  %arrayidx124.i = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 90, i32 58, i32 %conv121.i
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.then117.i, %if.then114.i.if.end125.i_crit_edge, %lor.lhs.false112.i.if.end125.i_crit_edge
  %last_dma_frame.0.i = phi i32 [ %279, %if.then114.i.if.end125.i_crit_edge ], [ %conv121.i, %if.then117.i ], [ %279, %lor.lhs.false112.i.if.end125.i_crit_edge ]
  %f.0.i = phi ptr [ %arrayidx.i454, %if.then114.i.if.end125.i_crit_edge ], [ %arrayidx124.i, %if.then117.i ], [ %arrayidx.i454, %lor.lhs.false112.i.if.end125.i_crit_edge ]
  %src_w.i = getelementptr inbounds %struct.yuv_frame_info, ptr %f.0.i, i32 0, i32 3
  %338 = ptrtoint ptr %src_w.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %src_w.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %339)
  %tobool126.not.i = icmp eq i32 %339, 0
  br i1 %tobool126.not.i, label %if.end125.i.if.end133.i_crit_edge, label %if.then127.i

if.end125.i.if.end133.i_crit_edge:                ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133.i

if.then127.i:                                     ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #7
  %update_frame.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 90, i32 56
  %340 = ptrtoint ptr %update_frame.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 %last_dma_frame.0.i, ptr %update_frame.i, align 4
  %341 = ptrtoint ptr %f.0.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 0, ptr %f.0.i, align 4
  %342 = ptrtoint ptr %yuv_forced_update.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 0, ptr %yuv_forced_update.i, align 4
  call void @_set_bit(i32 noundef 17, ptr noundef %i_flags.i467) #5
  call void @_set_bit(i32 noundef 15, ptr noundef %i_flags.i467) #5
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.then127.i, %if.end125.i.if.end133.i_crit_edge, %lor.lhs.false112.i.if.end133.i_crit_edge, %if.end106.i.if.end133.i_crit_edge
  %fields_lapsed134.i = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 90, i32 57
  %343 = ptrtoint ptr %fields_lapsed134.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %fields_lapsed134.i, align 4
  %inc.i472 = add i8 %344, 1
  store i8 %inc.i472, ptr %fields_lapsed134.i, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.end133.i, %if.end56.i.if.end146_crit_edge, %if.end140.if.end146_crit_edge
  %and147 = and i32 %and, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %if.end146.if.end165_crit_edge, label %do.body150

if.end146.if.end165_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end165

do.body150:                                       ; preds = %if.end146
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %345 = load i32, ptr @ivtv_debug, align 4
  %and151 = and i32 %345, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %do.body150.if.end165_crit_edge, label %do.end156

do.body150.if.end165_crit_edge:                   ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end165

do.end156:                                        ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #7
  %name159 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 19, i32 4
  %call161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name159) #8
  br label %if.end165

if.end165:                                        ; preds = %do.end156, %do.body150.if.end165_crit_edge, %if.end146.if.end165_crit_edge
  %and166 = and i32 %and, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %if.end165.if.end184_crit_edge, label %do.body169

if.end165.if.end184_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end184

do.body169:                                       ; preds = %if.end165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %346 = load i32, ptr @ivtv_debug, align 4
  %and170 = and i32 %346, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %do.body169.if.end184_crit_edge, label %do.end175

do.body169.if.end184_crit_edge:                   ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end184

do.end175:                                        ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #7
  %name178 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 19, i32 4
  %call180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name178) #8
  br label %if.end184

if.end184:                                        ; preds = %do.end175, %do.body169.if.end184_crit_edge, %if.end165.if.end184_crit_edge
  %and185 = and i32 %and, -1471348736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %if.end184.if.end247_crit_edge, label %land.lhs.true187

if.end184.if.end247_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end247

land.lhs.true187:                                 ; preds = %if.end184
  %i_flags188 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 26
  %347 = ptrtoint ptr %i_flags188 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load volatile i32, ptr %i_flags188, align 4
  %and1.i = and i32 %348, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool190.not = icmp eq i32 %and1.i, 0
  br i1 %tobool190.not, label %if.then191, label %land.lhs.true187.land.lhs.true213_crit_edge

land.lhs.true187.land.lhs.true213_crit_edge:      ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true213

if.then191:                                       ; preds = %land.lhs.true187
  %irq_rr_idx = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 49
  %349 = ptrtoint ptr %irq_rr_idx to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %irq_rr_idx, align 8
  %inc = add i32 %350, 1
  store i32 %inc, ptr %irq_rr_idx, align 8
  %rem = urem i32 %inc, 9
  %s_flags = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %rem, i32 7
  %call194 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %s_flags) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %for.inc, label %if.then191.if.end197_crit_edge

if.then191.if.end197_crit_edge:                   ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end197

if.end197:                                        ; preds = %for.inc.7.if.end197_crit_edge, %for.inc.6.if.end197_crit_edge, %for.inc.5.if.end197_crit_edge, %for.inc.4.if.end197_crit_edge, %for.inc.3.if.end197_crit_edge, %for.inc.2.if.end197_crit_edge, %for.inc.1.if.end197_crit_edge, %for.inc.if.end197_crit_edge, %if.then191.if.end197_crit_edge
  %rem.lcssa = phi i32 [ %rem, %if.then191.if.end197_crit_edge ], [ %rem.1, %for.inc.if.end197_crit_edge ], [ %rem.2, %for.inc.1.if.end197_crit_edge ], [ %rem.3, %for.inc.2.if.end197_crit_edge ], [ %rem.4, %for.inc.3.if.end197_crit_edge ], [ %rem.5, %for.inc.4.if.end197_crit_edge ], [ %rem.6, %for.inc.5.if.end197_crit_edge ], [ %rem.7, %for.inc.6.if.end197_crit_edge ], [ %rem.8, %for.inc.7.if.end197_crit_edge ]
  %arrayidx.le = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %rem.lcssa
  %type = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %rem.lcssa, i32 3
  %351 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %352)
  %cmp198 = icmp sgt i32 %352, 4
  br i1 %cmp198, label %if.then199, label %if.else

if.then199:                                       ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @ivtv_dma_dec_start(ptr noundef %arrayidx.le)
  br label %land.lhs.true213

if.else:                                          ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @ivtv_dma_enc_start(ptr noundef %arrayidx.le)
  br label %land.lhs.true213

for.inc:                                          ; preds = %if.then191
  %353 = ptrtoint ptr %irq_rr_idx to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %irq_rr_idx, align 8
  %add.1 = add i32 %354, 1
  %rem.1 = urem i32 %add.1, 9
  %s_flags.1 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %rem.1, i32 7
  %call194.1 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %s_flags.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194.1)
  %tobool195.not.1 = icmp eq i32 %call194.1, 0
  br i1 %tobool195.not.1, label %for.inc.1, label %for.inc.if.end197_crit_edge

for.inc.if.end197_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end197

for.inc.1:                                        ; preds = %for.inc
  %355 = ptrtoint ptr %irq_rr_idx to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %irq_rr_idx, align 8
  %add.2 = add i32 %356, 2
  %rem.2 = urem i32 %add.2, 9
  %s_flags.2 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %rem.2, i32 7
  %call194.2 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %s_flags.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194.2)
  %tobool195.not.2 = icmp eq i32 %call194.2, 0
  br i1 %tobool195.not.2, label %for.inc.2, label %for.inc.1.if.end197_crit_edge

for.inc.1.if.end197_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end197

for.inc.2:                                        ; preds = %for.inc.1
  %357 = ptrtoint ptr %irq_rr_idx to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %irq_rr_idx, align 8
  %add.3 = add i32 %358, 3
  %rem.3 = urem i32 %add.3, 9
  %s_flags.3 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %rem.3, i32 7
  %call194.3 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %s_flags.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194.3)
  %tobool195.not.3 = icmp eq i32 %call194.3, 0
  br i1 %tobool195.not.3, label %for.inc.3, label %for.inc.2.if.end197_crit_edge

for.inc.2.if.end197_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end197

for.inc.3:                                        ; preds = %for.inc.2
  %359 = ptrtoint ptr %irq_rr_idx to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %irq_rr_idx, align 8
  %add.4 = add i32 %360, 4
  %rem.4 = urem i32 %add.4, 9
  %s_flags.4 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %rem.4, i32 7
  %call194.4 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %s_flags.4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194.4)
  %tobool195.not.4 = icmp eq i32 %call194.4, 0
  br i1 %tobool195.not.4, label %for.inc.4, label %for.inc.3.if.end197_crit_edge

for.inc.3.if.end197_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end197

for.inc.4:                                        ; preds = %for.inc.3
  %361 = ptrtoint ptr %irq_rr_idx to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %irq_rr_idx, align 8
  %add.5 = add i32 %362, 5
  %rem.5 = urem i32 %add.5, 9
  %s_flags.5 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %rem.5, i32 7
  %call194.5 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %s_flags.5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194.5)
  %tobool195.not.5 = icmp eq i32 %call194.5, 0
  br i1 %tobool195.not.5, label %for.inc.5, label %for.inc.4.if.end197_crit_edge

for.inc.4.if.end197_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end197

for.inc.5:                                        ; preds = %for.inc.4
  %363 = ptrtoint ptr %irq_rr_idx to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %irq_rr_idx, align 8
  %add.6 = add i32 %364, 6
  %rem.6 = urem i32 %add.6, 9
  %s_flags.6 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %rem.6, i32 7
  %call194.6 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %s_flags.6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194.6)
  %tobool195.not.6 = icmp eq i32 %call194.6, 0
  br i1 %tobool195.not.6, label %for.inc.6, label %for.inc.5.if.end197_crit_edge

for.inc.5.if.end197_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end197

for.inc.6:                                        ; preds = %for.inc.5
  %365 = ptrtoint ptr %irq_rr_idx to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %irq_rr_idx, align 8
  %add.7 = add i32 %366, 7
  %rem.7 = urem i32 %add.7, 9
  %s_flags.7 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %rem.7, i32 7
  %call194.7 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %s_flags.7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194.7)
  %tobool195.not.7 = icmp eq i32 %call194.7, 0
  br i1 %tobool195.not.7, label %for.inc.7, label %for.inc.6.if.end197_crit_edge

for.inc.6.if.end197_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end197

for.inc.7:                                        ; preds = %for.inc.6
  %367 = ptrtoint ptr %irq_rr_idx to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %irq_rr_idx, align 8
  %add.8 = add i32 %368, 8
  %rem.8 = urem i32 %add.8, 9
  %s_flags.8 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %rem.8, i32 7
  %call194.8 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %s_flags.8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194.8)
  %tobool195.not.8 = icmp eq i32 %call194.8, 0
  br i1 %tobool195.not.8, label %land.lhs.true204, label %for.inc.7.if.end197_crit_edge

for.inc.7.if.end197_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end197

land.lhs.true204:                                 ; preds = %for.inc.7
  %369 = ptrtoint ptr %i_flags188 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load volatile i32, ptr %i_flags188, align 4
  %371 = and i32 %370, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %371)
  %tobool207.not = icmp eq i32 %371, 0
  br i1 %tobool207.not, label %land.lhs.true204.land.lhs.true213_crit_edge, label %if.then208

land.lhs.true204.land.lhs.true213_crit_edge:      ; preds = %land.lhs.true204
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true213

if.then208:                                       ; preds = %land.lhs.true204
  call void @__sanitizer_cov_trace_pc() #7
  call void @ivtv_udma_start(ptr noundef %dev_id) #5
  br label %land.lhs.true213

land.lhs.true213:                                 ; preds = %if.then208, %land.lhs.true204.land.lhs.true213_crit_edge, %if.else, %if.then199, %land.lhs.true187.land.lhs.true213_crit_edge
  %372 = ptrtoint ptr %i_flags188 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load volatile i32, ptr %i_flags188, align 4
  %374 = and i32 %373, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %374)
  %tobool216.not = icmp eq i32 %374, 0
  br i1 %tobool216.not, label %if.then217, label %land.lhs.true213.if.end247_crit_edge

land.lhs.true213.if.end247_crit_edge:             ; preds = %land.lhs.true213
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end247

if.then217:                                       ; preds = %land.lhs.true213
  %irq_rr_idx218 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 49
  %375 = ptrtoint ptr %irq_rr_idx218 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %irq_rr_idx218, align 8
  %inc219 = add i32 %376, 1
  store i32 %inc219, ptr %irq_rr_idx218, align 8
  %rem226 = urem i32 %inc219, 9
  %s_flags230 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %rem226, i32 7
  %call231 = call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %s_flags230) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %tobool232.not = icmp eq i32 %call231, 0
  br i1 %tobool232.not, label %for.cond220, label %if.then217.if.end234_crit_edge

if.then217.if.end234_crit_edge:                   ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end234

for.cond220:                                      ; preds = %if.then217
  %377 = ptrtoint ptr %irq_rr_idx218 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %irq_rr_idx218, align 8
  %add225.1 = add i32 %378, 1
  %rem226.1 = urem i32 %add225.1, 9
  %s_flags230.1 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %rem226.1, i32 7
  %call231.1 = call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %s_flags230.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231.1)
  %tobool232.not.1 = icmp eq i32 %call231.1, 0
  br i1 %tobool232.not.1, label %for.cond220.1, label %for.cond220.if.end234_crit_edge

for.cond220.if.end234_crit_edge:                  ; preds = %for.cond220
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end234

for.cond220.1:                                    ; preds = %for.cond220
  %379 = ptrtoint ptr %irq_rr_idx218 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %irq_rr_idx218, align 8
  %add225.2 = add i32 %380, 2
  %rem226.2 = urem i32 %add225.2, 9
  %s_flags230.2 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %rem226.2, i32 7
  %call231.2 = call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %s_flags230.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231.2)
  %tobool232.not.2 = icmp eq i32 %call231.2, 0
  br i1 %tobool232.not.2, label %for.cond220.2, label %for.cond220.1.if.end234_crit_edge

for.cond220.1.if.end234_crit_edge:                ; preds = %for.cond220.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end234

for.cond220.2:                                    ; preds = %for.cond220.1
  %381 = ptrtoint ptr %irq_rr_idx218 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %irq_rr_idx218, align 8
  %add225.3 = add i32 %382, 3
  %rem226.3 = urem i32 %add225.3, 9
  %s_flags230.3 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %rem226.3, i32 7
  %call231.3 = call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %s_flags230.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231.3)
  %tobool232.not.3 = icmp eq i32 %call231.3, 0
  br i1 %tobool232.not.3, label %for.cond220.3, label %for.cond220.2.if.end234_crit_edge

for.cond220.2.if.end234_crit_edge:                ; preds = %for.cond220.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end234

for.cond220.3:                                    ; preds = %for.cond220.2
  %383 = ptrtoint ptr %irq_rr_idx218 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %irq_rr_idx218, align 8
  %add225.4 = add i32 %384, 4
  %rem226.4 = urem i32 %add225.4, 9
  %s_flags230.4 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %rem226.4, i32 7
  %call231.4 = call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %s_flags230.4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231.4)
  %tobool232.not.4 = icmp eq i32 %call231.4, 0
  br i1 %tobool232.not.4, label %for.cond220.4, label %for.cond220.3.if.end234_crit_edge

for.cond220.3.if.end234_crit_edge:                ; preds = %for.cond220.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end234

for.cond220.4:                                    ; preds = %for.cond220.3
  %385 = ptrtoint ptr %irq_rr_idx218 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %irq_rr_idx218, align 8
  %add225.5 = add i32 %386, 5
  %rem226.5 = urem i32 %add225.5, 9
  %s_flags230.5 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %rem226.5, i32 7
  %call231.5 = call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %s_flags230.5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231.5)
  %tobool232.not.5 = icmp eq i32 %call231.5, 0
  br i1 %tobool232.not.5, label %for.cond220.5, label %for.cond220.4.if.end234_crit_edge

for.cond220.4.if.end234_crit_edge:                ; preds = %for.cond220.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end234

for.cond220.5:                                    ; preds = %for.cond220.4
  %387 = ptrtoint ptr %irq_rr_idx218 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %irq_rr_idx218, align 8
  %add225.6 = add i32 %388, 6
  %rem226.6 = urem i32 %add225.6, 9
  %s_flags230.6 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %rem226.6, i32 7
  %call231.6 = call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %s_flags230.6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231.6)
  %tobool232.not.6 = icmp eq i32 %call231.6, 0
  br i1 %tobool232.not.6, label %for.cond220.6, label %for.cond220.5.if.end234_crit_edge

for.cond220.5.if.end234_crit_edge:                ; preds = %for.cond220.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end234

for.cond220.6:                                    ; preds = %for.cond220.5
  %389 = ptrtoint ptr %irq_rr_idx218 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %irq_rr_idx218, align 8
  %add225.7 = add i32 %390, 7
  %rem226.7 = urem i32 %add225.7, 9
  %s_flags230.7 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %rem226.7, i32 7
  %call231.7 = call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %s_flags230.7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231.7)
  %tobool232.not.7 = icmp eq i32 %call231.7, 0
  br i1 %tobool232.not.7, label %for.cond220.7, label %for.cond220.6.if.end234_crit_edge

for.cond220.6.if.end234_crit_edge:                ; preds = %for.cond220.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end234

for.cond220.7:                                    ; preds = %for.cond220.6
  %391 = ptrtoint ptr %irq_rr_idx218 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %irq_rr_idx218, align 8
  %add225.8 = add i32 %392, 8
  %rem226.8 = urem i32 %add225.8, 9
  %s_flags230.8 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %rem226.8, i32 7
  %call231.8 = call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %s_flags230.8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231.8)
  %tobool232.not.8 = icmp eq i32 %call231.8, 0
  br i1 %tobool232.not.8, label %for.cond220.7.if.end247_crit_edge, label %for.cond220.7.if.end234_crit_edge

for.cond220.7.if.end234_crit_edge:                ; preds = %for.cond220.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end234

for.cond220.7.if.end247_crit_edge:                ; preds = %for.cond220.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end247

if.end234:                                        ; preds = %for.cond220.7.if.end234_crit_edge, %for.cond220.6.if.end234_crit_edge, %for.cond220.5.if.end234_crit_edge, %for.cond220.4.if.end234_crit_edge, %for.cond220.3.if.end234_crit_edge, %for.cond220.2.if.end234_crit_edge, %for.cond220.1.if.end234_crit_edge, %for.cond220.if.end234_crit_edge, %if.then217.if.end234_crit_edge
  %rem226.lcssa = phi i32 [ %rem226, %if.then217.if.end234_crit_edge ], [ %rem226.1, %for.cond220.if.end234_crit_edge ], [ %rem226.2, %for.cond220.1.if.end234_crit_edge ], [ %rem226.3, %for.cond220.2.if.end234_crit_edge ], [ %rem226.4, %for.cond220.3.if.end234_crit_edge ], [ %rem226.5, %for.cond220.4.if.end234_crit_edge ], [ %rem226.6, %for.cond220.5.if.end234_crit_edge ], [ %rem226.7, %for.cond220.6.if.end234_crit_edge ], [ %rem226.8, %for.cond220.7.if.end234_crit_edge ]
  %type235 = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %rem226.lcssa, i32 3
  %393 = ptrtoint ptr %type235 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %type235, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %394)
  %cmp236 = icmp eq i32 %394, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %394)
  %cmp238 = icmp slt i32 %394, 5
  %or.cond335 = or i1 %cmp236, %cmp238
  br i1 %or.cond335, label %if.then239, label %if.end234.if.end247_crit_edge

if.end234.if.end247_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end247

if.then239:                                       ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx229.le = getelementptr %struct.ivtv, ptr %dev_id, i32 0, i32 42, i32 %rem226.lcssa
  call fastcc void @ivtv_dma_enc_start(ptr noundef %arrayidx229.le)
  br label %if.end247

if.end247:                                        ; preds = %if.then239, %if.end234.if.end247_crit_edge, %for.cond220.7.if.end247_crit_edge, %land.lhs.true213.if.end247_crit_edge, %if.end184.if.end247_crit_edge
  %i_flags248 = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 26
  %call249 = call i32 @_test_and_clear_bit(i32 noundef 15, ptr noundef %i_flags248) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call249)
  %tobool250.not = icmp eq i32 %call249, 0
  br i1 %tobool250.not, label %if.end247.if.end253_crit_edge, label %if.then251

if.end247.if.end253_crit_edge:                    ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end253

if.then251:                                       ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #7
  %irq_worker = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 50
  %irq_work = getelementptr inbounds %struct.ivtv, ptr %dev_id, i32 0, i32 52
  %call252 = call zeroext i1 @kthread_queue_work(ptr noundef %irq_worker, ptr noundef %irq_work) #5
  br label %if.end253

if.end253:                                        ; preds = %if.then251, %if.end247.if.end253_crit_edge
  call void @_raw_spin_unlock(ptr noundef %dma_reg_lock) #5
  %cond = zext i1 %271 to i32
  br label %cleanup256

cleanup256:                                       ; preds = %if.end253, %if.then43
  %retval.0 = phi i32 [ %cond, %if.end253 ], [ 0, %if.then43 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ivtv_dma_enc_start(ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 8
  %arrayidx = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %2 = load i32, ptr @ivtv_debug, align 4
  %3 = and i32 %2, 1056
  call void @__sanitizer_cov_trace_const_cmp4(i32 1056, i32 %3)
  %.not = icmp eq i32 %3, 1056
  br i1 %.not, label %do.end, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %dma.i.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 8
  %4 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.i.i.not = icmp eq i32 %5, 3
  %cond = select i1 %cmp.i.i.not, ptr @.str.44, ptr @.str.45
  %name6 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 2
  %6 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name6, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %name, ptr noundef nonnull %cond, ptr noundef %7) #8
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %bytesused = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 25, i32 3
  %8 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytesused, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %do.end9.if.end16_crit_edge, label %if.then11

do.end9.if.end16_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then11:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  %q_predma = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 25
  %q_dma = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 24
  %call15 = tail call i32 @ivtv_queue_move(ptr noundef %s, ptr noundef %q_predma, ptr noundef null, ptr noundef %q_dma, i32 noundef %9) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %do.end9.if.end16_crit_edge
  %dma.i.i157 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 8
  %10 = ptrtoint ptr %dma.i.i157 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma.i.i157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i.i158.not = icmp eq i32 %11, 3
  br i1 %cmp.i.i158.not, label %if.end16.if.end21_crit_edge, label %if.then19

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %sg_pending = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 27
  %12 = ptrtoint ptr %sg_pending to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sg_pending, align 8
  %sg_pending_size = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 31
  %14 = ptrtoint ptr %sg_pending_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sg_pending_size, align 8
  %sub = add i32 %15, -1
  %size = getelementptr %struct.ivtv_sg_host_element, ptr %13, i32 %sub, i32 2
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  %add = add i32 %17, 256
  store i32 %add, ptr %size, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16.if.end21_crit_edge
  %s_flags = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %s_flags) #5
  %type = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 3
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %land.lhs.true22, label %if.end21.if.end76_crit_edge

if.end21.if.end76_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

land.lhs.true22:                                  ; preds = %if.end21
  %sg_pending_size23 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 2, i32 31
  %20 = ptrtoint ptr %sg_pending_size23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sg_pending_size23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool24.not = icmp eq i32 %21, 0
  br i1 %tobool24.not, label %land.lhs.true22.if.end76_crit_edge, label %land.lhs.true25

land.lhs.true22.if.end76_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %sg_pending_size26 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 31
  %22 = ptrtoint ptr %sg_pending_size26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sg_pending_size26, align 8
  %add28 = add i32 %23, %21
  %buffers = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 18
  %24 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buffers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add28, i32 %25)
  %cmp29.not = icmp ugt i32 %add28, %25
  br i1 %cmp29.not, label %land.lhs.true25.if.end76_crit_edge, label %if.then30

land.lhs.true25.if.end76_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.then30:                                        ; preds = %land.lhs.true25
  %q_predma31 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 2, i32 25
  %q_dma32 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 2, i32 24
  %bytesused34 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 2, i32 25, i32 3
  %26 = ptrtoint ptr %bytesused34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bytesused34, align 8
  %call35 = tail call i32 @ivtv_queue_move(ptr noundef %arrayidx, ptr noundef %q_predma31, ptr noundef null, ptr noundef %q_dma32, i32 noundef %27) #5
  %dma.i.i160 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 2, i32 8
  %28 = ptrtoint ptr %dma.i.i160 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma.i.i160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp.i.i161.not = icmp eq i32 %29, 3
  br i1 %cmp.i.i161.not, label %if.then30.if.end45_crit_edge, label %if.then38

if.then30.if.end45_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then38:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  %sg_pending39 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 2, i32 27
  %30 = ptrtoint ptr %sg_pending39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sg_pending39, align 8
  %32 = ptrtoint ptr %sg_pending_size23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sg_pending_size23, align 8
  %sub41 = add i32 %33, -1
  %size43 = getelementptr %struct.ivtv_sg_host_element, ptr %31, i32 %sub41, i32 2
  %34 = ptrtoint ptr %size43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size43, align 4
  %add44 = add i32 %35, 256
  store i32 %add44, ptr %size43, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then38, %if.then30.if.end45_crit_edge
  %36 = ptrtoint ptr %sg_pending_size23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sg_pending_size23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp47164 = icmp sgt i32 %37, 0
  br i1 %cmp47164, label %for.body.lr.ph, label %if.end45.for.end_crit_edge

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end45
  %sg_pending48 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 27
  %sg_pending51 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 2, i32 27
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0165 = phi i32 [ 0, %for.body.lr.ph ], [ %inc53, %for.body.for.body_crit_edge ]
  %38 = ptrtoint ptr %sg_pending48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sg_pending48, align 8
  %40 = ptrtoint ptr %sg_pending_size26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sg_pending_size26, align 8
  %inc = add i32 %41, 1
  store i32 %inc, ptr %sg_pending_size26, align 8
  %arrayidx50 = getelementptr %struct.ivtv_sg_host_element, ptr %39, i32 %41
  %42 = ptrtoint ptr %sg_pending51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sg_pending51, align 8
  %arrayidx52 = getelementptr %struct.ivtv_sg_host_element, ptr %43, i32 %i.0165
  %44 = call ptr @memcpy(ptr %arrayidx50, ptr %arrayidx52, i32 12)
  %inc53 = add nuw nsw i32 %i.0165, 1
  %45 = ptrtoint ptr %sg_pending_size23 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sg_pending_size23, align 8
  %cmp47 = icmp slt i32 %inc53, %46
  br i1 %cmp47, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end45.for.end_crit_edge
  %pending_offset = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 2, i32 9
  %47 = ptrtoint ptr %pending_offset to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pending_offset, align 8
  %dma_offset = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 2, i32 12
  %49 = ptrtoint ptr %dma_offset to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %dma_offset, align 8
  %50 = ptrtoint ptr %sg_pending_size23 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %sg_pending_size23, align 8
  %dma_xfer_cnt = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 2, i32 26
  %51 = ptrtoint ptr %dma_xfer_cnt to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %dma_xfer_cnt, align 4
  %inc55 = add i16 %52, 1
  store i16 %inc55, ptr %dma_xfer_cnt, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %s_flags) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %53 = load i32, ptr @ivtv_debug, align 4
  %54 = and i32 %53, 1056
  call void @__sanitizer_cov_trace_const_cmp4(i32 1056, i32 %54)
  %.not163 = icmp eq i32 %54, 1056
  br i1 %.not163, label %do.end66, label %for.end.if.end76_crit_edge

for.end.if.end76_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

do.end66:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %name69 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %name71 = getelementptr %struct.ivtv, ptr %1, i32 0, i32 42, i32 2, i32 2
  %55 = ptrtoint ptr %name71 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name71, align 4
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %name69, ptr noundef %56) #8
  br label %if.end76

if.end76:                                         ; preds = %do.end66, %for.end.if.end76_crit_edge, %land.lhs.true25.if.end76_crit_edge, %land.lhs.true22.if.end76_crit_edge, %if.end21.if.end76_crit_edge
  %dma_xfer_cnt77 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 26
  %57 = ptrtoint ptr %dma_xfer_cnt77 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %dma_xfer_cnt77, align 4
  %inc78 = add i16 %58, 1
  store i16 %inc78, ptr %dma_xfer_cnt77, align 4
  %sg_processing = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 28
  %59 = ptrtoint ptr %sg_processing to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sg_processing, align 4
  %sg_pending79 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 27
  %61 = ptrtoint ptr %sg_pending79 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sg_pending79, align 8
  %sg_pending_size80 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 31
  %63 = ptrtoint ptr %sg_pending_size80 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sg_pending_size80, align 8
  %mul = mul i32 %64, 12
  %65 = call ptr @memcpy(ptr %60, ptr %62, i32 %mul)
  %66 = load i32, ptr %sg_pending_size80, align 8
  %sg_processing_size = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 32
  %67 = ptrtoint ptr %sg_processing_size to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %sg_processing_size, align 4
  store i32 0, ptr %sg_pending_size80, align 8
  %sg_processed = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 33
  %68 = ptrtoint ptr %sg_processed to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %sg_processed, align 8
  %pending_offset83 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 9
  %69 = ptrtoint ptr %pending_offset83 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pending_offset83, align 8
  %dma_offset84 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 12
  %71 = ptrtoint ptr %dma_offset84 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %dma_offset84, align 8
  %pending_backup = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 10
  %72 = ptrtoint ptr %pending_backup to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pending_backup, align 4
  %dma_backup = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 13
  %74 = ptrtoint ptr %dma_backup to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %dma_backup, align 4
  %pending_pts = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 11
  %75 = ptrtoint ptr %pending_pts to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %pending_pts, align 8
  %dma_pts = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 14
  %77 = ptrtoint ptr %dma_pts to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %dma_pts, align 8
  %78 = ptrtoint ptr %dma.i.i157 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dma.i.i157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %79)
  %cmp.i.not = icmp eq i32 %79, 3
  br i1 %cmp.i.not, label %if.then87, label %if.else

if.then87:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 26
  tail call void @_set_bit(i32 noundef 18, ptr noundef %i_flags) #5
  tail call void @_set_bit(i32 noundef 15, ptr noundef %i_flags) #5
  tail call void @_set_bit(i32 noundef 19, ptr noundef %i_flags) #5
  %80 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %type, align 8
  %cur_pio_stream = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 55
  %82 = ptrtoint ptr %cur_pio_stream to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %cur_pio_stream, align 4
  br label %if.end93

if.else:                                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  %dma_retries = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 58
  %83 = ptrtoint ptr %dma_retries to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %dma_retries, align 8
  tail call fastcc void @ivtv_dma_enc_start_xfer(ptr noundef %s)
  %i_flags91 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 26
  tail call void @_set_bit(i32 noundef 0, ptr noundef %i_flags91) #5
  %84 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %type, align 8
  %cur_dma_stream = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 54
  %86 = ptrtoint ptr %cur_dma_stream to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %cur_dma_stream, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.else, %if.then87
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_udma_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_unfinished_dma(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr i8, ptr %t, i32 -43684
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr i8, ptr %t, i32 -44484
  %reg_mem = getelementptr i8, ptr %t, i32 -44604
  %2 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_mem, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !177
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !195
  %cur_dma_stream = getelementptr i8, ptr %t, i32 -28284
  %6 = ptrtoint ptr %cur_dma_stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_dma_stream, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name, i32 noundef %5, i32 noundef %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !196
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_mem, align 8
  %add.ptr13 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #5, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !197
  %and = and i32 %10, 50331648
  %11 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_mem, align 8
  %add.ptr18 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %and) #5, !srcloc !175
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %i_flags) #5
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %i_flags) #5
  %13 = ptrtoint ptr %cur_dma_stream to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %cur_dma_stream, align 8
  %dma_waitq = getelementptr i8, ptr %t, i32 52
  tail call void @__wake_up(ptr noundef %dma_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ivtv_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_enqueue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_queue_move(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ivtv_dma_dec_start_xfer(ptr nocapture noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 8
  %sg_processing = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 28
  %2 = ptrtoint ptr %sg_processing to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg_processing, align 4
  %sg_processed = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 33
  %4 = ptrtoint ptr %sg_processed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sg_processed, align 8
  %arrayidx = getelementptr %struct.ivtv_sg_host_element, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %sg_dma = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 29
  %9 = ptrtoint ptr %sg_dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sg_dma, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %10, align 4
  %12 = ptrtoint ptr %sg_processing to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sg_processing, align 4
  %14 = ptrtoint ptr %sg_processed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sg_processed, align 8
  %dst = getelementptr %struct.ivtv_sg_host_element, ptr %13, i32 %15, i32 1
  %16 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dst, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %sg_dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sg_dma, align 8
  %dst7 = getelementptr inbounds %struct.ivtv_sg_element, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %dst7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %dst7, align 4
  %22 = ptrtoint ptr %sg_processing to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sg_processing, align 4
  %24 = ptrtoint ptr %sg_processed to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sg_processed, align 8
  %size = getelementptr %struct.ivtv_sg_host_element, ptr %23, i32 %25, i32 2
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 4
  %or = or i32 %27, -2147483648
  %28 = tail call i32 @llvm.bswap.i32(i32 %or)
  %29 = ptrtoint ptr %sg_dma to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sg_dma, align 8
  %size12 = getelementptr inbounds %struct.ivtv_sg_element, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %size12 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %size12, align 4
  %32 = ptrtoint ptr %sg_processed to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sg_processed, align 8
  %inc = add i32 %33, 1
  store i32 %inc, ptr %sg_processed, align 8
  %dma.i.i.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 8
  %34 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp.i.i.not.i = icmp eq i32 %35, 3
  br i1 %cmp.i.i.not.i, label %entry.ivtv_stream_sync_for_device.exit_crit_edge, label %if.then.i

entry.ivtv_stream_sync_for_device.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ivtv_stream_sync_for_device.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %itv1, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %sg_handle.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 30
  %40 = ptrtoint ptr %sg_handle.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sg_handle.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  tail call void @dma_sync_single_for_device(ptr noundef %dev.i.i, i32 noundef %41, i32 noundef 12, i32 noundef 1) #5
  br label %ivtv_stream_sync_for_device.exit

ivtv_stream_sync_for_device.exit:                 ; preds = %if.then.i, %entry.ivtv_stream_sync_for_device.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !198
  tail call void @arm_heavy_mb() #5
  %sg_handle = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 30
  %42 = ptrtoint ptr %sg_handle to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sg_handle, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %reg_mem = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 17
  %45 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %46, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %44) #5, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !199
  tail call void @arm_heavy_mb() #5
  %47 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_mem, align 8
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #5, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !200
  %50 = or i32 %49, 16777216
  %51 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_mem, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #5, !srcloc !175
  %53 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_mem, align 8
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #5, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %56, 30
  %dma_timer = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 60
  %expires = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 60, i32 1
  %57 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %dma_timer) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_vapi(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_api_get_data(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ivtv_dma_enc_start_xfer(ptr nocapture noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 8
  %sg_processing = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 28
  %2 = ptrtoint ptr %sg_processing to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg_processing, align 4
  %sg_processed = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 33
  %4 = ptrtoint ptr %sg_processed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sg_processed, align 8
  %arrayidx = getelementptr %struct.ivtv_sg_host_element, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %sg_dma = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 29
  %9 = ptrtoint ptr %sg_dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sg_dma, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %10, align 4
  %12 = ptrtoint ptr %sg_processing to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sg_processing, align 4
  %14 = ptrtoint ptr %sg_processed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sg_processed, align 8
  %dst = getelementptr %struct.ivtv_sg_host_element, ptr %13, i32 %15, i32 1
  %16 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dst, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %sg_dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sg_dma, align 8
  %dst7 = getelementptr inbounds %struct.ivtv_sg_element, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %dst7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %dst7, align 4
  %22 = ptrtoint ptr %sg_processing to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sg_processing, align 4
  %24 = ptrtoint ptr %sg_processed to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sg_processed, align 8
  %size = getelementptr %struct.ivtv_sg_host_element, ptr %23, i32 %25, i32 2
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 4
  %or = or i32 %27, -2147483648
  %28 = tail call i32 @llvm.bswap.i32(i32 %or)
  %29 = ptrtoint ptr %sg_dma to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sg_dma, align 8
  %size12 = getelementptr inbounds %struct.ivtv_sg_element, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %size12 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %size12, align 4
  %32 = ptrtoint ptr %sg_processed to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sg_processed, align 8
  %inc = add i32 %33, 1
  store i32 %inc, ptr %sg_processed, align 8
  %dma.i.i.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 8
  %34 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp.i.i.not.i = icmp eq i32 %35, 3
  br i1 %cmp.i.i.not.i, label %entry.ivtv_stream_sync_for_device.exit_crit_edge, label %if.then.i

entry.ivtv_stream_sync_for_device.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ivtv_stream_sync_for_device.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %itv1, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %sg_handle.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 30
  %40 = ptrtoint ptr %sg_handle.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sg_handle.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  tail call void @dma_sync_single_for_device(ptr noundef %dev.i.i, i32 noundef %41, i32 noundef 12, i32 noundef 1) #5
  br label %ivtv_stream_sync_for_device.exit

ivtv_stream_sync_for_device.exit:                 ; preds = %if.then.i, %entry.ivtv_stream_sync_for_device.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !202
  tail call void @arm_heavy_mb() #5
  %sg_handle = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 30
  %42 = ptrtoint ptr %sg_handle to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sg_handle, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %reg_mem = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 17
  %45 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %46, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %44) #5, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !203
  tail call void @arm_heavy_mb() #5
  %47 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_mem, align 8
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #5, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !204
  %50 = or i32 %49, 33554432
  %51 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_mem, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #5, !srcloc !175
  %53 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_mem, align 8
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #5, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %56, 30
  %dma_timer = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 60
  %expires = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 60, i32 1
  %57 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %dma_timer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dma_post(ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %2 = load i32, ptr @ivtv_debug, align 4
  %3 = and i32 %2, 1056
  call void @__sanitizer_cov_trace_const_cmp4(i32 1056, i32 %3)
  %.not = icmp eq i32 %3, 1056
  br i1 %.not, label %do.end, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %dma.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 8
  %4 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 3
  %cond = select i1 %cmp.i.not, ptr @.str.44, ptr @.str.45
  %name6 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 2
  %6 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name6, align 4
  %dma_offset = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 12
  %8 = ptrtoint ptr %dma_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_offset, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name, ptr noundef nonnull %cond, ptr noundef %7, i32 noundef %9) #8
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %q_dma = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 24
  %10 = ptrtoint ptr %q_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %p.0295 = load ptr, ptr %q_dma, align 4
  %cmp.i293.not296 = icmp eq ptr %p.0295, %q_dma
  br i1 %cmp.i293.not296, label %do.end9.if.end184_crit_edge, label %for.body.lr.ph

do.end9.if.end184_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end184

for.body.lr.ph:                                   ; preds = %do.end9
  %dma.i.i.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 8
  %buf_size.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 19
  %dma_last_offset = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 17
  %name40 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %name42 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 2
  %has_cx23415 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 4
  %type = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 3
  %dec_mem = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 16
  %dma_offset84 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 12
  %enc_mem = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 15
  %dma_backup = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc133.for.body_crit_edge, %for.body.lr.ph
  %p.0298 = phi ptr [ %p.0295, %for.body.lr.ph ], [ %p.0, %for.inc133.for.body_crit_edge ]
  %x.0297 = phi i32 [ 0, %for.body.lr.ph ], [ %inc121, %for.inc133.for.body_crit_edge ]
  %buf15 = getelementptr inbounds %struct.ivtv_buffer, ptr %p.0298, i32 0, i32 4
  %11 = ptrtoint ptr %buf15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf15, align 4
  %13 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp.i.i.not.i = icmp eq i32 %14, 3
  br i1 %cmp.i.i.not.i, label %for.body.ivtv_buf_sync_for_cpu.exit_crit_edge, label %if.then.i

for.body.ivtv_buf_sync_for_cpu.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %ivtv_buf_sync_for_cpu.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %itv1, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %dma_handle.i = getelementptr inbounds %struct.ivtv_buffer, ptr %p.0298, i32 0, i32 1
  %19 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_handle.i, align 4
  %21 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_size.i, align 8
  %add.i = add i32 %22, 256
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i.i, i32 noundef %20, i32 noundef %add.i, i32 noundef %14) #5
  br label %ivtv_buf_sync_for_cpu.exit

ivtv_buf_sync_for_cpu.exit:                       ; preds = %if.then.i, %for.body.ivtv_buf_sync_for_cpu.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %x.0297)
  %cmp = icmp eq i32 %x.0297, 0
  br i1 %cmp, label %land.lhs.true16, label %ivtv_buf_sync_for_cpu.exit.if.end120_crit_edge

ivtv_buf_sync_for_cpu.exit.if.end120_crit_edge:   ; preds = %ivtv_buf_sync_for_cpu.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

land.lhs.true16:                                  ; preds = %ivtv_buf_sync_for_cpu.exit
  %23 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp.i.i.not = icmp eq i32 %24, 3
  br i1 %cmp.i.i.not, label %land.lhs.true16.if.end120_crit_edge, label %if.then19

land.lhs.true16.if.end120_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

if.then19:                                        ; preds = %land.lhs.true16
  %25 = ptrtoint ptr %dma_last_offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_last_offset, align 8
  %div292 = lshr i32 %26, 2
  %arrayidx = getelementptr i32, ptr %12, i32 %div292
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33488896, i32 %28)
  %cmp20.not = icmp eq i32 %28, -33488896
  br i1 %cmp20.not, label %if.then19.if.end71_crit_edge, label %if.then19.for.body24_crit_edge

if.then19.for.body24_crit_edge:                   ; preds = %if.then19
  br label %for.body24

if.then19.if.end71_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

for.body24:                                       ; preds = %for.inc.for.body24_crit_edge, %if.then19.for.body24_crit_edge
  %offset.0294 = phi i32 [ %inc, %for.inc.for.body24_crit_edge ], [ 0, %if.then19.for.body24_crit_edge ]
  %arrayidx25 = getelementptr i32, ptr %12, i32 %offset.0294
  %29 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33488896, i32 %30)
  %cmp26 = icmp eq i32 %30, -33488896
  br i1 %cmp26, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body24
  %inc = add nuw nsw i32 %offset.0294, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc.do.body31_crit_edge, label %for.inc.for.body24_crit_edge

for.inc.for.body24_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body24

for.inc.do.body31_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body31

for.end:                                          ; preds = %for.body24
  %mul = shl i32 %offset.0294, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %mul)
  %cmp29 = icmp eq i32 %mul, 256
  br i1 %cmp29, label %for.end.do.body31_crit_edge, label %for.end.if.end48_crit_edge

for.end.if.end48_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

for.end.do.body31_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body31

do.body31:                                        ; preds = %for.end.do.body31_crit_edge, %for.inc.do.body31_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %31 = load i32, ptr @ivtv_debug, align 4
  %and32 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body31.do.end46_crit_edge, label %do.end37

do.body31.do.end46_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end46

do.end37:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %name42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name42, align 4
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name40, ptr noundef %33) #8
  br label %do.end46

do.end46:                                         ; preds = %do.end37, %do.body31.do.end46_crit_edge
  %34 = ptrtoint ptr %dma_last_offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_last_offset, align 8
  br label %if.end48

if.end48:                                         ; preds = %do.end46, %for.end.if.end48_crit_edge
  %offset.1 = phi i32 [ %35, %do.end46 ], [ %mul, %for.end.if.end48_crit_edge ]
  %36 = ptrtoint ptr %dma_last_offset to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_last_offset, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %offset.1)
  %cmp50.not = icmp eq i32 %37, %offset.1
  br i1 %cmp50.not, label %if.end48.if.end69_crit_edge, label %do.body52

if.end48.if.end69_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

do.body52:                                        ; preds = %if.end48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %38 = load i32, ptr @ivtv_debug, align 4
  %and53 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body52.if.end69_crit_edge, label %do.end58

do.body52.if.end69_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

do.end58:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %name42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name42, align 4
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %name40, ptr noundef %40, i32 noundef %37, i32 noundef %offset.1) #8
  br label %if.end69

if.end69:                                         ; preds = %do.end58, %do.body52.if.end69_crit_edge, %if.end48.if.end69_crit_edge
  %41 = ptrtoint ptr %dma_last_offset to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %offset.1, ptr %dma_last_offset, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.end69, %if.then19.if.end71_crit_edge
  %offset.2 = phi i32 [ %offset.1, %if.end69 ], [ %26, %if.then19.if.end71_crit_edge ]
  %42 = ptrtoint ptr %has_cx23415 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %has_cx23415, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool72.not = icmp eq i8 %43, 0
  br i1 %tobool72.not, label %if.end71.do.body96_crit_edge, label %land.lhs.true73

if.end71.do.body96_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body96

land.lhs.true73:                                  ; preds = %if.end71
  %44 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type, align 8
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %45, label %land.lhs.true73.do.body96_crit_edge [
    i32 3, label %land.lhs.true73.do.body81_crit_edge
    i32 6, label %land.lhs.true73.do.body81_crit_edge311
  ]

land.lhs.true73.do.body81_crit_edge311:           ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body81

land.lhs.true73.do.body81_crit_edge:              ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body81

land.lhs.true73.do.body96_crit_edge:              ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body96

do.body81:                                        ; preds = %land.lhs.true73.do.body81_crit_edge, %land.lhs.true73.do.body81_crit_edge311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !206
  tail call void @arm_heavy_mb() #5
  %47 = ptrtoint ptr %dec_mem to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dec_mem, align 4
  %49 = ptrtoint ptr %dma_offset84 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_offset84, align 8
  %sub = add i32 %50, -16777216
  %add.ptr85 = getelementptr i8, ptr %48, i32 %sub
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 0) #5, !srcloc !175
  %51 = ptrtoint ptr %dec_mem to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dec_mem, align 4
  %53 = ptrtoint ptr %dma_offset84 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dma_offset84, align 8
  %sub88 = add i32 %54, -16777216
  %add.ptr89 = getelementptr i8, ptr %52, i32 %sub88
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89) #5, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !207
  br label %if.end111

do.body96:                                        ; preds = %land.lhs.true73.do.body96_crit_edge, %if.end71.do.body96_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !208
  tail call void @arm_heavy_mb() #5
  %56 = ptrtoint ptr %enc_mem to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %enc_mem, align 8
  %58 = ptrtoint ptr %dma_offset84 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dma_offset84, align 8
  %add.ptr100 = getelementptr i8, ptr %57, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 0) #5, !srcloc !175
  %60 = ptrtoint ptr %enc_mem to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %enc_mem, align 8
  %62 = ptrtoint ptr %dma_offset84 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma_offset84, align 8
  %add.ptr105 = getelementptr i8, ptr %61, i32 %63
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #5, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !209
  br label %if.end111

if.end111:                                        ; preds = %do.body96, %do.body81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.2)
  %tobool112.not = icmp eq i32 %offset.2, 0
  br i1 %tobool112.not, label %if.end111.if.end119_crit_edge, label %if.then113

if.end111.if.end119_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end119

if.then113:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #7
  %bytesused = getelementptr inbounds %struct.ivtv_buffer, ptr %p.0298, i32 0, i32 5
  %65 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bytesused, align 4
  %sub114 = sub i32 %66, %offset.2
  store i32 %sub114, ptr %bytesused, align 4
  %67 = ptrtoint ptr %buf15 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %buf15, align 4
  %add.ptr117 = getelementptr i8, ptr %68, i32 %offset.2
  %69 = call ptr @memcpy(ptr %68, ptr %add.ptr117, i32 %66)
  br label %if.end119

if.end119:                                        ; preds = %if.then113, %if.end111.if.end119_crit_edge
  %70 = ptrtoint ptr %dma_backup to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dma_backup, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %73 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %12, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %land.lhs.true16.if.end120_crit_edge, %ivtv_buf_sync_for_cpu.exit.if.end120_crit_edge
  %inc121 = add i32 %x.0297, 1
  %74 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %type, align 8
  %76 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %75, label %if.end120.for.inc133_crit_edge [
    i32 0, label %if.end120.if.then129_crit_edge
    i32 2, label %if.end120.if.then129_crit_edge312
  ]

if.end120.if.then129_crit_edge312:                ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then129

if.end120.if.then129_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then129

if.end120.for.inc133_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc133

if.then129:                                       ; preds = %if.end120.if.then129_crit_edge, %if.end120.if.then129_crit_edge312
  %b_flags = getelementptr inbounds %struct.ivtv_buffer, ptr %p.0298, i32 0, i32 2
  %77 = ptrtoint ptr %b_flags to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %b_flags, align 4
  %79 = or i16 %78, 1
  store i16 %79, ptr %b_flags, align 4
  br label %for.inc133

for.inc133:                                       ; preds = %if.then129, %if.end120.for.inc133_crit_edge
  %80 = ptrtoint ptr %p.0298 to i32
  call void @__asan_load4_noabort(i32 %80)
  %p.0 = load ptr, ptr %p.0298, align 4
  %cmp.i293.not = icmp eq ptr %p.0, %q_dma
  br i1 %cmp.i293.not, label %for.end135, label %for.inc133.for.body_crit_edge

for.inc133.for.body_crit_edge:                    ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end135:                                       ; preds = %for.inc133
  %tobool136.not = icmp eq ptr %p.0298, null
  br i1 %tobool136.not, label %for.end135.if.end184_crit_edge, label %if.then137

for.end135.if.end184_crit_edge:                   ; preds = %for.end135
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end184

if.then137:                                       ; preds = %for.end135
  %dma_last_offset138 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 17
  %81 = ptrtoint ptr %dma_last_offset138 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dma_last_offset138, align 8
  %bytesused139 = getelementptr inbounds %struct.ivtv_buffer, ptr %p.0298, i32 0, i32 5
  %83 = ptrtoint ptr %bytesused139 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bytesused139, align 4
  %add140 = add i32 %84, %82
  store i32 %add140, ptr %bytesused139, align 4
  %type144 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 3
  %85 = ptrtoint ptr %type144 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %type144, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %86)
  %cmp145 = icmp eq i32 %86, 6
  br i1 %cmp145, label %for.cond154.preheader, label %if.then137.if.end184_crit_edge

if.then137.if.end184_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end184

for.cond154.preheader:                            ; preds = %if.then137
  %87 = ptrtoint ptr %q_dma to i32
  call void @__asan_load4_noabort(i32 %87)
  %buf.1299 = load ptr, ptr %q_dma, align 4
  %cmp158.not300 = icmp eq ptr %buf.1299, %q_dma
  br i1 %cmp158.not300, label %for.cond154.preheader.for.end177_crit_edge, label %for.body161.lr.ph

for.cond154.preheader.for.end177_crit_edge:       ; preds = %for.cond154.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end177

for.body161.lr.ph:                                ; preds = %for.cond154.preheader
  %bytesused164 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 24, i32 3
  br label %for.body161

for.body161:                                      ; preds = %for.body161.for.body161_crit_edge, %for.body161.lr.ph
  %buf.1301 = phi ptr [ %buf.1299, %for.body161.lr.ph ], [ %buf.1, %for.body161.for.body161_crit_edge ]
  %bytesused162 = getelementptr inbounds %struct.ivtv_buffer, ptr %buf.1301, i32 0, i32 5
  %88 = ptrtoint ptr %bytesused162 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bytesused162, align 4
  %90 = ptrtoint ptr %bytesused164 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bytesused164, align 4
  %sub165 = sub i32 %91, %89
  store i32 %sub165, ptr %bytesused164, align 4
  %92 = ptrtoint ptr %type144 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %type144, align 8
  tail call void @ivtv_process_vbi_data(ptr noundef %1, ptr noundef %buf.1301, i64 noundef 0, i32 noundef %93) #5
  %94 = ptrtoint ptr %bytesused162 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bytesused162, align 4
  %96 = ptrtoint ptr %bytesused164 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bytesused164, align 4
  %add170 = add i32 %97, %95
  store i32 %add170, ptr %bytesused164, align 4
  %98 = ptrtoint ptr %buf.1301 to i32
  call void @__asan_load4_noabort(i32 %98)
  %buf.1 = load ptr, ptr %buf.1301, align 4
  %cmp158.not = icmp eq ptr %buf.1, %q_dma
  br i1 %cmp158.not, label %for.body161.for.end177_crit_edge, label %for.body161.for.body161_crit_edge

for.body161.for.body161_crit_edge:                ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body161

for.body161.for.end177_crit_edge:                 ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end177

for.end177:                                       ; preds = %for.body161.for.end177_crit_edge, %for.cond154.preheader.for.end177_crit_edge
  %fh = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 5
  %99 = ptrtoint ptr %fh to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %fh, align 8
  %cmp178 = icmp eq ptr %100, null
  br i1 %cmp178, label %if.then180, label %for.end177.if.end184_crit_edge

for.end177.if.end184_crit_edge:                   ; preds = %for.end177
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end184

if.then180:                                       ; preds = %for.end177
  call void @__sanitizer_cov_trace_pc() #7
  %q_free = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 21
  %call182 = tail call i32 @ivtv_queue_move(ptr noundef %s, ptr noundef %q_dma, ptr noundef null, ptr noundef %q_free, i32 noundef 0) #5
  br label %cleanup

if.end184:                                        ; preds = %for.end177.if.end184_crit_edge, %if.then137.if.end184_crit_edge, %for.end135.if.end184_crit_edge, %do.end9.if.end184_crit_edge
  %q_full = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 22
  %bytesused187 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 24, i32 3
  %101 = ptrtoint ptr %bytesused187 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bytesused187, align 4
  %call188 = tail call i32 @ivtv_queue_move(ptr noundef %s, ptr noundef %q_dma, ptr noundef null, ptr noundef %q_full, i32 noundef %102) #5
  %type189 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 3
  %103 = ptrtoint ptr %type189 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %type189, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %104)
  %cmp190 = icmp eq i32 %104, 3
  br i1 %cmp190, label %land.lhs.true192, label %if.end184.if.end197_crit_edge

if.end184.if.end197_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end197

land.lhs.true192:                                 ; preds = %if.end184
  %pcm_announce_callback = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 46
  %105 = ptrtoint ptr %pcm_announce_callback to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pcm_announce_callback, align 4
  %cmp193.not = icmp eq ptr %106, null
  br i1 %cmp193.not, label %land.lhs.true192.if.end197_crit_edge, label %if.then195

land.lhs.true192.if.end197_crit_edge:             ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end197

if.then195:                                       ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #7
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 26
  tail call void @_set_bit(i32 noundef 23, ptr noundef %i_flags) #5
  tail call void @_set_bit(i32 noundef 15, ptr noundef %i_flags) #5
  br label %if.end197

if.end197:                                        ; preds = %if.then195, %land.lhs.true192.if.end197_crit_edge, %if.end184.if.end197_crit_edge
  %fh198 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 5
  %107 = ptrtoint ptr %fh198 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %fh198, align 8
  %tobool199.not = icmp eq ptr %108, null
  br i1 %tobool199.not, label %if.end197.cleanup_crit_edge, label %if.then200

if.end197.cleanup_crit_edge:                      ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then200:                                       ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #7
  %waitq = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then200, %if.end197.cleanup_crit_edge, %if.then180
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_process_vbi_data(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stream_enc_dma_append(ptr noundef %s, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 8
  %q_predma = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 25
  %buffers = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 25, i32 1
  %2 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buffers, align 8
  %sg_pending_size = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 31
  %4 = ptrtoint ptr %sg_pending_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sg_pending_size, align 8
  %v4l2_dev = getelementptr inbounds %struct.video_device, ptr %s, i32 0, i32 7
  %6 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %v4l2_dev, align 4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %8 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %name5 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 2
  %9 = ptrtoint ptr %name5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name5, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %name, ptr noundef %10) #8
  br label %cleanup

if.end8:                                          ; preds = %entry
  %s_flags = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 7
  %11 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %s_flags, align 4
  %13 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  br i1 %tobool10.not, label %do.body12, label %if.end28

do.body12:                                        ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %14 = load i32, ptr @ivtv_debug, align 4
  %and13 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.cleanup_crit_edge, label %do.end18

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end18:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  %name21 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %name23 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 2
  %15 = ptrtoint ptr %name23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name23, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name21, ptr noundef %16) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end8
  %type = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 3
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 8
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %18, label %if.end28.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb30
    i32 3, label %sw.bb39
    i32 2, label %sw.bb63
    i32 6, label %sw.bb114
  ]

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %arrayidx29 = getelementptr i32, ptr %data, i32 2
  %22 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx29, align 4
  %pending_pts = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 11
  %24 = ptrtoint ptr %pending_pts to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %pending_pts, align 8
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx31 = getelementptr i32, ptr %data, i32 1
  %25 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx31, align 4
  %arrayidx32 = getelementptr i32, ptr %data, i32 2
  %27 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx32, align 4
  %arrayidx33 = getelementptr i32, ptr %data, i32 3
  %29 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx33, align 4
  %arrayidx34 = getelementptr i32, ptr %data, i32 4
  %31 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx34, align 4
  %arrayidx35 = getelementptr i32, ptr %data, i32 5
  %33 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx35, align 4
  %conv = zext i32 %34 to i64
  %shl = shl nuw i64 %conv, 32
  %arrayidx36 = getelementptr i32, ptr %data, i32 6
  %35 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx36, align 4
  %conv37 = zext i32 %36 to i64
  %or = or i64 %shl, %conv37
  %pending_pts38 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 11
  %37 = ptrtoint ptr %pending_pts38 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %or, ptr %pending_pts38, align 8
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx40 = getelementptr i32, ptr %data, i32 1
  %38 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx40, align 4
  %arrayidx41 = getelementptr i32, ptr %data, i32 2
  %40 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx41, align 4
  %sub = add i32 %41, -12
  %dec_mem = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 16
  %42 = ptrtoint ptr %dec_mem to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dec_mem, align 4
  %sub42 = add i32 %39, 4
  %add.ptr = getelementptr i8, ptr %43, i32 %sub42
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !210
  %45 = ptrtoint ptr %dec_mem to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dec_mem, align 4
  %add.ptr51 = getelementptr i8, ptr %46, i32 %39
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #5, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !211
  %48 = zext i32 %47 to i64
  %49 = zext i32 %44 to i64
  %50 = shl nuw i64 %49, 32
  %51 = or i64 %50, %48
  %52 = tail call i64 @llvm.bswap.i64(i64 %51)
  %pending_pts58 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 11
  %53 = ptrtoint ptr %pending_pts58 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %pending_pts58, align 8
  %has_cx23415 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 4
  %54 = ptrtoint ptr %has_cx23415 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %has_cx23415, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool59.not = icmp eq i8 %55, 0
  %spec.select.v = select i1 %tobool59.not, i32 12, i32 16777228
  %spec.select = add i32 %spec.select.v, %39
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.end28
  %enc_size = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 89, i32 12
  %56 = ptrtoint ptr %enc_size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %enc_size, align 4
  %fpi = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 89, i32 13
  %58 = ptrtoint ptr %fpi to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fpi, align 4
  %enc_mem = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 15
  %60 = ptrtoint ptr %enc_mem to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %enc_mem, align 8
  %enc_start = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 89, i32 11
  %62 = ptrtoint ptr %enc_start to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %enc_start, align 4
  %sub68 = add i32 %63, -4
  %add.ptr69 = getelementptr i8, ptr %61, i32 %sub68
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #5, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !212
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp74 = icmp eq i32 %64, 0
  br i1 %cmp74, label %do.body77, label %if.end92

do.body77:                                        ; preds = %sw.bb63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %65 = load i32, ptr @ivtv_debug, align 4
  %and78 = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %do.body77.cleanup_crit_edge, label %do.end83

do.body77.cleanup_crit_edge:                      ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end83:                                         ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #7
  %name86 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %name86) #8
  br label %cleanup

if.end92:                                         ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #7
  %66 = tail call i32 @llvm.bswap.i32(i32 %64)
  %add73 = add i32 %66, 12
  %mul = mul i32 %59, %57
  %67 = ptrtoint ptr %enc_mem to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %enc_mem, align 8
  %sub96 = add i32 %66, 8
  %add.ptr97 = getelementptr i8, ptr %68, i32 %sub96
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #5, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !213
  %70 = ptrtoint ptr %enc_mem to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %enc_mem, align 8
  %sub105 = add i32 %66, 4
  %add.ptr106 = getelementptr i8, ptr %71, i32 %sub105
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr106) #5, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !214
  %73 = zext i32 %72 to i64
  %74 = zext i32 %69 to i64
  %75 = shl nuw i64 %74, 32
  %76 = or i64 %75, %73
  %77 = tail call i64 @llvm.bswap.i64(i64 %76)
  %pending_pts113 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 11
  %78 = ptrtoint ptr %pending_pts113 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %pending_pts113, align 8
  br label %sw.epilog

sw.bb114:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %dec_mem117 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 16
  %79 = ptrtoint ptr %dec_mem117 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dec_mem117, align 4
  %dec_start = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 89, i32 10
  %81 = ptrtoint ptr %dec_start to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dec_start, align 4
  %add119 = add i32 %82, 4
  %add.ptr120 = getelementptr i8, ptr %80, i32 %add119
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120) #5, !srcloc !177
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !215
  %add124 = add i32 %84, 8
  %85 = ptrtoint ptr %dec_mem117 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dec_mem117, align 4
  %87 = ptrtoint ptr %dec_start to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dec_start, align 4
  %add.ptr130 = getelementptr i8, ptr %86, i32 %88
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr130) #5, !srcloc !177
  %90 = tail call i32 @llvm.bswap.i32(i32 %89)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !216
  %91 = ptrtoint ptr %dec_start to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dec_start, align 4
  %pending_pts137 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 11
  %93 = ptrtoint ptr %pending_pts137 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 0, ptr %pending_pts137, align 8
  %add136 = add i32 %90, 16777216
  %add138 = add i32 %add136, %92
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb114, %if.end92, %sw.bb39, %sw.bb30, %sw.bb
  %UVsize.0 = phi i32 [ 0, %sw.bb114 ], [ 0, %if.end92 ], [ %32, %sw.bb30 ], [ 0, %sw.bb ], [ 0, %sw.bb39 ]
  %UVoffset.0 = phi i32 [ 0, %sw.bb114 ], [ 0, %if.end92 ], [ %30, %sw.bb30 ], [ 0, %sw.bb ], [ 0, %sw.bb39 ]
  %size.0 = phi i32 [ %add124, %sw.bb114 ], [ %mul, %if.end92 ], [ %28, %sw.bb30 ], [ %23, %sw.bb ], [ %sub, %sw.bb39 ]
  %offset.0 = phi i32 [ %add138, %sw.bb114 ], [ %add73, %if.end92 ], [ %26, %sw.bb30 ], [ %21, %sw.bb ], [ %spec.select, %sw.bb39 ]
  %94 = ptrtoint ptr %sg_pending_size to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %sg_pending_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp140 = icmp eq i32 %95, 0
  br i1 %cmp140, label %land.lhs.true, label %sw.epilog.if.end205_crit_edge

sw.epilog.if.end205_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end205

land.lhs.true:                                    ; preds = %sw.epilog
  %dma.i.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 8
  %96 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dma.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %97)
  %cmp.i.i.not = icmp eq i32 %97, 3
  br i1 %cmp.i.i.not, label %land.lhs.true.if.end205_crit_edge, label %if.then144

land.lhs.true.if.end205_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end205

if.then144:                                       ; preds = %land.lhs.true
  %has_cx23415145 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 4
  %98 = ptrtoint ptr %has_cx23415145 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %has_cx23415145, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool147.not = icmp eq i8 %99, 0
  br i1 %tobool147.not, label %if.then144.if.else_crit_edge, label %land.lhs.true148

if.then144.if.else_crit_edge:                     ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true148:                                 ; preds = %if.then144
  %100 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %type, align 8
  %102 = zext i32 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %101, label %land.lhs.true148.if.else_crit_edge [
    i32 3, label %land.lhs.true148.if.then155_crit_edge
    i32 6, label %land.lhs.true148.if.then155_crit_edge479
  ]

land.lhs.true148.if.then155_crit_edge479:         ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then155

land.lhs.true148.if.then155_crit_edge:            ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then155

land.lhs.true148.if.else_crit_edge:               ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then155:                                       ; preds = %land.lhs.true148.if.then155_crit_edge, %land.lhs.true148.if.then155_crit_edge479
  %dec_mem158 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 16
  %103 = ptrtoint ptr %dec_mem158 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dec_mem158, align 4
  %sub159 = add i32 %offset.0, -16777216
  %add.ptr160 = getelementptr i8, ptr %104, i32 %sub159
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr160) #5, !srcloc !177
  %106 = tail call i32 @llvm.bswap.i32(i32 %105)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !217
  %pending_backup = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 10
  %107 = ptrtoint ptr %pending_backup to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %pending_backup, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !218
  tail call void @arm_heavy_mb() #5
  %108 = ptrtoint ptr %dec_mem158 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dec_mem158, align 4
  %add.ptr170 = getelementptr i8, ptr %109, i32 %sub159
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr170, i32 -33488896) #5, !srcloc !175
  %110 = ptrtoint ptr %dec_mem158 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dec_mem158, align 4
  %add.ptr175 = getelementptr i8, ptr %111, i32 %sub159
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr175) #5, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !219
  br label %if.end204

if.else:                                          ; preds = %land.lhs.true148.if.else_crit_edge, %if.then144.if.else_crit_edge
  %enc_mem183 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 15
  %113 = ptrtoint ptr %enc_mem183 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %enc_mem183, align 8
  %add.ptr184 = getelementptr i8, ptr %114, i32 %offset.0
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr184) #5, !srcloc !177
  %116 = tail call i32 @llvm.bswap.i32(i32 %115)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !220
  %pending_backup188 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 10
  %117 = ptrtoint ptr %pending_backup188 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %pending_backup188, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !221
  tail call void @arm_heavy_mb() #5
  %118 = ptrtoint ptr %enc_mem183 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %enc_mem183, align 8
  %add.ptr194 = getelementptr i8, ptr %119, i32 %offset.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr194, i32 -33488896) #5, !srcloc !175
  %120 = ptrtoint ptr %enc_mem183 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %enc_mem183, align 8
  %add.ptr198 = getelementptr i8, ptr %121, i32 %offset.0
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr198) #5, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !222
  br label %if.end204

if.end204:                                        ; preds = %if.else, %if.then155
  %pending_offset = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 9
  %123 = ptrtoint ptr %pending_offset to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %offset.0, ptr %pending_offset, align 8
  br label %if.end205

if.end205:                                        ; preds = %if.end204, %land.lhs.true.if.end205_crit_edge, %sw.epilog.if.end205_crit_edge
  %124 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %125)
  %cmp207 = icmp eq i32 %125, 1
  br i1 %cmp207, label %if.then209, label %if.end205.do.body217_crit_edge

if.end205.do.body217_crit_edge:                   ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body217

if.then209:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #7
  %buf_size = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 19
  %126 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %buf_size, align 8
  %add211 = add i32 %size.0, -1
  %sub212 = add i32 %add211, %127
  %128 = urem i32 %sub212, %127
  %mul214 = sub i32 %UVsize.0, %128
  %add215 = add i32 %mul214, %sub212
  br label %do.body217

do.body217:                                       ; preds = %if.then209, %if.end205.do.body217_crit_edge
  %bytes_needed.0 = phi i32 [ %add215, %if.then209 ], [ %size.0, %if.end205.do.body217_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %129 = load i32, ptr @ivtv_debug, align 4
  %130 = and i32 %129, 1056
  call void @__sanitizer_cov_trace_const_cmp4(i32 1056, i32 %130)
  %.not = icmp eq i32 %130, 1056
  br i1 %.not, label %do.end226, label %do.body217.do.end237_crit_edge

do.body217.do.end237_crit_edge:                   ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end237

do.end226:                                        ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #7
  %name229 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %dma.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 8
  %131 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %132)
  %cmp.i.not = icmp eq i32 %132, 3
  %cond = select i1 %cmp.i.not, ptr @.str.44, ptr @.str.45
  %name233 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 2
  %133 = ptrtoint ptr %name233 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %name233, align 4
  %call234 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %name229, ptr noundef nonnull %cond, ptr noundef %134, i32 noundef %bytes_needed.0, i32 noundef %offset.0) #8
  br label %do.end237

do.end237:                                        ; preds = %do.end226, %do.body217.do.end237_crit_edge
  %q_free = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 21
  %q_full = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 22
  %call239 = tail call i32 @ivtv_queue_move(ptr noundef %s, ptr noundef %q_free, ptr noundef %q_full, ptr noundef %q_predma, i32 noundef %bytes_needed.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %cmp240 = icmp slt i32 %call239, 0
  br i1 %cmp240, label %do.body243, label %if.end259

do.body243:                                       ; preds = %do.end237
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %135 = load i32, ptr @ivtv_debug, align 4
  %and244 = and i32 %135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244)
  %tobool245.not = icmp eq i32 %and244, 0
  br i1 %tobool245.not, label %do.body243.cleanup_crit_edge, label %do.end249

do.body243.cleanup_crit_edge:                     ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end249:                                        ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #7
  %name252 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %name254 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 2
  %136 = ptrtoint ptr %name254 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %name254, align 4
  %call255 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name252, i32 noundef %bytes_needed.0, ptr noundef %137) #8
  br label %cleanup

if.end259:                                        ; preds = %do.end237
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %tobool260.not = icmp eq i32 %call239, 0
  br i1 %tobool260.not, label %if.end259.if.end285_crit_edge, label %land.lhs.true261

if.end259.if.end285_crit_edge:                    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end285

land.lhs.true261:                                 ; preds = %if.end259
  %buffers_stolen = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 20
  %138 = ptrtoint ptr %buffers_stolen to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %buffers_stolen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool262.not = icmp eq i32 %139, 0
  br i1 %tobool262.not, label %land.lhs.true263, label %land.lhs.true261.if.end285_crit_edge

land.lhs.true261.if.end285_crit_edge:             ; preds = %land.lhs.true261
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end285

land.lhs.true263:                                 ; preds = %land.lhs.true261
  %140 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %s_flags, align 4
  %142 = and i32 %141, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool266.not = icmp eq i32 %142, 0
  br i1 %tobool266.not, label %land.lhs.true263.if.end285_crit_edge, label %do.end270

land.lhs.true263.if.end285_crit_edge:             ; preds = %land.lhs.true263
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end285

do.end270:                                        ; preds = %land.lhs.true263
  call void @__sanitizer_cov_trace_pc() #7
  %name273 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %name275 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 2
  %143 = ptrtoint ptr %name275 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %name275, align 4
  %call276 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %name273, ptr noundef %144) #8
  %call284 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %name273) #8
  br label %if.end285

if.end285:                                        ; preds = %do.end270, %land.lhs.true263.if.end285_crit_edge, %land.lhs.true261.if.end285_crit_edge, %if.end259.if.end285_crit_edge
  %buffers_stolen286 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 20
  %145 = ptrtoint ptr %buffers_stolen286 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %call239, ptr %buffers_stolen286, align 4
  %146 = ptrtoint ptr %q_predma to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %q_predma, align 8
  %buf290 = getelementptr inbounds %struct.ivtv_buffer, ptr %147, i32 0, i32 4
  %148 = ptrtoint ptr %buf290 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %buf290, align 4
  %150 = call ptr @memset(ptr %149, i32 0, i32 128)
  %buf.0472 = load ptr, ptr %q_predma, align 4
  %cmp300.not473 = icmp eq ptr %buf.0472, %q_predma
  br i1 %cmp300.not473, label %if.end285.for.end_crit_edge, label %for.body.lr.ph

if.end285.for.end_crit_edge:                      ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end285
  %sg_pending = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 27
  %buf_size309 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 19
  %dma_xfer_cnt = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 26
  %bytesused321 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 25, i32 3
  %dma.i.i.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %buf.0478 = phi ptr [ %buf.0472, %for.body.lr.ph ], [ %buf.0, %for.inc.for.body_crit_edge ]
  %offset.1477 = phi i32 [ %offset.0, %for.body.lr.ph ], [ %offset.3, %for.inc.for.body_crit_edge ]
  %size.1476 = phi i32 [ %size.0, %for.body.lr.ph ], [ %size.3, %for.inc.for.body_crit_edge ]
  %skip_bufs.0475 = phi i32 [ %3, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  %idx.0474 = phi i32 [ %5, %for.body.lr.ph ], [ %idx.1, %for.inc.for.body_crit_edge ]
  %dec = add i32 %skip_bufs.0475, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip_bufs.0475)
  %cmp302 = icmp sgt i32 %skip_bufs.0475, 0
  br i1 %cmp302, label %for.body.for.inc_crit_edge, label %if.end305

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end305:                                        ; preds = %for.body
  %dma_handle = getelementptr inbounds %struct.ivtv_buffer, ptr %buf.0478, i32 0, i32 1
  %151 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %dma_handle, align 4
  %153 = ptrtoint ptr %sg_pending to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %sg_pending, align 8
  %dst = getelementptr %struct.ivtv_sg_host_element, ptr %154, i32 %idx.0474, i32 1
  %155 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %152, ptr %dst, align 4
  %156 = load ptr, ptr %sg_pending, align 8
  %arrayidx308 = getelementptr %struct.ivtv_sg_host_element, ptr %156, i32 %idx.0474
  %157 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %offset.1477, ptr %arrayidx308, align 4
  %158 = ptrtoint ptr %buf_size309 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %buf_size309, align 8
  %160 = load ptr, ptr %sg_pending, align 8
  %size312 = getelementptr %struct.ivtv_sg_host_element, ptr %160, i32 %idx.0474, i32 2
  %161 = ptrtoint ptr %size312 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %159, ptr %size312, align 4
  %162 = load i32, ptr %buf_size309, align 8
  %163 = tail call i32 @llvm.umin.i32(i32 %size.1476, i32 %162)
  %bytesused = getelementptr inbounds %struct.ivtv_buffer, ptr %buf.0478, i32 0, i32 5
  %164 = ptrtoint ptr %bytesused to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %bytesused, align 4
  %165 = ptrtoint ptr %dma_xfer_cnt to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %dma_xfer_cnt, align 4
  %dma_xfer_cnt318 = getelementptr inbounds %struct.ivtv_buffer, ptr %buf.0478, i32 0, i32 3
  %167 = ptrtoint ptr %dma_xfer_cnt318 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %166, ptr %dma_xfer_cnt318, align 2
  %168 = ptrtoint ptr %bytesused321 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %bytesused321, align 8
  %add322 = add i32 %169, %163
  store i32 %add322, ptr %bytesused321, align 8
  %170 = load i32, ptr %bytesused, align 4
  %sub324 = sub i32 %size.1476, %170
  %171 = ptrtoint ptr %buf_size309 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %buf_size309, align 8
  %add326 = add i32 %172, %offset.1477
  %173 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %dma.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %174)
  %cmp.i.i.not.i = icmp eq i32 %174, 3
  br i1 %cmp.i.i.not.i, label %if.end305.ivtv_buf_sync_for_device.exit_crit_edge, label %if.then.i

if.end305.ivtv_buf_sync_for_device.exit_crit_edge: ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #7
  br label %ivtv_buf_sync_for_device.exit

if.then.i:                                        ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #7
  %175 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %itv1, align 8
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 8
  %179 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %dma_handle, align 4
  %add.i = add i32 %172, 256
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %178, i32 0, i32 44
  tail call void @dma_sync_single_for_device(ptr noundef %dev.i.i, i32 noundef %180, i32 noundef %add.i, i32 noundef %174) #5
  br label %ivtv_buf_sync_for_device.exit

ivtv_buf_sync_for_device.exit:                    ; preds = %if.then.i, %if.end305.ivtv_buf_sync_for_device.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %size.1476, i32 %170)
  %cmp327 = icmp eq i32 %size.1476, %170
  %size.2 = select i1 %cmp327, i32 %UVsize.0, i32 %sub324
  %offset.2 = select i1 %cmp327, i32 %UVoffset.0, i32 %add326
  %inc = add i32 %idx.0474, 1
  br label %for.inc

for.inc:                                          ; preds = %ivtv_buf_sync_for_device.exit, %for.body.for.inc_crit_edge
  %idx.1 = phi i32 [ %idx.0474, %for.body.for.inc_crit_edge ], [ %inc, %ivtv_buf_sync_for_device.exit ]
  %size.3 = phi i32 [ %size.1476, %for.body.for.inc_crit_edge ], [ %size.2, %ivtv_buf_sync_for_device.exit ]
  %offset.3 = phi i32 [ %offset.1477, %for.body.for.inc_crit_edge ], [ %offset.2, %ivtv_buf_sync_for_device.exit ]
  %181 = ptrtoint ptr %buf.0478 to i32
  call void @__asan_load4_noabort(i32 %181)
  %buf.0 = load ptr, ptr %buf.0478, align 4
  %cmp300.not = icmp eq ptr %buf.0, %q_predma
  br i1 %cmp300.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end285.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ %5, %if.end285.for.end_crit_edge ], [ %idx.1, %for.inc.for.end_crit_edge ]
  %182 = ptrtoint ptr %sg_pending_size to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %idx.0.lcssa, ptr %sg_pending_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end249, %do.body243.cleanup_crit_edge, %do.end83, %do.body77.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %do.end18, %do.body12.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -1, %do.end ], [ -1, %do.body.cleanup_crit_edge ], [ -1, %do.end18 ], [ -1, %do.body12.cleanup_crit_edge ], [ -1, %do.end83 ], [ -1, %do.body77.cleanup_crit_edge ], [ -1, %if.end28.cleanup_crit_edge ], [ -1, %do.end249 ], [ -1, %do.body243.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_yuv_frame_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_yuv_setup_stream_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ivtv_get_output_stream(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !156, !158, !159, !160, !161, !163, !164}
!llvm.module.flags = !{!165, !166, !167, !168, !169, !170, !171, !172}
!llvm.ident = !{!173}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 350, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ivtv_dma_stream_dec_prepare._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ivtv_dma_stream_dec_prepare._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 944, i32 5}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ivtv_irq_handler._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @ivtv_irq_handler._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 960, i32 3}
!13 = !{ptr @ivtv_irq_handler._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @ivtv_irq_handler._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 963, i32 3}
!17 = !{ptr @ivtv_irq_handler._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @ivtv_irq_handler._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 995, i32 3}
!21 = !{ptr @ivtv_irq_handler._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @ivtv_irq_handler._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 1010, i32 3}
!25 = !{ptr @ivtv_irq_handler._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ivtv_irq_handler._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 1015, i32 3}
!29 = !{ptr @ivtv_irq_handler._entry.17, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ivtv_irq_handler._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 1071, i32 2}
!33 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ivtv_unfinished_dma._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @ivtv_unfinished_dma._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 64, i32 2}
!38 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ivtv_pio_work_handler._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @ivtv_pio_work_handler._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 72, i32 2}
!43 = !{ptr @ivtv_pio_work_handler._entry.24, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ivtv_pio_work_handler._entry_ptr.26, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 520, i32 2}
!47 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ivtv_dma_dec_start._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @ivtv_dma_dec_start._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 533, i32 2}
!52 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ivtv_irq_dma_read._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ivtv_irq_dma_read._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 545, i32 4}
!57 = !{ptr @ivtv_irq_dma_read._entry.31, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @ivtv_irq_dma_read._entry_ptr.33, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 568, i32 3}
!61 = !{ptr @ivtv_irq_dma_read._entry.34, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ivtv_irq_dma_read._entry_ptr.36, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 598, i32 2}
!65 = !{ptr @.str.38, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ivtv_irq_enc_dma_complete._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @ivtv_irq_enc_dma_complete._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 609, i32 3}
!70 = !{ptr @ivtv_irq_enc_dma_complete._entry.39, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ivtv_irq_enc_dma_complete._entry_ptr.41, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.42, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 255, i32 2}
!74 = !{ptr @.str.43, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @dma_post._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @dma_post._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.44, !73, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.45, !73, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 273, i32 6}
!81 = !{ptr @dma_post._entry.46, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @dma_post._entry_ptr.48, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.50, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 277, i32 6}
!85 = !{ptr @dma_post._entry.49, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @dma_post._entry_ptr.51, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.52, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 650, i32 2}
!89 = !{ptr @.str.53, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ivtv_irq_enc_pio_complete._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @ivtv_irq_enc_pio_complete._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.54, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 677, i32 2}
!94 = !{ptr @.str.55, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @ivtv_irq_dma_err._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @ivtv_irq_dma_err._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.56, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 749, i32 2}
!99 = !{ptr @.str.57, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @ivtv_irq_enc_start_cap._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @ivtv_irq_enc_start_cap._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.59, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 752, i32 3}
!104 = !{ptr @ivtv_irq_enc_start_cap._entry.58, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @ivtv_irq_enc_start_cap._entry_ptr.60, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @ivtv_stream_map, !107, !"ivtv_stream_map", i1 false, i1 false}
!107 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 22, i32 18}
!108 = !{ptr @.str.61, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 124, i32 3}
!110 = !{ptr @.str.62, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @stream_enc_dma_append._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @stream_enc_dma_append._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.64, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 128, i32 3}
!115 = !{ptr @stream_enc_dma_append._entry.63, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @stream_enc_dma_append._entry_ptr.65, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.67, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 161, i32 5}
!119 = !{ptr @stream_enc_dma_append._entry.66, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @stream_enc_dma_append._entry_ptr.68, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.70, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 201, i32 2}
!123 = !{ptr @stream_enc_dma_append._entry.69, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @stream_enc_dma_append._entry_ptr.71, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.73, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 206, i32 3}
!127 = !{ptr @stream_enc_dma_append._entry.72, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @stream_enc_dma_append._entry_ptr.74, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.76, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 211, i32 3}
!131 = !{ptr @stream_enc_dma_append._entry.75, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @stream_enc_dma_append._entry_ptr.77, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.79, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 212, i32 3}
!135 = !{ptr @stream_enc_dma_append._entry.78, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @stream_enc_dma_append._entry_ptr.80, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.81, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 767, i32 2}
!139 = !{ptr @.str.82, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @ivtv_irq_enc_vbi_cap._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @ivtv_irq_enc_vbi_cap._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.83, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 779, i32 2}
!144 = !{ptr @.str.84, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @ivtv_irq_dec_vbi_reinsert._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @ivtv_irq_dec_vbi_reinsert._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.85, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 808, i32 2}
!149 = !{ptr @.str.86, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @ivtv_irq_dec_data_req._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @ivtv_irq_dec_data_req._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @ivtv_irq_vsync.evtop, !153, !"evtop", i1 false, i1 false}
!153 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 857, i32 34}
!154 = !{ptr @ivtv_irq_vsync.evbottom, !155, !"evbottom", i1 false, i1 false}
!155 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 861, i32 34}
!156 = !{ptr @.str.87, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 453, i32 2}
!158 = !{ptr @.str.88, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @ivtv_dma_enc_start._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @ivtv_dma_enc_start._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.90, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/pci/ivtv/ivtv-irq.c", i32 482, i32 3}
!163 = !{ptr @ivtv_dma_enc_start._entry.89, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @ivtv_dma_enc_start._entry_ptr.91, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{i32 1, !"wchar_size", i32 2}
!166 = !{i32 1, !"min_enum_size", i32 4}
!167 = !{i32 8, !"branch-target-enforcement", i32 0}
!168 = !{i32 8, !"sign-return-address", i32 0}
!169 = !{i32 8, !"sign-return-address-all", i32 0}
!170 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!171 = !{i32 7, !"uwtable", i32 1}
!172 = !{i32 7, !"frame-pointer", i32 2}
!173 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!174 = !{i64 2156813992}
!175 = !{i64 5778477}
!176 = !{i64 2156820138}
!177 = !{i64 5778895}
!178 = !{i64 2156938501}
!179 = !{i64 2156939632}
!180 = !{i64 2156942530}
!181 = !{i64 2156938785}
!182 = !{i64 2156895210}
!183 = !{i64 2156898599}
!184 = !{i64 2156899967}
!185 = !{i64 2156900910}
!186 = !{i64 2156910305}
!187 = !{i64 2156911248}
!188 = !{i64 2156914785}
!189 = !{i64 2156917486}
!190 = !{i64 2156932303}
!191 = !{i64 2156934546}
!192 = !{i64 2156935167}
!193 = !{i64 2156935793}
!194 = !{i64 2156936414}
!195 = !{i64 2156959758}
!196 = !{i64 2156961126}
!197 = !{i64 2156962069}
!198 = !{i64 2156881898}
!199 = !{i64 2156883820}
!200 = !{i64 2156884769}
!201 = !{i64 2156885351}
!202 = !{i64 2156877630}
!203 = !{i64 2156879552}
!204 = !{i64 2156880501}
!205 = !{i64 2156881083}
!206 = !{i64 2156860715}
!207 = !{i64 2156861596}
!208 = !{i64 2156861969}
!209 = !{i64 2156862772}
!210 = !{i64 2156826853}
!211 = !{i64 2156827457}
!212 = !{i64 2156828129}
!213 = !{i64 2156830719}
!214 = !{i64 2156831318}
!215 = !{i64 2156831979}
!216 = !{i64 2156832618}
!217 = !{i64 2156833288}
!218 = !{i64 2156833734}
!219 = !{i64 2156834600}
!220 = !{i64 2156835179}
!221 = !{i64 2156835562}
!222 = !{i64 2156836350}
