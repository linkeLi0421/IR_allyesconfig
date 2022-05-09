; ModuleID = '/llk/IR_all_yes/drivers/media/pci/saa7134/saa7134-go7007.c_pt.bc'
source_filename = "../drivers/media/pci/saa7134/saa7134-go7007.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.saa7134_mpeg_ops = type { i32, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.go7007_board_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x %struct.go_i2c], i32, [4 x %struct.anon.165], i32, i32, [3 x %struct.anon.166] }
%struct.go_i2c = type { ptr, i8, i32, i32 }
%struct.anon.165 = type { i32, i32, ptr }
%struct.anon.166 = type { i32, ptr }
%struct.saa7134_board = type { ptr, i32, i32, [8 x %struct.saa7134_input], %struct.saa7134_input, %struct.saa7134_input, i32, i32, i8, i8, i8, i8, i32, %struct.tda829x_config, i32, i32, i32, i32, i8 }
%struct.saa7134_input = type { i32, i32, i32, i32 }
%struct.tda829x_config = type { i32, i8, ptr }
%struct.go7007_hpi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.saa7134_dev = type { %struct.list_head, %struct.mutex, %struct.spinlock, %struct.v4l2_device, %struct.work_struct, i32, i32, ptr, ptr, ptr, %struct.saa7134_dmasound, i32, ptr, [32 x i8], i32, ptr, i8, i8, ptr, ptr, i32, i32, i32, i8, i8, i32, i32, %struct.i2c_adapter, %struct.i2c_client, [256 x i8], i32, %struct.v4l2_framebuffer, ptr, i32, i32, %struct.v4l2_window, [8 x %struct.v4l2_clip], i32, ptr, %struct.saa7134_dmaqueue, %struct.vb2_queue, %struct.saa7134_dmaqueue, %struct.vb2_queue, i32, ptr, i32, i32, i32, i32, %struct.pm_qos_request, %struct.saa7134_ts, %struct.saa7134_dmaqueue, i32, i32, ptr, ptr, ptr, %struct.vb2_queue, %struct.work_struct, i32, %struct.v4l2_ctrl_handler, ptr, ptr, %struct.v4l2_ctrl_handler, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, %struct.saa7134_thread, ptr, ptr, i32, i32, i32, i32, %struct.v4l2_ctrl_handler, %struct.IR_i2c_init_data, ptr, [9 x %struct.media_entity], [9 x %struct.media_pad], %struct.media_entity, [2 x %struct.media_pad], %struct.media_pad, %struct.media_pad, ptr, %struct.vb2_dvb_frontends, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.saa7134_dmasound = type { %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.saa7134_pgtable, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr }
%struct.saa7134_pgtable = type { i32, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.122 }
%struct.anon.122 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_window = type { %struct.v4l2_rect, i32, i32, ptr, i32, ptr, i8 }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.saa7134_ts = type { i32, i32 }
%struct.saa7134_dmaqueue = type { ptr, ptr, %struct.list_head, %struct.timer_list, i32, i32, %struct.saa7134_pgtable }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.saa7134_thread = type { ptr, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.107 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.141, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.141 = type { ptr }
%struct.go7007 = type { ptr, [32 x i8], ptr, i32, i32, i32, [64 x i8], %struct.video_device, ptr, i32, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.mutex, %struct.mutex, i32, ptr, ptr, [16 x i8], i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, [4 x %struct.anon.167], [1624 x i8], [216 x i8], i32, %struct.mutex, %struct.vb2_queue, i32, i32, i16, i32, i32, %struct.list_head, %struct.wait_queue_head, ptr, ptr, ptr, i32, %struct.i2c_adapter, ptr, ptr, i32, %struct.wait_queue_head, i16, i16 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.104], %struct.media_entity_enum, i32 }
%struct.anon.104 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.anon.167 = type { i8, i32, i32, i32 }
%struct.saa7134_go7007 = type { %struct.v4l2_subdev, ptr, ptr, ptr, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.100, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.100 = type { %struct.atomic_t }

@__UNIQUE_ID_firmware393 = internal constant [44 x i8] c"saa7134_go7007.firmware=go7007/go7007tv.bin\00", section ".modinfo", align 1
@saa7134_go7007_ops = internal global { %struct.saa7134_mpeg_ops, [36 x i8] } { %struct.saa7134_mpeg_ops { i32 3, %struct.list_head zeroinitializer, ptr @saa7134_go7007_init, ptr @saa7134_go7007_fini, ptr null, ptr @saa7134_go7007_irq_ts_done }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_saa7134_go7007__395_516_saa7134_go7007_mod_init6 = internal global ptr @saa7134_go7007_mod_init, section ".initcall6.init", align 4
@__exitcall_saa7134_go7007_mod_cleanup = internal global ptr @saa7134_go7007_mod_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_file396 = internal constant [61 x i8] c"saa7134_go7007.file=drivers/media/pci/saa7134/saa7134-go7007\00", section ".modinfo", align 1
@__UNIQUE_ID_license397 = internal constant [30 x i8] c"saa7134_go7007.license=GPL v2\00", section ".modinfo", align 1
@saa7134_go7007_init.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"saa7134_go7007\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"saa7134_go7007_init\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/pci/saa7134/saa7134-go7007.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"saa7134-go7007: probing new SAA713X board\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"saa7134_go7007: saa7134-go7007: probing new SAA713X board\0A\00", [37 x i8] zeroinitializer }, align 32
@board_voyager = internal constant { %struct.go7007_board_info, [40 x i8] } { %struct.go7007_board_info { i32 0, i32 7, i32 480, i32 0, i32 0, i32 0, i32 0, i32 0, i32 257, i32 48000, i32 8, i32 2, i32 0, [5 x %struct.go_i2c] zeroinitializer, i32 1, [4 x %struct.anon.165] [%struct.anon.165 { i32 0, i32 0, ptr @.str.8 }, %struct.anon.165 zeroinitializer, %struct.anon.165 zeroinitializer, %struct.anon.165 zeroinitializer], i32 0, i32 0, [3 x %struct.anon.166] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCI:%s\00", [25 x i8] zeroinitializer }, align 32
@saa7134_boards = external dso_local local_unnamed_addr global [0 x %struct.saa7134_board], align 4
@saa7134_go7007_hpi_ops = internal constant { %struct.go7007_hpi_ops, [32 x i8] } { %struct.go7007_hpi_ops { ptr @saa7134_go7007_interface_reset, ptr @saa7134_go7007_write_interrupt, ptr @saa7134_go7007_read_interrupt, ptr @saa7134_go7007_stream_start, ptr @saa7134_go7007_stream_stop, ptr @saa7134_go7007_send_firmware, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@saa7134_go7007_sd_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @saa7134_go7007_video_ops, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"saa7134-go7007\00", [17 x i8] zeroinitializer }, align 32
@saa7134_go7007_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016saa7134_go7007: saa7134-go7007: register subdev failed\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7134_go7007_init._entry_ptr = internal global ptr @saa7134_go7007_init._entry, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SAA7134\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@saa7134_go7007_interface_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013saa7134_go7007: saa7134-go7007: unable to reset the GO7007\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"saa7134_go7007_interface_reset\00", [33 x i8] zeroinitializer }, align 32
@saa7134_go7007_interface_reset._entry_ptr = internal global ptr @saa7134_go7007_interface_reset._entry, section ".printk_index", align 4
@saa7134_go7007_write_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013saa7134_go7007: saa7134-go7007: device is hung, status reg = 0x%04x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"saa7134_go7007_write_interrupt\00", [33 x i8] zeroinitializer }, align 32
@saa7134_go7007_write_interrupt._entry_ptr = internal global ptr @saa7134_go7007_write_interrupt._entry, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@saa7134_go7007_send_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.13, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"saa7134_go7007_send_firmware\00", [35 x i8] zeroinitializer }, align 32
@saa7134_go7007_send_firmware._entry_ptr = internal global ptr @saa7134_go7007_send_firmware._entry, section ".printk_index", align 4
@saa7134_go7007_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr @saa7134_go7007_s_std, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@saa7134_go7007_irq_ts_done.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"saa7134_go7007_irq_ts_done\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"saa7134-go7007: irq: lost %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"saa7134_go7007: saa7134-go7007: irq: lost %ld\0A\00", [49 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"saa7134_go7007_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 499, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 411, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"board_voyager\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 59, i32 39 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 424, i32 47 }
@___asan_gen_.41 = private unnamed_addr constant [23 x i8] c"saa7134_go7007_hpi_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 368, i32 36 }
@___asan_gen_.44 = private unnamed_addr constant [22 x i8] c"saa7134_go7007_sd_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 396, i32 37 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 434, i32 20 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 456, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 74, i32 13 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 169, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 193, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 360, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant [25 x i8] c"saa7134_go7007_video_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 392, i32 43 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [46 x i8] c"../drivers/media/pci/saa7134/saa7134-go7007.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 228, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_file396, ptr @__UNIQUE_ID_firmware393, ptr @__UNIQUE_ID_license397, ptr @__exitcall_saa7134_go7007_mod_cleanup, ptr @__initcall__kmod_saa7134_go7007__395_516_saa7134_go7007_mod_init6, ptr @saa7134_go7007_init._entry, ptr @saa7134_go7007_init._entry_ptr, ptr @saa7134_go7007_interface_reset._entry, ptr @saa7134_go7007_interface_reset._entry_ptr, ptr @saa7134_go7007_mod_cleanup, ptr @saa7134_go7007_send_firmware._entry, ptr @saa7134_go7007_send_firmware._entry_ptr, ptr @saa7134_go7007_write_interrupt._entry, ptr @saa7134_go7007_write_interrupt._entry_ptr, ptr @saa7134_go7007_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @board_voyager, ptr @.str.5, ptr @saa7134_go7007_hpi_ops, ptr @saa7134_go7007_sd_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @saa7134_go7007_video_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_go7007_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_voyager to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_go7007_hpi_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_go7007_sd_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_go7007_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_go7007_interface_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_go7007_write_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_go7007_send_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_go7007_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @saa7134_go7007_mod_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @saa7134_ts_unregister(ptr noundef nonnull @saa7134_go7007_ops) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7134_ts_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7134_go7007_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @saa7134_ts_register(ptr noundef nonnull @saa7134_go7007_ops) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7134_go7007_init(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7134_go7007_init.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7134_go7007_init, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !64

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7134_go7007_init.__UNIQUE_ID_ddebug394, ptr noundef nonnull @.str.4) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call4 = tail call ptr @go7007_alloc(ptr noundef nonnull @board_voyager, ptr noundef %dev3) #9
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 216) #12
  %cmp8 = icmp eq ptr %call7.i.i, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call4) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %board_id = getelementptr inbounds %struct.go7007, ptr %call4, i32 0, i32 3
  %3 = ptrtoint ptr %board_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %board_id, align 8
  %bus_info = getelementptr inbounds %struct.go7007, ptr %call4, i32 0, i32 1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end10.pci_name.exit_crit_edge

if.end10.pci_name.exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end10.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %if.end10.pci_name.exit_crit_edge ]
  %call13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %retval.0.i.i)
  %name = getelementptr inbounds %struct.go7007, ptr %call4, i32 0, i32 6
  %board = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 20
  %10 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %board, align 4
  %arrayidx = getelementptr [0 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call16 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %13, i32 noundef 64) #9
  %hpi_ops = getelementptr inbounds %struct.go7007, ptr %call4, i32 0, i32 63
  %14 = ptrtoint ptr %hpi_ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @saa7134_go7007_hpi_ops, ptr %hpi_ops, align 8
  %hpi_context = getelementptr inbounds %struct.go7007, ptr %call4, i32 0, i32 64
  %15 = ptrtoint ptr %hpi_context to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %hpi_context, align 4
  %dev17 = getelementptr inbounds %struct.saa7134_go7007, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev, ptr %dev17, align 4
  tail call void @v4l2_subdev_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @saa7134_go7007_sd_ops) #9
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call7.i.i, i32 0, i32 11
  %17 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %dev_priv.i, align 8
  %name19 = getelementptr inbounds %struct.v4l2_subdev, ptr %call7.i.i, i32 0, i32 9
  %call21 = tail call i32 @strscpy(ptr noundef %name19, ptr noundef nonnull @.str.6, i32 noundef 32) #9
  %call22 = tail call i32 @get_zeroed_page(i32 noundef 3264) #9
  %18 = inttoptr i32 %call22 to ptr
  %top = getelementptr inbounds %struct.saa7134_go7007, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %top, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool24.not = icmp eq i32 %call22, 0
  br i1 %tobool24.not, label %pci_name.exit.allocfail_crit_edge, label %if.end26

pci_name.exit.allocfail_crit_edge:                ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %allocfail

if.end26:                                         ; preds = %pci_name.exit
  %call27 = tail call i32 @get_zeroed_page(i32 noundef 3264) #9
  %20 = inttoptr i32 %call27 to ptr
  %bottom = getelementptr inbounds %struct.saa7134_go7007, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %bottom to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %bottom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool29.not = icmp eq i32 %call27, 0
  br i1 %tobool29.not, label %if.end26.allocfailthread-pre-split_crit_edge, label %if.end31

if.end26.allocfailthread-pre-split_crit_edge:     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %allocfailthread-pre-split

if.end31:                                         ; preds = %if.end26
  %board_info = getelementptr inbounds %struct.go7007, ptr %call4, i32 0, i32 2
  %22 = ptrtoint ptr %board_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %board_info, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %and = and i32 %25, 2
  %call32 = tail call i32 @go7007_boot_encoder(ptr noundef nonnull %call4, i32 noundef %and) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end31.allocfailthread-pre-split_crit_edge, label %if.end35

if.end31.allocfailthread-pre-split_crit_edge:     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %allocfailthread-pre-split

if.end35:                                         ; preds = %if.end31
  %26 = ptrtoint ptr %board_info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %board_info, align 4
  %num_i2c_devs = getelementptr inbounds %struct.go7007_board_info, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %num_i2c_devs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_i2c_devs, align 4
  %call37 = tail call i32 @go7007_register_encoder(ptr noundef nonnull %call4, i32 noundef %29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end35.allocfailthread-pre-split_crit_edge, label %if.end40

if.end35.allocfailthread-pre-split_crit_edge:     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %allocfailthread-pre-split

if.end40:                                         ; preds = %if.end35
  %v4l2_dev = getelementptr inbounds %struct.go7007, ptr %call4, i32 0, i32 10
  %call41 = tail call i32 @v4l2_device_register_subdev(ptr noundef %v4l2_dev, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %do.end46, label %if.end40.if.end49_crit_edge

if.end40.if.end49_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #13
  br label %if.end49

if.end49:                                         ; preds = %do.end46, %if.end40.if.end49_crit_edge
  %vdev = getelementptr inbounds %struct.go7007, ptr %call4, i32 0, i32 7
  %empress_dev = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 55
  %30 = ptrtoint ptr %empress_dev to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %vdev, ptr %empress_dev, align 4
  %status = getelementptr inbounds %struct.go7007, ptr %call4, i32 0, i32 20
  %31 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %status, align 8
  br label %cleanup

allocfailthread-pre-split:                        ; preds = %if.end35.allocfailthread-pre-split_crit_edge, %if.end31.allocfailthread-pre-split_crit_edge, %if.end26.allocfailthread-pre-split_crit_edge
  %32 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load ptr, ptr %top, align 8
  br label %allocfail

allocfail:                                        ; preds = %allocfailthread-pre-split, %pci_name.exit.allocfail_crit_edge
  %33 = phi ptr [ %.pr, %allocfailthread-pre-split ], [ %18, %pci_name.exit.allocfail_crit_edge ]
  %tobool51.not = icmp eq ptr %33, null
  br i1 %tobool51.not, label %allocfail.if.end54_crit_edge, label %if.then52

allocfail.if.end54_crit_edge:                     ; preds = %allocfail
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then52:                                        ; preds = %allocfail
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %33 to i32
  tail call void @free_pages(i32 noundef %34, i32 noundef 0) #9
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %allocfail.if.end54_crit_edge
  %bottom55 = getelementptr inbounds %struct.saa7134_go7007, ptr %call7.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %bottom55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bottom55, align 4
  %tobool56.not = icmp eq ptr %36, null
  br i1 %tobool56.not, label %if.end54.if.end59_crit_edge, label %if.then57

if.end54.if.end59_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %36 to i32
  tail call void @free_pages(i32 noundef %37, i32 noundef 0) #9
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end54.if.end59_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  tail call void @kfree(ptr noundef nonnull %call4) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end49, %if.then9, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then9 ], [ -12, %if.end59 ], [ 0, %if.end49 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7134_go7007_fini(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %empress_dev = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 55
  %0 = ptrtoint ptr %empress_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %empress_dev, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %1, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %audio_enabled = getelementptr inbounds %struct.go7007, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %audio_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audio_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @go7007_snd_remove(ptr noundef %3) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %hpi_context = getelementptr inbounds %struct.go7007, ptr %3, i32 0, i32 64
  %6 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hpi_context, align 4
  %status = getelementptr inbounds %struct.go7007, ptr %3, i32 0, i32 20
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %status, align 8
  %top = getelementptr inbounds %struct.saa7134_go7007, ptr %7, i32 0, i32 2
  %9 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %top, align 4
  %11 = ptrtoint ptr %10 to i32
  tail call void @free_pages(i32 noundef %11, i32 noundef 0) #9
  %bottom = getelementptr inbounds %struct.saa7134_go7007, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %bottom to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bottom, align 4
  %14 = ptrtoint ptr %13 to i32
  tail call void @free_pages(i32 noundef %14, i32 noundef 0) #9
  tail call void @v4l2_device_unregister_subdev(ptr noundef %7) #9
  tail call void @kfree(ptr noundef %7) #9
  %vdev = getelementptr inbounds %struct.go7007, ptr %3, i32 0, i32 7
  tail call void @vb2_video_unregister_device(ptr noundef %vdev) #9
  %v4l2_dev = getelementptr inbounds %struct.go7007, ptr %3, i32 0, i32 10
  %call5 = tail call i32 @v4l2_device_put(ptr noundef %v4l2_dev) #9
  %15 = ptrtoint ptr %empress_dev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %empress_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @saa7134_go7007_irq_ts_done(ptr nocapture noundef readonly %dev, i32 noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %empress_dev = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 55
  %0 = ptrtoint ptr %empress_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %empress_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %1, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %hpi_context = getelementptr inbounds %struct.go7007, ptr %3, i32 0, i32 64
  %4 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hpi_context, align 4
  %streaming.i = getelementptr inbounds %struct.go7007, ptr %3, i32 0, i32 50, i32 28
  %6 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %status, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %do.body

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7134_go7007_irq_ts_done.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7134_go7007_irq_ts_done, %if.then6)) #9
          to label %if.end9 [label %if.then6], !srcloc !64

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %shr = lshr i32 %status, 16
  %and7 = and i32 %shr, 15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7134_go7007_irq_ts_done.__UNIQUE_ID_ddebug392, ptr noundef nonnull @.str.16, i32 noundef %and7) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %do.body, %if.end.if.end9_crit_edge
  %and10 = and i32 %status, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %pci18 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 15
  %7 = ptrtoint ptr %pci18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci18, align 4
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %bottom_dma = getelementptr inbounds %struct.saa7134_go7007, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %bottom_dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bottom_dma, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev19, i32 noundef %10, i32 noundef 4096, i32 noundef 2) #9
  %bottom = getelementptr inbounds %struct.saa7134_go7007, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %bottom to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bottom, align 4
  tail call void @go7007_parse_video_stream(ptr noundef %3, ptr noundef %12, i32 noundef 4096) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !65
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %bottom_dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bottom_dma, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %lmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 18
  %16 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %17, i32 149
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %15) #9, !srcloc !66
  br label %cleanup

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %top_dma = getelementptr inbounds %struct.saa7134_go7007, ptr %5, i32 0, i32 4
  %18 = ptrtoint ptr %top_dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %top_dma, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev19, i32 noundef %19, i32 noundef 4096, i32 noundef 2) #9
  %top = getelementptr inbounds %struct.saa7134_go7007, ptr %5, i32 0, i32 2
  %20 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %top, align 4
  tail call void @go7007_parse_video_stream(ptr noundef %3, ptr noundef %21, i32 noundef 4096) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %top_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %top_dma, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %lmmio24 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 18
  %25 = ptrtoint ptr %lmmio24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lmmio24, align 4
  %add.ptr25 = getelementptr i32, ptr %26, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %24) #9, !srcloc !66
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then12, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @go7007_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @go7007_boot_encoder(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @go7007_register_encoder(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7134_go7007_interface_reset(ptr noundef %go) #2 align 64 {
entry:
  %intr_val = alloca i16, align 2
  %intr_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hpi_context = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 64
  %0 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpi_context, align 4
  %dev1 = getelementptr inbounds %struct.saa7134_go7007, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %intr_val) #9
  %4 = ptrtoint ptr %intr_val to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %intr_val, align 2, !annotation !68
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %intr_data) #9
  %5 = ptrtoint ptr %intr_data to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %intr_data, align 2, !annotation !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @arm_heavy_mb() #9
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 416
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !71
  %9 = and i8 %8, 127
  %10 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bmmio, align 8
  %add.ptr5 = getelementptr i8, ptr %11, i32 416
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 %9) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bmmio, align 8
  %add.ptr10 = getelementptr i8, ptr %13, i32 434
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10, i8 -92) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bmmio, align 8
  %add.ptr15 = getelementptr i8, ptr %15, i32 432
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15, i8 -1) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bmmio, align 8
  %add.ptr20 = getelementptr i8, ptr %17, i32 438
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20, i8 4) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bmmio, align 8
  %add.ptr25 = getelementptr i8, ptr %19, i32 438
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr25, i8 0) #9, !srcloc !72
  tail call void @msleep(i32 noundef 1) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bmmio, align 8
  %add.ptr30 = getelementptr i8, ptr %21, i32 438
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr30, i8 4) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !78
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bmmio, align 8
  %add.ptr35 = getelementptr i8, ptr %23, i32 438
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr35, i8 36) #9, !srcloc !72
  tail call void @msleep(i32 noundef 10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bmmio, align 8
  %add.ptr42 = getelementptr i8, ptr %25, i32 435
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr42) #9, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !80
  %27 = and i8 %26, 127
  %28 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bmmio, align 8
  %add.ptr51 = getelementptr i8, ptr %29, i32 435
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr51, i8 %27) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !81
  tail call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bmmio, align 8
  %add.ptr58 = getelementptr i8, ptr %31, i32 435
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr58) #9, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %33 = or i8 %32, -128
  %34 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bmmio, align 8
  %add.ptr67 = getelementptr i8, ptr %35, i32 435
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr67, i8 %33) #9, !srcloc !72
  %36 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bmmio, align 8
  %add.ptr71 = getelementptr i8, ptr %37, i32 438
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr71) #9, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void @arm_heavy_mb() #9
  %39 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bmmio, align 8
  %add.ptr79 = getelementptr i8, ptr %40, i32 438
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr79, i8 4) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !85
  tail call void @arm_heavy_mb() #9
  %41 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bmmio, align 8
  %add.ptr84 = getelementptr i8, ptr %42, i32 438
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr84, i8 36) #9, !srcloc !72
  br label %do.body85

do.body85:                                        ; preds = %do.body85.do.body85_crit_edge, %entry
  %count.0 = phi i32 [ 20, %entry ], [ %dec, %do.body85.do.body85_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !86
  tail call void @arm_heavy_mb() #9
  %43 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bmmio, align 8
  %add.ptr92 = getelementptr i8, ptr %44, i32 435
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr92) #9, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  %46 = and i8 %45, 127
  %47 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bmmio, align 8
  %add.ptr101 = getelementptr i8, ptr %48, i32 435
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr101, i8 %46) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !88
  tail call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bmmio, align 8
  %add.ptr108 = getelementptr i8, ptr %50, i32 435
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr108) #9, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %52 = or i8 %51, -128
  %53 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bmmio, align 8
  %add.ptr117 = getelementptr i8, ptr %54, i32 435
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr117, i8 %52) #9, !srcloc !72
  %55 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bmmio, align 8
  %add.ptr121 = getelementptr i8, ptr %56, i32 438
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr121) #9, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  %dec = add nsw i32 %count.0, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %do.end127, label %do.body85.do.body85_crit_edge

do.body85.do.body85_crit_edge:                    ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body85

do.end127:                                        ; preds = %do.body85
  %call128 = call i32 @go7007_read_interrupt(ptr noundef %go, ptr noundef nonnull %intr_val, ptr noundef nonnull %intr_data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129 = icmp slt i32 %call128, 0
  br i1 %cmp129, label %do.end127.do.end137_crit_edge, label %lor.lhs.false

do.end127.do.end137_crit_edge:                    ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end137

lor.lhs.false:                                    ; preds = %do.end127
  %58 = ptrtoint ptr %intr_val to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %intr_val, align 2
  %60 = and i16 %59, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21930, i16 %60)
  %cmp133.not = icmp eq i16 %60, 21930
  br i1 %cmp133.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.end137_crit_edge

lor.lhs.false.do.end137_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end137

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end137:                                        ; preds = %lor.lhs.false.do.end137_crit_edge, %do.end127.do.end137_crit_edge
  %call139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end137, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end137 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %intr_data) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %intr_val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7134_go7007_write_interrupt(ptr nocapture noundef readonly %go, i32 noundef %addr, i32 noundef %data) #2 align 64 {
entry:
  %status_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hpi_context = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 64
  %0 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpi_context, align 4
  %dev1 = getelementptr inbounds %struct.saa7134_go7007, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status_reg) #9
  %4 = ptrtoint ptr %status_reg to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %status_reg, align 2, !annotation !68
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.021 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  call fastcc void @gpio_read(ptr noundef %3, i8 noundef zeroext -12, ptr noundef nonnull %status_reg)
  %5 = ptrtoint ptr %status_reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %status_reg, align 2
  %7 = and i16 %6, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.end7, label %if.end

if.end:                                           ; preds = %for.body
  tail call void @msleep(i32 noundef 10) #9
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %do.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %status_reg to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %status_reg, align 2
  %conv5 = zext i16 %9 to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv5) #13
  br label %cleanup

if.end7:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv8 = trunc i32 %data to i16
  tail call fastcc void @gpio_write(ptr noundef %3, i8 noundef zeroext -10, i16 noundef zeroext %conv8)
  %conv10 = trunc i32 %addr to i16
  tail call fastcc void @gpio_write(ptr noundef %3, i8 noundef zeroext -8, i16 noundef zeroext %conv10)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.end7 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status_reg) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7134_go7007_read_interrupt(ptr nocapture noundef %go) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hpi_context = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 64
  %0 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpi_context, align 4
  %dev1 = getelementptr inbounds %struct.saa7134_go7007, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %interrupt_available = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 65
  %4 = ptrtoint ptr %interrupt_available to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %interrupt_available, align 8
  %interrupt_value = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 67
  tail call fastcc void @gpio_read(ptr noundef %3, i8 noundef zeroext -18, ptr noundef %interrupt_value)
  %interrupt_data = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 68
  tail call fastcc void @gpio_read(ptr noundef %3, i8 noundef zeroext -20, ptr noundef %interrupt_data)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7134_go7007_stream_start(ptr nocapture noundef readonly %go) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hpi_context = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 64
  %0 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpi_context, align 4
  %dev1 = getelementptr inbounds %struct.saa7134_go7007, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %top = getelementptr inbounds %struct.saa7134_go7007, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %top, align 4
  %9 = ptrtoint ptr %8 to i32
  %sub = add i32 %9, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %6, i32 %shr
  %call = tail call i32 @dma_map_page_attrs(ptr noundef %dev2, ptr noundef %add.ptr, i32 noundef 0, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #9
  %top_dma = getelementptr inbounds %struct.saa7134_go7007, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %top_dma to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call, ptr %top_dma, align 4
  %11 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci, align 4
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev5, i32 noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp.i.not = icmp eq i32 %call, -1
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %bottom = getelementptr inbounds %struct.saa7134_go7007, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %bottom to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bottom, align 4
  %18 = ptrtoint ptr %17 to i32
  %sub10 = add i32 %18, 1073741824
  %shr11 = lshr i32 %sub10, 12
  %add.ptr14 = getelementptr %struct.page, ptr %15, i32 %shr11
  %call15 = tail call i32 @dma_map_page_attrs(ptr noundef %dev9, ptr noundef %add.ptr14, i32 noundef 0, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #9
  %bottom_dma = getelementptr inbounds %struct.saa7134_go7007, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %bottom_dma to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call15, ptr %bottom_dma, align 4
  %20 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci, align 4
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev17, i32 noundef %call15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call15)
  %cmp.i195.not = icmp eq i32 %call15, -1
  br i1 %cmp.i195.not, label %if.then21, label %do.body

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci, align 4
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %top_dma to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %top_dma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev23, i32 noundef %25, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  tail call void @arm_heavy_mb() #9
  %lmmio = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 18
  %26 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lmmio, align 4
  %add.ptr26 = getelementptr i32, ptr %27, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 11534499) #9, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lmmio, align 4
  %add.ptr31 = getelementptr i32, ptr %29, i32 101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 131136) #9, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 19
  %30 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bmmio, align 8
  %add.ptr35 = getelementptr i8, ptr %31, i32 432
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr35, i8 -1) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @arm_heavy_mb() #9
  %32 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bmmio, align 8
  %add.ptr40 = getelementptr i8, ptr %33, i32 436
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr40, i8 -28) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  tail call void @arm_heavy_mb() #9
  %34 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bmmio, align 8
  %add.ptr45 = getelementptr i8, ptr %35, i32 438
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr45, i8 -92) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bmmio, align 8
  %add.ptr50 = getelementptr i8, ptr %37, i32 432
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr50, i8 0) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bmmio, align 8
  %add.ptr55 = getelementptr i8, ptr %39, i32 416
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr55, i8 -26) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bmmio, align 8
  %add.ptr60 = getelementptr i8, ptr %41, i32 419
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr60) #9, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  %43 = or i8 %42, 1
  %44 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bmmio, align 8
  %add.ptr65 = getelementptr i8, ptr %45, i32 419
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr65, i8 %43) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %46 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bmmio, align 8
  %add.ptr72 = getelementptr i8, ptr %47, i32 419
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr72) #9, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  %49 = and i8 %48, -2
  %50 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bmmio, align 8
  %add.ptr81 = getelementptr i8, ptr %51, i32 419
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr81, i8 %49) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %52 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bmmio, align 8
  %add.ptr86 = getelementptr i8, ptr %53, i32 417
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr86, i8 127) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %54 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bmmio, align 8
  %add.ptr91 = getelementptr i8, ptr %55, i32 420
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr91, i8 31) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %56 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bmmio, align 8
  %add.ptr96 = getelementptr i8, ptr %57, i32 421
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr96, i8 0) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  tail call void @arm_heavy_mb() #9
  %58 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bmmio, align 8
  %add.ptr101 = getelementptr i8, ptr %59, i32 422
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr101, i8 0) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  tail call void @arm_heavy_mb() #9
  %60 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bmmio, align 8
  %add.ptr106 = getelementptr i8, ptr %61, i32 438
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr106, i8 -124) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %62 = ptrtoint ptr %top_dma to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %top_dma, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %65 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lmmio, align 4
  %add.ptr112 = getelementptr i32, ptr %66, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr112, i32 %64) #9, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %67 = ptrtoint ptr %bottom_dma to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bottom_dma, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  %70 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lmmio, align 4
  %add.ptr118 = getelementptr i32, ptr %71, i32 149
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %69) #9, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %72 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %lmmio, align 4
  %add.ptr123 = getelementptr i32, ptr %73, i32 150
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 -2147483648) #9, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  %74 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lmmio, align 4
  %add.ptr128 = getelementptr i32, ptr %75, i32 151
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 57344) #9, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  tail call void @arm_heavy_mb() #9
  %76 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %lmmio, align 4
  %add.ptr135 = getelementptr i32, ptr %77, i32 170
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr135) #9, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !113
  %79 = or i32 %78, 536870912
  %80 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %lmmio, align 4
  %add.ptr142 = getelementptr i32, ptr %81, i32 170
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142, i32 %79) #9, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  %82 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %lmmio, align 4
  %add.ptr149 = getelementptr i32, ptr %83, i32 177
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr149) #9, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %85 = or i32 %84, 768
  %86 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %lmmio, align 4
  %add.ptr156 = getelementptr i32, ptr %87, i32 177
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr156, i32 %85) #9, !srcloc !66
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then21 ], [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7134_go7007_stream_stop(ptr nocapture noundef readonly %go) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hpi_context = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 64
  %0 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpi_context, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.saa7134_go7007, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  %lmmio = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %5, i32 170
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  %7 = and i32 %6, -536870913
  %8 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio, align 4
  %add.ptr7 = getelementptr i32, ptr %9, i32 170
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %7) #9, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !118
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio, align 4
  %add.ptr14 = getelementptr i32, ptr %11, i32 177
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #9, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  %13 = and i32 %12, -769
  %14 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio, align 4
  %add.ptr21 = getelementptr i32, ptr %15, i32 177
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %13) #9, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 19
  %16 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bmmio, align 8
  %add.ptr27 = getelementptr i8, ptr %17, i32 416
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr27) #9, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %19 = and i8 %18, 127
  %20 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bmmio, align 8
  %add.ptr35 = getelementptr i8, ptr %21, i32 416
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr35, i8 %19) #9, !srcloc !72
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 15
  %22 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci, align 4
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %top_dma = getelementptr inbounds %struct.saa7134_go7007, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %top_dma to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %top_dma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev36, i32 noundef %25, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #9
  %26 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci, align 4
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %bottom_dma = getelementptr inbounds %struct.saa7134_go7007, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %bottom_dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bottom_dma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev38, i32 noundef %29, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7134_go7007_send_firmware(ptr nocapture noundef readonly %go, ptr nocapture noundef readonly %data, i32 noundef %len) #2 align 64 {
entry:
  %status_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hpi_context = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 64
  %0 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpi_context, align 4
  %dev1 = getelementptr inbounds %struct.saa7134_go7007, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status_reg) #9
  %4 = ptrtoint ptr %status_reg to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %status_reg, align 2, !annotation !68
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 19
  br label %while.cond

while.cond:                                       ; preds = %for.end.while.cond_crit_edge, %entry
  %len.addr.0 = phi i32 [ %len, %entry ], [ %14, %for.end.while.cond_crit_edge ]
  %data.addr.0 = phi ptr [ %data, %entry ], [ %incdec.ptr, %for.end.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0)
  %cmp = icmp sgt i32 %len.addr.0, 0
  br i1 %cmp, label %while.body, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %5 = tail call i32 @llvm.umin.i32(i32 %len.addr.0, i32 64)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 432
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -1) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmmio, align 8
  %add.ptr7 = getelementptr i8, ptr %9, i32 436
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7, i8 -22) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bmmio, align 8
  %add.ptr12 = getelementptr i8, ptr %11, i32 438
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12, i8 -92) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bmmio, align 8
  %add.ptr17 = getelementptr i8, ptr %13, i32 438
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17, i8 -96) #9, !srcloc !72
  br label %do.body21

for.cond.preheader.loopexit:                      ; preds = %do.body21
  %14 = sub i32 %len.addr.0, %5
  br label %for.body

do.body21:                                        ; preds = %do.body21.do.body21_crit_edge, %while.body
  %i.068 = phi i32 [ %dec, %do.body21.do.body21_crit_edge ], [ %5, %while.body ]
  %data.addr.167 = phi ptr [ %incdec.ptr, %do.body21.do.body21_crit_edge ], [ %data.addr.0, %while.body ]
  %dec = add nsw i32 %i.068, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %data.addr.167 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %data.addr.167, align 1
  %17 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bmmio, align 8
  %add.ptr25 = getelementptr i8, ptr %18, i32 436
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr25, i8 %16) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  %19 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bmmio, align 8
  %add.ptr30 = getelementptr i8, ptr %20, i32 438
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr30, i8 32) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bmmio, align 8
  %add.ptr35 = getelementptr i8, ptr %22, i32 438
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr35, i8 -96) #9, !srcloc !72
  %incdec.ptr = getelementptr i8, ptr %data.addr.167, i32 1
  %cmp19 = icmp ugt i32 %i.068, 1
  br i1 %cmp19, label %do.body21.do.body21_crit_edge, label %for.cond.preheader.loopexit

do.body21.do.body21_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body21

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.loopexit
  %i.170 = phi i32 [ 0, %for.cond.preheader.loopexit ], [ %inc, %for.inc.for.body_crit_edge ]
  call fastcc void @gpio_read(ptr noundef %3, i8 noundef zeroext -12, ptr noundef nonnull %status_reg)
  %23 = ptrtoint ptr %status_reg to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %status_reg, align 2
  %25 = and i16 %24, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not = icmp eq i16 %25, 0
  br i1 %tobool.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.170, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.inc.do.end43_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.end43_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43

for.end:                                          ; preds = %for.body
  %cmp38 = icmp eq i32 %i.170, 100
  br i1 %cmp38, label %for.end.do.end43_crit_edge, label %for.end.while.cond_crit_edge

for.end.while.cond_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

for.end.do.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43

do.end43:                                         ; preds = %for.end.do.end43_crit_edge, %for.inc.do.end43_crit_edge
  %26 = ptrtoint ptr %status_reg to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %status_reg, align 2
  %conv44 = zext i16 %27 to i32
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv44) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end43 ], [ 0, %while.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status_reg) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @go7007_read_interrupt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpio_read(ptr nocapture noundef readonly %dev, i8 noundef zeroext %addr, ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  tail call void @arm_heavy_mb() #9
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 432
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -1) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  tail call void @arm_heavy_mb() #9
  %2 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmmio, align 8
  %add.ptr4 = getelementptr i8, ptr %3, i32 436
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 %addr) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmmio, align 8
  %add.ptr8 = getelementptr i8, ptr %5, i32 438
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8, i8 -92) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !132
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmmio, align 8
  %add.ptr12 = getelementptr i8, ptr %7, i32 438
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12, i8 -96) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmmio, align 8
  %add.ptr16 = getelementptr i8, ptr %9, i32 432
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16, i8 0) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bmmio, align 8
  %add.ptr20 = getelementptr i8, ptr %11, i32 438
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20, i8 -128) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bmmio, align 8
  %add.ptr24 = getelementptr i8, ptr %13, i32 435
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24) #9, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  %15 = and i8 %14, 127
  %16 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bmmio, align 8
  %add.ptr28 = getelementptr i8, ptr %17, i32 435
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28, i8 %15) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !137
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bmmio, align 8
  %add.ptr34 = getelementptr i8, ptr %19, i32 435
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr34) #9, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  %21 = or i8 %20, -128
  %22 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bmmio, align 8
  %add.ptr43 = getelementptr i8, ptr %23, i32 435
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr43, i8 %21) #9, !srcloc !72
  %24 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bmmio, align 8
  %add.ptr47 = getelementptr i8, ptr %25, i32 436
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr47) #9, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  %conv51 = zext i8 %26 to i16
  %27 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv51, ptr %data, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bmmio, align 8
  %add.ptr55 = getelementptr i8, ptr %29, i32 438
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr55, i8 -96) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  tail call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bmmio, align 8
  %add.ptr59 = getelementptr i8, ptr %31, i32 438
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr59, i8 -128) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  tail call void @arm_heavy_mb() #9
  %32 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bmmio, align 8
  %add.ptr65 = getelementptr i8, ptr %33, i32 435
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr65) #9, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  %35 = and i8 %34, 127
  %36 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bmmio, align 8
  %add.ptr74 = getelementptr i8, ptr %37, i32 435
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr74, i8 %35) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bmmio, align 8
  %add.ptr80 = getelementptr i8, ptr %39, i32 435
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr80) #9, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  %41 = or i8 %40, -128
  %42 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bmmio, align 8
  %add.ptr89 = getelementptr i8, ptr %43, i32 435
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr89, i8 %41) #9, !srcloc !72
  %44 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bmmio, align 8
  %add.ptr93 = getelementptr i8, ptr %45, i32 436
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr93) #9, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  %conv97 = zext i8 %46 to i16
  %shl = shl nuw i16 %conv97, 8
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %data, align 2
  %or99 = or i16 %shl, %48
  store i16 %or99, ptr %data, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bmmio, align 8
  %add.ptr104 = getelementptr i8, ptr %50, i32 438
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr104, i8 -96) #9, !srcloc !72
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpio_write(ptr nocapture noundef readonly %dev, i8 noundef zeroext %addr, i16 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  tail call void @arm_heavy_mb() #9
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 432
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -1) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  tail call void @arm_heavy_mb() #9
  %2 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmmio, align 8
  %add.ptr4 = getelementptr i8, ptr %3, i32 436
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 %addr) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmmio, align 8
  %add.ptr8 = getelementptr i8, ptr %5, i32 438
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8, i8 -92) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !151
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmmio, align 8
  %add.ptr12 = getelementptr i8, ptr %7, i32 438
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12, i8 -96) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  %conv15 = trunc i16 %data to i8
  %8 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmmio, align 8
  %add.ptr17 = getelementptr i8, ptr %9, i32 436
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17, i8 %conv15) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bmmio, align 8
  %add.ptr21 = getelementptr i8, ptr %11, i32 438
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21, i8 32) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bmmio, align 8
  %add.ptr25 = getelementptr i8, ptr %13, i32 438
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr25, i8 -96) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  tail call void @arm_heavy_mb() #9
  %14 = lshr i16 %data, 8
  %conv29 = trunc i16 %14 to i8
  %15 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bmmio, align 8
  %add.ptr31 = getelementptr i8, ptr %16, i32 436
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31, i8 %conv29) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bmmio, align 8
  %add.ptr35 = getelementptr i8, ptr %18, i32 438
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr35, i8 32) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void @arm_heavy_mb() #9
  %19 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bmmio, align 8
  %add.ptr39 = getelementptr i8, ptr %20, i32 438
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr39, i8 -96) #9, !srcloc !72
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @saa7134_go7007_s_std(ptr nocapture noundef readnone %sd, i64 noundef %norm) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @go7007_snd_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @go7007_parse_video_stream(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_ts_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !16, !17, !18, !20, !22, !24, !25, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !50, !52, !53, !54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__UNIQUE_ID_firmware393, !1, !"__UNIQUE_ID_firmware393", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/saa7134/saa7134-go7007.c", i32 376, i32 1}
!2 = !{ptr @__initcall__kmod_saa7134_go7007__395_516_saa7134_go7007_mod_init6, !3, !"__initcall__kmod_saa7134_go7007__395_516_saa7134_go7007_mod_init6", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/saa7134/saa7134-go7007.c", i32 516, i32 1}
!4 = !{ptr @__exitcall_saa7134_go7007_mod_cleanup, !5, !"__exitcall_saa7134_go7007_mod_cleanup", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/saa7134/saa7134-go7007.c", i32 517, i32 1}
!6 = !{ptr @__UNIQUE_ID_file396, !7, !"__UNIQUE_ID_file396", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/saa7134/saa7134-go7007.c", i32 519, i32 1}
!8 = !{ptr @__UNIQUE_ID_license397, !7, !"__UNIQUE_ID_license397", i1 false, i1 false}
!9 = !{ptr @saa7134_go7007_ops, !10, !"saa7134_go7007_ops", i1 false, i1 false}
!10 = !{!"../drivers/media/pci/saa7134/saa7134-go7007.c", i32 499, i32 32}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/saa7134/saa7134-go7007.c", i32 411, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @saa7134_go7007_init.__UNIQUE_ID_ddebug394, !12, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!17 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/saa7134/saa7134-go7007.c", i32 424, i32 47}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/saa7134/saa7134-go7007.c", i32 434, i32 20}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/saa7134/saa7134-go7007.c", i32 456, i32 3}
!24 = !{ptr @saa7134_go7007_init._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @saa7134_go7007_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/saa7134/saa7134-go7007.c", i32 74, i32 13}
!28 = !{ptr @board_voyager, !29, !"board_voyager", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/saa7134/saa7134-go7007.c", i32 59, i32 39}
!30 = !{ptr @saa7134_go7007_hpi_ops, !31, !"saa7134_go7007_hpi_ops", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/saa7134/saa7134-go7007.c", i32 368, i32 36}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/saa7134/saa7134-go7007.c", i32 169, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @saa7134_go7007_interface_reset._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @saa7134_go7007_interface_reset._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/saa7134/saa7134-go7007.c", i32 193, i32 3}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @saa7134_go7007_write_interrupt._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @saa7134_go7007_write_interrupt._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/saa7134/saa7134-go7007.c", i32 360, i32 4}
!44 = !{ptr @saa7134_go7007_send_firmware._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @saa7134_go7007_send_firmware._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @saa7134_go7007_sd_ops, !47, !"saa7134_go7007_sd_ops", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/saa7134/saa7134-go7007.c", i32 396, i32 37}
!48 = !{ptr @saa7134_go7007_video_ops, !49, !"saa7134_go7007_video_ops", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/saa7134/saa7134-go7007.c", i32 392, i32 43}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/saa7134/saa7134-go7007.c", i32 228, i32 3}
!52 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @saa7134_go7007_irq_ts_done.__UNIQUE_ID_ddebug392, !51, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!54 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2148529352, i64 2148529357, i64 2148529370, i64 2148529414, i64 2148529448, i64 2148529469}
!65 = !{i64 2159006669}
!66 = !{i64 5024118}
!67 = !{i64 2159007379}
!68 = !{!"auto-init"}
!69 = !{i64 2158991553}
!70 = !{i64 5024316}
!71 = !{i64 2158991736}
!72 = !{i64 5023921}
!73 = !{i64 2158992107}
!74 = !{i64 2158992448}
!75 = !{i64 2158992815}
!76 = !{i64 2158993197}
!77 = !{i64 2158993578}
!78 = !{i64 2158993958}
!79 = !{i64 2158994891}
!80 = !{i64 2158995074}
!81 = !{i64 2158996047}
!82 = !{i64 2158996230}
!83 = !{i64 2158996610}
!84 = !{i64 2158996914}
!85 = !{i64 2158997294}
!86 = !{i64 2158998227}
!87 = !{i64 2158998410}
!88 = !{i64 2158999383}
!89 = !{i64 2158999566}
!90 = !{i64 2158999946}
!91 = !{i64 2159009619}
!92 = !{i64 2159010137}
!93 = !{i64 2159010633}
!94 = !{i64 2159011008}
!95 = !{i64 2159011392}
!96 = !{i64 2159011746}
!97 = !{i64 2159012087}
!98 = !{i64 2159013025}
!99 = !{i64 2159013208}
!100 = !{i64 2159014160}
!101 = !{i64 2159014343}
!102 = !{i64 2159014720}
!103 = !{i64 2159015192}
!104 = !{i64 2159015685}
!105 = !{i64 2159016173}
!106 = !{i64 2159016571}
!107 = !{i64 2159016993}
!108 = !{i64 2159017580}
!109 = !{i64 2159018152}
!110 = !{i64 2159018719}
!111 = !{i64 2159020291}
!112 = !{i64 5024536}
!113 = !{i64 2159021376}
!114 = !{i64 2159022903}
!115 = !{i64 2159024066}
!116 = !{i64 2159025488}
!117 = !{i64 2159026551}
!118 = !{i64 2159027993}
!119 = !{i64 2159029108}
!120 = !{i64 2159030051}
!121 = !{i64 2159030234}
!122 = !{i64 2159030924}
!123 = !{i64 2159031297}
!124 = !{i64 2159031680}
!125 = !{i64 2159032060}
!126 = !{i64 2159032416}
!127 = !{i64 2159032786}
!128 = !{i64 2159033167}
!129 = !{i64 2158982524}
!130 = !{i64 2158982865}
!131 = !{i64 2158983232}
!132 = !{i64 2158983612}
!133 = !{i64 2158983966}
!134 = !{i64 2158984333}
!135 = !{i64 2158985266}
!136 = !{i64 2158985449}
!137 = !{i64 2158986422}
!138 = !{i64 2158986605}
!139 = !{i64 2158986985}
!140 = !{i64 2158987289}
!141 = !{i64 2158987669}
!142 = !{i64 2158988602}
!143 = !{i64 2158988785}
!144 = !{i64 2158989758}
!145 = !{i64 2158989941}
!146 = !{i64 2158990321}
!147 = !{i64 2158990625}
!148 = !{i64 2158978838}
!149 = !{i64 2158979179}
!150 = !{i64 2158979546}
!151 = !{i64 2158979926}
!152 = !{i64 2158980294}
!153 = !{i64 2158980670}
!154 = !{i64 2158981051}
!155 = !{i64 2158981415}
!156 = !{i64 2158981789}
!157 = !{i64 2158982170}
