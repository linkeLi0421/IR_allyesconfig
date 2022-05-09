; ModuleID = '/llk/IR_all_yes/drivers/media/platform/marvell-ccic/cafe-driver.c_pt.bc'
source_filename = "../drivers/media/platform/marvell-ccic/cafe-driver.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ov7670_config = type { i32, i32, i32, i8, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.cafe_camera = type { i32, %struct.mcam_camera, ptr, ptr, %struct.wait_queue_head }
%struct.mcam_camera = type { ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, ptr, i8, i32, [3 x ptr], %struct.clk_hw, ptr, ptr, ptr, ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, i32, i32, %struct.mcam_frame_state, %struct.video_device, %struct.v4l2_async_notifier, ptr, %struct.vb2_queue, %struct.list_head, i32, i32, [32 x i8], i32, [3 x ptr], [3 x i32], %struct.tasklet_struct, i32, [3 x i32], [3 x ptr], ptr, ptr, %struct.v4l2_pix_format, i32, %struct.mutex }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mcam_frame_state = type { i32, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.85], %struct.media_entity_enum, i32 }
%struct.anon.85 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.102, i32 }
%union.anon.102 = type { ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.103, i32, i32 }
%union.anon.103 = type { i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__UNIQUE_ID_author300 = internal constant [50 x i8] c"cafe_ccic.author=Jonathan Corbet <corbet@lwn.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description301 = internal constant [68 x i8] c"cafe_ccic.description=Marvell 88ALP01 CMOS Camera Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [61 x i8] c"cafe_ccic.file=drivers/media/platform/marvell-ccic/cafe_ccic\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [22 x i8] c"cafe_ccic.license=GPL\00", section ".modinfo", align 1
@cafe_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @cafe_ids, ptr @cafe_pci_probe, ptr @cafe_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cafe_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_cafe_ccic__304_673_cafe_init6 = internal global ptr @cafe_init, section ".initcall6.init", align 4
@__exitcall_cafe_exit = internal global ptr @cafe_exit, section ".exitcall.exit", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cafe1000-ccic\00", [18 x i8] zeroinitializer }, align 32
@cafe_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4523, i32 16642, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cafe_pci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cafe_pci_suspend, ptr @cafe_pci_resume, ptr @cafe_pci_suspend, ptr @cafe_pci_resume, ptr @cafe_pci_suspend, ptr @cafe_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cafe_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&mcam->dev_lock\00", [16 x i8] zeroinitializer }, align 32
@cafe_pci_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&cam->smbus_wait\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCI:%s\00", [25 x i8] zeroinitializer }, align 32
@cafe_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Unable to ioremap cafe-ccic regs\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cafe_pci_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/media/platform/marvell-ccic/cafe-driver.c\00", [46 x i8] zeroinitializer }, align 32
@cafe_pci_probe._entry_ptr = internal global ptr @cafe_pci_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cafe-ccic\00", [22 x i8] zeroinitializer }, align 32
@ov7670_info = internal global { %struct.i2c_board_info, [40 x i8] } { %struct.i2c_board_info { [20 x i8] c"ov7670\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 33, ptr null, ptr @sensor_cfg, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xclk\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%d-%04x\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cafe_smbus_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr null, ptr null, ptr @cafe_smbus_xfer, ptr null, ptr @cafe_smbus_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cafe_ccic\00", [22 x i8] zeroinitializer }, align 32
@cafe_smbus_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.7, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Unable to register cafe i2c adapter\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cafe_smbus_setup\00", [47 x i8] zeroinitializer }, align 32
@cafe_smbus_setup._entry_ptr = internal global ptr @cafe_smbus_setup._entry, section ".printk_index", align 4
@cafe_smbus_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.7, i32 293, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"funky xfer size %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cafe_smbus_xfer\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cafe_smbus_xfer._entry_ptr = internal global ptr @cafe_smbus_xfer._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cafe_smbus_write_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.7, i32 206, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"SMBUS write (%02x/%02x/%02x) timed out\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cafe_smbus_write_data\00", [42 x i8] zeroinitializer }, align 32
@cafe_smbus_write_data._entry_ptr = internal global ptr @cafe_smbus_write_data._entry, section ".printk_index", align 4
@cafe_smbus_write_data._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.7, i32 211, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SMBUS write (%02x/%02x/%02x) error\0A\00", [60 x i8] zeroinitializer }, align 32
@cafe_smbus_write_data._entry_ptr.22 = internal global ptr @cafe_smbus_write_data._entry.20, section ".printk_index", align 4
@cafe_smbus_read_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.7, i32 265, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SMBUS read (%02x/%02x) error\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cafe_smbus_read_data\00", [43 x i8] zeroinitializer }, align 32
@cafe_smbus_read_data._entry_ptr = internal global ptr @cafe_smbus_read_data._entry, section ".printk_index", align 4
@cafe_smbus_read_data._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.7, i32 270, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SMBUS read (%02x/%02x) timed out\0A\00", [62 x i8] zeroinitializer }, align 32
@cafe_smbus_read_data._entry_ptr.27 = internal global ptr @cafe_smbus_read_data._entry.25, section ".printk_index", align 4
@sensor_cfg = internal global { %struct.ov7670_config, [16 x i8] } { %struct.ov7670_config { i32 320, i32 240, i32 45, i8 1, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@cafe_pci_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.7, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014pci_remove on unknown pdev %p\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cafe_pci_remove\00", [16 x i8] zeroinitializer }, align 32
@cafe_pci_remove._entry_ptr = internal global ptr @cafe_pci_remove._entry, section ".printk_index", align 4
@cafe_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.7, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\015Marvell M88ALP01 'CAFE' Camera Controller version %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cafe_init\00", [22 x i8] zeroinitializer }, align 32
@cafe_init._entry_ptr = internal global ptr @cafe_init._entry, section ".printk_index", align 4
@cafe_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.7, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Unable to register cafe_ccic driver\0A\00", [57 x i8] zeroinitializer }, align 32
@cafe_init._entry_ptr.34 = internal global ptr @cafe_init._entry.32, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"cafe_pci_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 639, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 640, i32 10 }
@___asan_gen_.41 = private unnamed_addr constant [9 x i8] c"cafe_ids\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 629, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"cafe_pci_pm_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 637, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 495, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 496, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 500, i32 51 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 518, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 522, i32 54 }
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"ov7670_info\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 464, i32 30 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 554, i32 28 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 554, i32 36 }
@___asan_gen_.86 = private unnamed_addr constant [16 x i8] c"cafe_smbus_algo\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 320, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 335, i32 22 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 340, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 293, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 205, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 210, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 265, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 269, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [11 x i8] c"sensor_cfg\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 448, i32 29 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 601, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 654, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.171 = private constant [53 x i8] c"../drivers/media/platform/marvell-ccic/cafe-driver.c\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 658, i32 3 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_cafe_exit, ptr @__initcall__kmod_cafe_ccic__304_673_cafe_init6, ptr @cafe_exit, ptr @cafe_init._entry, ptr @cafe_init._entry.32, ptr @cafe_init._entry_ptr, ptr @cafe_init._entry_ptr.34, ptr @cafe_pci_probe._entry, ptr @cafe_pci_probe._entry_ptr, ptr @cafe_pci_remove._entry, ptr @cafe_pci_remove._entry_ptr, ptr @cafe_smbus_read_data._entry, ptr @cafe_smbus_read_data._entry.25, ptr @cafe_smbus_read_data._entry_ptr, ptr @cafe_smbus_read_data._entry_ptr.27, ptr @cafe_smbus_setup._entry, ptr @cafe_smbus_setup._entry_ptr, ptr @cafe_smbus_write_data._entry, ptr @cafe_smbus_write_data._entry.20, ptr @cafe_smbus_write_data._entry_ptr, ptr @cafe_smbus_write_data._entry_ptr.22, ptr @cafe_smbus_xfer._entry, ptr @cafe_smbus_xfer._entry_ptr, ptr @cafe_pci_driver, ptr @.str, ptr @cafe_ids, ptr @cafe_pci_pm_ops, ptr @cafe_pci_probe.__key, ptr @.str.1, ptr @cafe_pci_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ov7670_info, ptr @.str.9, ptr @.str.10, ptr @cafe_smbus_algo, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @sensor_cfg, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_pci_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_info to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_smbus_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_smbus_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_smbus_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_smbus_write_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_smbus_write_data._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_smbus_read_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_smbus_read_data._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_pci_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cafe_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @cafe_pci_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cafe_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef 2) #12
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @cafe_pci_driver, ptr noundef null, ptr noundef nonnull @.str.11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %do.end4

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #12
  br label %out

out:                                              ; preds = %do.end4, %entry.out_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cafe_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2736) #13
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %pdev1 = getelementptr inbounds %struct.cafe_camera, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %pdev1, align 8
  %mcam2 = getelementptr inbounds %struct.cafe_camera, ptr %call7.i.i, i32 0, i32 1
  %chip_id = getelementptr inbounds %struct.cafe_camera, ptr %call7.i.i, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %chip_id, align 8
  %dev_lock = getelementptr inbounds %struct.cafe_camera, ptr %call7.i.i, i32 0, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %dev_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @cafe_pci_probe.__key, i16 noundef signext 3) #9
  %smbus_wait = getelementptr inbounds %struct.cafe_camera, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %smbus_wait, ptr noundef nonnull @.str.3, ptr noundef nonnull @cafe_pci_probe.__key.2) #9
  %plat_power_up = getelementptr inbounds %struct.cafe_camera, ptr %call7.i.i, i32 0, i32 1, i32 15
  %4 = ptrtoint ptr %plat_power_up to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cafe_ctlr_power_up, ptr %plat_power_up, align 4
  %plat_power_down = getelementptr inbounds %struct.cafe_camera, ptr %call7.i.i, i32 0, i32 1, i32 16
  %5 = ptrtoint ptr %plat_power_down to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cafe_ctlr_power_down, ptr %plat_power_down, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %dev7 = getelementptr inbounds %struct.cafe_camera, ptr %call7.i.i, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev7, align 4
  %bus_info = getelementptr inbounds %struct.cafe_camera, ptr %call7.i.i, i32 0, i32 1, i32 30
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end.pci_name.exit_crit_edge ]
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.4, ptr noundef %retval.0.i.i)
  %buffer_mode = getelementptr inbounds %struct.cafe_camera, ptr %call7.i.i, i32 0, i32 1, i32 5
  %11 = ptrtoint ptr %buffer_mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %buffer_mode, align 4
  %call10 = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end12, label %pci_name.exit.out_free_crit_edge

pci_name.exit.out_free_crit_edge:                 ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.end12:                                         ; preds = %pci_name.exit
  tail call void @pci_set_master(ptr noundef %pdev) #9
  %call13 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 0) #9
  %12 = ptrtoint ptr %mcam2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call13, ptr %mcam2, align 8
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %out_disable

if.end21:                                         ; preds = %if.end12
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %13 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp22 = icmp eq i32 %14, 0
  br i1 %cmp22, label %if.end21.cond.end_crit_edge, label %cond.false

if.end21.cond.end_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %15 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resource, align 8
  %sub = add i32 %14, 1
  %add = sub i32 %sub, %16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end21.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end21.cond.end_crit_edge ]
  %regs_size = getelementptr inbounds %struct.cafe_camera, ptr %call7.i.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %regs_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %regs_size, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %19, ptr noundef nonnull @cafe_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.8, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool29.not = icmp eq i32 %call.i, 0
  br i1 %tobool29.not, label %if.end31, label %cond.end.out_iounmap_crit_edge

cond.end.out_iounmap_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_iounmap

if.end31:                                         ; preds = %cond.end
  tail call fastcc void @cafe_ctlr_init(ptr noundef %mcam2)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 1360) #13
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %if.end31.out_pdown_crit_edge, label %if.end.i

if.end31.out_pdown_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_pdown

if.end.i:                                         ; preds = %if.end31
  %21 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %call7.i.i.i, align 8
  %algo.i = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %algo.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @cafe_smbus_algo, ptr %algo.i, align 8
  %name.i = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i.i, i32 0, i32 12
  %call1.i = tail call i32 @strscpy(ptr noundef %name.i, ptr noundef nonnull @.str.11, i32 noundef 48) #9
  %23 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev1, align 8
  %dev.i112 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %parent.i = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i.i, i32 0, i32 9, i32 1
  %25 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev.i112, ptr %parent.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i.i, i32 0, i32 9, i32 8
  %26 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %driver_data.i.i.i, align 4
  %call3.i = tail call i32 @i2c_add_adapter(ptr noundef nonnull %call7.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end35, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %out_pdown

if.end35:                                         ; preds = %if.end.i
  %i2c_adapter.i = getelementptr inbounds %struct.cafe_camera, ptr %call7.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %i2c_adapter.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i.i, ptr %i2c_adapter.i, align 4
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #9
  %28 = ptrtoint ptr %mcam2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mcam2, align 8
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %29, i32 44
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #9, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  %31 = or i32 %30, 1792
  %32 = ptrtoint ptr %mcam2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mcam2, align 8
  %add.ptr.i6.i.i.i.i = getelementptr i8, ptr %33, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i.i.i, i32 %31) #9, !srcloc !103
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call2.i.i) #9
  %notifier = getelementptr inbounds %struct.cafe_camera, ptr %call7.i.i, i32 0, i32 1, i32 24
  tail call void @v4l2_async_nf_init(ptr noundef %notifier) #9
  %34 = ptrtoint ptr %i2c_adapter.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c_adapter.i, align 4
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr.i, align 4
  %38 = load i16, ptr getelementptr inbounds (%struct.i2c_board_info, ptr @ov7670_info, i32 0, i32 2), align 2
  %call38 = tail call ptr @__v4l2_async_nf_add_i2c(ptr noundef %notifier, i32 noundef %37, i16 noundef zeroext %38, i32 noundef 28) #9
  %cmp.i113 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %call38 to i32
  br label %out_smbus_shutdown

if.end42:                                         ; preds = %if.end35
  %call43 = tail call i32 @mccic_register(ptr noundef %mcam2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.out_smbus_shutdown_crit_edge

if.end42.out_smbus_shutdown_crit_edge:            ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_smbus_shutdown

if.end46:                                         ; preds = %if.end42
  %mclk = getelementptr inbounds %struct.cafe_camera, ptr %call7.i.i, i32 0, i32 1, i32 14
  %40 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mclk, align 8
  %42 = ptrtoint ptr %i2c_adapter.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i2c_adapter.i, align 4
  %nr.i114 = getelementptr inbounds %struct.i2c_adapter, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %nr.i114 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nr.i114, align 4
  %46 = load i16, ptr getelementptr inbounds (%struct.i2c_board_info, ptr @ov7670_info, i32 0, i32 2), align 2
  %conv = zext i16 %46 to i32
  %call49 = tail call ptr (ptr, ptr, ptr, ...) @clkdev_create(ptr noundef %41, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %45, i32 noundef %conv) #9
  %47 = ptrtoint ptr %i2c_adapter.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c_adapter.i, align 4
  %call51 = tail call ptr @i2c_new_client_device(ptr noundef %48, ptr noundef nonnull @ov7670_info) #9
  %cmp.i115 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i115, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %call51 to i32
  tail call void @mccic_shutdown(ptr noundef %mcam2) #9
  br label %out_smbus_shutdown

if.end55:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %call7.i.i, align 8
  br label %cleanup

out_smbus_shutdown:                               ; preds = %if.then53, %if.end42.out_smbus_shutdown_crit_edge, %if.then40
  %ret.0 = phi i32 [ %39, %if.then40 ], [ %call43, %if.end42.out_smbus_shutdown_crit_edge ], [ %49, %if.then53 ]
  %51 = ptrtoint ptr %i2c_adapter.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i2c_adapter.i, align 4
  tail call void @i2c_del_adapter(ptr noundef %52) #9
  %53 = ptrtoint ptr %i2c_adapter.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i2c_adapter.i, align 4
  tail call void @kfree(ptr noundef %54) #9
  br label %out_pdown

out_pdown:                                        ; preds = %out_smbus_shutdown, %do.end.i, %if.end31.out_pdown_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_smbus_shutdown ], [ -12, %if.end31.out_pdown_crit_edge ], [ %call3.i, %do.end.i ]
  %55 = ptrtoint ptr %mcam2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mcam2, align 8
  %add.ptr.i.i = getelementptr i8, ptr %56, i32 180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 838860800) #9, !srcloc !103
  %57 = ptrtoint ptr %mcam2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mcam2, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %58, i32 12344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 134217728) #9, !srcloc !103
  %59 = ptrtoint ptr %mcam2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mcam2, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %60, i32 12636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 2048) #9, !srcloc !103
  %61 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %irq, align 4
  %call57 = tail call ptr @free_irq(i32 noundef %62, ptr noundef nonnull %call7.i.i) #9
  br label %out_iounmap

out_iounmap:                                      ; preds = %out_pdown, %cond.end.out_iounmap_crit_edge
  %ret.2 = phi i32 [ %call.i, %cond.end.out_iounmap_crit_edge ], [ %ret.1, %out_pdown ]
  %63 = ptrtoint ptr %mcam2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mcam2, align 8
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %64) #9
  br label %out_disable

out_disable:                                      ; preds = %out_iounmap, %do.end19
  %ret.3 = phi i32 [ %ret.2, %out_iounmap ], [ -5, %do.end19 ]
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  br label %out_free

out_free:                                         ; preds = %out_disable, %pci_name.exit.out_free_crit_edge
  %ret.4 = phi i32 [ %call10, %pci_name.exit.out_free_crit_edge ], [ %ret.3, %out_disable ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end55, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end55 ], [ -12, %entry.cleanup_crit_edge ], [ %ret.4, %out_free ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cafe_pci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %pdev) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mcam.i = getelementptr inbounds %struct.cafe_camera, ptr %1, i32 0, i32 1
  tail call void @mccic_shutdown(ptr noundef %mcam.i) #9
  %i2c_adapter.i.i = getelementptr inbounds %struct.cafe_camera, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %i2c_adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_adapter.i.i, align 4
  tail call void @i2c_del_adapter(ptr noundef %3) #9
  %4 = ptrtoint ptr %i2c_adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_adapter.i.i, align 4
  tail call void @kfree(ptr noundef %5) #9
  %pdev.i = getelementptr inbounds %struct.cafe_camera, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 46
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %9, ptr noundef nonnull %1) #9
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 8
  %12 = ptrtoint ptr %mcam.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mcam.i, align 8
  tail call void @pci_iounmap(ptr noundef %11, ptr noundef %13) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cafe_ctlr_power_up(ptr nocapture noundef readonly %mcam) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mcam to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcam, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 12344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 134217728) #9, !srcloc !103
  %2 = ptrtoint ptr %mcam to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcam, align 8
  %add.ptr.i4 = getelementptr i8, ptr %3, i32 12636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 134219776) #9, !srcloc !103
  %4 = ptrtoint ptr %mcam to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mcam, align 8
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 805306368) #9, !srcloc !103
  %6 = ptrtoint ptr %mcam to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mcam, align 8
  %add.ptr.i6 = getelementptr i8, ptr %7, i32 180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 822083584) #9, !srcloc !103
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cafe_ctlr_power_down(ptr nocapture noundef readonly %mcam) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mcam to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcam, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 838860800) #9, !srcloc !103
  %2 = ptrtoint ptr %mcam to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcam, align 8
  %add.ptr.i3 = getelementptr i8, ptr %3, i32 12344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 134217728) #9, !srcloc !103
  %4 = ptrtoint ptr %mcam to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mcam, align 8
  %add.ptr.i4 = getelementptr i8, ptr %5, i32 12636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 2048) #9, !srcloc !103
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cafe_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mcam1 = getelementptr inbounds %struct.cafe_camera, ptr %data, i32 0, i32 1
  %dev_lock = getelementptr inbounds %struct.cafe_camera, ptr %data, i32 0, i32 1, i32 2
  tail call void @_raw_spin_lock(ptr noundef %dev_lock) #9
  %0 = ptrtoint ptr %mcam1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcam1, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !100
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @mccic_irq(ptr noundef %mcam1, i32 noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3 = icmp ne i32 %call2, 0
  %phi.cast = zext i1 %tobool3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %6 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %and = and i32 %3, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.end.if.end_crit_edge, label %if.then

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %mcam1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mcam1, align 8
  %add.ptr.i14 = getelementptr i8, ptr %8, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 1792) #9, !srcloc !103
  %smbus_wait = getelementptr inbounds %struct.cafe_camera, ptr %data, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %smbus_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end.if.end_crit_edge
  %handled.0 = phi i32 [ 1, %if.then ], [ %6, %land.end.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %dev_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.0)
  %tobool6.not = icmp ne i32 %handled.0, 0
  %cond = zext i1 %tobool6.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cafe_ctlr_init(ptr noundef %mcam) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_lock = getelementptr inbounds %struct.mcam_camera, ptr %mcam, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #9
  %0 = ptrtoint ptr %mcam to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcam, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 12344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 134217728) #9, !srcloc !103
  %2 = ptrtoint ptr %mcam to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcam, align 8
  %add.ptr.i33 = getelementptr i8, ptr %3, i32 12636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 134219776) #9, !srcloc !103
  %4 = ptrtoint ptr %mcam to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mcam, align 8
  %add.ptr.i34 = getelementptr i8, ptr %5, i32 12292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 83886080) #9, !srcloc !103
  %6 = ptrtoint ptr %mcam to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mcam, align 8
  %add.ptr.i35 = getelementptr i8, ptr %7, i32 12292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 167772160) #9, !srcloc !103
  %8 = ptrtoint ptr %mcam to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mcam, align 8
  %add.ptr.i36 = getelementptr i8, ptr %9, i32 12292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 100663296) #9, !srcloc !103
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call2) #9
  tail call void @msleep(i32 noundef 5) #9
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #9
  %10 = ptrtoint ptr %mcam to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mcam, align 8
  %add.ptr.i37 = getelementptr i8, ptr %11, i32 12292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 171966464) #9, !srcloc !103
  %12 = ptrtoint ptr %mcam to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mcam, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 12300
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  %15 = or i32 %14, 67108864
  %16 = ptrtoint ptr %mcam to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mcam, align 8
  %add.ptr.i6.i.i = getelementptr i8, ptr %17, i32 12300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %15) #9, !srcloc !103
  %18 = ptrtoint ptr %mcam to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mcam, align 8
  %add.ptr.i38 = getelementptr i8, ptr %19, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 0) #9, !srcloc !103
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call15) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_i2c(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mccic_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdev_create(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mccic_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mccic_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cafe_smbus_xfer(ptr nocapture noundef readonly %adapter, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %rw, i8 noundef zeroext %command, i32 noundef %size, ptr nocapture noundef %data) #2 align 64 {
entry:
  %__wq_entry.i20 = alloca %struct.wait_queue_entry, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size)
  %cmp.not = icmp eq i32 %size, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.cafe_camera, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %size) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i8 %rw to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %rw, label %if.end.cleanup_crit_edge [
    i8 0, label %if.then3
    i8 1, label %if.then8
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data, align 2
  %mcam1.i = getelementptr inbounds %struct.cafe_camera, ptr %1, i32 0, i32 1
  %dev_lock.i = getelementptr inbounds %struct.cafe_camera, ptr %1, i32 0, i32 1, i32 2
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #9
  %conv6.i = zext i16 %addr to i32
  %shl.i = shl nuw nsw i32 %conv6.i, 3
  %or8.i = or i32 %shl.i, 8911873
  %7 = ptrtoint ptr %mcam1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mcam1.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %or8.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #9, !srcloc !103
  %10 = ptrtoint ptr %mcam1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mcam1.i, align 8
  %add.ptr.i134.i = getelementptr i8, ptr %11, i32 188
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i134.i) #9, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  %conv10.i = zext i8 %6 to i32
  %conv11.i = zext i8 %command to i32
  %shl12.i = shl nuw nsw i32 %conv11.i, 16
  %or14.i = or i32 %shl12.i, %conv10.i
  %13 = ptrtoint ptr %mcam1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mcam1.i, align 8
  %add.ptr.i135.i = getelementptr i8, ptr %14, i32 188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %or14.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135.i, i32 %15) #9, !srcloc !103
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call3.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 429496000) #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 198) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 4294960) #9
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #9
  %18 = ptrtoint ptr %mcam1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mcam1.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 188
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i.i) #9
  %21 = and i32 %20, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp7.i.not.i = icmp eq i32 %21, 2
  br i1 %cmp7.i.not.i, label %if.then31.i, label %if.then3.if.end58.i_crit_edge

if.then3.if.end58.i_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.i

if.then31.i:                                      ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  %22 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #9
  %smbus_wait.i = getelementptr inbounds %struct.cafe_camera, ptr %1, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %cleanup.i, %if.then31.i
  %__ret32.0.i = phi i32 [ 100, %if.then31.i ], [ %call55.i, %cleanup.i ]
  %call33.i = call i32 @prepare_to_wait_event(ptr noundef %smbus_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 4294960) #9
  %call2.i137.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #9
  %24 = ptrtoint ptr %mcam1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mcam1.i, align 8
  %add.ptr.i.i138.i = getelementptr i8, ptr %25, i32 188
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i138.i) #9, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i137.i) #9
  %27 = and i32 %26, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp7.i139.not.i = icmp eq i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret32.0.i)
  %tobool41.not.i = icmp eq i32 %__ret32.0.i, 0
  %spec.store.select101.i = select i1 %tobool41.not.i, i32 1, i32 %__ret32.0.i
  %__ret32.1.i = select i1 %cmp7.i139.not.i, i32 %__ret32.0.i, i32 %spec.store.select101.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret32.1.i)
  %tobool48.not.i = icmp eq i32 %__ret32.1.i, 0
  %not.cmp7.i139.not.i = xor i1 %cmp7.i139.not.i, true
  %28 = select i1 %not.cmp7.i139.not.i, i1 true, i1 %tobool48.not.i
  br i1 %28, label %for.end.i, label %cleanup.i

cleanup.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %call55.i = call i32 @schedule_timeout(i32 noundef %__ret32.1.i) #9
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @finish_wait(ptr noundef %smbus_wait.i, ptr noundef nonnull %__wq_entry.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  br label %if.end58.i

if.end58.i:                                       ; preds = %for.end.i, %if.then3.if.end58.i_crit_edge
  %call69.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #9
  %29 = ptrtoint ptr %mcam1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mcam1.i, align 8
  %add.ptr.i141.i = getelementptr i8, ptr %30, i32 188
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141.i) #9, !srcloc !100
  %32 = call i32 @llvm.bswap.i32(i32 %31) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call69.i) #9
  %and76.i = and i32 %32, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i)
  %tobool77.not.i = icmp eq i32 %and76.i, 0
  br i1 %tobool77.not.i, label %if.end85.i, label %if.end58.i.cleanup98.sink.split.i_crit_edge

if.end58.i.cleanup98.sink.split.i_crit_edge:      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98.sink.split.i

if.end85.i:                                       ; preds = %if.end58.i
  %and86.i = and i32 %32, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp eq i32 %and86.i, 0
  br i1 %tobool87.not.i, label %if.end85.i.cleanup_crit_edge, label %if.end85.i.cleanup98.sink.split.i_crit_edge

if.end85.i.cleanup98.sink.split.i_crit_edge:      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98.sink.split.i

if.end85.i.cleanup_crit_edge:                     ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup98.sink.split.i:                           ; preds = %if.end85.i.cleanup98.sink.split.i_crit_edge, %if.end58.i.cleanup98.sink.split.i_crit_edge
  %.str.21.sink.i = phi ptr [ @.str.18, %if.end58.i.cleanup98.sink.split.i_crit_edge ], [ @.str.21, %if.end85.i.cleanup98.sink.split.i_crit_edge ]
  %pdev92.i = getelementptr inbounds %struct.cafe_camera, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %pdev92.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev92.i, align 8
  %dev93.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev93.i, ptr noundef nonnull %.str.21.sink.i, i32 noundef %conv6.i, i32 noundef %conv11.i, i32 noundef %conv10.i) #12
  br label %cleanup

if.then8:                                         ; preds = %if.end
  %mcam1.i21 = getelementptr inbounds %struct.cafe_camera, ptr %1, i32 0, i32 1
  %dev_lock.i22 = getelementptr inbounds %struct.cafe_camera, ptr %1, i32 0, i32 1, i32 2
  %call3.i23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i22) #9
  %conv6.i24 = zext i16 %addr to i32
  %shl.i25 = shl nuw nsw i32 %conv6.i24, 3
  %or8.i26 = or i32 %shl.i25, 8911873
  %35 = ptrtoint ptr %mcam1.i21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mcam1.i21, align 8
  %add.ptr.i.i27 = getelementptr i8, ptr %36, i32 184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %37 = tail call i32 @llvm.bswap.i32(i32 %or8.i26) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i27, i32 %37) #9, !srcloc !103
  %38 = ptrtoint ptr %mcam1.i21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mcam1.i21, align 8
  %add.ptr.i132.i = getelementptr i8, ptr %39, i32 188
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i132.i) #9, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  %conv10.i28 = zext i8 %command to i32
  %shl11.i = shl nuw nsw i32 %conv10.i28, 16
  %or13.i = or i32 %shl11.i, 16777216
  %41 = ptrtoint ptr %mcam1.i21 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mcam1.i21, align 8
  %add.ptr.i133.i = getelementptr i8, ptr %42, i32 188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %43 = tail call i32 @llvm.bswap.i32(i32 %or13.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133.i, i32 %43) #9, !srcloc !103
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i22, i32 noundef %call3.i23) #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 259) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 4294960) #9
  %call2.i.i29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i22) #9
  %45 = ptrtoint ptr %mcam1.i21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mcam1.i21, align 8
  %add.ptr.i.i.i30 = getelementptr i8, ptr %46, i32 188
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i30) #9, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i22, i32 noundef %call2.i.i29) #9
  %48 = and i32 %47, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i, label %if.then30.i, label %if.then8.if.end57.i_crit_edge

if.then8.if.end57.i_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

if.then30.i:                                      ; preds = %if.then8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i20) #9
  %49 = call ptr @memset(ptr %__wq_entry.i20, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i20, i32 noundef 0) #9
  %smbus_wait.i31 = getelementptr inbounds %struct.cafe_camera, ptr %1, i32 0, i32 4
  br label %for.cond.i32

for.cond.i32:                                     ; preds = %cleanup.i33, %if.then30.i
  %__ret31.0.i = phi i32 [ 100, %if.then30.i ], [ %call54.i, %cleanup.i33 ]
  %call32.i = call i32 @prepare_to_wait_event(ptr noundef %smbus_wait.i31, ptr noundef nonnull %__wq_entry.i20, i32 noundef 2) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 4294960) #9
  %call2.i135.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i22) #9
  %51 = ptrtoint ptr %mcam1.i21 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mcam1.i21, align 8
  %add.ptr.i.i136.i = getelementptr i8, ptr %52, i32 188
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i136.i) #9, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i22, i32 noundef %call2.i135.i) #9
  %54 = and i32 %53, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool35.not.i = icmp eq i32 %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret31.0.i)
  %tobool40.not.i = icmp eq i32 %__ret31.0.i, 0
  %spec.store.select100.i = select i1 %tobool40.not.i, i32 1, i32 %__ret31.0.i
  %__ret31.1.i = select i1 %tobool35.not.i, i32 %__ret31.0.i, i32 %spec.store.select100.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret31.1.i)
  %tobool47.not.i = icmp eq i32 %__ret31.1.i, 0
  %not.tobool35.not.i = xor i1 %tobool35.not.i, true
  %55 = select i1 %not.tobool35.not.i, i1 true, i1 %tobool47.not.i
  br i1 %55, label %for.end.i34, label %cleanup.i33

cleanup.i33:                                      ; preds = %for.cond.i32
  call void @__sanitizer_cov_trace_pc() #11
  %call54.i = call i32 @schedule_timeout(i32 noundef %__ret31.1.i) #9
  br label %for.cond.i32

for.end.i34:                                      ; preds = %for.cond.i32
  call void @__sanitizer_cov_trace_pc() #11
  call void @finish_wait(ptr noundef %smbus_wait.i31, ptr noundef nonnull %__wq_entry.i20) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i20) #9
  br label %if.end57.i

if.end57.i:                                       ; preds = %for.end.i34, %if.then8.if.end57.i_crit_edge
  %call68.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i22) #9
  %56 = ptrtoint ptr %mcam1.i21 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mcam1.i21, align 8
  %add.ptr.i138.i = getelementptr i8, ptr %57, i32 188
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i138.i) #9, !srcloc !100
  %59 = call i32 @llvm.bswap.i32(i32 %58) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i22, i32 noundef %call68.i) #9
  %and75.i = and i32 %59, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  br i1 %tobool76.not.i, label %if.end83.i, label %do.end80.i

do.end80.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.cafe_camera, ptr %1, i32 0, i32 2
  %60 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef %conv6.i24, i32 noundef %conv10.i28) #12
  br label %cleanup

if.end83.i:                                       ; preds = %if.end57.i
  %and84.i = and i32 %59, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i)
  %tobool85.not.i = icmp eq i32 %and84.i, 0
  br i1 %tobool85.not.i, label %do.end89.i, label %if.end94.i

do.end89.i:                                       ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev90.i = getelementptr inbounds %struct.cafe_camera, ptr %1, i32 0, i32 2
  %62 = ptrtoint ptr %pdev90.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev90.i, align 8
  %dev91.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev91.i, ptr noundef nonnull @.str.26, i32 noundef %conv6.i24, i32 noundef %conv10.i28) #12
  br label %cleanup

if.end94.i:                                       ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv96.i = trunc i32 %59 to i8
  %64 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv96.i, ptr %data, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end94.i, %do.end89.i, %do.end80.i, %cleanup98.sink.split.i, %if.end85.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end85.i.cleanup_crit_edge ], [ -5, %cleanup98.sink.split.i ], [ -5, %do.end80.i ], [ 0, %if.end94.i ], [ -5, %do.end89.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cafe_smbus_func(ptr nocapture noundef readnone %adapter) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1572864
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cafe_pci_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mcam = getelementptr inbounds %struct.cafe_camera, ptr %1, i32 0, i32 1
  tail call void @mccic_suspend(ptr noundef %mcam) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cafe_pci_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mcam = getelementptr inbounds %struct.cafe_camera, ptr %1, i32 0, i32 1
  tail call fastcc void @cafe_ctlr_init(ptr noundef %mcam)
  %call2 = tail call i32 @mccic_resume(ptr noundef %mcam) #9
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mccic_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mccic_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
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
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !22, !23, !25, !27, !28, !29, !30, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !48, !49, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !75, !77, !78, !79, !80, !82, !84, !85, !86, !87, !89, !90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__UNIQUE_ID_author300, !1, !"__UNIQUE_ID_author300", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 44, i32 1}
!2 = !{ptr @__UNIQUE_ID_description301, !3, !"__UNIQUE_ID_description301", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 45, i32 1}
!4 = !{ptr @__UNIQUE_ID_file302, !5, !"__UNIQUE_ID_file302", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 46, i32 1}
!6 = !{ptr @__UNIQUE_ID_license303, !5, !"__UNIQUE_ID_license303", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_cafe_ccic__304_673_cafe_init6, !8, !"__initcall__kmod_cafe_ccic__304_673_cafe_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 673, i32 1}
!9 = !{ptr @__exitcall_cafe_exit, !10, !"__exitcall_cafe_exit", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 674, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 640, i32 10}
!13 = !{ptr @cafe_pci_driver, !14, !"cafe_pci_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 639, i32 26}
!15 = !{ptr @cafe_ids, !16, !"cafe_ids", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 629, i32 35}
!17 = !{ptr @cafe_pci_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 495, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cafe_pci_probe.__key.2, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 496, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 500, i32 51}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 518, i32 3}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @cafe_pci_probe._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @cafe_pci_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 522, i32 54}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 554, i32 28}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 554, i32 36}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 335, i32 22}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 340, i32 3}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @cafe_smbus_setup._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @cafe_smbus_setup._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @cafe_smbus_algo, !45, !"cafe_smbus_algo", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 320, i32 35}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 293, i32 3}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @cafe_smbus_xfer._entry, !47, !"_entry", i1 false, i1 false}
!52 = !{ptr @cafe_smbus_xfer._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 205, i32 3}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @cafe_smbus_write_data._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @cafe_smbus_write_data._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 210, i32 3}
!60 = !{ptr @cafe_smbus_write_data._entry.20, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @cafe_smbus_write_data._entry_ptr.22, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 265, i32 3}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @cafe_smbus_read_data._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @cafe_smbus_read_data._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 269, i32 3}
!69 = !{ptr @cafe_smbus_read_data._entry.25, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @cafe_smbus_read_data._entry_ptr.27, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @ov7670_info, !72, !"ov7670_info", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 464, i32 30}
!73 = !{ptr @sensor_cfg, !74, !"sensor_cfg", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 448, i32 29}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 601, i32 3}
!77 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @cafe_pci_remove._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @cafe_pci_remove._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @cafe_pci_pm_ops, !81, !"cafe_pci_pm_ops", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 637, i32 8}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 654, i32 2}
!84 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @cafe_init._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @cafe_init._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/marvell-ccic/cafe-driver.c", i32 658, i32 3}
!89 = !{ptr @cafe_init._entry.32, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @cafe_init._entry_ptr.34, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i64 4996367}
!101 = !{i64 2152536716}
!102 = !{i64 2152538071}
!103 = !{i64 4995949}
