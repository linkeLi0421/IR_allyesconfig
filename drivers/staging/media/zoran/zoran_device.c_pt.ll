; ModuleID = '/llk/IR_all_yes/drivers/staging/media/zoran/zoran_device.c_pt.bc'
source_filename = "../drivers/staging/media/zoran/zoran_device.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.zoran = type { %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, %struct.vb2_queue, %struct.i2c_adapter, %struct.i2c_algo_bit_data, i32, ptr, ptr, ptr, ptr, %struct.mutex, i8, %struct.card_info, ptr, i16, [32 x i8], ptr, i8, ptr, %struct.spinlock, i32, i64, i32, %struct.zoran_v4l_settings, i32, %struct.zoran_jpg_settings, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.list_head, %struct.spinlock, [8 x ptr] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.card_info = type { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, [16 x %struct.input], i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr }
%struct.input = type { i32, [32 x i8] }
%struct.vfe_polarity = type { i8, [3 x i8] }
%struct.zoran_v4l_settings = type { i32, i32, i32, ptr }
%struct.zoran_jpg_settings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_jpegcompression }
%struct.v4l2_jpegcompression = type { i32, i32, i32, [60 x i8], i32, [60 x i8], i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.101, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.101 = type { ptr }
%struct.tvnorm = type { i16, i16, i16, i16, i16, i16, i16 }
%struct.zoran_format = type { ptr, i32, i32, i32, i32, i32 }
%struct.vfe_settings = type { i32, i32, i32, i32, i16, i16, i16 }
%struct.jpeg_app_marker = type { i32, i32, [60 x i8] }
%struct.jpeg_com_marker = type { i32, [60 x i8] }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.videocodec = type { ptr, [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_lml33dpath = internal constant [19 x i8] c"zr36067.lml33dpath\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@lml33dpath = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_lml33dpath = internal constant %struct.kernel_param { ptr @__param_str_lml33dpath, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @lml33dpath } }, section "__param", align 4
@__UNIQUE_ID_lml33dpathtype300 = internal constant [33 x i8] c"zr36067.parmtype=lml33dpath:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_lml33dpath301 = internal constant [71 x i8] c"zr36067.parm=lml33dpath:Use digital path capture mode (on LML33 cards)\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@post_office_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 118, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pop timeout %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"post_office_wait\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/staging/media/zoran/zoran_device.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@post_office_wait._entry_ptr = internal global ptr @post_office_wait._entry, section ".printk_index", align 4
@jpeg_codec_sleep.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"zr36067\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"jpeg_codec_sleep\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s() - wake GPIO=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@jpeg_codec_sleep.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s() - sleep GPIO=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@zr36057_set_memgrab._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 345, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"zr36057_set_memgrab(1) with SnapShot on!?\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zr36057_set_memgrab\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@zr36057_set_memgrab._entry_ptr = internal global ptr @zr36057_set_memgrab._entry, section ".printk_index", align 4
@jpeg_start.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"jpeg_start\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jpeg_start\0A\00", [20 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@zr36057_enable_jpg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 667, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"enable_jpg(MOTION_COMPRESS)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zr36057_enable_jpg\00", [45 x i8] zeroinitializer }, align 32
@zr36057_enable_jpg._entry_ptr = internal global ptr @zr36057_enable_jpg._entry, section ".printk_index", align 4
@zr36057_enable_jpg._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 696, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"enable_jpg(MOTION_DECOMPRESS)\0A\00", [33 x i8] zeroinitializer }, align 32
@zr36057_enable_jpg._entry_ptr.18 = internal global ptr @zr36057_enable_jpg._entry.16, section ".printk_index", align 4
@zr36057_enable_jpg._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 723, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"enable_jpg(IDLE)\0A\00", [46 x i8] zeroinitializer }, align 32
@zr36057_enable_jpg._entry_ptr.21 = internal global ptr @zr36057_enable_jpg._entry.19, section ".printk_index", align 4
@zoran_feed_stat_com._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 748, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No buffer available to queue\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zoran_feed_stat_com\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@zoran_feed_stat_com._entry_ptr = internal global ptr @zoran_feed_stat_com._entry, section ".printk_index", align 4
@zoran_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 865, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"BuzIRQ with SnapShot off ???\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"zoran_irq\00", [22 x i8] zeroinitializer }, align 32
@zoran_irq._entry_ptr = internal global ptr @zoran_irq._entry, section ".printk_index", align 4
@zoran_irq._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 873, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"JPG IRQ when not in good mode\0A\00", [33 x i8] zeroinitializer }, align 32
@zoran_irq._entry_ptr.29 = internal global ptr @zoran_irq._entry.27, section ".printk_index", align 4
@zr36057_set_vfe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 242, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"set_vfe() - width = %d, height = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zr36057_set_vfe\00", [16 x i8] zeroinitializer }, align 32
@zr36057_set_vfe._entry_ptr = internal global ptr @zr36057_set_vfe._entry, section ".printk_index", align 4
@zr36057_set_vfe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 247, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"set_vfe: w=%d h=%d not valid\0A\00", [34 x i8] zeroinitializer }, align 32
@zr36057_set_vfe._entry_ptr.34 = internal global ptr @zr36057_set_vfe._entry.32, section ".printk_index", align 4
@pci_pci_problems = external dso_local local_unnamed_addr global i32, align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@switch.table.zr36057_set_jpg = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -1073741808, i32 -1610612736, i32 -2147483648], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.37 = private unnamed_addr constant [11 x i8] c"lml33dpath\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 39, i32 13 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 118, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 158, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 161, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 345, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 602, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 667, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 696, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 723, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 748, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 865, i32 5 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 873, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 242, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private constant [46 x i8] c"../drivers/staging/media/zoran/zoran_device.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 247, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1163, i32 7 }
@___asan_gen_.154 = private unnamed_addr constant [29 x i8] c"switch.table.zr36057_set_jpg\00", align 1
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_lml33dpath301, ptr @__UNIQUE_ID_lml33dpathtype300, ptr @__param_lml33dpath, ptr @post_office_wait._entry, ptr @post_office_wait._entry_ptr, ptr @zoran_feed_stat_com._entry, ptr @zoran_feed_stat_com._entry_ptr, ptr @zoran_irq._entry, ptr @zoran_irq._entry.27, ptr @zoran_irq._entry_ptr, ptr @zoran_irq._entry_ptr.29, ptr @zr36057_enable_jpg._entry, ptr @zr36057_enable_jpg._entry.16, ptr @zr36057_enable_jpg._entry.19, ptr @zr36057_enable_jpg._entry_ptr, ptr @zr36057_enable_jpg._entry_ptr.18, ptr @zr36057_enable_jpg._entry_ptr.21, ptr @zr36057_set_memgrab._entry, ptr @zr36057_set_memgrab._entry_ptr, ptr @zr36057_set_vfe._entry, ptr @zr36057_set_vfe._entry.32, ptr @zr36057_set_vfe._entry_ptr, ptr @zr36057_set_vfe._entry_ptr.34, ptr @lml33dpath, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @switch.table.zr36057_set_jpg], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lml33dpath to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @post_office_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36057_set_memgrab._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36057_enable_jpg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36057_enable_jpg._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36057_enable_jpg._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_feed_stat_com._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_irq._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36057_set_vfe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36057_set_vfe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.zr36057_set_jpg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @GPIO(ptr nocapture noundef readonly %zr, i32 noundef %bit, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %bit, 24
  %shl = shl nuw i32 1, %add
  %and = and i32 %shl, -16777216
  %zr36057_mem = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 19
  %0 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 44
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %neg = xor i32 %and, -1
  %and2 = and i32 %3, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %or = or i32 %3, %and
  %spec.select = select i1 %tobool.not, i32 %and2, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %5 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr4 = getelementptr i8, ptr %6, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %4) #6, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @post_office_wait(ptr nocapture noundef readonly %zr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %zr36057_mem = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 19
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %0 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 512
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %and = and i32 %3, 33554432
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %and2 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %while.end.cleanup_crit_edge, label %land.lhs.true

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %while.end
  %gws_not_connected = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13, i32 20
  %4 = ptrtoint ptr %gws_not_connected to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gws_not_connected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %do.end, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %land.lhs.true.cleanup_crit_edge, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @post_office_write(ptr nocapture noundef readonly %zr, i32 noundef %guest, i32 noundef %reg, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %guest, 20
  %shl = and i32 %and, 7340032
  %and1 = shl i32 %reg, 16
  %shl2 = and i32 %and1, 458752
  %and4 = and i32 %value, 255
  %or = or i32 %shl, %shl2
  %or3 = or i32 %or, %and4
  %or5 = or i32 %or3, 25165824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %or5)
  %zr36057_mem = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 19
  %1 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #6, !srcloc !86
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %3 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 512
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !83
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %and.i = and i32 %6, 33554432
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %and2.i = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %while.end.i.post_office_wait.exit_crit_edge, label %land.lhs.true.i

while.end.i.post_office_wait.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %post_office_wait.exit

land.lhs.true.i:                                  ; preds = %while.end.i
  %gws_not_connected.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13, i32 20
  %7 = ptrtoint ptr %gws_not_connected.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %gws_not_connected.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not.i = icmp eq i8 %8, 0
  br i1 %tobool4.not.i, label %do.end.i, label %land.lhs.true.i.post_office_wait.exit_crit_edge

land.lhs.true.i.post_office_wait.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %post_office_wait.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %9 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str, i32 noundef %6) #9
  br label %post_office_wait.exit

post_office_wait.exit:                            ; preds = %do.end.i, %land.lhs.true.i.post_office_wait.exit_crit_edge, %while.end.i.post_office_wait.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %do.end.i ], [ 0, %land.lhs.true.i.post_office_wait.exit_crit_edge ], [ 0, %while.end.i.post_office_wait.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @post_office_read(ptr nocapture noundef readonly %zr, i32 noundef %guest, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %guest, 20
  %shl = and i32 %and, 7340032
  %and1 = shl i32 %reg, 16
  %shl2 = and i32 %and1, 458752
  %or = or i32 %shl, %shl2
  %or3 = or i32 %or, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %or3)
  %zr36057_mem = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 19
  %1 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #6, !srcloc !86
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %3 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 512
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !83
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %and.i = and i32 %6, 33554432
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %and2.i = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %while.end.i.if.end_crit_edge, label %land.lhs.true.i

while.end.i.if.end_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i:                                  ; preds = %while.end.i
  %gws_not_connected.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13, i32 20
  %7 = ptrtoint ptr %gws_not_connected.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %gws_not_connected.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not.i = icmp eq i8 %8, 0
  br i1 %tobool4.not.i, label %post_office_wait.exit, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

post_office_wait.exit:                            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %9 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str, i32 noundef %6) #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %while.end.i.if.end_crit_edge
  %11 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr5 = getelementptr i8, ptr %12, i32 512
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !83
  %14 = lshr i32 %13, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  br label %cleanup

cleanup:                                          ; preds = %if.end, %post_office_wait.exit
  %retval.0 = phi i32 [ %14, %if.end ], [ -1, %post_office_wait.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jpeg_codec_sleep(ptr nocapture noundef readonly %zr, i32 noundef %sleep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13, i32 15
  %0 = ptrtoint ptr %gpio to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gpio, align 4
  %conv = sext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sleep)
  %tobool.not = icmp eq i32 %sleep, 0
  %add.i = add nsw i32 %conv, 24
  %shl.i = shl nuw i32 1, %add.i
  %and.i = and i32 %shl.i, -16777216
  %zr36057_mem.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 19
  %2 = ptrtoint ptr %zr36057_mem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %zr36057_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 44
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !83
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %neg.i = xor i32 %and.i, -1
  %and2.i = and i32 %5, %neg.i
  %or.i = or i32 %and.i, %5
  %spec.select.i = select i1 %tobool.not, i32 %or.i, i32 %and2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #6
  %7 = ptrtoint ptr %zr36057_mem.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %zr36057_mem.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %8, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %6) #6, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #6
  br i1 %tobool.not, label %do.body, label %do.body12

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jpeg_codec_sleep.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jpeg_codec_sleep, %if.then8)) #6
          to label %if.end36 [label %if.then8], !srcloc !91

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %10 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %zr36057_mem.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %zr36057_mem.i, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 44
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jpeg_codec_sleep.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef %15) #6
  br label %if.end36

do.body12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jpeg_codec_sleep.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jpeg_codec_sleep, %if.then24)) #6
          to label %if.end36 [label %if.then24], !srcloc !91

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev25 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %16 = ptrtoint ptr %pci_dev25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci_dev25, align 8
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %18 = ptrtoint ptr %zr36057_mem.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %zr36057_mem.i, align 8
  %add.ptr30 = getelementptr i8, ptr %19, i32 44
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #6, !srcloc !83
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jpeg_codec_sleep.__UNIQUE_ID_ddebug303, ptr noundef %dev26, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef %21) #6
  br label %if.end36

if.end36:                                         ; preds = %if.then24, %do.body12, %if.then8, %do.body
  %.sink = phi i32 [ 107374000, %do.body ], [ 107374000, %if.then8 ], [ 429496, %do.body12 ], [ 429496, %if.then24 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef %.sink) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jpeg_codec_reset(ptr nocapture noundef readonly %zr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @jpeg_codec_sleep(ptr noundef %zr, i32 noundef 0)
  %gpcs = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13, i32 16
  %0 = ptrtoint ptr %gpcs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gpcs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp.not = icmp eq i8 %1, -1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i8 %1 to i32
  %and.i = shl nuw nsw i32 %conv, 20
  %shl.i = and i32 %and.i, 7340032
  %or5.i = or i32 %shl.i, 25165824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #6
  %zr36057_mem.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 19
  %3 = ptrtoint ptr %zr36057_mem.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %zr36057_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #6, !srcloc !86
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.then
  %5 = ptrtoint ptr %zr36057_mem.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %zr36057_mem.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 512
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !83
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %and.i.i = and i32 %8, 33554432
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %while.end.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %and2.i.i = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %while.end.i.i.if.end_crit_edge, label %land.lhs.true.i.i

while.end.i.i.if.end_crit_edge:                   ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i.i:                                ; preds = %while.end.i.i
  %gws_not_connected.i.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13, i32 20
  %9 = ptrtoint ptr %gws_not_connected.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %gws_not_connected.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not.i.i = icmp eq i8 %10, 0
  br i1 %tobool4.not.i.i, label %do.end.i.i, label %land.lhs.true.i.i.if.end_crit_edge

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev.i.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %11 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci_dev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str, i32 noundef %8) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx7 = getelementptr %struct.zoran, ptr %zr, i32 0, i32 13, i32 15, i32 1
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %14 to i32
  %add.i = add nsw i32 %conv8, 24
  %shl.i20 = shl nuw i32 1, %add.i
  %and.i21 = and i32 %shl.i20, -16777216
  %zr36057_mem.i22 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 19
  %15 = ptrtoint ptr %zr36057_mem.i22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %zr36057_mem.i22, align 8
  %add.ptr.i23 = getelementptr i8, ptr %16, i32 44
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #6, !srcloc !83
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %neg.i = xor i32 %and.i21, -1
  %and2.i = and i32 %18, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %19 = tail call i32 @llvm.bswap.i32(i32 %and2.i) #6
  %20 = ptrtoint ptr %zr36057_mem.i22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %zr36057_mem.i22, align 8
  %add.ptr4.i = getelementptr i8, ptr %21, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %19) #6, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 429496) #6
  %24 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx7, align 1
  %conv12 = sext i8 %25 to i32
  %add.i24 = add nsw i32 %conv12, 24
  %shl.i25 = shl nuw i32 1, %add.i24
  %and.i26 = and i32 %shl.i25, -16777216
  %26 = ptrtoint ptr %zr36057_mem.i22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %zr36057_mem.i22, align 8
  %add.ptr.i28 = getelementptr i8, ptr %27, i32 44
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #6, !srcloc !83
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %or.i31 = or i32 %and.i26, %29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i31) #6
  %31 = ptrtoint ptr %zr36057_mem.i22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %zr36057_mem.i22, align 8
  %add.ptr4.i32 = getelementptr i8, ptr %32, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i32, i32 %30) #6, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end.i.i, %land.lhs.true.i.i.if.end_crit_edge, %while.end.i.i.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 429496) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zr36057_set_memgrab(ptr nocapture noundef readonly %zr, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %tobool.not = icmp eq i32 %mode, 0
  br i1 %tobool.not, label %do.body33, label %if.then

if.then:                                          ; preds = %entry
  %zr36057_mem = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 19
  %0 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %3 = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.then.do.body4_crit_edge, label %do.end

if.then.do.body4_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %do.body4

do.body4:                                         ; preds = %do.end, %if.then.do.body4_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr7 = getelementptr i8, ptr %7, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 104) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %vsync_int = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13, i32 14
  %8 = ptrtoint ptr %vsync_int to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vsync_int, align 8
  %10 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr13 = getelementptr i8, ptr %11, i32 64
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #6, !srcloc !83
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %or = or i32 %13, %9
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr18 = getelementptr i8, ptr %16, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %14) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr24 = getelementptr i8, ptr %18, i32 20
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  %20 = or i32 %19, 33554432
  %21 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr30 = getelementptr i8, ptr %22, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %20) #6, !srcloc !86
  %v4l_settings = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 24
  %23 = ptrtoint ptr %v4l_settings to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %v4l_settings, align 4
  %height = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 24, i32 1
  %25 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height, align 4
  %format = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 24, i32 3
  %27 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %format, align 4
  %timing.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 14
  %29 = ptrtoint ptr %timing.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %timing.i, align 8
  %wa1.i = getelementptr inbounds %struct.tvnorm, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %wa1.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %wa1.i, align 2
  %conv.i = zext i16 %32 to i32
  %ha2.i = getelementptr inbounds %struct.tvnorm, ptr %30, i32 0, i32 5
  %33 = ptrtoint ptr %ha2.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ha2.i, align 2
  %conv3.i = zext i16 %34 to i32
  %pci_dev.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %35 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci_dev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.30, i32 noundef %24, i32 noundef %26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %24)
  %cmp.i = icmp slt i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %26)
  %cmp5.i = icmp slt i32 %26, 24
  %or.cond.i = or i1 %cmp.i, %cmp5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv.i)
  %cmp8.i = icmp ugt i32 %24, %conv.i
  %or.cond259.i = select i1 %or.cond.i, i1 true, i1 %cmp8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %conv3.i)
  %cmp11.i = icmp ugt i32 %26, %conv3.i
  %or.cond260.i = select i1 %or.cond259.i, i1 true, i1 %cmp11.i
  br i1 %or.cond260.i, label %do.end15.i, label %if.end.i

do.end15.i:                                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pci_dev.i, align 8
  %dev17.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i, ptr noundef nonnull @.str.33, i32 noundef %24, i32 noundef %26) #9
  br label %if.end71

if.end.i:                                         ; preds = %do.body4
  %mul.i = shl i32 %24, 6
  %39 = ptrtoint ptr %wa1.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %wa1.i, align 2
  %conv19.i = zext i16 %40 to i32
  %add.i = add i32 %mul.i, -1
  %sub.i = add i32 %add.i, %conv19.i
  %div.i = udiv i32 %sub.i, %conv19.i
  %div23.i = udiv i32 %mul.i, %div.i
  %sub24.i = sub i32 64, %div.i
  %sub27.i = sub i32 %conv19.i, %div23.i
  %41 = lshr i32 %sub27.i, 1
  %mul29.i = and i32 %41, 2147483646
  %h_start34.i = getelementptr inbounds %struct.tvnorm, ptr %30, i32 0, i32 2
  %42 = ptrtoint ptr %h_start34.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %h_start34.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool.not.i = icmp eq i16 %43, 0
  %narrow.i = select i1 %tobool.not.i, i16 1, i16 %43
  %spec.select.i = zext i16 %narrow.i to i32
  %add42.i = add nuw i32 %mul29.i, %spec.select.i
  %sub41.i = add nuw i32 %add42.i, 1023
  %sub33.neg.i = add nuw i32 %sub41.i, %conv19.i
  %sub43.i = sub i32 %sub33.neg.i, %sub27.i
  %and.i = shl i32 %add42.i, 10
  %shl.i = and i32 %and.i, 1047552
  %and44.i = and i32 %sub43.i, 1023
  %or.i = or i32 %and44.i, %shl.i
  %vfe_pol.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13, i32 18
  %44 = ptrtoint ptr %vfe_pol.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load.i = load i8, ptr %vfe_pol.i, align 8
  %45 = and i8 %bf.load.i, 64
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 24
  %48 = or i32 %or.i, %47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #6
  %50 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %zr36057_mem, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #6, !srcloc !86
  %52 = ptrtoint ptr %timing.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %timing.i, align 8
  %ha54.i = getelementptr inbounds %struct.tvnorm, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %ha54.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %ha54.i, align 2
  %56 = lshr i16 %55, 1
  %div56.i = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %div56.i)
  %cmp57.not.i = icmp ugt i32 %26, %div56.i
  %div62262263.i = zext i1 %cmp57.not.i to i32
  %cond64.i = lshr i32 %26, %div62262263.i
  %mul65.i = shl i32 %cond64.i, 6
  %mul66.i = shl i32 %cond64.i, 7
  %57 = ptrtoint ptr %ha2.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %ha2.i, align 2
  %conv68.i = zext i16 %58 to i32
  %add69.i = add nsw i32 %conv68.i, -1
  %sub70.i = add i32 %add69.i, %mul66.i
  %div73.i = udiv i32 %sub70.i, %conv68.i
  %div75.i = udiv i32 %mul65.i, %div73.i
  %div79257.i = lshr i32 %conv68.i, 1
  %sub80.i = sub i32 %div79257.i, %div75.i
  %div81258.i = lshr i32 %sub80.i, 1
  %v_start87.i = getelementptr inbounds %struct.tvnorm, ptr %30, i32 0, i32 6
  %59 = ptrtoint ptr %v_start87.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %v_start87.i, align 2
  %conv88.i = zext i16 %60 to i32
  %add93.i = add nuw i32 %div81258.i, %conv88.i
  %sub94.i = add i32 %add93.i, %div75.i
  %and95.i = shl i32 %add93.i, 10
  %shl96.i = and i32 %and95.i, 1047552
  %and97.i = and i32 %sub94.i, 1023
  %or99.i = or i32 %shl96.i, %and97.i
  %61 = ptrtoint ptr %vfe_pol.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load102.i = load i8, ptr %vfe_pol.i, align 8
  %or107.i = or i32 %or99.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load102.i)
  %tobool105.not264.i = icmp slt i8 %bf.load102.i, 0
  %reg.1.i = select i1 %tobool105.not264.i, i32 %or107.i, i32 %or99.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %62 = tail call i32 @llvm.bswap.i32(i32 %reg.1.i) #6
  %63 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr113.i = getelementptr i8, ptr %64, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113.i, i32 %62) #6, !srcloc !86
  %shl114.i = shl i32 %sub24.i, 14
  %.neg.i = mul i32 %div73.i, -256
  %shl116.i = add i32 %.neg.i, 16384
  %or117.i = or i32 %shl116.i, %shl114.i
  %shl118.i = select i1 %cmp57.not.i, i32 0, i32 64
  %or119.i = or i32 %or117.i, %shl118.i
  %norm.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 22
  %65 = ptrtoint ptr %norm.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %norm.i, align 8
  %and120.i = and i64 %66, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and120.i)
  %tobool121.not.i = icmp eq i64 %and120.i, 0
  %or123.i = or i32 %or119.i, 67108864
  %reg.2.i = select i1 %tobool121.not.i, i32 %or123.i, i32 %or119.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %sub24.i)
  %cmp126.i = icmp ugt i32 %sub24.i, 47
  br i1 %cmp126.i, label %if.end.i.if.end141.i_crit_edge, label %if.else.i

if.end.i.if.end141.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end141.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub24.i)
  %cmp130.i = icmp ugt i32 %sub24.i, 31
  br i1 %cmp130.i, label %if.else.i.if.end141.i_crit_edge, label %if.else134.i

if.else.i.if.end141.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end141.i

if.else134.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub24.i)
  %cmp135.i = icmp ugt i32 %sub24.i, 15
  %spec.select261.v.i = select i1 %cmp135.i, i32 35651584, i32 33554432
  br label %if.end141.i

if.end141.i:                                      ; preds = %if.else134.i, %if.else.i.if.end141.i_crit_edge, %if.end.i.if.end141.i_crit_edge
  %spec.select261.v.sink.i = phi i32 [ %spec.select261.v.i, %if.else134.i ], [ 39845888, %if.end.i.if.end141.i_crit_edge ], [ 37748736, %if.else.i.if.end141.i_crit_edge ]
  %spec.select261.i = or i32 %spec.select261.v.sink.i, %reg.2.i
  %vfespfr.i = getelementptr inbounds %struct.zoran_format, ptr %28, i32 0, i32 5
  %67 = ptrtoint ptr %vfespfr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %vfespfr.i, align 4
  %or142.i = or i32 %spec.select261.i, %68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %69 = tail call i32 @llvm.bswap.i32(i32 %or142.i) #6
  %70 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr147.i = getelementptr i8, ptr %71, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147.i, i32 %69) #6, !srcloc !86
  %shl148.i = shl i32 %cond64.i, 12
  %or149.i = or i32 %shl148.i, %24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_pci_problems to i32))
  %72 = load i32, ptr @pci_pci_problems, align 4
  %and152.i = and i32 %72, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152.i)
  %tobool153.not.i = icmp eq i32 %and152.i, 0
  %or151.i = and i32 %or149.i, -285212673
  %and155.i = or i32 %or151.i, 268435456
  %or157.i = or i32 %or149.i, 285212672
  %reg.4.i = select i1 %tobool153.not.i, i32 %or157.i, i32 %and155.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %73 = tail call i32 @llvm.bswap.i32(i32 %reg.4.i) #6
  %74 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr163.i = getelementptr i8, ptr %75, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr163.i, i32 %73) #6, !srcloc !86
  %codec_mode.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 25
  %76 = ptrtoint ptr %codec_mode.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %codec_mode.i, align 4
  tail call fastcc void @zr36057_adjust_vfe(ptr noundef %zr, i32 noundef %77) #6
  br label %if.end71

do.body33:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %vsync_int36 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13, i32 14
  %78 = ptrtoint ptr %vsync_int36 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %vsync_int36, align 8
  %neg = xor i32 %79, -1
  %zr36057_mem39 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 19
  %80 = ptrtoint ptr %zr36057_mem39 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %zr36057_mem39, align 8
  %add.ptr40 = getelementptr i8, ptr %81, i32 64
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #6, !srcloc !83
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  %and44 = and i32 %83, %neg
  %84 = tail call i32 @llvm.bswap.i32(i32 %and44)
  %85 = ptrtoint ptr %zr36057_mem39 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %zr36057_mem39, align 8
  %add.ptr46 = getelementptr i8, ptr %86, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %84) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %87 = ptrtoint ptr %zr36057_mem39 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %zr36057_mem39, align 8
  %add.ptr52 = getelementptr i8, ptr %88, i32 24
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  %90 = and i32 %89, -129
  %91 = ptrtoint ptr %zr36057_mem39 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %zr36057_mem39, align 8
  %add.ptr58 = getelementptr i8, ptr %92, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %90) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %93 = ptrtoint ptr %zr36057_mem39 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %zr36057_mem39, align 8
  %add.ptr64 = getelementptr i8, ptr %94, i32 20
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  %96 = and i32 %95, -33554433
  %97 = ptrtoint ptr %zr36057_mem39 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %zr36057_mem39, align 8
  %add.ptr70 = getelementptr i8, ptr %98, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %96) #6, !srcloc !86
  br label %if.end71

if.end71:                                         ; preds = %do.body33, %if.end141.i, %do.end15.i
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @clear_interrupt_counters(ptr nocapture noundef writeonly %zr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_counter_GIRQ1 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 38
  %jpeg_max_missed = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 53
  %0 = ptrtoint ptr %jpeg_max_missed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %jpeg_max_missed, align 4
  %jpeg_min_missed = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 54
  %1 = call ptr @memset(ptr %intr_counter_GIRQ1, i32 0, i32 52)
  %2 = ptrtoint ptr %jpeg_min_missed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2147483647, ptr %jpeg_min_missed, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jpeg_start(ptr nocapture noundef %zr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frame_num = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 58
  %0 = ptrtoint ptr %frame_num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %frame_num, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %zr36057_mem = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 19
  %1 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -2147483648) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr5 = getelementptr i8, ptr %4, i32 52
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %6 = and i32 %5, -17
  %7 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr8 = getelementptr i8, ptr %8, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %6) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr15 = getelementptr i8, ptr %10, i32 260
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  %12 = or i32 %11, 536870912
  %13 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr20 = getelementptr i8, ptr %14, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %12) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr25 = getelementptr i8, ptr %16, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 104) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %jpeg_int = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13, i32 13
  %17 = ptrtoint ptr %jpeg_int to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %jpeg_int, align 4
  %or30 = or i32 %18, 150994944
  %19 = tail call i32 @llvm.bswap.i32(i32 %or30)
  %20 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr32 = getelementptr i8, ptr %21, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %19) #6, !srcloc !86
  %arrayidx.i = getelementptr %struct.zoran, ptr %zr, i32 0, i32 13, i32 15, i32 2
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 2
  %conv.i = sext i8 %23 to i32
  %add.i.i = add nsw i32 %conv.i, 24
  %shl.i.i = shl nuw i32 1, %add.i.i
  %and.i.i = and i32 %shl.i.i, -16777216
  %24 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 44
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !83
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %neg.i.i = xor i32 %and.i.i, -1
  %and2.i.i = and i32 %27, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %28 = tail call i32 @llvm.bswap.i32(i32 %and2.i.i) #6
  %29 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %30, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %28) #6, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #6
  %arrayidx = getelementptr %struct.zoran, ptr %zr, i32 0, i32 13, i32 16, i32 1
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %33 to i32
  %shl = shl nuw nsw i32 %conv, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %34 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %35 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr39 = getelementptr i8, ptr %36, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %34) #6, !srcloc !86
  %video_vfe = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13, i32 6
  %37 = ptrtoint ptr %video_vfe to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %video_vfe, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %38)
  %cmp = icmp eq i16 %38, 3
  br i1 %cmp, label %land.lhs.true, label %entry.do.body51_crit_edge

entry.do.body51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body51

land.lhs.true:                                    ; preds = %entry
  %video_codec = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13, i32 7
  %39 = ptrtoint ptr %video_codec to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %video_codec, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %40)
  %cmp45 = icmp eq i16 %40, 2
  br i1 %cmp45, label %if.then, label %land.lhs.true.do.body51_crit_edge

land.lhs.true.do.body51_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body51

if.then:                                          ; preds = %land.lhs.true
  %vfe = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 10
  %41 = ptrtoint ptr %vfe to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vfe, align 8
  %tobool.not = icmp eq ptr %42, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then47

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then47:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @zr36016_write(ptr noundef nonnull %42, i16 noundef zeroext 0, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then47, %if.then.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr.i = getelementptr i8, ptr %44, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 32769) #6, !srcloc !86
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.end
  %45 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr.i.i109 = getelementptr i8, ptr %46, i32 512
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i109) #6, !srcloc !83
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %and.i.i110 = and i32 %48, 33554432
  %tobool.not.i.i = icmp eq i32 %and.i.i110, 0
  br i1 %tobool.not.i.i, label %while.end.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %and2.i.i111 = and i32 %48, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i111)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i111, 0
  br i1 %tobool3.not.i.i, label %while.end.i.i.do.body51_crit_edge, label %land.lhs.true.i.i

while.end.i.i.do.body51_crit_edge:                ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body51

land.lhs.true.i.i:                                ; preds = %while.end.i.i
  %gws_not_connected.i.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13, i32 20
  %49 = ptrtoint ptr %gws_not_connected.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %gws_not_connected.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool4.not.i.i = icmp eq i8 %50, 0
  br i1 %tobool4.not.i.i, label %do.end.i.i, label %land.lhs.true.i.i.do.body51_crit_edge

land.lhs.true.i.i.do.body51_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body51

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev.i.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %51 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pci_dev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str, i32 noundef %48) #9
  br label %do.body51

do.body51:                                        ; preds = %do.end.i.i, %land.lhs.true.i.i.do.body51_crit_edge, %while.end.i.i.do.body51_crit_edge, %land.lhs.true.do.body51_crit_edge, %entry.do.body51_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %53 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr57 = getelementptr i8, ptr %54, i32 260
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  %56 = or i32 %55, 16777216
  %57 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr63 = getelementptr i8, ptr %58, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %56) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %59 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr70 = getelementptr i8, ptr %60, i32 256
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  %62 = or i32 %61, 536870912
  %63 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr76 = getelementptr i8, ptr %64, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %62) #6, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 6442440) #6
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i, align 2
  %conv.i113 = sext i8 %67 to i32
  %add.i.i114 = add nsw i32 %conv.i113, 24
  %shl.i.i115 = shl nuw i32 1, %add.i.i114
  %and.i.i116 = and i32 %shl.i.i115, -16777216
  %68 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr.i.i118 = getelementptr i8, ptr %69, i32 44
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i118) #6, !srcloc !83
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %or.i.i121 = or i32 %and.i.i116, %71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %72 = tail call i32 @llvm.bswap.i32(i32 %or.i.i121) #6
  %73 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr4.i.i122 = getelementptr i8, ptr %74, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i122, i32 %72) #6, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jpeg_start.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jpeg_start, %if.then83)) #6
          to label %do.end86 [label %if.then83], !srcloc !91

if.then83:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %76 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jpeg_start.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.13) #6
  br label %do.end86

do.end86:                                         ; preds = %if.then83, %do.body51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zr36016_write(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zr36057_enable_jpg(ptr noundef %zr, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %cap = alloca %struct.vfe_settings, align 4
  %field_size = alloca i32, align 4
  %app = alloca %struct.jpeg_app_marker, align 4
  %com = alloca %struct.jpeg_com_marker, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cap) #6
  %0 = getelementptr inbounds i8, ptr %cap, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %field_size) #6
  %buffer_size = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 23
  %2 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buffer_size, align 8
  %field_per_buff = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 4
  %4 = ptrtoint ptr %field_per_buff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %field_per_buff, align 8
  %div = udiv i32 %3, %5
  %6 = ptrtoint ptr %field_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div, ptr %field_size, align 4
  %codec_mode = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 25
  %7 = ptrtoint ptr %codec_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mode, ptr %codec_mode, align 4
  %img_x = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 6
  %8 = ptrtoint ptr %img_x to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %img_x, align 8
  %10 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %cap, align 4
  %img_y = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 7
  %11 = ptrtoint ptr %img_y to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %img_y, align 4
  %y = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 1
  %13 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %y, align 4
  %img_width = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 8
  %14 = ptrtoint ptr %img_width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %img_width, align 8
  %width = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 2
  %16 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %width, align 4
  %img_height = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 9
  %17 = ptrtoint ptr %img_height to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %img_height, align 4
  %height = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 3
  %19 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %height, align 4
  %hor_dcm = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 1
  %20 = ptrtoint ptr %hor_dcm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hor_dcm, align 4
  %ver_dcm = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 2
  %22 = ptrtoint ptr %ver_dcm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ver_dcm, align 8
  %shl = shl i32 %23, 8
  %or = or i32 %shl, %21
  %conv = trunc i32 %or to i16
  %decimation = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 4
  %24 = ptrtoint ptr %decimation to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv, ptr %decimation, align 4
  %jpg_comp = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 10
  %25 = ptrtoint ptr %jpg_comp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %jpg_comp, align 8
  %conv8 = trunc i32 %26 to i16
  %quality9 = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 6
  %27 = ptrtoint ptr %quality9 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv8, ptr %quality9, align 4
  %28 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %do.body205 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb108
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %app) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %com) #6
  tail call fastcc void @set_videobus_dir(ptr noundef %zr, i32 noundef 0)
  %decoder = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 7
  %29 = ptrtoint ptr %decoder to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %decoder, align 4
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %sw.bb.if.end28_crit_edge, label %if.else

sw.bb.if.end28_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.else:                                          ; preds = %sw.bb
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %video, align 4
  %tobool10.not = icmp eq ptr %34, null
  br i1 %tobool10.not, label %if.else.if.end28_crit_edge, label %land.lhs.true

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_stream, align 4
  %tobool13.not = icmp eq ptr %36, null
  br i1 %tobool13.not, label %land.lhs.true.if.end28_crit_edge, label %if.else15

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.else15:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool16.not = icmp eq ptr %37, null
  br i1 %tobool16.not, label %if.else15.if.else22_crit_edge, label %land.lhs.true17

if.else15.if.else22_crit_edge:                    ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else22

land.lhs.true17:                                  ; preds = %if.else15
  %s_stream18 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %s_stream18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_stream18, align 4
  %tobool19.not = icmp eq ptr %39, null
  br i1 %tobool19.not, label %land.lhs.true17.if.else22_crit_edge, label %land.lhs.true17.if.end28.sink.split_crit_edge

land.lhs.true17.if.end28.sink.split_crit_edge:    ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.sink.split

land.lhs.true17.if.else22_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else22

if.else22:                                        ; preds = %land.lhs.true17.if.else22_crit_edge, %if.else15.if.else22_crit_edge
  br label %if.end28.sink.split

if.end28.sink.split:                              ; preds = %if.else22, %land.lhs.true17.if.end28.sink.split_crit_edge
  %.sink = phi ptr [ %36, %if.else22 ], [ %39, %land.lhs.true17.if.end28.sink.split_crit_edge ]
  %call26 = tail call i32 %.sink(ptr noundef nonnull %30, i32 noundef 1) #6
  br label %if.end28

if.end28:                                         ; preds = %if.end28.sink.split, %land.lhs.true.if.end28_crit_edge, %if.else.if.end28_crit_edge, %sw.bb.if.end28_crit_edge
  %encoder = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 8
  %40 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %encoder, align 8
  %tobool31.not = icmp eq ptr %41, null
  br i1 %tobool31.not, label %if.end28.if.end57_crit_edge, label %if.else33

if.end28.if.end57_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.else33:                                        ; preds = %if.end28
  %ops34 = getelementptr inbounds %struct.v4l2_subdev, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %ops34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops34, align 4
  %video35 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %video35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %video35, align 4
  %tobool36.not = icmp eq ptr %45, null
  br i1 %tobool36.not, label %if.else33.if.end57_crit_edge, label %land.lhs.true37

if.else33.if.end57_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

land.lhs.true37:                                  ; preds = %if.else33
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %tobool40.not = icmp eq ptr %47, null
  br i1 %tobool40.not, label %land.lhs.true37.if.end57_crit_edge, label %if.else42

land.lhs.true37.if.end57_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.else42:                                        ; preds = %land.lhs.true37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool43.not = icmp eq ptr %48, null
  br i1 %tobool43.not, label %if.else42.if.else50_crit_edge, label %land.lhs.true44

if.else42.if.else50_crit_edge:                    ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else50

land.lhs.true44:                                  ; preds = %if.else42
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %tobool46.not = icmp eq ptr %50, null
  br i1 %tobool46.not, label %land.lhs.true44.if.else50_crit_edge, label %land.lhs.true44.if.end57.sink.split_crit_edge

land.lhs.true44.if.end57.sink.split_crit_edge:    ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.sink.split

land.lhs.true44.if.else50_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else50

if.else50:                                        ; preds = %land.lhs.true44.if.else50_crit_edge, %if.else42.if.else50_crit_edge
  br label %if.end57.sink.split

if.end57.sink.split:                              ; preds = %if.else50, %land.lhs.true44.if.end57.sink.split_crit_edge
  %.sink505 = phi ptr [ %47, %if.else50 ], [ %50, %land.lhs.true44.if.end57.sink.split_crit_edge ]
  %call54 = tail call i32 %.sink505(ptr noundef nonnull %41, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %if.end57

if.end57:                                         ; preds = %if.end57.sink.split, %land.lhs.true37.if.end57_crit_edge, %if.else33.if.end57_crit_edge, %if.end28.if.end57_crit_edge
  tail call void @jpeg_codec_sleep(ptr noundef %zr, i32 noundef 0)
  %APPn = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 10, i32 1
  %51 = ptrtoint ptr %APPn to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %APPn, align 4
  %53 = ptrtoint ptr %app to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %app, align 4
  %APP_len = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 10, i32 2
  %54 = ptrtoint ptr %APP_len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %APP_len, align 8
  %len = getelementptr inbounds %struct.jpeg_app_marker, ptr %app, i32 0, i32 1
  %56 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %len, align 4
  %data = getelementptr inbounds %struct.jpeg_app_marker, ptr %app, i32 0, i32 2
  %APP_data = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 10, i32 3
  %57 = call ptr @memcpy(ptr %data, ptr %APP_data, i32 60)
  %codec = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 9
  %58 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %codec, align 4
  %control = getelementptr inbounds %struct.videocodec, ptr %59, i32 0, i32 11
  %60 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %control, align 4
  %call67 = call i32 %61(ptr noundef %59, i32 noundef 26, i32 noundef 68, ptr noundef nonnull %app) #6
  %COM_len = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 10, i32 4
  %62 = ptrtoint ptr %COM_len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %COM_len, align 8
  %64 = ptrtoint ptr %com to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %com, align 4
  %data71 = getelementptr inbounds %struct.jpeg_com_marker, ptr %com, i32 0, i32 1
  %COM_data = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 10, i32 5
  %65 = call ptr @memcpy(ptr %data71, ptr %COM_data, i32 60)
  %66 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %codec, align 4
  %control77 = getelementptr inbounds %struct.videocodec, ptr %67, i32 0, i32 11
  %68 = ptrtoint ptr %control77 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %control77, align 4
  %call79 = call i32 %69(ptr noundef %67, i32 noundef 27, i32 noundef 64, ptr noundef nonnull %com) #6
  %70 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %codec, align 4
  %control81 = getelementptr inbounds %struct.videocodec, ptr %71, i32 0, i32 11
  %72 = ptrtoint ptr %control81 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %control81, align 4
  %call83 = call i32 %73(ptr noundef %71, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %field_size) #6
  %74 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %codec, align 4
  %set_video = getelementptr inbounds %struct.videocodec, ptr %75, i32 0, i32 10
  %76 = ptrtoint ptr %set_video to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %set_video, align 4
  %timing = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 14
  %78 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %timing, align 8
  %vfe_pol = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13, i32 18
  %call86 = call i32 %77(ptr noundef %75, ptr noundef %79, ptr noundef nonnull %cap, ptr noundef %vfe_pol) #6
  %80 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %codec, align 4
  %set_mode = getelementptr inbounds %struct.videocodec, ptr %81, i32 0, i32 9
  %82 = ptrtoint ptr %set_mode to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %set_mode, align 4
  %call89 = call i32 %83(ptr noundef %81, i32 noundef 0) #6
  %vfe = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 10
  %84 = ptrtoint ptr %vfe to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vfe, align 8
  %tobool90.not = icmp eq ptr %85, null
  br i1 %tobool90.not, label %if.end57.if.end107_crit_edge, label %if.then91

if.end57.if.end107_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

if.then91:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %control93 = getelementptr inbounds %struct.videocodec, ptr %85, i32 0, i32 11
  %86 = ptrtoint ptr %control93 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %control93, align 4
  %call95 = call i32 %87(ptr noundef nonnull %85, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %field_size) #6
  %88 = ptrtoint ptr %vfe to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %vfe, align 8
  %set_video97 = getelementptr inbounds %struct.videocodec, ptr %89, i32 0, i32 10
  %90 = ptrtoint ptr %set_video97 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %set_video97, align 4
  %92 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %timing, align 8
  %call102 = call i32 %91(ptr noundef %89, ptr noundef %93, ptr noundef nonnull %cap, ptr noundef %vfe_pol) #6
  %94 = ptrtoint ptr %vfe to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %vfe, align 8
  %set_mode104 = getelementptr inbounds %struct.videocodec, ptr %95, i32 0, i32 9
  %96 = ptrtoint ptr %set_mode104 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %set_mode104, align 4
  %call106 = call i32 %97(ptr noundef %95, i32 noundef 0) #6
  br label %if.end107

if.end107:                                        ; preds = %if.then91, %if.end57.if.end107_crit_edge
  %jpg_que_head.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 27
  %jpeg_error.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 51
  %98 = ptrtoint ptr %jpeg_error.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %jpeg_error.i, align 4
  %num_errors.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 52
  %99 = ptrtoint ptr %num_errors.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %num_errors.i, align 8
  %stat_com.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 36
  %100 = call ptr @memset(ptr %jpg_que_head.i, i32 0, i32 32)
  %101 = ptrtoint ptr %stat_com.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %stat_com.i, align 8
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 16777216, ptr %102, align 4
  %104 = load ptr, ptr %stat_com.i, align 8
  %arrayidx.1.i = getelementptr i32, ptr %104, i32 1
  %105 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 16777216, ptr %arrayidx.1.i, align 4
  %106 = load ptr, ptr %stat_com.i, align 8
  %arrayidx.2.i = getelementptr i32, ptr %106, i32 2
  %107 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 16777216, ptr %arrayidx.2.i, align 4
  %108 = load ptr, ptr %stat_com.i, align 8
  %arrayidx.3.i = getelementptr i32, ptr %108, i32 3
  %109 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 16777216, ptr %arrayidx.3.i, align 4
  call fastcc void @zr36057_set_jpg(ptr noundef %zr, i32 noundef 1)
  %intr_counter_GIRQ1.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 38
  %jpeg_max_missed.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 53
  %110 = ptrtoint ptr %jpeg_max_missed.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %jpeg_max_missed.i, align 4
  %jpeg_min_missed.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 54
  %111 = call ptr @memset(ptr %intr_counter_GIRQ1.i, i32 0, i32 52)
  %112 = ptrtoint ptr %jpeg_min_missed.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 2147483647, ptr %jpeg_min_missed.i, align 8
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %113 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %com) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %app) #6
  br label %sw.epilog

sw.bb108:                                         ; preds = %entry
  %decoder110 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 7
  %115 = ptrtoint ptr %decoder110 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %decoder110, align 4
  %tobool112.not = icmp eq ptr %116, null
  br i1 %tobool112.not, label %sw.bb108.if.end139_crit_edge, label %if.else114

sw.bb108.if.end139_crit_edge:                     ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

if.else114:                                       ; preds = %sw.bb108
  %ops115 = getelementptr inbounds %struct.v4l2_subdev, ptr %116, i32 0, i32 6
  %117 = ptrtoint ptr %ops115 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ops115, align 4
  %video116 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %video116 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %video116, align 4
  %tobool117.not = icmp eq ptr %120, null
  br i1 %tobool117.not, label %if.else114.if.end139_crit_edge, label %land.lhs.true118

if.else114.if.end139_crit_edge:                   ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

land.lhs.true118:                                 ; preds = %if.else114
  %s_stream121 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %120, i32 0, i32 10
  %121 = ptrtoint ptr %s_stream121 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %s_stream121, align 4
  %tobool122.not = icmp eq ptr %122, null
  br i1 %tobool122.not, label %land.lhs.true118.if.end139_crit_edge, label %if.else124

land.lhs.true118.if.end139_crit_edge:             ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

if.else124:                                       ; preds = %land.lhs.true118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool125.not = icmp eq ptr %123, null
  br i1 %tobool125.not, label %if.else124.if.else132_crit_edge, label %land.lhs.true126

if.else124.if.else132_crit_edge:                  ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else132

land.lhs.true126:                                 ; preds = %if.else124
  %s_stream127 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %123, i32 0, i32 10
  %124 = ptrtoint ptr %s_stream127 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %s_stream127, align 4
  %tobool128.not = icmp eq ptr %125, null
  br i1 %tobool128.not, label %land.lhs.true126.if.else132_crit_edge, label %land.lhs.true126.if.end139.sink.split_crit_edge

land.lhs.true126.if.end139.sink.split_crit_edge:  ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.sink.split

land.lhs.true126.if.else132_crit_edge:            ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else132

if.else132:                                       ; preds = %land.lhs.true126.if.else132_crit_edge, %if.else124.if.else132_crit_edge
  br label %if.end139.sink.split

if.end139.sink.split:                             ; preds = %if.else132, %land.lhs.true126.if.end139.sink.split_crit_edge
  %.sink506 = phi ptr [ %122, %if.else132 ], [ %125, %land.lhs.true126.if.end139.sink.split_crit_edge ]
  %call136 = tail call i32 %.sink506(ptr noundef nonnull %116, i32 noundef 0) #6
  br label %if.end139

if.end139:                                        ; preds = %if.end139.sink.split, %land.lhs.true118.if.end139_crit_edge, %if.else114.if.end139_crit_edge, %sw.bb108.if.end139_crit_edge
  tail call fastcc void @set_videobus_dir(ptr noundef %zr, i32 noundef 1)
  %encoder142 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 8
  %126 = ptrtoint ptr %encoder142 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %encoder142, align 8
  %tobool144.not = icmp eq ptr %127, null
  br i1 %tobool144.not, label %if.end139.if.end171_crit_edge, label %if.else146

if.end139.if.end171_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end171

if.else146:                                       ; preds = %if.end139
  %ops147 = getelementptr inbounds %struct.v4l2_subdev, ptr %127, i32 0, i32 6
  %128 = ptrtoint ptr %ops147 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ops147, align 4
  %video148 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %129, i32 0, i32 3
  %130 = ptrtoint ptr %video148 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %video148, align 4
  %tobool149.not = icmp eq ptr %131, null
  br i1 %tobool149.not, label %if.else146.if.end171_crit_edge, label %land.lhs.true150

if.else146.if.end171_crit_edge:                   ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end171

land.lhs.true150:                                 ; preds = %if.else146
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 4
  %tobool154.not = icmp eq ptr %133, null
  br i1 %tobool154.not, label %land.lhs.true150.if.end171_crit_edge, label %if.else156

land.lhs.true150.if.end171_crit_edge:             ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end171

if.else156:                                       ; preds = %land.lhs.true150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %134 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool157.not = icmp eq ptr %134, null
  br i1 %tobool157.not, label %if.else156.if.else164_crit_edge, label %land.lhs.true158

if.else156.if.else164_crit_edge:                  ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else164

land.lhs.true158:                                 ; preds = %if.else156
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  %tobool160.not = icmp eq ptr %136, null
  br i1 %tobool160.not, label %land.lhs.true158.if.else164_crit_edge, label %land.lhs.true158.if.end171.sink.split_crit_edge

land.lhs.true158.if.end171.sink.split_crit_edge:  ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end171.sink.split

land.lhs.true158.if.else164_crit_edge:            ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else164

if.else164:                                       ; preds = %land.lhs.true158.if.else164_crit_edge, %if.else156.if.else164_crit_edge
  br label %if.end171.sink.split

if.end171.sink.split:                             ; preds = %if.else164, %land.lhs.true158.if.end171.sink.split_crit_edge
  %.sink507 = phi ptr [ %133, %if.else164 ], [ %136, %land.lhs.true158.if.end171.sink.split_crit_edge ]
  %call168 = tail call i32 %.sink507(ptr noundef nonnull %127, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  br label %if.end171

if.end171:                                        ; preds = %if.end171.sink.split, %land.lhs.true150.if.end171_crit_edge, %if.else146.if.end171_crit_edge, %if.end139.if.end171_crit_edge
  tail call void @jpeg_codec_sleep(ptr noundef %zr, i32 noundef 0)
  %vfe173 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 10
  %137 = ptrtoint ptr %vfe173 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %vfe173, align 8
  %tobool174.not = icmp eq ptr %138, null
  br i1 %tobool174.not, label %if.end171.if.end187_crit_edge, label %if.then175

if.end171.if.end187_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end187

if.then175:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #8
  %set_video177 = getelementptr inbounds %struct.videocodec, ptr %138, i32 0, i32 10
  %139 = ptrtoint ptr %set_video177 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %set_video177, align 4
  %timing179 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 14
  %141 = ptrtoint ptr %timing179 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %timing179, align 8
  %vfe_pol181 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13, i32 18
  %call182 = call i32 %140(ptr noundef nonnull %138, ptr noundef %142, ptr noundef nonnull %cap, ptr noundef %vfe_pol181) #6
  %143 = ptrtoint ptr %vfe173 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %vfe173, align 8
  %set_mode184 = getelementptr inbounds %struct.videocodec, ptr %144, i32 0, i32 9
  %145 = ptrtoint ptr %set_mode184 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %set_mode184, align 4
  %call186 = call i32 %146(ptr noundef %144, i32 noundef 1) #6
  br label %if.end187

if.end187:                                        ; preds = %if.then175, %if.end171.if.end187_crit_edge
  %codec188 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 9
  %147 = ptrtoint ptr %codec188 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %codec188, align 4
  %set_video189 = getelementptr inbounds %struct.videocodec, ptr %148, i32 0, i32 10
  %149 = ptrtoint ptr %set_video189 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %set_video189, align 4
  %timing191 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 14
  %151 = ptrtoint ptr %timing191 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %timing191, align 8
  %vfe_pol193 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13, i32 18
  %call194 = call i32 %150(ptr noundef %148, ptr noundef %152, ptr noundef nonnull %cap, ptr noundef %vfe_pol193) #6
  %153 = ptrtoint ptr %codec188 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %codec188, align 4
  %set_mode196 = getelementptr inbounds %struct.videocodec, ptr %154, i32 0, i32 9
  %155 = ptrtoint ptr %set_mode196 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %set_mode196, align 4
  %call198 = call i32 %156(ptr noundef %154, i32 noundef 1) #6
  %jpg_que_head.i495 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 27
  %jpeg_error.i496 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 51
  %157 = ptrtoint ptr %jpeg_error.i496 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %jpeg_error.i496, align 4
  %num_errors.i497 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 52
  %158 = ptrtoint ptr %num_errors.i497 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %num_errors.i497, align 8
  %stat_com.i498 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 36
  %159 = call ptr @memset(ptr %jpg_que_head.i495, i32 0, i32 32)
  %160 = ptrtoint ptr %stat_com.i498 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %stat_com.i498, align 8
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 16777216, ptr %161, align 4
  %163 = load ptr, ptr %stat_com.i498, align 8
  %arrayidx.1.i499 = getelementptr i32, ptr %163, i32 1
  %164 = ptrtoint ptr %arrayidx.1.i499 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 16777216, ptr %arrayidx.1.i499, align 4
  %165 = load ptr, ptr %stat_com.i498, align 8
  %arrayidx.2.i500 = getelementptr i32, ptr %165, i32 2
  %166 = ptrtoint ptr %arrayidx.2.i500 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 16777216, ptr %arrayidx.2.i500, align 4
  %167 = load ptr, ptr %stat_com.i498, align 8
  %arrayidx.3.i501 = getelementptr i32, ptr %167, i32 3
  %168 = ptrtoint ptr %arrayidx.3.i501 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 16777216, ptr %arrayidx.3.i501, align 4
  call fastcc void @zr36057_set_jpg(ptr noundef %zr, i32 noundef 2)
  %intr_counter_GIRQ1.i502 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 38
  %jpeg_max_missed.i503 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 53
  %169 = ptrtoint ptr %jpeg_max_missed.i503 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %jpeg_max_missed.i503, align 4
  %jpeg_min_missed.i504 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 54
  %170 = call ptr @memset(ptr %intr_counter_GIRQ1.i502, i32 0, i32 52)
  %171 = ptrtoint ptr %jpeg_min_missed.i504 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 2147483647, ptr %jpeg_min_missed.i504, align 8
  %pci_dev202 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %172 = ptrtoint ptr %pci_dev202 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pci_dev202, align 8
  %dev203 = getelementptr inbounds %struct.pci_dev, ptr %173, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev203, ptr noundef nonnull @.str.17) #9
  br label %sw.epilog

do.body205:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  %jpeg_int = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13, i32 13
  %174 = ptrtoint ptr %jpeg_int to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %jpeg_int, align 4
  %176 = and i32 %175, -134217729
  %neg = xor i32 %176, -134217729
  %zr36057_mem = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 19
  %177 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr = getelementptr i8, ptr %178, i32 64
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  %180 = tail call i32 @llvm.bswap.i32(i32 %179)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  %and = and i32 %180, %neg
  %181 = tail call i32 @llvm.bswap.i32(i32 %and)
  %182 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr214 = getelementptr i8, ptr %183, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr214, i32 %181) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  tail call void @arm_heavy_mb() #6
  %184 = ptrtoint ptr %jpeg_int to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %jpeg_int, align 4
  %or220 = or i32 %185, 134217728
  %186 = tail call i32 @llvm.bswap.i32(i32 %or220)
  %187 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr222 = getelementptr i8, ptr %188, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr222, i32 %186) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %189 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr229 = getelementptr i8, ptr %190, i32 256
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr229) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  %192 = and i32 %191, -536870913
  %193 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr235 = getelementptr i8, ptr %194, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr235, i32 %192) #6, !srcloc !86
  tail call void @msleep(i32 noundef 50) #6
  tail call fastcc void @set_videobus_dir(ptr noundef %zr, i32 noundef 0)
  %arrayidx.i = getelementptr %struct.zoran, ptr %zr, i32 0, i32 13, i32 15, i32 2
  %195 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx.i, align 2
  %conv.i = sext i8 %196 to i32
  %add.i.i = add nsw i32 %conv.i, 24
  %shl.i.i = shl nuw i32 1, %add.i.i
  %and.i.i = and i32 %shl.i.i, -16777216
  %197 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr.i.i = getelementptr i8, ptr %198, i32 44
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !83
  %200 = tail call i32 @llvm.bswap.i32(i32 %199) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %or.i.i = or i32 %and.i.i, %200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %201 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  %202 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %203, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %201) #6, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %204 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %204(i32 noundef 214748) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  tail call void @arm_heavy_mb() #6
  %205 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr242 = getelementptr i8, ptr %206, i32 52
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr242) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %208 = or i32 %207, 16
  %209 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr248 = getelementptr i8, ptr %210, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr248, i32 %208) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %211 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr253 = getelementptr i8, ptr %212, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr253, i32 0) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  tail call void @arm_heavy_mb() #6
  %213 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr260 = getelementptr i8, ptr %214, i32 256
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr260) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  %216 = and i32 %215, -67108865
  %217 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr266 = getelementptr i8, ptr %218, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr266, i32 %216) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  tail call void @arm_heavy_mb() #6
  %219 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr273 = getelementptr i8, ptr %220, i32 256
  %221 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr273) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  %222 = and i32 %221, -268435457
  %223 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr279 = getelementptr i8, ptr %224, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr279, i32 %222) #6, !srcloc !86
  %call280 = tail call i32 @jpeg_codec_reset(ptr noundef %zr)
  tail call void @jpeg_codec_sleep(ptr noundef %zr, i32 noundef 1)
  tail call fastcc void @zr36057_adjust_vfe(ptr noundef %zr, i32 noundef %mode)
  %decoder282 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 7
  %225 = ptrtoint ptr %decoder282 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %decoder282, align 4
  %tobool284.not = icmp eq ptr %226, null
  br i1 %tobool284.not, label %do.body205.if.end311_crit_edge, label %if.else286

do.body205.if.end311_crit_edge:                   ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end311

if.else286:                                       ; preds = %do.body205
  %ops287 = getelementptr inbounds %struct.v4l2_subdev, ptr %226, i32 0, i32 6
  %227 = ptrtoint ptr %ops287 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %ops287, align 4
  %video288 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %228, i32 0, i32 3
  %229 = ptrtoint ptr %video288 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %video288, align 4
  %tobool289.not = icmp eq ptr %230, null
  br i1 %tobool289.not, label %if.else286.if.end311_crit_edge, label %land.lhs.true290

if.else286.if.end311_crit_edge:                   ; preds = %if.else286
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end311

land.lhs.true290:                                 ; preds = %if.else286
  %s_stream293 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %230, i32 0, i32 10
  %231 = ptrtoint ptr %s_stream293 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %s_stream293, align 4
  %tobool294.not = icmp eq ptr %232, null
  br i1 %tobool294.not, label %land.lhs.true290.if.end311_crit_edge, label %if.else296

land.lhs.true290.if.end311_crit_edge:             ; preds = %land.lhs.true290
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end311

if.else296:                                       ; preds = %land.lhs.true290
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %233 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool297.not = icmp eq ptr %233, null
  br i1 %tobool297.not, label %if.else296.if.else304_crit_edge, label %land.lhs.true298

if.else296.if.else304_crit_edge:                  ; preds = %if.else296
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else304

land.lhs.true298:                                 ; preds = %if.else296
  %s_stream299 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %233, i32 0, i32 10
  %234 = ptrtoint ptr %s_stream299 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %s_stream299, align 4
  %tobool300.not = icmp eq ptr %235, null
  br i1 %tobool300.not, label %land.lhs.true298.if.else304_crit_edge, label %land.lhs.true298.if.end311.sink.split_crit_edge

land.lhs.true298.if.end311.sink.split_crit_edge:  ; preds = %land.lhs.true298
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end311.sink.split

land.lhs.true298.if.else304_crit_edge:            ; preds = %land.lhs.true298
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else304

if.else304:                                       ; preds = %land.lhs.true298.if.else304_crit_edge, %if.else296.if.else304_crit_edge
  br label %if.end311.sink.split

if.end311.sink.split:                             ; preds = %if.else304, %land.lhs.true298.if.end311.sink.split_crit_edge
  %.sink508 = phi ptr [ %232, %if.else304 ], [ %235, %land.lhs.true298.if.end311.sink.split_crit_edge ]
  %call308 = tail call i32 %.sink508(ptr noundef nonnull %226, i32 noundef 1) #6
  br label %if.end311

if.end311:                                        ; preds = %if.end311.sink.split, %land.lhs.true290.if.end311_crit_edge, %if.else286.if.end311_crit_edge, %do.body205.if.end311_crit_edge
  %encoder314 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 8
  %236 = ptrtoint ptr %encoder314 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %encoder314, align 8
  %tobool316.not = icmp eq ptr %237, null
  br i1 %tobool316.not, label %if.end311.if.end343_crit_edge, label %if.else318

if.end311.if.end343_crit_edge:                    ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end343

if.else318:                                       ; preds = %if.end311
  %ops319 = getelementptr inbounds %struct.v4l2_subdev, ptr %237, i32 0, i32 6
  %238 = ptrtoint ptr %ops319 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %ops319, align 4
  %video320 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %239, i32 0, i32 3
  %240 = ptrtoint ptr %video320 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %video320, align 4
  %tobool321.not = icmp eq ptr %241, null
  br i1 %tobool321.not, label %if.else318.if.end343_crit_edge, label %land.lhs.true322

if.else318.if.end343_crit_edge:                   ; preds = %if.else318
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end343

land.lhs.true322:                                 ; preds = %if.else318
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %241, align 4
  %tobool326.not = icmp eq ptr %243, null
  br i1 %tobool326.not, label %land.lhs.true322.if.end343_crit_edge, label %if.else328

land.lhs.true322.if.end343_crit_edge:             ; preds = %land.lhs.true322
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end343

if.else328:                                       ; preds = %land.lhs.true322
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %244 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool329.not = icmp eq ptr %244, null
  br i1 %tobool329.not, label %if.else328.if.else336_crit_edge, label %land.lhs.true330

if.else328.if.else336_crit_edge:                  ; preds = %if.else328
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else336

land.lhs.true330:                                 ; preds = %if.else328
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %244, align 4
  %tobool332.not = icmp eq ptr %246, null
  br i1 %tobool332.not, label %land.lhs.true330.if.else336_crit_edge, label %land.lhs.true330.if.end343.sink.split_crit_edge

land.lhs.true330.if.end343.sink.split_crit_edge:  ; preds = %land.lhs.true330
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end343.sink.split

land.lhs.true330.if.else336_crit_edge:            ; preds = %land.lhs.true330
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else336

if.else336:                                       ; preds = %land.lhs.true330.if.else336_crit_edge, %if.else328.if.else336_crit_edge
  br label %if.end343.sink.split

if.end343.sink.split:                             ; preds = %if.else336, %land.lhs.true330.if.end343.sink.split_crit_edge
  %.sink509 = phi ptr [ %243, %if.else336 ], [ %246, %land.lhs.true330.if.end343.sink.split_crit_edge ]
  %call340 = tail call i32 %.sink509(ptr noundef nonnull %237, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %if.end343

if.end343:                                        ; preds = %if.end343.sink.split, %land.lhs.true322.if.end343_crit_edge, %if.else318.if.end343_crit_edge, %if.end311.if.end343_crit_edge
  %pci_dev348 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %247 = ptrtoint ptr %pci_dev348 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %pci_dev348, align 8
  %dev349 = getelementptr inbounds %struct.pci_dev, ptr %248, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev349, ptr noundef nonnull @.str.20) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end343, %if.end187, %if.end107
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %field_size) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cap) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_videobus_dir(ptr nocapture noundef readonly %zr, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %card, align 8
  %.off = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %2 = load i8, ptr @lml33dpath, align 1, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %zr36057_mem.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 19
  %3 = ptrtoint ptr %zr36057_mem.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %zr36057_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 44
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %6 = and i32 %5, -33
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i = icmp eq i32 %val, 0
  %masksel = select i1 %tobool.not.i, i32 0, i32 536870912
  %spec.select.i = or i32 %7, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #6
  %9 = ptrtoint ptr %zr36057_mem.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %zr36057_mem.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %10, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %8) #6, !srcloc !86
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %11 = or i32 %5, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %zr36057_mem.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %zr36057_mem.i, align 8
  %add.ptr4.i18 = getelementptr i8, ptr %13, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i18, i32 %11) #6, !srcloc !86
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.zoran, ptr %zr, i32 0, i32 13, i32 15, i32 3
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %15 to i32
  %arrayidx3 = getelementptr %struct.zoran, ptr %zr, i32 0, i32 13, i32 19, i32 3
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not = icmp eq i8 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool6.not = icmp eq i32 %val, 0
  %lnot.ext = zext i1 %tobool6.not to i32
  %cond = select i1 %tobool5.not, i32 %val, i32 %lnot.ext
  %add.i = add nsw i32 %conv, 24
  %shl.i = shl nuw i32 1, %add.i
  %and.i = and i32 %shl.i, -16777216
  %zr36057_mem.i19 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 19
  %18 = ptrtoint ptr %zr36057_mem.i19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %zr36057_mem.i19, align 8
  %add.ptr.i20 = getelementptr i8, ptr %19, i32 44
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #6, !srcloc !83
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %neg.i = xor i32 %and.i, -1
  %and2.i21 = and i32 %21, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool.not.i22 = icmp eq i32 %cond, 0
  %or.i23 = or i32 %21, %and.i
  %spec.select.i24 = select i1 %tobool.not.i22, i32 %and2.i21, i32 %or.i23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i24) #6
  %23 = ptrtoint ptr %zr36057_mem.i19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %zr36057_mem.i19, align 8
  %add.ptr4.i25 = getelementptr i8, ptr %24, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i25, i32 %22) #6, !srcloc !86
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zr36057_set_jpg(ptr nocapture noundef readonly %zr, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %timing = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 14
  %0 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timing, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  tail call void @arm_heavy_mb() #6
  %zr36057_mem = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 19
  %2 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !86
  %switch.tableidx = add i32 %mode, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 3
  br i1 %4, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.zr36057_set_jpg, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %reg.0 = phi i32 [ -536870912, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %field_per_buff = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 4
  %6 = ptrtoint ptr %field_per_buff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %field_per_buff, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %or5 = or i32 %reg.0, 8
  %spec.select = select i1 %cmp, i32 %or5, i32 %reg.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %9 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr10 = getelementptr i8, ptr %10, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %8) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr15 = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  %14 = or i32 %13, 64
  %15 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr19 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %14) #6, !srcloc !86
  %ht = getelementptr inbounds %struct.tvnorm, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %ht to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ht, align 2
  %conv = zext i16 %18 to i32
  %or20 = or i32 %conv, 393216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  tail call void @arm_heavy_mb() #6
  %19 = tail call i32 @llvm.bswap.i32(i32 %or20)
  %20 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr25 = getelementptr i8, ptr %21, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %19) #6, !srcloc !86
  %img_y = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 7
  %22 = ptrtoint ptr %img_y to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %img_y, align 4
  %v_start = getelementptr inbounds %struct.tvnorm, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %v_start to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %v_start, align 2
  %conv27 = zext i16 %25 to i32
  %add = add i32 %23, %conv27
  %shl28 = shl i32 %add, 16
  %img_height = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 9
  %26 = ptrtoint ptr %img_height to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %img_height, align 4
  %or31 = or i32 %shl28, %27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  tail call void @arm_heavy_mb() #6
  %28 = tail call i32 @llvm.bswap.i32(i32 %or31)
  %29 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr36 = getelementptr i8, ptr %30, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %28) #6, !srcloc !86
  %card = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13
  %vfe_pol = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13, i32 18
  %31 = ptrtoint ptr %vfe_pol to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %vfe_pol, align 8
  %32 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not = icmp eq i8 %32, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %zr36057_mem, align 8
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %tobool.not, label %do.body51, label %do.body38

do.body38:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %36 = or i32 %35, 64
  %37 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %zr36057_mem, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #6, !srcloc !86
  br label %if.end63

do.body51:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %39 = and i32 %35, -65
  %40 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %zr36057_mem, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #6, !srcloc !86
  br label %if.end63

if.end63:                                         ; preds = %do.body51, %do.body38
  %h_sync_start = getelementptr inbounds %struct.tvnorm, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %h_sync_start to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %h_sync_start, align 2
  %conv64 = zext i16 %43 to i32
  %shl65 = shl nuw i32 %conv64, 16
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %1, align 2
  %conv66 = zext i16 %45 to i32
  %or68 = or i32 %shl65, %conv66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  tail call void @arm_heavy_mb() #6
  %46 = tail call i32 @llvm.bswap.i32(i32 %or68)
  %47 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr73 = getelementptr i8, ptr %48, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %46) #6, !srcloc !86
  %img_x = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 6
  %49 = ptrtoint ptr %img_x to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %img_x, align 8
  %h_start = getelementptr inbounds %struct.tvnorm, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %h_start to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %h_start, align 2
  %conv75 = zext i16 %52 to i32
  %add76 = add i32 %50, %conv75
  %add77 = shl i32 %add76, 16
  %shl78 = add i32 %add77, 262144
  %img_width = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 8
  %53 = ptrtoint ptr %img_width to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %img_width, align 8
  %or81 = or i32 %shl78, %54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  tail call void @arm_heavy_mb() #6
  %55 = tail call i32 @llvm.bswap.i32(i32 %or81)
  %56 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr86 = getelementptr i8, ptr %57, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %55) #6, !srcloc !86
  %odd_even = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 5
  %58 = ptrtoint ptr %odd_even to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %odd_even, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool88.not = icmp eq i32 %59, 0
  %. = select i1 %tobool88.not, i32 0, i32 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %60 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr96 = getelementptr i8, ptr %61, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 %.) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  tail call void @arm_heavy_mb() #6
  %p_sc = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 61
  %62 = ptrtoint ptr %p_sc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %p_sc, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %65 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr101 = getelementptr i8, ptr %66, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 %64) #6, !srcloc !86
  %67 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %mode, label %sw.default110 [
    i32 3, label %if.end63.sw.bb102_crit_edge
    i32 1, label %if.end63.sw.bb102_crit_edge158
    i32 4, label %if.end63.do.body112_crit_edge
    i32 2, label %if.end63.do.body112_crit_edge159
  ]

if.end63.do.body112_crit_edge159:                 ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body112

if.end63.do.body112_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body112

if.end63.sw.bb102_crit_edge158:                   ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb102

if.end63.sw.bb102_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb102

sw.bb102:                                         ; preds = %if.end63.sw.bb102_crit_edge, %if.end63.sw.bb102_crit_edge158
  %68 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %card, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %69)
  %cmp104.not = icmp eq i32 %69, 7
  %.157 = select i1 %cmp104.not, i32 1006632960, i32 -1946157056
  br label %do.body112

sw.default110:                                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body112

do.body112:                                       ; preds = %sw.default110, %sw.bb102, %if.end63.do.body112_crit_edge, %if.end63.do.body112_crit_edge159
  %reg.3 = phi i32 [ 1342177280, %sw.default110 ], [ %.157, %sw.bb102 ], [ 335544320, %if.end63.do.body112_crit_edge ], [ 335544320, %if.end63.do.body112_crit_edge159 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !145
  tail call void @arm_heavy_mb() #6
  %70 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr116 = getelementptr i8, ptr %71, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr116, i32 %reg.3) #6, !srcloc !86
  tail call fastcc void @zr36057_adjust_vfe(ptr noundef %zr, i32 noundef %mode)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zr36057_adjust_vfe(ptr nocapture noundef readonly %zr, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cond = icmp eq i32 %mode, 2
  br i1 %cond, label %do.body, label %sw.default

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %zr36057_mem = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 19
  %0 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !147
  %3 = and i32 %2, -5
  %4 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #6, !srcloc !86
  %6 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %zr36057_mem, align 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !83
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %and11 = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %do.body.do.body12_crit_edge, label %land.lhs.true

do.body.do.body12_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12

land.lhs.true:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %card = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %card, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %cmp.not = icmp eq i32 %11, 6
  %add = add i32 %9, 1025
  %spec.select = select i1 %cmp.not, i32 %9, i32 %add
  br label %do.body12

do.body12:                                        ; preds = %land.lhs.true, %do.body.do.body12_crit_edge
  %reg.0 = phi i32 [ %9, %do.body.do.body12_crit_edge ], [ %spec.select, %land.lhs.true ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  %13 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %zr36057_mem, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #6, !srcloc !86
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %norm = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 22
  %15 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %norm, align 8
  %and18 = and i64 %16, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18)
  %tobool19.not = icmp eq i64 %and18, 0
  br i1 %tobool19.not, label %lor.lhs.false, label %sw.default.do.body28_crit_edge

sw.default.do.body28_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body28

lor.lhs.false:                                    ; preds = %sw.default
  %card20 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13
  %17 = ptrtoint ptr %card20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %card20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %18)
  %cmp22 = icmp ne i32 %18, 6
  %and25 = and i64 %16, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and25)
  %tobool26.not = icmp eq i64 %and25, 0
  %or.cond = select i1 %cmp22, i1 true, i1 %tobool26.not
  br i1 %or.cond, label %do.body41, label %lor.lhs.false.do.body28_crit_edge

lor.lhs.false.do.body28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body28

do.body28:                                        ; preds = %lor.lhs.false.do.body28_crit_edge, %sw.default.do.body28_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  tail call void @arm_heavy_mb() #6
  %zr36057_mem33 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 19
  %19 = ptrtoint ptr %zr36057_mem33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %zr36057_mem33, align 8
  %add.ptr34 = getelementptr i8, ptr %20, i32 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  %22 = and i32 %21, -5
  %23 = ptrtoint ptr %zr36057_mem33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %zr36057_mem33, align 8
  %add.ptr40 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %22) #6, !srcloc !86
  br label %if.end53

do.body41:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  tail call void @arm_heavy_mb() #6
  %zr36057_mem46 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 19
  %25 = ptrtoint ptr %zr36057_mem46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %zr36057_mem46, align 8
  %add.ptr47 = getelementptr i8, ptr %26, i32 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  %28 = or i32 %27, 4
  %29 = ptrtoint ptr %zr36057_mem46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %zr36057_mem46, align 8
  %add.ptr52 = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %28) #6, !srcloc !86
  br label %if.end53

if.end53:                                         ; preds = %do.body41, %do.body28
  %zr36057_mem56 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 19
  %31 = ptrtoint ptr %zr36057_mem56 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %zr36057_mem56, align 8
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #6, !srcloc !83
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %and61 = and i32 %34, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %land.lhs.true63, label %if.end53.do.body69_crit_edge

if.end53.do.body69_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body69

land.lhs.true63:                                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %card64 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13
  %35 = ptrtoint ptr %card64 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %card64, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %36)
  %cmp66.not = icmp eq i32 %36, 6
  %sub = add i32 %34, -1025
  %spec.select93 = select i1 %cmp66.not, i32 %34, i32 %sub
  br label %do.body69

do.body69:                                        ; preds = %land.lhs.true63, %if.end53.do.body69_crit_edge
  %reg.1 = phi i32 [ %34, %if.end53.do.body69_crit_edge ], [ %spec.select93, %land.lhs.true63 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %37 = tail call i32 @llvm.bswap.i32(i32 %reg.1)
  %38 = ptrtoint ptr %zr36057_mem56 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %zr36057_mem56, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #6, !srcloc !86
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body69, %do.body12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zoran_feed_stat_com(ptr noundef %zr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tmp_dcm = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 26, i32 3
  %0 = ptrtoint ptr %tmp_dcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tmp_dcm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %cond = select i1 %cmp, i32 4, i32 2
  %queued_bufs_lock = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 66
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queued_bufs_lock) #6
  %jpg_dma_head = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 28
  %jpg_dma_tail = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 29
  %2 = ptrtoint ptr %jpg_dma_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %jpg_dma_head, align 8
  %4 = ptrtoint ptr %jpg_dma_tail to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %jpg_dma_tail, align 4
  %sub164 = sub i32 %3, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub164, i32 %cond)
  %cmp6165 = icmp ult i32 %sub164, %cond
  br i1 %cmp6165, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %queued_bufs = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 65
  %buf_in_reserve = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 60
  %buffer_size = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 23
  %jpg_err_shift52 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 33
  %stat_com56 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 36
  %p_scb62 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 63
  %stat_comb75 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 62
  br label %while.body

while.body:                                       ; preds = %if.end89.while.body_crit_edge, %while.body.lr.ph
  %6 = ptrtoint ptr %queued_bufs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %queued_bufs, align 4
  %cmp13.not = icmp eq ptr %7, %queued_bufs
  %add.ptr = getelementptr i8, ptr %7, i32 -736
  %tobool.not163 = icmp eq ptr %add.ptr, null
  %tobool.not = or i1 %cmp13.not, %tobool.not163
  br i1 %tobool.not, label %do.end19, label %if.end

do.end19:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %8 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock, i32 noundef %call3) #6
  br label %cleanup

if.end:                                           ; preds = %while.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %18 = ptrtoint ptr %buf_in_reserve to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_in_reserve, align 8
  %dec = add i32 %19, -1
  store i32 %dec, ptr %buf_in_reserve, align 8
  %state = getelementptr i8, ptr %7, i32 -672
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %state, align 8
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %add.ptr, i32 noundef 0) #6
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call.i, align 4
  %num_planes.i = getelementptr i8, ptr %7, i32 -720
  %23 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not.i = icmp eq i32 %24, 0
  br i1 %cmp.not.i, label %list_del.exit.if.then28_crit_edge, label %vb2_get_plane_payload.exit

list_del.exit.if.then28_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

vb2_get_plane_payload.exit:                       ; preds = %list_del.exit
  %bytesused.i = getelementptr i8, ptr %7, i32 -652
  %25 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bytesused.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp26 = icmp eq i32 %26, 0
  br i1 %cmp26, label %vb2_get_plane_payload.exit.if.then28_crit_edge, label %vb2_get_plane_payload.exit.if.end29_crit_edge

vb2_get_plane_payload.exit.if.end29_crit_edge:    ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

vb2_get_plane_payload.exit.if.then28_crit_edge:   ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.then28:                                        ; preds = %vb2_get_plane_payload.exit.if.then28_crit_edge, %list_del.exit.if.then28_crit_edge
  %27 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buffer_size, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %vb2_get_plane_payload.exit.if.end29_crit_edge
  %payload.0 = phi i32 [ %28, %if.then28 ], [ %26, %vb2_get_plane_payload.exit.if.end29_crit_edge ]
  %29 = ptrtoint ptr %tmp_dcm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tmp_dcm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp32 = icmp eq i32 %30, 1
  %31 = ptrtoint ptr %jpg_dma_head to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %jpg_dma_head, align 8
  %33 = ptrtoint ptr %jpg_err_shift52 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %jpg_err_shift52, align 4
  %sub36 = sub i32 %32, %34
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end29
  %and = and i32 %sub36, 3
  %35 = ptrtoint ptr %stat_com56 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %stat_com56, align 8
  %arrayidx = getelementptr i32, ptr %36, i32 %and
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx, align 4
  %and37 = and i32 %38, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.then34.while.end_crit_edge, label %if.end40

if.then34.while.end_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end40:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  %39 = tail call i32 @llvm.bswap.i32(i32 %22)
  %40 = ptrtoint ptr %stat_comb75 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %stat_comb75, align 8
  %mul = shl nuw nsw i32 %and, 1
  %arrayidx41 = getelementptr i32, ptr %41, i32 %mul
  %42 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %arrayidx41, align 4
  %shr = lshr i32 %payload.0, 1
  %or = or i32 %shr, 1
  %43 = tail call i32 @llvm.bswap.i32(i32 %or)
  %44 = ptrtoint ptr %stat_comb75 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stat_comb75, align 8
  %add = or i32 %mul, 1
  %arrayidx44 = getelementptr i32, ptr %45, i32 %add
  %46 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %arrayidx44, align 4
  %arrayidx45 = getelementptr %struct.zoran, ptr %zr, i32 0, i32 67, i32 %and
  %47 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr, ptr %arrayidx45, align 4
  %48 = ptrtoint ptr %p_scb62 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %p_scb62, align 4
  %mul47 = shl nuw nsw i32 %and, 3
  %add48 = add i32 %49, %mul47
  %50 = tail call i32 @llvm.bswap.i32(i32 %add48)
  %51 = ptrtoint ptr %stat_com56 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %stat_com56, align 8
  %arrayidx50 = getelementptr i32, ptr %52, i32 %and
  %53 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %50, ptr %arrayidx50, align 4
  br label %if.end89

if.else:                                          ; preds = %if.end29
  %and54 = shl i32 %sub36, 1
  %mul55 = and i32 %and54, 2
  %54 = ptrtoint ptr %stat_com56 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %stat_com56, align 8
  %arrayidx57 = getelementptr i32, ptr %55, i32 %mul55
  %56 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx57, align 4
  %and58 = and i32 %57, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.else.while.end_crit_edge, label %if.end61

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end61:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %p_scb62 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %p_scb62, align 4
  %mul63 = shl nuw nsw i32 %mul55, 1
  %mul64 = shl nuw nsw i32 %mul55, 3
  %add65 = add i32 %59, %mul64
  %60 = tail call i32 @llvm.bswap.i32(i32 %add65)
  %61 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx57, align 4
  %62 = ptrtoint ptr %p_scb62 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %p_scb62, align 4
  %add71 = add i32 %63, %mul64
  %64 = tail call i32 @llvm.bswap.i32(i32 %add71)
  %65 = ptrtoint ptr %stat_com56 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %stat_com56, align 8
  %add73 = or i32 %mul55, 1
  %arrayidx74 = getelementptr i32, ptr %66, i32 %add73
  %67 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %64, ptr %arrayidx74, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %22)
  %69 = ptrtoint ptr %stat_comb75 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %stat_comb75, align 8
  %arrayidx77 = getelementptr i32, ptr %70, i32 %mul63
  %71 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %68, ptr %arrayidx77, align 4
  %shr78 = lshr i32 %payload.0, 1
  %or79 = or i32 %shr78, 1
  %72 = tail call i32 @llvm.bswap.i32(i32 %or79)
  %73 = ptrtoint ptr %stat_comb75 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %stat_comb75, align 8
  %add82 = or i32 %mul63, 1
  %arrayidx83 = getelementptr i32, ptr %74, i32 %add82
  %75 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %72, ptr %arrayidx83, align 4
  %arrayidx85 = getelementptr %struct.zoran, ptr %zr, i32 0, i32 67, i32 %mul55
  %76 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %add.ptr, ptr %arrayidx85, align 4
  %arrayidx88 = getelementptr %struct.zoran, ptr %zr, i32 0, i32 67, i32 %add73
  %77 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %arrayidx88, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.end61, %if.end40
  %78 = ptrtoint ptr %jpg_dma_head to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %jpg_dma_head, align 8
  %inc = add i32 %79, 1
  store i32 %inc, ptr %jpg_dma_head, align 8
  %80 = ptrtoint ptr %jpg_dma_tail to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %jpg_dma_tail, align 4
  %sub = sub i32 %inc, %81
  %cmp6 = icmp ult i32 %sub, %cond
  br i1 %cmp6, label %if.end89.while.body_crit_edge, label %if.end89.while.end_crit_edge

if.end89.while.end_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end89.while.body_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end89.while.end_crit_edge, %if.else.while.end_crit_edge, %if.then34.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock, i32 noundef %call3) #6
  %codec_mode = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 25
  %82 = ptrtoint ptr %codec_mode to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %codec_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %83)
  %cmp92 = icmp eq i32 %83, 2
  br i1 %cmp92, label %if.then94, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then94:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %jpg_queued_num = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 34
  %84 = ptrtoint ptr %jpg_queued_num to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %jpg_queued_num, align 8
  %inc95 = add i32 %85, 1
  store i32 %inc95, ptr %jpg_queued_num, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then94, %while.end.cleanup_crit_edge, %do.end19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zoran_irq(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %zr36057_mem.i = getelementptr inbounds %struct.zoran, ptr %dev_id, i32 0, i32 19
  %0 = ptrtoint ptr %zr36057_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zr36057_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !83
  %3 = shl i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  %4 = and i32 %2, 120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.count_reset_interrupt.exit_crit_edge, label %if.then.i

entry.count_reset_interrupt.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %count_reset_interrupt.exit

if.then.i:                                        ; preds = %entry
  %5 = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not.i = icmp eq i32 %5, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end.i_crit_edge, label %do.body.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %zr36057_mem.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %zr36057_mem.i, align 8
  %add.ptr6.i = getelementptr i8, ptr %7, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 64) #6, !srcloc !86
  %intr_counter_GIRQ1.i = getelementptr inbounds %struct.zoran, ptr %dev_id, i32 0, i32 38
  %8 = ptrtoint ptr %intr_counter_GIRQ1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %intr_counter_GIRQ1.i, align 8
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %intr_counter_GIRQ1.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %if.then.i.if.end.i_crit_edge
  %10 = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not.i = icmp eq i32 %10, 0
  br i1 %tobool8.not.i, label %if.end.i.if.end16.i_crit_edge, label %do.body10.i

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

do.body10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %zr36057_mem.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %zr36057_mem.i, align 8
  %add.ptr14.i = getelementptr i8, ptr %12, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 32) #6, !srcloc !86
  %intr_counter_GIRQ0.i = getelementptr inbounds %struct.zoran, ptr %dev_id, i32 0, i32 39
  %13 = ptrtoint ptr %intr_counter_GIRQ0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %intr_counter_GIRQ0.i, align 4
  %inc15.i = add i32 %14, 1
  store i32 %inc15.i, ptr %intr_counter_GIRQ0.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.body10.i, %if.end.i.if.end16.i_crit_edge
  %15 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool18.not.i = icmp eq i32 %15, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end26.i_crit_edge, label %do.body20.i

if.end16.i.if.end26.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

do.body20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !159
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %zr36057_mem.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %zr36057_mem.i, align 8
  %add.ptr24.i = getelementptr i8, ptr %17, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 16) #6, !srcloc !86
  %intr_counter_cod_rep_irq.i = getelementptr inbounds %struct.zoran, ptr %dev_id, i32 0, i32 40
  %18 = ptrtoint ptr %intr_counter_cod_rep_irq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %intr_counter_cod_rep_irq.i, align 8
  %inc25.i = add i32 %19, 1
  store i32 %inc25.i, ptr %intr_counter_cod_rep_irq.i, align 8
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.body20.i, %if.end16.i.if.end26.i_crit_edge
  %20 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool28.not.i = icmp eq i32 %20, 0
  br i1 %tobool28.not.i, label %if.end26.i.count_reset_interrupt.exit_crit_edge, label %do.body30.i

if.end26.i.count_reset_interrupt.exit_crit_edge:  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %count_reset_interrupt.exit

do.body30.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !160
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %zr36057_mem.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %zr36057_mem.i, align 8
  %add.ptr34.i = getelementptr i8, ptr %22, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 8) #6, !srcloc !86
  %intr_counter_jpeg_rep_irq.i = getelementptr inbounds %struct.zoran, ptr %dev_id, i32 0, i32 41
  %23 = ptrtoint ptr %intr_counter_jpeg_rep_irq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %intr_counter_jpeg_rep_irq.i, align 4
  %inc35.i = add i32 %24, 1
  store i32 %inc35.i, ptr %intr_counter_jpeg_rep_irq.i, align 4
  br label %count_reset_interrupt.exit

count_reset_interrupt.exit:                       ; preds = %do.body30.i, %if.end26.i.count_reset_interrupt.exit_crit_edge, %entry.count_reset_interrupt.exit_crit_edge
  %and = and i32 %3, 1744830464
  %vsync_int = getelementptr inbounds %struct.zoran, ptr %dev_id, i32 0, i32 13, i32 14
  %25 = ptrtoint ptr %vsync_int to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vsync_int, align 8
  %and1 = and i32 %and, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %count_reset_interrupt.exit.if.end35_crit_edge, label %if.then

count_reset_interrupt.exit.if.end35_crit_edge:    ; preds = %count_reset_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then:                                          ; preds = %count_reset_interrupt.exit
  %running = getelementptr inbounds %struct.zoran, ptr %dev_id, i32 0, i32 59
  %27 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp = icmp eq i32 %28, 1
  br i1 %cmp, label %if.then2, label %if.end20

if.then2:                                         ; preds = %if.then
  %29 = ptrtoint ptr %zr36057_mem.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %zr36057_mem.i, align 8
  %add.ptr = getelementptr i8, ptr %30, i32 20
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !161
  %32 = and i32 %31, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp6 = icmp eq i32 %32, 0
  br i1 %cmp6, label %do.end, label %if.then2.if.end_crit_edge

if.then2.if.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %dev_id, i32 0, i32 17
  %33 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.25) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then2.if.end_crit_edge
  %35 = ptrtoint ptr %zr36057_mem.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %zr36057_mem.i, align 8
  %add.ptr11 = getelementptr i8, ptr %36, i32 20
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %38 = and i32 %37, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp16 = icmp eq i32 %38, 0
  br i1 %cmp16, label %if.then17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 @zr_set_buf(ptr noundef %dev_id) #6
  br label %cleanup

if.end20:                                         ; preds = %if.then
  %39 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool22.not = icmp eq i32 %39, 0
  br i1 %tobool22.not, label %if.end20.if.end35_crit_edge, label %if.then23

if.end20.if.end35_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then23:                                        ; preds = %if.end20
  %codec_mode = getelementptr inbounds %struct.zoran, ptr %dev_id, i32 0, i32 25
  %40 = ptrtoint ptr %codec_mode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %codec_mode, align 4
  %.off = add i32 %41, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end33, label %do.end30

do.end30:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev31 = getelementptr inbounds %struct.zoran, ptr %dev_id, i32 0, i32 17
  %42 = ptrtoint ptr %pci_dev31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci_dev31, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.28) #9
  br label %cleanup

if.end33:                                         ; preds = %if.then23
  %frame_num = getelementptr inbounds %struct.zoran, ptr %dev_id, i32 0, i32 58
  %44 = ptrtoint ptr %frame_num to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %frame_num, align 8
  %inc = add i32 %45, 1
  store i32 %inc, ptr %frame_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp.i = icmp eq i32 %41, 2
  br i1 %cmp.i, label %if.then.i54, label %if.end33.do.body1.i_crit_edge

if.end33.do.body1.i_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i

if.then.i54:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %jpg_seq_num.i = getelementptr inbounds %struct.zoran, ptr %dev_id, i32 0, i32 31
  %46 = ptrtoint ptr %jpg_seq_num.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %jpg_seq_num.i, align 4
  %inc.i53 = add i32 %47, 1
  store i32 %inc.i53, ptr %jpg_seq_num.i, align 4
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.then.i54, %if.end33.do.body1.i_crit_edge
  %queued_bufs_lock.i = getelementptr inbounds %struct.zoran, ptr %dev_id, i32 0, i32 66
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queued_bufs_lock.i) #6
  %jpg_dma_tail.i = getelementptr inbounds %struct.zoran, ptr %dev_id, i32 0, i32 29
  %jpg_dma_head.i = getelementptr inbounds %struct.zoran, ptr %dev_id, i32 0, i32 28
  %48 = ptrtoint ptr %jpg_dma_tail.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %jpg_dma_tail.i, align 4
  %50 = ptrtoint ptr %jpg_dma_head.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %jpg_dma_head.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp6116.i = icmp ult i32 %49, %51
  br i1 %cmp6116.i, label %while.body.lr.ph.i, label %do.body1.i.zoran_reap_stat_com.exit_crit_edge

do.body1.i.zoran_reap_stat_com.exit_crit_edge:    ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %zoran_reap_stat_com.exit

while.body.lr.ph.i:                               ; preds = %do.body1.i
  %tmp_dcm.i = getelementptr inbounds %struct.zoran, ptr %dev_id, i32 0, i32 26, i32 3
  %jpg_err_shift13.i = getelementptr inbounds %struct.zoran, ptr %dev_id, i32 0, i32 33
  %stat_com17.i = getelementptr inbounds %struct.zoran, ptr %dev_id, i32 0, i32 36
  %jpg_err_seq.i = getelementptr inbounds %struct.zoran, ptr %dev_id, i32 0, i32 32
  %jpg_seq_num37.i = getelementptr inbounds %struct.zoran, ptr %dev_id, i32 0, i32 31
  %odd_even.i = getelementptr inbounds %struct.zoran, ptr %dev_id, i32 0, i32 26, i32 5
  br label %while.body.i

while.body.i:                                     ; preds = %if.end42.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %52 = phi i32 [ %49, %while.body.lr.ph.i ], [ %inc72.i, %if.end42.i.while.body.i_crit_edge ]
  %53 = ptrtoint ptr %tmp_dcm.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tmp_dcm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp8.i = icmp eq i32 %54, 1
  %55 = ptrtoint ptr %jpg_err_shift13.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %jpg_err_shift13.i, align 4
  %sub.i = sub i32 %52, %56
  %and.i55 = and i32 %sub.i, 3
  %and15.i = shl i32 %sub.i, 1
  %mul.i = and i32 %and15.i, 2
  %add.i = or i32 %mul.i, 1
  %i.0.i = select i1 %cmp8.i, i32 %and.i55, i32 %add.i
  %57 = ptrtoint ptr %stat_com17.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %stat_com17.i, align 8
  %arrayidx.i = getelementptr i32, ptr %58, i32 %i.0.i
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #6
  %and18.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %cmp19.i = icmp eq i32 %and18.i, 0
  br i1 %cmp19.i, label %while.body.i.zoran_reap_stat_com.exit_crit_edge, label %if.end23.i

while.body.i.zoran_reap_stat_com.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %zoran_reap_stat_com.exit

if.end23.i:                                       ; preds = %while.body.i
  %arrayidx27.i = getelementptr %struct.zoran, ptr %dev_id, i32 0, i32 67, i32 %i.0.i
  %62 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx27.i, align 4
  %call.i.i = tail call i64 @ktime_get() #6
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  %65 = ptrtoint ptr %codec_mode to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %codec_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp30.i = icmp eq i32 %66, 1
  br i1 %cmp30.i, label %if.then32.i, label %if.end23.i.if.end42.i_crit_edge

if.end23.i.if.end42.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

if.then32.i:                                      ; preds = %if.end23.i
  %shr.i = lshr i32 %61, 24
  %num_planes.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %63, i32 0, i32 4
  %67 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.not.i.i = icmp eq i32 %68, 0
  br i1 %cmp.not.i.i, label %if.then32.i.vb2_set_plane_payload.exit.i_crit_edge, label %if.then.i.i

if.then32.i.vb2_set_plane_payload.exit.i_crit_edge: ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vb2_set_plane_payload.exit.i

if.then.i.i:                                      ; preds = %if.then32.i
  %and25.i = lshr i32 %61, 1
  %shr26.i = and i32 %and25.i, 4194303
  %length.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %63, i32 0, i32 10, i32 0, i32 4
  %69 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %length.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %shr26.i)
  %cmp1.i.i = icmp ult i32 %70, %shr26.i
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %if.then.i.i.if.end42.i.i_crit_edge

if.then.i.i.if.end42.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i.i

land.rhs.i.i:                                     ; preds = %if.then.i.i
  %.b1.i.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.if.then38.i.i_crit_edge, label %if.then8.i.i, !prof !163

land.rhs.i.i.if.then38.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38.i.i

if.then8.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 1163, i32 noundef 9, ptr noundef null) #6
  br label %if.then38.i.i

if.then38.i.i:                                    ; preds = %if.then8.i.i, %land.rhs.i.i.if.then38.i.i_crit_edge
  %71 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %length.i.i, align 8
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then38.i.i, %if.then.i.i.if.end42.i.i_crit_edge
  %size.addr.0.i.i = phi i32 [ %72, %if.then38.i.i ], [ %shr26.i, %if.then.i.i.if.end42.i.i_crit_edge ]
  %bytesused.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %63, i32 0, i32 10, i32 0, i32 3
  %73 = ptrtoint ptr %bytesused.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %size.addr.0.i.i, ptr %bytesused.i.i, align 4
  br label %vb2_set_plane_payload.exit.i

vb2_set_plane_payload.exit.i:                     ; preds = %if.end42.i.i, %if.then32.i.vb2_set_plane_payload.exit.i_crit_edge
  %74 = ptrtoint ptr %jpg_err_seq.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %jpg_err_seq.i, align 8
  %add35.i = add i32 %75, %shr.i
  %76 = ptrtoint ptr %jpg_seq_num37.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %jpg_seq_num37.i, align 4
  %sub38.i = sub i32 %add35.i, %77
  %and39.i = and i32 %sub38.i, 255
  %add41.i = add i32 %and39.i, %77
  store i32 %add41.i, ptr %jpg_seq_num37.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %vb2_set_plane_payload.exit.i, %if.end23.i.if.end42.i_crit_edge
  %78 = ptrtoint ptr %tmp_dcm.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tmp_dcm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %79)
  %cmp45.i = icmp eq i32 %79, 2
  %80 = ptrtoint ptr %jpg_seq_num37.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %jpg_seq_num37.i, align 4
  %shr48.i = zext i1 %cmp45.i to i32
  %cond.i = lshr i32 %81, %shr48.i
  %sequence.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %63, i32 0, i32 4
  %82 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %cond.i, ptr %sequence.i, align 8
  %83 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %arrayidx27.i, align 4
  %84 = ptrtoint ptr %tmp_dcm.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tmp_dcm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp55.not.i = icmp eq i32 %85, 1
  %86 = ptrtoint ptr %odd_even.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %odd_even.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool64.not.i = icmp eq i32 %87, 0
  %cond65.i = select i1 %tobool64.not.i, i32 6, i32 5
  %cond59.i = select i1 %tobool64.not.i, i32 3, i32 2
  %cond59.sink.i = select i1 %cmp55.not.i, i32 %cond65.i, i32 %cond59.i
  %88 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %63, i32 0, i32 2
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %cond59.sink.i, ptr %88, align 4
  tail call void @vb2_buffer_done(ptr noundef %63, i32 noundef 5) #6
  %90 = ptrtoint ptr %jpg_dma_tail.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %jpg_dma_tail.i, align 4
  %inc72.i = add i32 %91, 1
  store i32 %inc72.i, ptr %jpg_dma_tail.i, align 4
  %92 = ptrtoint ptr %jpg_dma_head.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %jpg_dma_head.i, align 8
  %cmp6.i = icmp ult i32 %inc72.i, %93
  br i1 %cmp6.i, label %if.end42.i.while.body.i_crit_edge, label %if.end42.i.zoran_reap_stat_com.exit_crit_edge

if.end42.i.zoran_reap_stat_com.exit_crit_edge:    ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %zoran_reap_stat_com.exit

if.end42.i.while.body.i_crit_edge:                ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

zoran_reap_stat_com.exit:                         ; preds = %if.end42.i.zoran_reap_stat_com.exit_crit_edge, %while.body.i.zoran_reap_stat_com.exit_crit_edge, %do.body1.i.zoran_reap_stat_com.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock.i, i32 noundef %call3.i) #6
  tail call void @zoran_feed_stat_com(ptr noundef %dev_id)
  br label %cleanup

if.end35:                                         ; preds = %if.end20.if.end35_crit_edge, %count_reset_interrupt.exit.if.end35_crit_edge
  %ghost_int = getelementptr inbounds %struct.zoran, ptr %dev_id, i32 0, i32 37
  %94 = ptrtoint ptr %ghost_int to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ghost_int, align 4
  %inc36 = add i32 %95, 1
  store i32 %inc36, ptr %ghost_int, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %zoran_reap_stat_com.exit, %do.end30, %if.then17, %if.end.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zr_set_buf(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zoran_set_pci_master(ptr nocapture noundef readonly %zr, i32 noundef %set_master) local_unnamed_addr #0 align 64 {
entry:
  %command = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set_master)
  %tobool.not = icmp eq i32 %set_master, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 8
  tail call void @pci_set_master(ptr noundef %1) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %command) #6
  %2 = ptrtoint ptr %command to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %command, align 2, !annotation !164
  %pci_dev1 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %3 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev1, align 8
  %call = call i32 @pci_read_config_word(ptr noundef %4, i32 noundef 4, ptr noundef nonnull %command) #6
  %5 = ptrtoint ptr %command to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %command, align 2
  %7 = and i16 %6, -5
  store i16 %7, ptr %command, align 2
  %8 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev1, align 8
  %call4 = call i32 @pci_write_config_word(ptr noundef %9, i32 noundef 4, i16 noundef zeroext %7) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %command) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zoran_init_hardware(ptr noundef %zr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %0 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev.i, align 8
  tail call void @pci_set_master(ptr noundef %1) #6
  %init = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 13, i32 22
  %2 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef %zr) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %decoder = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 7
  %4 = ptrtoint ptr %decoder to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %decoder, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end93_crit_edge, label %if.else

if.end.if.end93_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.else.if.end25_crit_edge, label %land.lhs.true

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

land.lhs.true:                                    ; preds = %if.else
  %init8 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %init8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init8, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %land.lhs.true.if.end25_crit_edge, label %if.else11

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.else11:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %12 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %if.else11.if.else18_crit_edge, label %land.lhs.true13

if.else11.if.else18_crit_edge:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else18

land.lhs.true13:                                  ; preds = %if.else11
  %init14 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %init14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init14, align 4
  %tobool15.not = icmp eq ptr %14, null
  br i1 %tobool15.not, label %land.lhs.true13.if.else18_crit_edge, label %land.lhs.true13.if.end25.sink.split_crit_edge

land.lhs.true13.if.end25.sink.split_crit_edge:    ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.sink.split

land.lhs.true13.if.else18_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else18

if.else18:                                        ; preds = %land.lhs.true13.if.else18_crit_edge, %if.else11.if.else18_crit_edge
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %if.else18, %land.lhs.true13.if.end25.sink.split_crit_edge
  %.sink = phi ptr [ %11, %if.else18 ], [ %14, %land.lhs.true13.if.end25.sink.split_crit_edge ]
  %call22 = tail call i32 %.sink(ptr noundef nonnull %5, i32 noundef 0) #6
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %land.lhs.true.if.end25_crit_edge, %if.else.if.end25_crit_edge
  %15 = ptrtoint ptr %decoder to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load ptr, ptr %decoder, align 4
  %tobool29.not = icmp eq ptr %.pr, null
  br i1 %tobool29.not, label %if.end25.if.end93_crit_edge, label %if.else31

if.end25.if.end93_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.else31:                                        ; preds = %if.end25
  %ops32 = getelementptr inbounds %struct.v4l2_subdev, ptr %.pr, i32 0, i32 6
  %16 = ptrtoint ptr %ops32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops32, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %video, align 4
  %tobool33.not = icmp eq ptr %19, null
  br i1 %tobool33.not, label %if.else31.if.end55_crit_edge, label %land.lhs.true34

if.else31.if.end55_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

land.lhs.true34:                                  ; preds = %if.else31
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_std, align 4
  %tobool37.not = icmp eq ptr %21, null
  br i1 %tobool37.not, label %land.lhs.true34.if.end55_crit_edge, label %if.else39

land.lhs.true34.if.end55_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.else39:                                        ; preds = %land.lhs.true34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool40.not = icmp eq ptr %22, null
  br i1 %tobool40.not, label %if.else39.if.else47_crit_edge, label %land.lhs.true41

if.else39.if.else47_crit_edge:                    ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else47

land.lhs.true41:                                  ; preds = %if.else39
  %s_std42 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %s_std42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_std42, align 4
  %tobool43.not = icmp eq ptr %24, null
  br i1 %tobool43.not, label %land.lhs.true41.if.else47_crit_edge, label %land.lhs.true41.if.end55.sink.split_crit_edge

land.lhs.true41.if.end55.sink.split_crit_edge:    ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55.sink.split

land.lhs.true41.if.else47_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else47

if.else47:                                        ; preds = %land.lhs.true41.if.else47_crit_edge, %if.else39.if.else47_crit_edge
  br label %if.end55.sink.split

if.end55.sink.split:                              ; preds = %if.else47, %land.lhs.true41.if.end55.sink.split_crit_edge
  %.sink275 = phi ptr [ %21, %if.else47 ], [ %24, %land.lhs.true41.if.end55.sink.split_crit_edge ]
  %norm51 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 22
  %25 = ptrtoint ptr %norm51 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %norm51, align 8
  %call52 = tail call i32 %.sink275(ptr noundef nonnull %.pr, i64 noundef %26) #6
  br label %if.end55

if.end55:                                         ; preds = %if.end55.sink.split, %land.lhs.true34.if.end55_crit_edge, %if.else31.if.end55_crit_edge
  %27 = ptrtoint ptr %decoder to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr268 = load ptr, ptr %decoder, align 4
  %tobool60.not = icmp eq ptr %.pr268, null
  br i1 %tobool60.not, label %if.end55.if.end93_crit_edge, label %if.else62

if.end55.if.end93_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.else62:                                        ; preds = %if.end55
  %ops63 = getelementptr inbounds %struct.v4l2_subdev, ptr %.pr268, i32 0, i32 6
  %28 = ptrtoint ptr %ops63 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops63, align 4
  %video64 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %video64 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %video64, align 4
  %tobool65.not = icmp eq ptr %31, null
  br i1 %tobool65.not, label %if.else62.if.end93_crit_edge, label %land.lhs.true66

if.else62.if.end93_crit_edge:                     ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

land.lhs.true66:                                  ; preds = %if.else62
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool69.not = icmp eq ptr %33, null
  br i1 %tobool69.not, label %land.lhs.true66.if.end93_crit_edge, label %if.else71

land.lhs.true66.if.end93_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.else71:                                        ; preds = %land.lhs.true66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool72.not = icmp eq ptr %34, null
  br i1 %tobool72.not, label %if.else71.if.else81_crit_edge, label %land.lhs.true73

if.else71.if.else81_crit_edge:                    ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else81

land.lhs.true73:                                  ; preds = %if.else71
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool75.not = icmp eq ptr %36, null
  br i1 %tobool75.not, label %land.lhs.true73.if.else81_crit_edge, label %land.lhs.true73.if.end93.sink.split_crit_edge

land.lhs.true73.if.end93.sink.split_crit_edge:    ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93.sink.split

land.lhs.true73.if.else81_crit_edge:              ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else81

if.else81:                                        ; preds = %land.lhs.true73.if.else81_crit_edge, %if.else71.if.else81_crit_edge
  br label %if.end93.sink.split

if.end93.sink.split:                              ; preds = %if.else81, %land.lhs.true73.if.end93.sink.split_crit_edge
  %.sink277 = phi ptr [ %33, %if.else81 ], [ %36, %land.lhs.true73.if.end93.sink.split_crit_edge ]
  %input87 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 21
  %37 = ptrtoint ptr %input87 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %input87, align 8
  %arrayidx88 = getelementptr %struct.zoran, ptr %zr, i32 0, i32 13, i32 10, i32 %38
  %39 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx88, align 4
  %call90 = tail call i32 %.sink277(ptr noundef nonnull %.pr268, i32 noundef %40, i32 noundef 0, i32 noundef 0) #6
  br label %if.end93

if.end93:                                         ; preds = %if.end93.sink.split, %land.lhs.true66.if.end93_crit_edge, %if.else62.if.end93_crit_edge, %if.end55.if.end93_crit_edge, %if.end25.if.end93_crit_edge, %if.end.if.end93_crit_edge
  %encoder = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 8
  %41 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %encoder, align 8
  %tobool97.not = icmp eq ptr %42, null
  br i1 %tobool97.not, label %if.end93.if.end189_crit_edge, label %if.else99

if.end93.if.end189_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end189

if.else99:                                        ; preds = %if.end93
  %ops100 = getelementptr inbounds %struct.v4l2_subdev, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %ops100 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops100, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %tobool102.not = icmp eq ptr %46, null
  br i1 %tobool102.not, label %if.else99.if.end124_crit_edge, label %land.lhs.true103

if.else99.if.end124_crit_edge:                    ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124

land.lhs.true103:                                 ; preds = %if.else99
  %init106 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %init106 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %init106, align 4
  %tobool107.not = icmp eq ptr %48, null
  br i1 %tobool107.not, label %land.lhs.true103.if.end124_crit_edge, label %if.else109

land.lhs.true103.if.end124_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124

if.else109:                                       ; preds = %land.lhs.true103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %49 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool110.not = icmp eq ptr %49, null
  br i1 %tobool110.not, label %if.else109.if.else117_crit_edge, label %land.lhs.true111

if.else109.if.else117_crit_edge:                  ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else117

land.lhs.true111:                                 ; preds = %if.else109
  %init112 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %init112 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %init112, align 4
  %tobool113.not = icmp eq ptr %51, null
  br i1 %tobool113.not, label %land.lhs.true111.if.else117_crit_edge, label %land.lhs.true111.if.end124.sink.split_crit_edge

land.lhs.true111.if.end124.sink.split_crit_edge:  ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124.sink.split

land.lhs.true111.if.else117_crit_edge:            ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else117

if.else117:                                       ; preds = %land.lhs.true111.if.else117_crit_edge, %if.else109.if.else117_crit_edge
  br label %if.end124.sink.split

if.end124.sink.split:                             ; preds = %if.else117, %land.lhs.true111.if.end124.sink.split_crit_edge
  %.sink279 = phi ptr [ %48, %if.else117 ], [ %51, %land.lhs.true111.if.end124.sink.split_crit_edge ]
  %call121 = tail call i32 %.sink279(ptr noundef nonnull %42, i32 noundef 0) #6
  br label %if.end124

if.end124:                                        ; preds = %if.end124.sink.split, %land.lhs.true103.if.end124_crit_edge, %if.else99.if.end124_crit_edge
  %52 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr270 = load ptr, ptr %encoder, align 8
  %tobool129.not = icmp eq ptr %.pr270, null
  br i1 %tobool129.not, label %if.end124.if.end189_crit_edge, label %if.else131

if.end124.if.end189_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end189

if.else131:                                       ; preds = %if.end124
  %ops132 = getelementptr inbounds %struct.v4l2_subdev, ptr %.pr270, i32 0, i32 6
  %53 = ptrtoint ptr %ops132 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops132, align 4
  %video133 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %video133 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %video133, align 4
  %tobool134.not = icmp eq ptr %56, null
  br i1 %tobool134.not, label %if.else131.if.end157_crit_edge, label %land.lhs.true135

if.else131.if.end157_crit_edge:                   ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end157

land.lhs.true135:                                 ; preds = %if.else131
  %s_std_output = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %s_std_output to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_std_output, align 4
  %tobool138.not = icmp eq ptr %58, null
  br i1 %tobool138.not, label %land.lhs.true135.if.end157_crit_edge, label %if.else140

land.lhs.true135.if.end157_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end157

if.else140:                                       ; preds = %land.lhs.true135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool141.not = icmp eq ptr %59, null
  br i1 %tobool141.not, label %if.else140.if.else149_crit_edge, label %land.lhs.true142

if.else140.if.else149_crit_edge:                  ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else149

land.lhs.true142:                                 ; preds = %if.else140
  %s_std_output143 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %s_std_output143 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_std_output143, align 4
  %tobool144.not = icmp eq ptr %61, null
  br i1 %tobool144.not, label %land.lhs.true142.if.else149_crit_edge, label %land.lhs.true142.if.end157.sink.split_crit_edge

land.lhs.true142.if.end157.sink.split_crit_edge:  ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end157.sink.split

land.lhs.true142.if.else149_crit_edge:            ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else149

if.else149:                                       ; preds = %land.lhs.true142.if.else149_crit_edge, %if.else140.if.else149_crit_edge
  br label %if.end157.sink.split

if.end157.sink.split:                             ; preds = %if.else149, %land.lhs.true142.if.end157.sink.split_crit_edge
  %.sink281 = phi ptr [ %58, %if.else149 ], [ %61, %land.lhs.true142.if.end157.sink.split_crit_edge ]
  %norm153 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 22
  %62 = ptrtoint ptr %norm153 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %norm153, align 8
  %call154 = tail call i32 %.sink281(ptr noundef nonnull %.pr270, i64 noundef %63) #6
  br label %if.end157

if.end157:                                        ; preds = %if.end157.sink.split, %land.lhs.true135.if.end157_crit_edge, %if.else131.if.end157_crit_edge
  %64 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr272 = load ptr, ptr %encoder, align 8
  %tobool162.not = icmp eq ptr %.pr272, null
  br i1 %tobool162.not, label %if.end157.if.end189_crit_edge, label %if.else164

if.end157.if.end189_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end189

if.else164:                                       ; preds = %if.end157
  %ops165 = getelementptr inbounds %struct.v4l2_subdev, ptr %.pr272, i32 0, i32 6
  %65 = ptrtoint ptr %ops165 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops165, align 4
  %video166 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %video166 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %video166, align 4
  %tobool167.not = icmp eq ptr %68, null
  br i1 %tobool167.not, label %if.else164.if.end189_crit_edge, label %land.lhs.true168

if.else164.if.end189_crit_edge:                   ; preds = %if.else164
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end189

land.lhs.true168:                                 ; preds = %if.else164
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %tobool172.not = icmp eq ptr %70, null
  br i1 %tobool172.not, label %land.lhs.true168.if.end189_crit_edge, label %if.else174

land.lhs.true168.if.end189_crit_edge:             ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end189

if.else174:                                       ; preds = %land.lhs.true168
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool175.not = icmp eq ptr %71, null
  br i1 %tobool175.not, label %if.else174.if.else182_crit_edge, label %land.lhs.true176

if.else174.if.else182_crit_edge:                  ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else182

land.lhs.true176:                                 ; preds = %if.else174
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %tobool178.not = icmp eq ptr %73, null
  br i1 %tobool178.not, label %land.lhs.true176.if.else182_crit_edge, label %land.lhs.true176.if.end189.sink.split_crit_edge

land.lhs.true176.if.end189.sink.split_crit_edge:  ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end189.sink.split

land.lhs.true176.if.else182_crit_edge:            ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else182

if.else182:                                       ; preds = %land.lhs.true176.if.else182_crit_edge, %if.else174.if.else182_crit_edge
  br label %if.end189.sink.split

if.end189.sink.split:                             ; preds = %if.else182, %land.lhs.true176.if.end189.sink.split_crit_edge
  %.sink282 = phi ptr [ %70, %if.else182 ], [ %73, %land.lhs.true176.if.end189.sink.split_crit_edge ]
  %call186 = tail call i32 %.sink282(ptr noundef nonnull %.pr272, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %if.end189

if.end189:                                        ; preds = %if.end189.sink.split, %land.lhs.true168.if.end189_crit_edge, %if.else164.if.end189_crit_edge, %if.end157.if.end189_crit_edge, %if.end124.if.end189_crit_edge, %if.end93.if.end189_crit_edge
  tail call void @jpeg_codec_sleep(ptr noundef %zr, i32 noundef 1)
  tail call void @jpeg_codec_sleep(ptr noundef %zr, i32 noundef 0)
  %zr36057_mem.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 19
  %74 = ptrtoint ptr %zr36057_mem.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %zr36057_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %75, i32 8
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !165
  %77 = and i32 %76, -16777224
  %78 = or i32 %77, 16777222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !166
  tail call void @arm_heavy_mb() #6
  %79 = ptrtoint ptr %zr36057_mem.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %zr36057_mem.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %80, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %78) #6, !srcloc !86
  %81 = ptrtoint ptr %zr36057_mem.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %zr36057_mem.i, align 8
  %add.ptr9.i = getelementptr i8, ptr %82, i32 24
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !167
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_pci_problems to i32))
  %84 = load i32, ptr @pci_pci_problems, align 4
  %85 = and i32 %83, -2
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #6
  %and13.i = shl i32 %84, 23
  %87 = and i32 %and13.i, 16777216
  %88 = or i32 %87, %86
  %reg.0.i = xor i32 %88, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  tail call void @arm_heavy_mb() #6
  %89 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #6
  %90 = ptrtoint ptr %zr36057_mem.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %zr36057_mem.i, align 8
  %add.ptr20.i = getelementptr i8, ptr %91, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %89) #6, !srcloc !86
  tail call void @zr36057_enable_jpg(ptr noundef %zr, i32 noundef 0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !169
  tail call void @arm_heavy_mb() #6
  %92 = ptrtoint ptr %zr36057_mem.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %zr36057_mem.i, align 8
  %add.ptr = getelementptr i8, ptr %93, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 104) #6, !srcloc !86
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zr36057_restart(ptr nocapture noundef readonly %zr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  tail call void @arm_heavy_mb() #6
  %zr36057_mem = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 19
  %0 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !171
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr4 = getelementptr i8, ptr %4, i32 40
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !172
  %6 = or i32 %5, 1
  %7 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr7 = getelementptr i8, ptr %8, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %6) #6, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !173
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr11 = getelementptr i8, ptr %11, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !174
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr15 = getelementptr i8, ptr %13, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 1) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !175
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr19 = getelementptr i8, ptr %15, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 -2004352895) #6, !srcloc !86
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__param_lml33dpath, !1, !"__param_lml33dpath", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/zoran/zoran_device.c", i32 50, i32 1}
!2 = !{ptr @__UNIQUE_ID_lml33dpathtype300, !1, !"__UNIQUE_ID_lml33dpathtype300", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_lml33dpath301, !4, !"__UNIQUE_ID_lml33dpath301", i1 false, i1 false}
!4 = !{!"../drivers/staging/media/zoran/zoran_device.c", i32 51, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/staging/media/zoran/zoran_device.c", i32 118, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @post_office_wait._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @post_office_wait._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/media/zoran/zoran_device.c", i32 158, i32 3}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @jpeg_codec_sleep.__UNIQUE_ID_ddebug302, !14, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/media/zoran/zoran_device.c", i32 161, i32 3}
!20 = !{ptr @jpeg_codec_sleep.__UNIQUE_ID_ddebug303, !19, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/media/zoran/zoran_device.c", i32 345, i32 4}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @zr36057_set_memgrab._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @zr36057_set_memgrab._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/media/zoran/zoran_device.c", i32 602, i32 2}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @jpeg_start.__UNIQUE_ID_ddebug304, !28, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/media/zoran/zoran_device.c", i32 667, i32 3}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @zr36057_enable_jpg._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @zr36057_enable_jpg._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/media/zoran/zoran_device.c", i32 696, i32 3}
!38 = !{ptr @zr36057_enable_jpg._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @zr36057_enable_jpg._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/media/zoran/zoran_device.c", i32 723, i32 3}
!42 = !{ptr @zr36057_enable_jpg._entry.19, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @zr36057_enable_jpg._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/media/zoran/zoran_device.c", i32 748, i32 4}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @zoran_feed_stat_com._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @zoran_feed_stat_com._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/media/zoran/zoran_device.c", i32 865, i32 5}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @zoran_irq._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @zoran_irq._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/media/zoran/zoran_device.c", i32 873, i32 5}
!57 = !{ptr @zoran_irq._entry.27, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @zoran_irq._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @lml33dpath, !60, !"lml33dpath", i1 false, i1 false}
!60 = !{!"../drivers/staging/media/zoran/zoran_device.c", i32 39, i32 13}
!61 = !{ptr @__param_str_lml33dpath, !1, !"__param_str_lml33dpath", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/media/zoran/zoran_device.c", i32 242, i32 2}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @zr36057_set_vfe._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @zr36057_set_vfe._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/staging/media/zoran/zoran_device.c", i32 247, i32 3}
!69 = !{ptr @zr36057_set_vfe._entry.32, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @zr36057_set_vfe._entry_ptr.34, !68, !"_entry_ptr", i1 false, i1 false}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!73 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 4640726}
!84 = !{i64 2156722800}
!85 = !{i64 2156723083}
!86 = !{i64 4640308}
!87 = !{i64 2156724385}
!88 = !{i64 2156726665}
!89 = !{i64 2156727229}
!90 = !{i64 2156727995}
!91 = !{i64 2148715931, i64 2148715936, i64 2148715949, i64 2148715993, i64 2148716027, i64 2148716048}
!92 = !{i64 2156731134}
!93 = !{i64 2156734831}
!94 = !{i64 2156754770}
!95 = !{i64 2156757550}
!96 = !{i64 2156759489}
!97 = !{i64 2156760509}
!98 = !{i64 2156762101}
!99 = !{i64 2156763148}
!100 = !{i64 2156751848}
!101 = !{i64 2156752528}
!102 = !{i64 2156753346}
!103 = !{i64 2156754004}
!104 = !{i64 2156764634}
!105 = !{i64 2156765657}
!106 = !{i64 2156767260}
!107 = !{i64 2156768316}
!108 = !{i64 2156769914}
!109 = !{i64 2156770967}
!110 = !{i64 2156788069}
!111 = !{i64 2156789927}
!112 = !{i64 2156790983}
!113 = !{i64 2156792575}
!114 = !{i64 2156793622}
!115 = !{i64 2156794432}
!116 = !{i64 2156795505}
!117 = !{i64 2156796217}
!118 = !{i64 2156797996}
!119 = !{i64 2156799043}
!120 = !{i64 2156800635}
!121 = !{i64 2156801682}
!122 = !{i64 2156812203}
!123 = !{i64 2156813325}
!124 = !{i64 2156813796}
!125 = !{i64 2156815712}
!126 = !{i64 2156816765}
!127 = !{i64 2156818362}
!128 = !{i64 2156819412}
!129 = !{i64 2156819705}
!130 = !{i64 2156821480}
!131 = !{i64 2156822533}
!132 = !{i64 2156824131}
!133 = !{i64 2156825184}
!134 = !{i8 0, i8 2}
!135 = !{i64 2156771522}
!136 = !{i64 2156772358}
!137 = !{i64 2156774138}
!138 = !{i64 2156775188}
!139 = !{i64 2156775490}
!140 = !{i64 2156775975}
!141 = !{i64 2156781766}
!142 = !{i64 2156782251}
!143 = !{i64 2156782813}
!144 = !{i64 2156783303}
!145 = !{i64 2156783798}
!146 = !{i64 2156738564}
!147 = !{i64 2156739620}
!148 = !{i64 2156740203}
!149 = !{i64 2156740486}
!150 = !{i64 2156742853}
!151 = !{i64 2156743909}
!152 = !{i64 2156745506}
!153 = !{i64 2156746556}
!154 = !{i64 2156747139}
!155 = !{i64 2156747422}
!156 = !{i64 2156784564}
!157 = !{i64 2156785065}
!158 = !{i64 2156785838}
!159 = !{i64 2156786611}
!160 = !{i64 2156787384}
!161 = !{i64 2156838319}
!162 = !{i64 2156840742}
!163 = !{!"branch_weights", i32 2000, i32 1}
!164 = !{!"auto-init"}
!165 = !{i64 2156720271}
!166 = !{i64 2156720815}
!167 = !{i64 2156721581}
!168 = !{i64 2156722034}
!169 = !{i64 2156847261}
!170 = !{i64 2156848010}
!171 = !{i64 2156850338}
!172 = !{i64 2156851388}
!173 = !{i64 2156852235}
!174 = !{i64 2156852851}
!175 = !{i64 2156853454}
