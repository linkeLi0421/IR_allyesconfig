; ModuleID = '/llk/IR_all_yes/drivers/media/pci/bt8xx/dvb-bt8xx.c_pt.bc'
source_filename = "../drivers/media/pci/bt8xx/dvb-bt8xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.bttv_sub_driver = type { %struct.device_driver, [20 x i8], ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bt878 = type { %struct.mutex, i32, i32, ptr, ptr, i32, i32, i8, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, %struct.tasklet_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.139, i32 }
%union.anon.139 = type { ptr }
%struct.mt352_config = type { i8, i32, i32, i32, ptr }
%struct.zl10353_config = type { i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.lgdt330x_config = type { i32, i32, ptr, ptr, i32, ptr }
%struct.nxt6000_config = type { i8, i8 }
%struct.sp887x_config = type { i8, ptr }
%struct.dst_config = type { i8 }
%struct.cx24110_config = type { i8 }
%struct.or51211_config = type { i8, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.bttv_sub_device = type { %struct.device, ptr, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.bttv_core = type { %struct.v4l2_device, ptr, %struct.i2c_adapter, %struct.list_head, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.dvb_bt8xx_card = type { %struct.mutex, i32, [32 x i8], %struct.dvb_adapter, ptr, i32, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, i32, i32, i32, ptr, %struct.dvb_net, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.138, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.138 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.145], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.145 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.146 }>
%union.anon.146 = type { i64 }
%struct.dst_state = type { ptr, ptr, ptr, %struct.dvb_frontend, [10 x i8], [10 x i8], [10 x i8], i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i8, i32, i32, i8, i32, i32, [256 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], i32, ptr, %struct.mutex, [8 x i8], ptr }
%struct.dvb_demux_feed = type { %union.anon.140, %union.anon.141, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.140 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.141 = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_debug = internal constant [16 x i8] c"dvb_bt8xx.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype385 = internal constant [29 x i8] c"dvb_bt8xx.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug386 = internal constant [58 x i8] c"dvb_bt8xx.parm=debug:Turn on/off debugging (default:off).\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [21 x i8] c"dvb_bt8xx.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype387 = internal constant [45 x i8] c"dvb_bt8xx.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr388 = internal constant [46 x i8] c"dvb_bt8xx.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@driver = internal global { %struct.bttv_sub_driver, [56 x i8] } { %struct.bttv_sub_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [20 x i8] zeroinitializer, ptr @dvb_bt8xx_probe, ptr @dvb_bt8xx_remove }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_dvb_bt8xx__389_959_dvb_bt8xx_init6 = internal global ptr @dvb_bt8xx_init, section ".initcall6.init", align 4
@__exitcall_dvb_bt8xx_exit = internal global ptr @dvb_bt8xx_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description390 = internal constant [53 x i8] c"dvb_bt8xx.description=Bt8xx based DVB adapter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author391 = internal constant [52 x i8] c"dvb_bt8xx.author=Florian Schirmer <jolt@tuxbox.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file392 = internal constant [49 x i8] c"dvb_bt8xx.file=drivers/media/pci/bt8xx/dvb-bt8xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license393 = internal constant [22 x i8] c"dvb_bt8xx.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dvb-bt8xx\00", [22 x i8] zeroinitializer }, align 32
@dvb_bt8xx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&card->lock\00", [20 x i8] zeroinitializer }, align 32
@dvb_bt8xx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013dvb_bt8xx: Unknown bttv card type: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dvb_bt8xx_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/pci/bt8xx/dvb-bt8xx.c\00", [60 x i8] zeroinitializer }, align 32
@dvb_bt8xx_probe._entry_ptr = internal global ptr @dvb_bt8xx_probe._entry, section ".printk_index", align 4
@dvb_bt8xx_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017dvb_bt8xx: %s: dvb_bt8xx: identified card%d as %s\0A\00", [43 x i8] zeroinitializer }, align 32
@dvb_bt8xx_probe._entry_ptr.7 = internal global ptr @dvb_bt8xx_probe._entry.5, section ".printk_index", align 4
@dvb_bt8xx_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013dvb_bt8xx: no pci device for card %d\0A\00", [56 x i8] zeroinitializer }, align 32
@dvb_bt8xx_probe._entry_ptr.10 = internal global ptr @dvb_bt8xx_probe._entry.8, section ".printk_index", align 4
@dvb_bt8xx_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013dvb_bt8xx: unable to determine DMA core of card %d,\0A\00", [41 x i8] zeroinitializer }, align 32
@dvb_bt8xx_probe._entry_ptr.13 = internal global ptr @dvb_bt8xx_probe._entry.11, section ".printk_index", align 4
@dvb_bt8xx_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 896, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013dvb_bt8xx: if you have the ALSA bt87x audio driver installed, try removing it.\0A\00", [46 x i8] zeroinitializer }, align 32
@dvb_bt8xx_probe._entry_ptr.16 = internal global ptr @dvb_bt8xx_probe._entry.14, section ".printk_index", align 4
@dvb_bt8xx_probe.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&card->bt->gpio_lock\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bt878_num = external dso_local local_unnamed_addr global i32, align 4
@bt878 = external dso_local global [4 x %struct.bt878], align 4
@dvb_bt8xx_load_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013dvb_bt8xx: dvb_register_adapter failed (errno = %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dvb_bt8xx_load_card\00", [44 x i8] zeroinitializer }, align 32
@dvb_bt8xx_load_card._entry_ptr = internal global ptr @dvb_bt8xx_load_card._entry, section ".printk_index", align 4
@dvb_bt8xx_load_card._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013dvb_bt8xx: dvb_dmx_init failed (errno = %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_bt8xx_load_card._entry_ptr.23 = internal global ptr @dvb_bt8xx_load_card._entry.21, section ".printk_index", align 4
@dvb_bt8xx_load_card._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.4, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013dvb_bt8xx: dvb_dmxdev_init failed (errno = %d)\0A\00", [46 x i8] zeroinitializer }, align 32
@dvb_bt8xx_load_card._entry_ptr.26 = internal global ptr @dvb_bt8xx_load_card._entry.24, section ".printk_index", align 4
@dvb_bt8xx_load_card._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_bt8xx_load_card._entry_ptr.28 = internal global ptr @dvb_bt8xx_load_card._entry.27, section ".printk_index", align 4
@dvb_bt8xx_load_card._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_bt8xx_load_card._entry_ptr.30 = internal global ptr @dvb_bt8xx_load_card._entry.29, section ".printk_index", align 4
@dvb_bt8xx_load_card._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_bt8xx_load_card._entry_ptr.32 = internal global ptr @dvb_bt8xx_load_card._entry.31, section ".printk_index", align 4
@dvb_bt8xx_load_card._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.20, ptr @.str.4, i32 777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013dvb_bt8xx: dvb_net_init failed (errno = %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_bt8xx_load_card._entry_ptr.35 = internal global ptr @dvb_bt8xx_load_card._entry.33, section ".printk_index", align 4
@dvb_bt8xx_start_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017dvb_bt8xx: %s: dvb_bt8xx: start_feed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dvb_bt8xx_start_feed\00", [43 x i8] zeroinitializer }, align 32
@dvb_bt8xx_start_feed._entry_ptr = internal global ptr @dvb_bt8xx_start_feed._entry, section ".printk_index", align 4
@dvb_bt8xx_stop_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017dvb_bt8xx: %s: dvb_bt8xx: stop_feed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dvb_bt8xx_stop_feed\00", [44 x i8] zeroinitializer }, align 32
@dvb_bt8xx_stop_feed._entry_ptr = internal global ptr @dvb_bt8xx_stop_feed._entry, section ".printk_index", align 4
@dvb_bt8xx_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017dvb_bt8xx: %s: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_bt8xx_task\00", [17 x i8] zeroinitializer }, align 32
@dvb_bt8xx_task._entry_ptr = internal global ptr @dvb_bt8xx_task._entry, section ".printk_index", align 4
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt352_attach\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"symbol:mt352_attach\00", [44 x i8] zeroinitializer }, align 32
@thomson_dtt7579_config = internal global { %struct.mt352_config, [44 x i8] } { %struct.mt352_config { i8 15, i32 0, i32 0, i32 0, ptr @thomson_dtt7579_demod_init }, [44 x i8] zeroinitializer }, align 32
@frontend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013DVB: Unable to find symbol mt352_attach()\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"frontend_init\00", [18 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr = internal global ptr @frontend_init._entry, section ".printk_index", align 4
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zl10353_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:zl10353_attach\00", [42 x i8] zeroinitializer }, align 32
@thomson_dtt7579_zl10353_config = internal global { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.45, ptr @.str.4, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol zl10353_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.50 = internal global ptr @frontend_init._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lgdt330x_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:lgdt330x_attach\00", [41 x i8] zeroinitializer }, align 32
@tdvs_tua6034_config = internal global { %struct.lgdt330x_config, [40 x i8] } { %struct.lgdt330x_config { i32 2, i32 64, ptr null, ptr null, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.45, ptr @.str.4, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol lgdt330x_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.55 = internal global ptr @frontend_init._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"simple_tuner_attach\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"symbol:simple_tuner_attach\00", [37 x i8] zeroinitializer }, align 32
@frontend_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.45, ptr @.str.4, i32 608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013DVB: Unable to find symbol simple_tuner_attach()\0A\00", [44 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.60 = internal global ptr @frontend_init._entry.58, section ".printk_index", align 4
@frontend_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.45, ptr @.str.4, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017dvb_bt8xx: %s: dvb_bt8xx: lgdt330x detected\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.63 = internal global ptr @frontend_init._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nxt6000_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:nxt6000_attach\00", [42 x i8] zeroinitializer }, align 32
@vp3021_alps_tded4_config = internal global { %struct.nxt6000_config, [30 x i8] } { %struct.nxt6000_config { i8 10, i8 -128 }, [30 x i8] zeroinitializer }, align 32
@frontend_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.45, ptr @.str.4, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol nxt6000_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.68 = internal global ptr @frontend_init._entry.66, section ".printk_index", align 4
@frontend_init._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.45, ptr @.str.4, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\017dvb_bt8xx: %s: dvb_bt8xx: an nxt6000 was detected on your digitv card\0A\00", [55 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.71 = internal global ptr @frontend_init._entry.69, section ".printk_index", align 4
@digitv_alps_tded4_config = internal global { %struct.mt352_config, [44 x i8] } { %struct.mt352_config { i8 10, i32 0, i32 0, i32 0, ptr @digitv_alps_tded4_demod_init }, [44 x i8] zeroinitializer }, align 32
@frontend_init._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.73 = internal global ptr @frontend_init._entry.72, section ".printk_index", align 4
@frontend_init._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.45, ptr @.str.4, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\017dvb_bt8xx: %s: dvb_bt8xx: an mt352 was detected on your digitv card\0A\00", [57 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.76 = internal global ptr @frontend_init._entry.74, section ".printk_index", align 4
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sp887x_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:sp887x_attach\00", [43 x i8] zeroinitializer }, align 32
@microtune_mt7202dtf_config = internal constant { %struct.sp887x_config, [24 x i8] } { %struct.sp887x_config { i8 112, ptr @microtune_mt7202dtf_request_firmware }, [24 x i8] zeroinitializer }, align 32
@frontend_init._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.45, ptr @.str.4, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol sp887x_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.81 = internal global ptr @frontend_init._entry.79, section ".printk_index", align 4
@advbt771_samsung_tdtc9251dh0_config = internal global { %struct.mt352_config, [44 x i8] } { %struct.mt352_config { i8 15, i32 0, i32 0, i32 0, ptr @advbt771_samsung_tdtc9251dh0_demod_init }, [44 x i8] zeroinitializer }, align 32
@frontend_init._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.83 = internal global ptr @frontend_init._entry.82, section ".printk_index", align 4
@frontend_init._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.45, ptr @.str.4, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013dvb_bt8xx: No memory\0A\00", [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.86 = internal global ptr @frontend_init._entry.84, section ".printk_index", align 4
@dst_config = internal constant { %struct.dst_config, [31 x i8] } { %struct.dst_config { i8 85 }, [31 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dst_attach\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"symbol:dst_attach\00", [46 x i8] zeroinitializer }, align 32
@frontend_init._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.45, ptr @.str.4, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013DVB: Unable to find symbol dst_attach()\0A\00", [53 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.91 = internal global ptr @frontend_init._entry.89, section ".printk_index", align 4
@frontend_init._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.45, ptr @.str.4, i32 668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013dvb_bt8xx: %s: Could not find a Twinhan DST\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.94 = internal global ptr @frontend_init._entry.92, section ".printk_index", align 4
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dst_ca_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:dst_ca_attach\00", [43 x i8] zeroinitializer }, align 32
@frontend_init._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.45, ptr @.str.4, i32 676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol dst_ca_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.99 = internal global ptr @frontend_init._entry.97, section ".printk_index", align 4
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx24110_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:cx24110_attach\00", [42 x i8] zeroinitializer }, align 32
@pctvsat_config = internal global { %struct.cx24110_config, [31 x i8] } { %struct.cx24110_config { i8 85 }, [31 x i8] zeroinitializer }, align 32
@frontend_init._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.45, ptr @.str.4, i32 680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol cx24110_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.104 = internal global ptr @frontend_init._entry.102, section ".printk_index", align 4
@.str.105 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"or51211_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:or51211_attach\00", [42 x i8] zeroinitializer }, align 32
@or51211_config = internal constant { %struct.or51211_config, [44 x i8] } { %struct.or51211_config { i8 21, ptr @or51211_request_firmware, ptr @or51211_setmode, ptr @or51211_reset, ptr @or51211_sleep }, [44 x i8] zeroinitializer }, align 32
@frontend_init._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.45, ptr @.str.4, i32 689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol or51211_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.109 = internal global ptr @frontend_init._entry.107, section ".printk_index", align 4
@frontend_init._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.45, ptr @.str.4, i32 693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.111 = internal global ptr @frontend_init._entry.110, section ".printk_index", align 4
@frontend_init._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.45, ptr @.str.4, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\013dvb_bt8xx: A frontend driver was not found for device [%04x:%04x] subsystem [%04x:%04x]\0A\00", [37 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.114 = internal global ptr @frontend_init._entry.112, section ".printk_index", align 4
@frontend_init._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.45, ptr @.str.4, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013dvb_bt8xx: Frontend registration failed!\0A\00", [52 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.117 = internal global ptr @frontend_init._entry.115, section ".printk_index", align 4
@thomson_dtt7579_demod_init.mt352_clock_config = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\8988", [29 x i8] zeroinitializer }, align 32
@thomson_dtt7579_demod_init.mt352_reset = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"P\80", [30 x i8] zeroinitializer }, align 32
@thomson_dtt7579_demod_init.mt352_adc_ctl_1_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\8E@", [30 x i8] zeroinitializer }, align 32
@thomson_dtt7579_demod_init.mt352_agc_cfg = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"g( ", [29 x i8] zeroinitializer }, align 32
@thomson_dtt7579_demod_init.mt352_gpp_ctl_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\8C3", [30 x i8] zeroinitializer }, align 32
@thomson_dtt7579_demod_init.mt352_capt_range_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"u2", [30 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@digitv_alps_tded4_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.4, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014dvb_bt8xx: digitv_alps_tded4: Init Error - Can't Reset DVR (%i)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"digitv_alps_tded4_reset\00", [40 x i8] zeroinitializer }, align 32
@digitv_alps_tded4_reset._entry_ptr = internal global ptr @digitv_alps_tded4_reset._entry, section ".printk_index", align 4
@digitv_alps_tded4_demod_init.mt352_clock_config = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\898-", [29 x i8] zeroinitializer }, align 32
@digitv_alps_tded4_demod_init.mt352_reset = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"P\80", [30 x i8] zeroinitializer }, align 32
@digitv_alps_tded4_demod_init.mt352_adc_ctl_1_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\8E@", [30 x i8] zeroinitializer }, align 32
@digitv_alps_tded4_demod_init.mt352_agc_cfg = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"g \A0", [29 x i8] zeroinitializer }, align 32
@digitv_alps_tded4_demod_init.mt352_capt_range_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"u2", [30 x i8] zeroinitializer }, align 32
@digitv_alps_tded4_tuner_calc_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.4, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017dvb_bt8xx: %s: frequency %u, div %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"digitv_alps_tded4_tuner_calc_regs\00", [62 x i8] zeroinitializer }, align 32
@digitv_alps_tded4_tuner_calc_regs._entry_ptr = internal global ptr @digitv_alps_tded4_tuner_calc_regs._entry, section ".printk_index", align 4
@advbt771_samsung_tdtc9251dh0_demod_init.mt352_clock_config = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\898-", [29 x i8] zeroinitializer }, align 32
@advbt771_samsung_tdtc9251dh0_demod_init.mt352_reset = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"P\80", [30 x i8] zeroinitializer }, align 32
@advbt771_samsung_tdtc9251dh0_demod_init.mt352_adc_ctl_1_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\8E@", [30 x i8] zeroinitializer }, align 32
@advbt771_samsung_tdtc9251dh0_demod_init.mt352_agc_cfg = internal global { [11 x i8], [21 x i8] } { [11 x i8] c"g\10#\00\FF\FF\00\FF\00@@", [21 x i8] zeroinitializer }, align 32
@advbt771_samsung_tdtc9251dh0_demod_init.mt352_av771_extra = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\B5z", [30 x i8] zeroinitializer }, align 32
@advbt771_samsung_tdtc9251dh0_demod_init.mt352_capt_range_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"u2", [30 x i8] zeroinitializer }, align 32
@__const.cx24108_tuner_set_params.osci = private unnamed_addr constant [11 x i32] [i32 950000, i32 1019000, i32 1075000, i32 1178000, i32 1296000, i32 1432000, i32 1576000, i32 1718000, i32 1856000, i32 2036000, i32 2150000], align 4
@__const.cx24108_tuner_set_params.bandsel = private unnamed_addr constant [11 x i32] [i32 0, i32 131072, i32 262144, i32 1050624, i32 1052672, i32 1056768, i32 1064960, i32 1081344, i32 1114112, i32 1179648, i32 1310720], align 4
@cx24108_tuner_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.4, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017dvb_bt8xx: %s: cx24108 debug: entering SetTunerFreq, freq=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cx24108_tuner_set_params\00", [39 x i8] zeroinitializer }, align 32
@cx24108_tuner_set_params._entry_ptr = internal global ptr @cx24108_tuner_set_params._entry, section ".printk_index", align 4
@cx24108_tuner_set_params._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.123, ptr @.str.4, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017dvb_bt8xx: %s: cx24108 debug: select vco #%d (f=%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@cx24108_tuner_set_params._entry_ptr.126 = internal global ptr @cx24108_tuner_set_params._entry.124, section ".printk_index", align 4
@cx24108_tuner_set_params._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.123, ptr @.str.4, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017dvb_bt8xx: %s: cx24108 debug: pump=%d, n=%d, a=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@cx24108_tuner_set_params._entry_ptr.129 = internal global ptr @cx24108_tuner_set_params._entry.127, section ".printk_index", align 4
@or51211_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.4, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014dvb_bt8xx: or51211: Init Error - Can't Reset DVR (%i)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"or51211_reset\00", [18 x i8] zeroinitializer }, align 32
@or51211_reset._entry_ptr = internal global ptr @or51211_reset._entry, section ".printk_index", align 4
@dvb_bt8xx_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.4, i32 918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017dvb_bt8xx: %s: dvb_bt8xx: unloading card%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dvb_bt8xx_remove\00", [47 x i8] zeroinitializer }, align 32
@dvb_bt8xx_remove._entry_ptr = internal global ptr @dvb_bt8xx_remove._entry, section ".printk_index", align 4
@.str.134 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dvb\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 94, i64 104, i64 112, i64 113, i64 123, i64 124, i64 128, i64 135]
@__sancov_gen_cov_switch_values.135 = internal global [10 x i64] [i64 8, i64 32, i64 94, i64 104, i64 112, i64 113, i64 123, i64 124, i64 128, i64 135]
@___asan_gen_.136 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 26, i32 12 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 936, i32 31 }
@___asan_gen_.142 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 31, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 938, i32 12 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 811, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 881, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 886, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 889, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 895, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 896, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 902, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 719, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 739, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 749, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 757, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 765, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 771, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 777, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 66, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 86, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 47, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant [23 x i8] c"thomson_dtt7579_config\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 178, i32 28 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 588, i32 14 }
@___asan_gen_.283 = private unnamed_addr constant [31 x i8] c"thomson_dtt7579_zl10353_config\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 183, i32 30 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 591, i32 15 }
@___asan_gen_.298 = private unnamed_addr constant [20 x i8] c"tdvs_tua6034_config\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 564, i32 31 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 603, i32 14 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 606, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 609, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant [25 x i8] c"vp3021_alps_tded4_config\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 484, i32 30 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 621, i32 14 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 624, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant [25 x i8] c"digitv_alps_tded4_config\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 559, i32 28 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 630, i32 14 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 634, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant [27 x i8] c"microtune_mt7202dtf_config\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 310, i32 35 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 639, i32 14 }
@___asan_gen_.373 = private unnamed_addr constant [36 x i8] c"advbt771_samsung_tdtc9251dh0_config\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 392, i32 28 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 646, i32 14 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 658, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant [11 x i8] c"dst_config\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 397, i32 32 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 667, i32 7 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 668, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 676, i32 4 }
@___asan_gen_.424 = private unnamed_addr constant [15 x i8] c"pctvsat_config\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 258, i32 30 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 680, i32 14 }
@___asan_gen_.439 = private unnamed_addr constant [15 x i8] c"or51211_config\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 446, i32 36 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 689, i32 14 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 691, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 698, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 705, i32 4 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 124, i32 12 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 125, i32 12 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 126, i32 12 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 127, i32 12 }
@___asan_gen_.475 = private unnamed_addr constant [18 x i8] c"mt352_gpp_ctl_cfg\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 128, i32 12 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 129, i32 12 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 548, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 491, i32 12 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 492, i32 12 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 493, i32 12 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 494, i32 12 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 495, i32 12 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 522, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant [19 x i8] c"mt352_clock_config\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 317, i32 12 }
@___asan_gen_.517 = private unnamed_addr constant [12 x i8] c"mt352_reset\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 318, i32 12 }
@___asan_gen_.520 = private unnamed_addr constant [20 x i8] c"mt352_adc_ctl_1_cfg\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 319, i32 12 }
@___asan_gen_.523 = private unnamed_addr constant [14 x i8] c"mt352_agc_cfg\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 320, i32 12 }
@___asan_gen_.526 = private unnamed_addr constant [18 x i8] c"mt352_av771_extra\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 322, i32 12 }
@___asan_gen_.529 = private unnamed_addr constant [21 x i8] c"mt352_capt_range_cfg\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 323, i32 12 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 200, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 211, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 227, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 431, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 918, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.572 = private constant [39 x i8] c"../drivers/media/pci/bt8xx/dvb-bt8xx.c\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 951, i32 36 }
@llvm.compiler.used = appending global [201 x ptr] [ptr @__UNIQUE_ID_adapter_nr388, ptr @__UNIQUE_ID_adapter_nrtype387, ptr @__UNIQUE_ID_author391, ptr @__UNIQUE_ID_debug386, ptr @__UNIQUE_ID_debugtype385, ptr @__UNIQUE_ID_description390, ptr @__UNIQUE_ID_file392, ptr @__UNIQUE_ID_license393, ptr @__exitcall_dvb_bt8xx_exit, ptr @__initcall__kmod_dvb_bt8xx__389_959_dvb_bt8xx_init6, ptr @__param_adapter_nr, ptr @__param_debug, ptr @cx24108_tuner_set_params._entry, ptr @cx24108_tuner_set_params._entry.124, ptr @cx24108_tuner_set_params._entry.127, ptr @cx24108_tuner_set_params._entry_ptr, ptr @cx24108_tuner_set_params._entry_ptr.126, ptr @cx24108_tuner_set_params._entry_ptr.129, ptr @digitv_alps_tded4_reset._entry, ptr @digitv_alps_tded4_reset._entry_ptr, ptr @digitv_alps_tded4_tuner_calc_regs._entry, ptr @digitv_alps_tded4_tuner_calc_regs._entry_ptr, ptr @dvb_bt8xx_exit, ptr @dvb_bt8xx_load_card._entry, ptr @dvb_bt8xx_load_card._entry.21, ptr @dvb_bt8xx_load_card._entry.24, ptr @dvb_bt8xx_load_card._entry.27, ptr @dvb_bt8xx_load_card._entry.29, ptr @dvb_bt8xx_load_card._entry.31, ptr @dvb_bt8xx_load_card._entry.33, ptr @dvb_bt8xx_load_card._entry_ptr, ptr @dvb_bt8xx_load_card._entry_ptr.23, ptr @dvb_bt8xx_load_card._entry_ptr.26, ptr @dvb_bt8xx_load_card._entry_ptr.28, ptr @dvb_bt8xx_load_card._entry_ptr.30, ptr @dvb_bt8xx_load_card._entry_ptr.32, ptr @dvb_bt8xx_load_card._entry_ptr.35, ptr @dvb_bt8xx_probe._entry, ptr @dvb_bt8xx_probe._entry.11, ptr @dvb_bt8xx_probe._entry.14, ptr @dvb_bt8xx_probe._entry.5, ptr @dvb_bt8xx_probe._entry.8, ptr @dvb_bt8xx_probe._entry_ptr, ptr @dvb_bt8xx_probe._entry_ptr.10, ptr @dvb_bt8xx_probe._entry_ptr.13, ptr @dvb_bt8xx_probe._entry_ptr.16, ptr @dvb_bt8xx_probe._entry_ptr.7, ptr @dvb_bt8xx_remove._entry, ptr @dvb_bt8xx_remove._entry_ptr, ptr @dvb_bt8xx_start_feed._entry, ptr @dvb_bt8xx_start_feed._entry_ptr, ptr @dvb_bt8xx_stop_feed._entry, ptr @dvb_bt8xx_stop_feed._entry_ptr, ptr @dvb_bt8xx_task._entry, ptr @dvb_bt8xx_task._entry_ptr, ptr @frontend_init._entry, ptr @frontend_init._entry.102, ptr @frontend_init._entry.107, ptr @frontend_init._entry.110, ptr @frontend_init._entry.112, ptr @frontend_init._entry.115, ptr @frontend_init._entry.48, ptr @frontend_init._entry.53, ptr @frontend_init._entry.58, ptr @frontend_init._entry.61, ptr @frontend_init._entry.66, ptr @frontend_init._entry.69, ptr @frontend_init._entry.72, ptr @frontend_init._entry.74, ptr @frontend_init._entry.79, ptr @frontend_init._entry.82, ptr @frontend_init._entry.84, ptr @frontend_init._entry.89, ptr @frontend_init._entry.92, ptr @frontend_init._entry.97, ptr @frontend_init._entry_ptr, ptr @frontend_init._entry_ptr.104, ptr @frontend_init._entry_ptr.109, ptr @frontend_init._entry_ptr.111, ptr @frontend_init._entry_ptr.114, ptr @frontend_init._entry_ptr.117, ptr @frontend_init._entry_ptr.50, ptr @frontend_init._entry_ptr.55, ptr @frontend_init._entry_ptr.60, ptr @frontend_init._entry_ptr.63, ptr @frontend_init._entry_ptr.68, ptr @frontend_init._entry_ptr.71, ptr @frontend_init._entry_ptr.73, ptr @frontend_init._entry_ptr.76, ptr @frontend_init._entry_ptr.81, ptr @frontend_init._entry_ptr.83, ptr @frontend_init._entry_ptr.86, ptr @frontend_init._entry_ptr.91, ptr @frontend_init._entry_ptr.94, ptr @frontend_init._entry_ptr.99, ptr @or51211_reset._entry, ptr @or51211_reset._entry_ptr, ptr @debug, ptr @driver, ptr @adapter_nr, ptr @.str, ptr @dvb_bt8xx_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @dvb_bt8xx_probe.__key.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @thomson_dtt7579_config, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @thomson_dtt7579_zl10353_config, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @tdvs_tua6034_config, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @vp3021_alps_tded4_config, ptr @.str.67, ptr @.str.70, ptr @digitv_alps_tded4_config, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @microtune_mt7202dtf_config, ptr @.str.80, ptr @advbt771_samsung_tdtc9251dh0_config, ptr @.str.85, ptr @dst_config, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @pctvsat_config, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @or51211_config, ptr @.str.108, ptr @.str.113, ptr @.str.116, ptr @thomson_dtt7579_demod_init.mt352_clock_config, ptr @thomson_dtt7579_demod_init.mt352_reset, ptr @thomson_dtt7579_demod_init.mt352_adc_ctl_1_cfg, ptr @thomson_dtt7579_demod_init.mt352_agc_cfg, ptr @thomson_dtt7579_demod_init.mt352_gpp_ctl_cfg, ptr @thomson_dtt7579_demod_init.mt352_capt_range_cfg, ptr @.str.118, ptr @.str.119, ptr @digitv_alps_tded4_demod_init.mt352_clock_config, ptr @digitv_alps_tded4_demod_init.mt352_reset, ptr @digitv_alps_tded4_demod_init.mt352_adc_ctl_1_cfg, ptr @digitv_alps_tded4_demod_init.mt352_agc_cfg, ptr @digitv_alps_tded4_demod_init.mt352_capt_range_cfg, ptr @.str.120, ptr @.str.121, ptr @advbt771_samsung_tdtc9251dh0_demod_init.mt352_clock_config, ptr @advbt771_samsung_tdtc9251dh0_demod_init.mt352_reset, ptr @advbt771_samsung_tdtc9251dh0_demod_init.mt352_adc_ctl_1_cfg, ptr @advbt771_samsung_tdtc9251dh0_demod_init.mt352_agc_cfg, ptr @advbt771_samsung_tdtc9251dh0_demod_init.mt352_av771_extra, ptr @advbt771_samsung_tdtc9251dh0_demod_init.mt352_capt_range_cfg, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @.str.128, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134], section "llvm.metadata"
@0 = internal global [146 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_bt8xx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_bt8xx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_bt8xx_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_bt8xx_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_bt8xx_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_bt8xx_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_bt8xx_probe.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_bt8xx_load_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_bt8xx_load_card._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_bt8xx_load_card._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_bt8xx_load_card._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_bt8xx_load_card._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_bt8xx_load_card._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_bt8xx_load_card._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_bt8xx_start_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_bt8xx_stop_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_bt8xx_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thomson_dtt7579_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thomson_dtt7579_zl10353_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdvs_tua6034_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3021_alps_tded4_config to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digitv_alps_tded4_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microtune_mt7202dtf_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advbt771_samsung_tdtc9251dh0_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dst_config to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctvsat_config to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thomson_dtt7579_demod_init.mt352_clock_config to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thomson_dtt7579_demod_init.mt352_reset to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thomson_dtt7579_demod_init.mt352_adc_ctl_1_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thomson_dtt7579_demod_init.mt352_agc_cfg to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thomson_dtt7579_demod_init.mt352_gpp_ctl_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thomson_dtt7579_demod_init.mt352_capt_range_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digitv_alps_tded4_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digitv_alps_tded4_demod_init.mt352_clock_config to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digitv_alps_tded4_demod_init.mt352_reset to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digitv_alps_tded4_demod_init.mt352_adc_ctl_1_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digitv_alps_tded4_demod_init.mt352_agc_cfg to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digitv_alps_tded4_demod_init.mt352_capt_range_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digitv_alps_tded4_tuner_calc_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advbt771_samsung_tdtc9251dh0_demod_init.mt352_clock_config to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advbt771_samsung_tdtc9251dh0_demod_init.mt352_reset to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advbt771_samsung_tdtc9251dh0_demod_init.mt352_adc_ctl_1_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advbt771_samsung_tdtc9251dh0_demod_init.mt352_agc_cfg to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advbt771_samsung_tdtc9251dh0_demod_init.mt352_av771_extra to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advbt771_samsung_tdtc9251dh0_demod_init.mt352_capt_range_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24108_tuner_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24108_tuner_set_params._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24108_tuner_set_params._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @or51211_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_bt8xx_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dvb_bt8xx_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @bttv_sub_unregister(ptr noundef nonnull @driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bttv_sub_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_bt8xx_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bttv_sub_register(ptr noundef nonnull @driver, ptr noundef nonnull @.str.134) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_bt8xx_probe(ptr nocapture noundef %sub) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2240) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @dvb_bt8xx_probe.__key) #8
  %core = getelementptr inbounds %struct.bttv_sub_device, ptr %sub, i32 0, i32 1
  %1 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %core, align 8
  %nr = getelementptr inbounds %struct.bttv_core, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr, align 8
  %bttv_nr = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %bttv_nr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %bttv_nr, align 4
  %card_name = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 2
  %name = getelementptr inbounds %struct.v4l2_device, ptr %2, i32 0, i32 4
  %call3 = tail call i32 @strscpy(ptr noundef %card_name, ptr noundef %name, i32 noundef 32) #8
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 8
  %i2c_adap = getelementptr inbounds %struct.bttv_core, ptr %7, i32 0, i32 2
  %i2c_adapter = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 13
  %8 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %i2c_adap, ptr %i2c_adapter, align 4
  %type = getelementptr inbounds %struct.bttv_core, ptr %7, i32 0, i32 5
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %do.end32 [
    i32 94, label %do.body.do.body36_crit_edge
    i32 128, label %do.body.do.body36_crit_edge157
    i32 135, label %do.body.do.body36_crit_edge158
    i32 104, label %do.body.sw.bb14_crit_edge
    i32 124, label %do.body.sw.bb14_crit_edge159
    i32 123, label %sw.bb18
    i32 113, label %sw.bb22
    i32 112, label %sw.bb26
  ]

do.body.sw.bb14_crit_edge159:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14

do.body.sw.bb14_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14

do.body.do.body36_crit_edge158:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36

do.body.do.body36_crit_edge157:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36

do.body.do.body36_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36

sw.bb14:                                          ; preds = %do.body.sw.bb14_crit_edge, %do.body.sw.bb14_crit_edge159
  br label %do.body36

sw.bb18:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36

sw.bb22:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36

sw.bb26:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36

do.end32:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %10) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

do.body36:                                        ; preds = %sw.bb26, %sw.bb22, %sw.bb18, %sw.bb14, %do.body.do.body36_crit_edge, %do.body.do.body36_crit_edge157, %do.body.do.body36_crit_edge158
  %.sink153 = phi i32 [ 67125280, %sw.bb14 ], [ 67125291, %sw.bb18 ], [ 35671852, %sw.bb22 ], [ 16837755, %sw.bb26 ], [ 67158112, %do.body.do.body36_crit_edge ], [ 67158112, %do.body.do.body36_crit_edge157 ], [ 67158112, %do.body.do.body36_crit_edge158 ]
  %.sink = phi i32 [ 20480, %sw.bb14 ], [ 20480, %sw.bb18 ], [ 233472, %sw.bb22 ], [ 20480, %sw.bb26 ], [ 20480, %do.body.do.body36_crit_edge ], [ 20480, %do.body.do.body36_crit_edge157 ], [ 20480, %do.body.do.body36_crit_edge158 ]
  %gpio_mode = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %gpio_mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink153, ptr %gpio_mode, align 8
  %op_sync_orin = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 11
  %13 = ptrtoint ptr %op_sync_orin to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 32768, ptr %op_sync_orin, align 4
  %irq_err_ignore = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 12
  %14 = ptrtoint ptr %irq_err_ignore to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %irq_err_ignore, align 8
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool37.not = icmp eq i32 %15, 0
  br i1 %tobool37.not, label %do.body36.do.end49_crit_edge, label %do.end41

do.body36.do.end49_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end49

do.end41:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %bttv_nr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bttv_nr, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef %17, ptr noundef %card_name) #12
  br label %do.end49

do.end49:                                         ; preds = %do.end41, %do.body36.do.end49_crit_edge
  %18 = ptrtoint ptr %bttv_nr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bttv_nr, align 4
  %call51 = tail call ptr @bttv_get_pcidev(i32 noundef %19) #8
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %do.end56, label %if.end60

do.end56:                                         ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %bttv_nr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bttv_nr, align 4
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %21) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end60:                                         ; preds = %do.end49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bt878_num to i32))
  %22 = load i32, ptr @bt878_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp4.not.i = icmp eq i32 %22, 0
  br i1 %cmp4.not.i, label %if.end60.dvb_bt8xx_878_match.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end60.dvb_bt8xx_878_match.exit.thread_crit_edge: ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %dvb_bt8xx_878_match.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end60
  %subsystem_vendor1.i.i = getelementptr inbounds %struct.pci_dev, ptr %call51, i32 0, i32 9
  %23 = ptrtoint ptr %subsystem_vendor1.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %subsystem_vendor1.i.i, align 4
  %subsystem_device5.i.i = getelementptr inbounds %struct.pci_dev, ptr %call51, i32 0, i32 10
  %bus11.i.i = getelementptr inbounds %struct.pci_dev, ptr %call51, i32 0, i32 1
  %devfn17.i.i = getelementptr inbounds %struct.pci_dev, ptr %call51, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %card_nr.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %dev.i = getelementptr [4 x %struct.bt878], ptr @bt878, i32 0, i32 %card_nr.05.i, i32 4
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %subsystem_vendor.i.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %subsystem_vendor.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %subsystem_vendor.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %24)
  %cmp.i.i = icmp eq i16 %28, %24
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %subsystem_device.i.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 10
  %29 = ptrtoint ptr %subsystem_device.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %subsystem_device.i.i, align 2
  %31 = ptrtoint ptr %subsystem_device5.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %subsystem_device5.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %32)
  %cmp7.i.i = icmp eq i16 %30, %32
  br i1 %cmp7.i.i, label %land.lhs.true9.i.i, label %land.lhs.true.i.i.for.inc.i_crit_edge

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %bus.i.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 1
  %33 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus.i.i, align 8
  %number.i.i = getelementptr inbounds %struct.pci_bus, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %number.i.i, align 4
  %37 = ptrtoint ptr %bus11.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus11.i.i, align 8
  %number12.i.i = getelementptr inbounds %struct.pci_bus, ptr %38, i32 0, i32 12
  %39 = ptrtoint ptr %number12.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %number12.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %40)
  %cmp14.i.i = icmp eq i8 %36, %40
  br i1 %cmp14.i.i, label %land.lhs.true16.i.i, label %land.lhs.true9.i.i.for.inc.i_crit_edge

land.lhs.true9.i.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true16.i.i:                              ; preds = %land.lhs.true9.i.i
  %devfn.i.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 6
  %41 = ptrtoint ptr %devfn.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %devfn.i.i, align 4
  %43 = ptrtoint ptr %devfn17.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %devfn17.i.i, align 4
  %shr28.i.i = xor i32 %44, %42
  %45 = and i32 %shr28.i.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp20.i.i = icmp eq i32 %45, 0
  br i1 %cmp20.i.i, label %dvb_bt8xx_878_match.exit, label %land.lhs.true16.i.i.for.inc.i_crit_edge

land.lhs.true16.i.i.for.inc.i_crit_edge:          ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true16.i.i.for.inc.i_crit_edge, %land.lhs.true9.i.i.for.inc.i_crit_edge, %land.lhs.true.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %card_nr.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %22
  br i1 %exitcond.not.i, label %for.inc.i.dvb_bt8xx_878_match.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.dvb_bt8xx_878_match.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dvb_bt8xx_878_match.exit.thread

dvb_bt8xx_878_match.exit.thread:                  ; preds = %for.inc.i.dvb_bt8xx_878_match.exit.thread_crit_edge, %if.end60.dvb_bt8xx_878_match.exit.thread_crit_edge
  %bt145 = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 4
  %46 = ptrtoint ptr %bt145 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %bt145, align 8
  br label %do.end67

dvb_bt8xx_878_match.exit:                         ; preds = %land.lhs.true16.i.i
  %arrayidx.i = getelementptr [4 x %struct.bt878], ptr @bt878, i32 0, i32 %card_nr.05.i
  %bt = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 4
  %47 = ptrtoint ptr %bt to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %arrayidx.i, ptr %bt, align 8
  %tobool63.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool63.not, label %dvb_bt8xx_878_match.exit.do.end67_crit_edge, label %do.body77

dvb_bt8xx_878_match.exit.do.end67_crit_edge:      ; preds = %dvb_bt8xx_878_match.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

do.end67:                                         ; preds = %dvb_bt8xx_878_match.exit.do.end67_crit_edge, %dvb_bt8xx_878_match.exit.thread
  %48 = ptrtoint ptr %bttv_nr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bttv_nr, align 4
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %49) #12
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

do.body77:                                        ; preds = %dvb_bt8xx_878_match.exit
  tail call void @__mutex_init(ptr noundef nonnull %arrayidx.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @dvb_bt8xx_probe.__key.17) #8
  %50 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %core, align 8
  %nr82 = getelementptr inbounds %struct.bttv_core, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %nr82 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr82, align 8
  %54 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bt, align 8
  %bttv_nr84 = getelementptr inbounds %struct.bt878, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %bttv_nr84 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %53, ptr %bttv_nr84, align 4
  %57 = load ptr, ptr %core, align 8
  %type86 = getelementptr inbounds %struct.bttv_core, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %type86 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %type86, align 4
  %dvb_adapter.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 3
  %60 = load ptr, ptr %bt, align 8
  %dev.i139 = getelementptr inbounds %struct.bt878, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %dev.i139 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i139, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %call.i = tail call i32 @dvb_register_adapter(ptr noundef %dvb_adapter.i, ptr noundef %card_name, ptr noundef null, ptr noundef %dev1.i, ptr noundef nonnull @adapter_nr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call.i) #12
  br label %if.then89

if.end.i:                                         ; preds = %do.body77
  %priv.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 3, i32 5
  %63 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i.i, ptr %priv.i, align 8
  %64 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i2c_adapter, align 4
  %66 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bt, align 8
  %adapter.i = getelementptr inbounds %struct.bt878, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %adapter.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %adapter.i, align 4
  %demux.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 6
  %69 = call ptr @memset(ptr %demux.i, i32 0, i32 624)
  %70 = ptrtoint ptr %demux.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 13, ptr %demux.i, align 8
  %priv7.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 6, i32 1
  %71 = ptrtoint ptr %priv7.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call7.i.i, ptr %priv7.i, align 4
  %filternum.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 6, i32 2
  %72 = ptrtoint ptr %filternum.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 256, ptr %filternum.i, align 8
  %feednum.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 6, i32 3
  %73 = ptrtoint ptr %feednum.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 256, ptr %feednum.i, align 4
  %start_feed.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 6, i32 4
  %74 = ptrtoint ptr %start_feed.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @dvb_bt8xx_start_feed, ptr %start_feed.i, align 8
  %stop_feed.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 6, i32 5
  %75 = ptrtoint ptr %stop_feed.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @dvb_bt8xx_stop_feed, ptr %stop_feed.i, align 4
  %call14.i = tail call i32 @dvb_dmx_init(ptr noundef %demux.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %do.end19.i, label %if.end22.i

do.end19.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call14.i) #12
  br label %err_unregister_adaptor.i

if.end22.i:                                       ; preds = %if.end.i
  %dmxdev.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 7
  %filternum23.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 7, i32 4
  %76 = ptrtoint ptr %filternum23.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 256, ptr %filternum23.i, align 8
  %demux27.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 7, i32 3
  %77 = ptrtoint ptr %demux27.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %demux.i, ptr %demux27.i, align 4
  %capabilities29.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 7, i32 5
  %78 = ptrtoint ptr %capabilities29.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %capabilities29.i, align 4
  %call32.i = tail call i32 @dvb_dmxdev_init(ptr noundef %dmxdev.i, ptr noundef %dvb_adapter.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp slt i32 %call32.i, 0
  br i1 %cmp33.i, label %do.end37.i, label %if.end40.i

do.end37.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %call32.i) #12
  br label %err_dmx_release.i

if.end40.i:                                       ; preds = %if.end22.i
  %fe_hw.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 8
  %source.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 8, i32 1
  %79 = ptrtoint ptr %source.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %source.i, align 8
  %add_frontend.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 10
  %80 = ptrtoint ptr %add_frontend.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %add_frontend.i, align 8
  %call46.i = tail call i32 %81(ptr noundef %demux.i, ptr noundef %fe_hw.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %do.end51.i, label %if.end54.i

do.end51.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  %call53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call46.i) #12
  br label %err_dmxdev_release.i

if.end54.i:                                       ; preds = %if.end40.i
  %fe_mem.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 9
  %source55.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 9, i32 1
  %82 = ptrtoint ptr %source55.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %source55.i, align 4
  %83 = ptrtoint ptr %add_frontend.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add_frontend.i, align 8
  %call62.i = tail call i32 %84(ptr noundef %demux.i, ptr noundef %fe_mem.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %cmp63.i = icmp slt i32 %call62.i, 0
  br i1 %cmp63.i, label %do.end67.i, label %if.end70.i

do.end67.i:                                       ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  %call69.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call62.i) #12
  br label %err_remove_hw_frontend.i

if.end70.i:                                       ; preds = %if.end54.i
  %connect_frontend.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 13
  %85 = ptrtoint ptr %connect_frontend.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %connect_frontend.i, align 4
  %call76.i = tail call i32 %86(ptr noundef %demux.i, ptr noundef %fe_hw.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %cmp77.i = icmp slt i32 %call76.i, 0
  br i1 %cmp77.i, label %do.end81.i, label %if.end84.i

do.end81.i:                                       ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #10
  %call83.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call76.i) #12
  br label %err_remove_mem_frontend.i

if.end84.i:                                       ; preds = %if.end70.i
  %dvbnet.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 14
  %call88.i = tail call i32 @dvb_net_init(ptr noundef %dvb_adapter.i, ptr noundef %dvbnet.i, ptr noundef %demux.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %cmp89.i = icmp slt i32 %call88.i, 0
  br i1 %cmp89.i, label %do.end93.i, label %if.end96.i

do.end93.i:                                       ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #10
  %call95.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %call88.i) #12
  %disconnect_frontend.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 14
  %87 = ptrtoint ptr %disconnect_frontend.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %disconnect_frontend.i, align 8
  %call102.i = tail call i32 %88(ptr noundef %demux.i) #8
  br label %err_remove_mem_frontend.i

if.end96.i:                                       ; preds = %if.end84.i
  %89 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bt, align 8
  %tasklet.i = getelementptr inbounds %struct.bt878, ptr %90, i32 0, i32 24
  tail call void @tasklet_setup(ptr noundef %tasklet.i, ptr noundef nonnull @dvb_bt8xx_task) #8
  %91 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %59, label %if.end96.i.sw.epilog.i.i_crit_edge [
    i32 128, label %sw.bb.i.i
    i32 135, label %sw.bb49.i.i
    i32 104, label %sw.bb117.i.i
    i32 124, label %sw.bb207.i.i
    i32 123, label %sw.bb242.i.i
    i32 113, label %sw.bb285.i.i
    i32 94, label %sw.bb358.i.i
    i32 112, label %sw.bb399.i.i
  ]

if.end96.i.sw.epilog.i.i_crit_edge:               ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end96.i
  %call.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cond.end.i.i, label %sw.bb.i.i.if.then.i.i_crit_edge

sw.bb.i.i.if.then.i.i_crit_edge:                  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

cond.end.i.i:                                     ; preds = %sw.bb.i.i
  %call1.i.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.43) #8
  %call2.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #8
  %tobool3.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %cond.end.i.i.if.then.i.i_crit_edge

cond.end.i.i.if.then.i.i_crit_edge:               ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %cond.end.i.i.if.then.i.i_crit_edge, %sw.bb.i.i.if.then.i.i_crit_edge
  %cond586.i.i = phi ptr [ %call2.i.i, %cond.end.i.i.if.then.i.i_crit_edge ], [ %call.i.i, %sw.bb.i.i.if.then.i.i_crit_edge ]
  %92 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i2c_adapter, align 4
  %call4.i.i = tail call ptr %cond586.i.i(ptr noundef nonnull @thomson_dtt7579_config, ptr noundef %93) #8
  %cmp.i.i140 = icmp eq ptr %call4.i.i, null
  br i1 %cmp.i.i140, label %if.then5.i.i, label %if.end38.thread.i.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.42) #8
  br label %if.then11.i.i

do.end.i.i:                                       ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #12
  br label %if.then11.i.i

if.end38.thread.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %fe.i.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 15
  %94 = ptrtoint ptr %fe.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call4.i.i, ptr %fe.i.i, align 8
  br label %if.then41.i.i

if.then11.i.i:                                    ; preds = %do.end.i.i, %if.then5.i.i
  %fe588.i.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 15
  %95 = ptrtoint ptr %fe588.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %fe588.i.i, align 8
  %call14.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.46) #8
  %tobool15.not.i.i = icmp eq ptr %call14.i.i, null
  br i1 %tobool15.not.i.i, label %cond.end20.i.i, label %if.then11.i.i.if.then23.i.i_crit_edge

if.then11.i.i.if.then23.i.i_crit_edge:            ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23.i.i

cond.end20.i.i:                                   ; preds = %if.then11.i.i
  %call18.i.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.47) #8
  %call19.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.46) #8
  %tobool22.not.i.i = icmp eq ptr %call19.i.i, null
  br i1 %tobool22.not.i.i, label %do.end32.i.i, label %cond.end20.i.i.if.then23.i.i_crit_edge

cond.end20.i.i.if.then23.i.i_crit_edge:           ; preds = %cond.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23.i.i

if.then23.i.i:                                    ; preds = %cond.end20.i.i.if.then23.i.i_crit_edge, %if.then11.i.i.if.then23.i.i_crit_edge
  %cond21594.i.i = phi ptr [ %call19.i.i, %cond.end20.i.i.if.then23.i.i_crit_edge ], [ %call14.i.i, %if.then11.i.i.if.then23.i.i_crit_edge ]
  %96 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %i2c_adapter, align 4
  %call25.i.i = tail call ptr %cond21594.i.i(ptr noundef nonnull @thomson_dtt7579_zl10353_config, ptr noundef %97) #8
  %cmp26.i.i = icmp eq ptr %call25.i.i, null
  br i1 %cmp26.i.i, label %if.then27.i.i, label %if.end38.i.i

if.then27.i.i:                                    ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.46) #8
  br label %if.end38.thread598.i.i

do.end32.i.i:                                     ; preds = %cond.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call34.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #12
  br label %if.end38.thread598.i.i

if.end38.thread598.i.i:                           ; preds = %do.end32.i.i, %if.then27.i.i
  %98 = ptrtoint ptr %fe588.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %fe588.i.i, align 8
  br label %sw.epilog.i.i

if.end38.i.i:                                     ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %fe588.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call25.i.i, ptr %fe588.i.i, align 8
  br label %if.then41.i.i

if.then41.i.i:                                    ; preds = %if.end38.i.i, %if.end38.thread.i.i
  %fe591597.i.i = phi ptr [ %fe.i.i, %if.end38.thread.i.i ], [ %fe588.i.i, %if.end38.i.i ]
  %100 = phi ptr [ %call4.i.i, %if.end38.thread.i.i ], [ %call25.i.i, %if.end38.i.i ]
  %calc_regs.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %100, i32 0, i32 1, i32 32, i32 15
  %101 = ptrtoint ptr %calc_regs.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @thomson_dtt7579_tuner_calc_regs, ptr %calc_regs.i.i, align 4
  %102 = ptrtoint ptr %fe591597.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %fe591597.i.i, align 8
  %frequency_min_hz.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %103, i32 0, i32 1, i32 0, i32 1
  %104 = ptrtoint ptr %frequency_min_hz.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 174000000, ptr %frequency_min_hz.i.i, align 4
  %105 = load ptr, ptr %fe591597.i.i, align 8
  %frequency_max_hz.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %105, i32 0, i32 1, i32 0, i32 2
  %106 = ptrtoint ptr %frequency_max_hz.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 862000000, ptr %frequency_max_hz.i.i, align 4
  br label %sw.epilog.i.i

sw.bb49.i.i:                                      ; preds = %if.end96.i
  %107 = ptrtoint ptr %bttv_nr to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bttv_nr, align 4
  %call.i.i.i = tail call i32 @bttv_write_gpio(i32 noundef %108, i32 noundef 14680071, i32 noundef 1) #8
  %109 = ptrtoint ptr %bttv_nr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %bttv_nr, align 4
  %call2.i.i.i = tail call i32 @bttv_write_gpio(i32 noundef %110, i32 noundef 14680071, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 100) #8
  %111 = ptrtoint ptr %bttv_nr to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %bttv_nr, align 4
  %call4.i.i.i = tail call i32 @bttv_write_gpio(i32 noundef %112, i32 noundef 14680071, i32 noundef 1) #8
  tail call void @msleep(i32 noundef 100) #8
  %call52.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #8
  %tobool53.not.i.i = icmp eq ptr %call52.i.i, null
  br i1 %tobool53.not.i.i, label %cond.end58.i.i, label %sw.bb49.i.i.if.then61.i.i_crit_edge

sw.bb49.i.i.if.then61.i.i_crit_edge:              ; preds = %sw.bb49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61.i.i

cond.end58.i.i:                                   ; preds = %sw.bb49.i.i
  %call56.i.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.52) #8
  %call57.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #8
  %tobool60.not.i.i = icmp eq ptr %call57.i.i, null
  br i1 %tobool60.not.i.i, label %do.end70.i.i, label %cond.end58.i.i.if.then61.i.i_crit_edge

cond.end58.i.i.if.then61.i.i_crit_edge:           ; preds = %cond.end58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61.i.i

if.then61.i.i:                                    ; preds = %cond.end58.i.i.if.then61.i.i_crit_edge, %sw.bb49.i.i.if.then61.i.i_crit_edge
  %cond59603.i.i = phi ptr [ %call57.i.i, %cond.end58.i.i.if.then61.i.i_crit_edge ], [ %call52.i.i, %sw.bb49.i.i.if.then61.i.i_crit_edge ]
  %113 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %i2c_adapter, align 4
  %call63.i.i = tail call ptr %cond59603.i.i(ptr noundef nonnull @tdvs_tua6034_config, i8 noundef zeroext 14, ptr noundef %114) #8
  %cmp64.i.i = icmp eq ptr %call63.i.i, null
  br i1 %cmp64.i.i, label %if.then65.i.i, label %if.then78.i.i

if.then65.i.i:                                    ; preds = %if.then61.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.51) #8
  br label %if.end73.thread.i.i

do.end70.i.i:                                     ; preds = %cond.end58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call72.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #12
  br label %if.end73.thread.i.i

if.end73.thread.i.i:                              ; preds = %do.end70.i.i, %if.then65.i.i
  %fe75605.i.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 15
  %115 = ptrtoint ptr %fe75605.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %fe75605.i.i, align 8
  br label %sw.epilog.i.i

if.then78.i.i:                                    ; preds = %if.then61.i.i
  %fe75.i.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 15
  %116 = ptrtoint ptr %fe75.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call63.i.i, ptr %fe75.i.i, align 8
  %call81.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.56) #8
  %tobool82.not.i.i = icmp eq ptr %call81.i.i, null
  br i1 %tobool82.not.i.i, label %cond.end87.i.i, label %if.then78.i.i.if.then90.i.i_crit_edge

if.then78.i.i.if.then90.i.i_crit_edge:            ; preds = %if.then78.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i.i

cond.end87.i.i:                                   ; preds = %if.then78.i.i
  %call85.i.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.57) #8
  %call86.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.56) #8
  %tobool89.not.i.i = icmp eq ptr %call86.i.i, null
  br i1 %tobool89.not.i.i, label %do.end100.i.i, label %cond.end87.i.i.if.then90.i.i_crit_edge

cond.end87.i.i.if.then90.i.i_crit_edge:           ; preds = %cond.end87.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then90.i.i

if.then90.i.i:                                    ; preds = %cond.end87.i.i.if.then90.i.i_crit_edge, %if.then78.i.i.if.then90.i.i_crit_edge
  %cond88609.i.i = phi ptr [ %call86.i.i, %cond.end87.i.i.if.then90.i.i_crit_edge ], [ %call81.i.i, %if.then78.i.i.if.then90.i.i_crit_edge ]
  %117 = ptrtoint ptr %fe75.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %fe75.i.i, align 8
  %119 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %i2c_adapter, align 4
  %call93.i.i = tail call ptr %cond88609.i.i(ptr noundef %118, ptr noundef %120, i8 noundef zeroext 97, i32 noundef 64) #8
  %cmp94.i.i = icmp eq ptr %call93.i.i, null
  br i1 %cmp94.i.i, label %if.then95.i.i, label %if.then90.i.i.if.end103.i.i_crit_edge

if.then90.i.i.if.end103.i.i_crit_edge:            ; preds = %if.then90.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103.i.i

if.then95.i.i:                                    ; preds = %if.then90.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.56) #8
  br label %if.end103.i.i

do.end100.i.i:                                    ; preds = %cond.end87.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call102.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #12
  br label %if.end103.i.i

if.end103.i.i:                                    ; preds = %do.end100.i.i, %if.then95.i.i, %if.then90.i.i.if.end103.i.i_crit_edge
  %121 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool106.not.i.i = icmp eq i32 %121, 0
  br i1 %tobool106.not.i.i, label %if.end103.i.i.sw.epilog.i.i_crit_edge, label %do.end110.i.i

if.end103.i.i.sw.epilog.i.i_crit_edge:            ; preds = %if.end103.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

do.end110.i.i:                                    ; preds = %if.end103.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call112.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.45) #12
  br label %sw.epilog.i.i

sw.bb117.i.i:                                     ; preds = %if.end96.i
  tail call fastcc void @digitv_alps_tded4_reset(ptr noundef %call7.i.i) #8
  %call120.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.64) #8
  %tobool121.not.i.i = icmp eq ptr %call120.i.i, null
  br i1 %tobool121.not.i.i, label %cond.end126.i.i, label %sw.bb117.i.i.if.then129.i.i_crit_edge

sw.bb117.i.i.if.then129.i.i_crit_edge:            ; preds = %sw.bb117.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then129.i.i

cond.end126.i.i:                                  ; preds = %sw.bb117.i.i
  %call124.i.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.65) #8
  %call125.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.64) #8
  %tobool128.not.i.i = icmp eq ptr %call125.i.i, null
  br i1 %tobool128.not.i.i, label %do.end138.i.i, label %cond.end126.i.i.if.then129.i.i_crit_edge

cond.end126.i.i.if.then129.i.i_crit_edge:         ; preds = %cond.end126.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then129.i.i

if.then129.i.i:                                   ; preds = %cond.end126.i.i.if.then129.i.i_crit_edge, %sw.bb117.i.i.if.then129.i.i_crit_edge
  %cond127612.i.i = phi ptr [ %call125.i.i, %cond.end126.i.i.if.then129.i.i_crit_edge ], [ %call120.i.i, %sw.bb117.i.i.if.then129.i.i_crit_edge ]
  %122 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %i2c_adapter, align 4
  %call131.i.i = tail call ptr %cond127612.i.i(ptr noundef nonnull @vp3021_alps_tded4_config, ptr noundef %123) #8
  %cmp132.i.i = icmp eq ptr %call131.i.i, null
  br i1 %cmp132.i.i, label %if.then133.i.i, label %if.then146.i.i

if.then133.i.i:                                   ; preds = %if.then129.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.64) #8
  br label %if.end161.i.i

do.end138.i.i:                                    ; preds = %cond.end126.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call140.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #12
  br label %if.end161.i.i

if.then146.i.i:                                   ; preds = %if.then129.i.i
  %fe143.i.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 15
  %124 = ptrtoint ptr %fe143.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call131.i.i, ptr %fe143.i.i, align 8
  %set_params.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %call131.i.i, i32 0, i32 1, i32 32, i32 6
  %125 = ptrtoint ptr %set_params.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @vp3021_alps_tded4_tuner_set_params, ptr %set_params.i.i, align 4
  %126 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool151.not.i.i = icmp eq i32 %126, 0
  br i1 %tobool151.not.i.i, label %if.then146.i.i.sw.epilog.i.i_crit_edge, label %do.end155.i.i

if.then146.i.i.sw.epilog.i.i_crit_edge:           ; preds = %if.then146.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

do.end155.i.i:                                    ; preds = %if.then146.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call157.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.45) #12
  br label %sw.epilog.i.i

if.end161.i.i:                                    ; preds = %do.end138.i.i, %if.then133.i.i
  %fe143614.i.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 15
  %127 = ptrtoint ptr %fe143614.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %fe143614.i.i, align 8
  tail call fastcc void @digitv_alps_tded4_reset(ptr noundef %call7.i.i) #8
  %call164.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #8
  %tobool165.not.i.i = icmp eq ptr %call164.i.i, null
  br i1 %tobool165.not.i.i, label %cond.end170.i.i, label %if.end161.i.i.if.then173.i.i_crit_edge

if.end161.i.i.if.then173.i.i_crit_edge:           ; preds = %if.end161.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then173.i.i

cond.end170.i.i:                                  ; preds = %if.end161.i.i
  %call168.i.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.43) #8
  %call169.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #8
  %tobool172.not.i.i = icmp eq ptr %call169.i.i, null
  br i1 %tobool172.not.i.i, label %do.end182.i.i, label %cond.end170.i.i.if.then173.i.i_crit_edge

cond.end170.i.i.if.then173.i.i_crit_edge:         ; preds = %cond.end170.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then173.i.i

if.then173.i.i:                                   ; preds = %cond.end170.i.i.if.then173.i.i_crit_edge, %if.end161.i.i.if.then173.i.i_crit_edge
  %cond171619.i.i = phi ptr [ %call169.i.i, %cond.end170.i.i.if.then173.i.i_crit_edge ], [ %call164.i.i, %if.end161.i.i.if.then173.i.i_crit_edge ]
  %128 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %i2c_adapter, align 4
  %call175.i.i = tail call ptr %cond171619.i.i(ptr noundef nonnull @digitv_alps_tded4_config, ptr noundef %129) #8
  %cmp176.i.i = icmp eq ptr %call175.i.i, null
  br i1 %cmp176.i.i, label %if.then177.i.i, label %if.then190.i.i

if.then177.i.i:                                   ; preds = %if.then173.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.42) #8
  br label %if.end185.thread.i.i

do.end182.i.i:                                    ; preds = %cond.end170.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call184.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #12
  br label %if.end185.thread.i.i

if.end185.thread.i.i:                             ; preds = %do.end182.i.i, %if.then177.i.i
  %130 = ptrtoint ptr %fe143614.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %fe143614.i.i, align 8
  br label %sw.epilog.i.i

if.then190.i.i:                                   ; preds = %if.then173.i.i
  %131 = ptrtoint ptr %fe143614.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call175.i.i, ptr %fe143614.i.i, align 8
  %calc_regs194.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %call175.i.i, i32 0, i32 1, i32 32, i32 15
  %132 = ptrtoint ptr %calc_regs194.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @digitv_alps_tded4_tuner_calc_regs, ptr %calc_regs194.i.i, align 4
  %133 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool196.not.i.i = icmp eq i32 %133, 0
  br i1 %tobool196.not.i.i, label %if.then190.i.i.sw.epilog.i.i_crit_edge, label %do.end200.i.i

if.then190.i.i.sw.epilog.i.i_crit_edge:           ; preds = %if.then190.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

do.end200.i.i:                                    ; preds = %if.then190.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call202.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.45) #12
  br label %sw.epilog.i.i

sw.bb207.i.i:                                     ; preds = %if.end96.i
  %call210.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.77) #8
  %tobool211.not.i.i = icmp eq ptr %call210.i.i, null
  br i1 %tobool211.not.i.i, label %cond.end216.i.i, label %sw.bb207.i.i.if.then219.i.i_crit_edge

sw.bb207.i.i.if.then219.i.i_crit_edge:            ; preds = %sw.bb207.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then219.i.i

cond.end216.i.i:                                  ; preds = %sw.bb207.i.i
  %call214.i.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.78) #8
  %call215.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.77) #8
  %tobool218.not.i.i = icmp eq ptr %call215.i.i, null
  br i1 %tobool218.not.i.i, label %do.end228.i.i, label %cond.end216.i.i.if.then219.i.i_crit_edge

cond.end216.i.i.if.then219.i.i_crit_edge:         ; preds = %cond.end216.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then219.i.i

if.then219.i.i:                                   ; preds = %cond.end216.i.i.if.then219.i.i_crit_edge, %sw.bb207.i.i.if.then219.i.i_crit_edge
  %cond217624.i.i = phi ptr [ %call215.i.i, %cond.end216.i.i.if.then219.i.i_crit_edge ], [ %call210.i.i, %sw.bb207.i.i.if.then219.i.i_crit_edge ]
  %134 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %i2c_adapter, align 4
  %call221.i.i = tail call ptr %cond217624.i.i(ptr noundef nonnull @microtune_mt7202dtf_config, ptr noundef %135) #8
  %cmp222.i.i = icmp eq ptr %call221.i.i, null
  br i1 %cmp222.i.i, label %if.then223.i.i, label %if.then236.i.i

if.then223.i.i:                                   ; preds = %if.then219.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.77) #8
  br label %if.end231.thread.i.i

do.end228.i.i:                                    ; preds = %cond.end216.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call230.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #12
  br label %if.end231.thread.i.i

if.end231.thread.i.i:                             ; preds = %do.end228.i.i, %if.then223.i.i
  %fe233626.i.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 15
  %136 = ptrtoint ptr %fe233626.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr null, ptr %fe233626.i.i, align 8
  br label %sw.epilog.i.i

if.then236.i.i:                                   ; preds = %if.then219.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %fe233.i.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 15
  %137 = ptrtoint ptr %fe233.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call221.i.i, ptr %fe233.i.i, align 8
  %set_params240.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %call221.i.i, i32 0, i32 1, i32 32, i32 6
  %138 = ptrtoint ptr %set_params240.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @microtune_mt7202dtf_tuner_set_params, ptr %set_params240.i.i, align 4
  br label %sw.epilog.i.i

sw.bb242.i.i:                                     ; preds = %if.end96.i
  %call245.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #8
  %tobool246.not.i.i = icmp eq ptr %call245.i.i, null
  br i1 %tobool246.not.i.i, label %cond.end251.i.i, label %sw.bb242.i.i.if.then254.i.i_crit_edge

sw.bb242.i.i.if.then254.i.i_crit_edge:            ; preds = %sw.bb242.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then254.i.i

cond.end251.i.i:                                  ; preds = %sw.bb242.i.i
  %call249.i.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.43) #8
  %call250.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.42) #8
  %tobool253.not.i.i = icmp eq ptr %call250.i.i, null
  br i1 %tobool253.not.i.i, label %do.end263.i.i, label %cond.end251.i.i.if.then254.i.i_crit_edge

cond.end251.i.i.if.then254.i.i_crit_edge:         ; preds = %cond.end251.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then254.i.i

if.then254.i.i:                                   ; preds = %cond.end251.i.i.if.then254.i.i_crit_edge, %sw.bb242.i.i.if.then254.i.i_crit_edge
  %cond252630.i.i = phi ptr [ %call250.i.i, %cond.end251.i.i.if.then254.i.i_crit_edge ], [ %call245.i.i, %sw.bb242.i.i.if.then254.i.i_crit_edge ]
  %139 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %i2c_adapter, align 4
  %call256.i.i = tail call ptr %cond252630.i.i(ptr noundef nonnull @advbt771_samsung_tdtc9251dh0_config, ptr noundef %140) #8
  %cmp257.i.i = icmp eq ptr %call256.i.i, null
  br i1 %cmp257.i.i, label %if.then258.i.i, label %if.then271.i.i

if.then258.i.i:                                   ; preds = %if.then254.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.42) #8
  br label %if.end266.thread.i.i

do.end263.i.i:                                    ; preds = %cond.end251.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call265.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #12
  br label %if.end266.thread.i.i

if.end266.thread.i.i:                             ; preds = %do.end263.i.i, %if.then258.i.i
  %fe268632.i.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 15
  %141 = ptrtoint ptr %fe268632.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr null, ptr %fe268632.i.i, align 8
  br label %sw.epilog.i.i

if.then271.i.i:                                   ; preds = %if.then254.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %fe268.i.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 15
  %142 = ptrtoint ptr %fe268.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %call256.i.i, ptr %fe268.i.i, align 8
  %calc_regs275.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %call256.i.i, i32 0, i32 1, i32 32, i32 15
  %143 = ptrtoint ptr %calc_regs275.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @advbt771_samsung_tdtc9251dh0_tuner_calc_regs, ptr %calc_regs275.i.i, align 4
  %144 = load ptr, ptr %fe268.i.i, align 8
  %frequency_min_hz279.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %144, i32 0, i32 1, i32 0, i32 1
  %145 = ptrtoint ptr %frequency_min_hz279.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 174000000, ptr %frequency_min_hz279.i.i, align 4
  %146 = load ptr, ptr %fe268.i.i, align 8
  %frequency_max_hz283.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %146, i32 0, i32 1, i32 0, i32 2
  %147 = ptrtoint ptr %frequency_max_hz283.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 862000000, ptr %frequency_max_hz283.i.i, align 4
  br label %sw.epilog.i.i

sw.bb285.i.i:                                     ; preds = %if.end96.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %148 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %148, i32 noundef 3264, i32 noundef 1560) #11
  %tobool287.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool287.not.i.i, label %do.end291.i.i, label %if.end294.i.i

do.end291.i.i:                                    ; preds = %sw.bb285.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call293.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #12
  br label %sw.epilog.i.i

if.end294.i.i:                                    ; preds = %sw.bb285.i.i
  %config.i.i = getelementptr inbounds %struct.dst_state, ptr %call7.i.i.i, i32 0, i32 2
  %149 = ptrtoint ptr %config.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @dst_config, ptr %config.i.i, align 8
  %150 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %i2c_adapter, align 4
  %152 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %151, ptr %call7.i.i.i, align 8
  %153 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %bt, align 8
  %bt296.i.i = getelementptr inbounds %struct.dst_state, ptr %call7.i.i.i, i32 0, i32 1
  %155 = ptrtoint ptr %bt296.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %154, ptr %bt296.i.i, align 4
  %dst_ca.i.i = getelementptr inbounds %struct.dst_state, ptr %call7.i.i.i, i32 0, i32 37
  %156 = ptrtoint ptr %dst_ca.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %dst_ca.i.i, align 4
  %call299.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.87) #8
  %tobool300.not.i.i = icmp eq ptr %call299.i.i, null
  br i1 %tobool300.not.i.i, label %cond.end305.i.i, label %if.end294.i.i.if.then308.i.i_crit_edge

if.end294.i.i.if.then308.i.i_crit_edge:           ; preds = %if.end294.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then308.i.i

cond.end305.i.i:                                  ; preds = %if.end294.i.i
  %call303.i.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.88) #8
  %call304.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.87) #8
  %tobool307.not.i.i = icmp eq ptr %call304.i.i, null
  br i1 %tobool307.not.i.i, label %do.end316.i.i, label %cond.end305.i.i.if.then308.i.i_crit_edge

cond.end305.i.i.if.then308.i.i_crit_edge:         ; preds = %cond.end305.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then308.i.i

if.then308.i.i:                                   ; preds = %cond.end305.i.i.if.then308.i.i_crit_edge, %if.end294.i.i.if.then308.i.i_crit_edge
  %cond306636.i.i = phi ptr [ %call304.i.i, %cond.end305.i.i.if.then308.i.i_crit_edge ], [ %call299.i.i, %if.end294.i.i.if.then308.i.i_crit_edge ]
  %call309.i.i = tail call ptr %cond306636.i.i(ptr noundef nonnull %call7.i.i.i, ptr noundef %dvb_adapter.i) #8
  %cmp310.i.i = icmp eq ptr %call309.i.i, null
  br i1 %cmp310.i.i, label %if.then311.i.i, label %if.end328.i.i

if.then311.i.i:                                   ; preds = %if.then308.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.87) #8
  br label %do.end325.i.i

do.end316.i.i:                                    ; preds = %cond.end305.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call318.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #12
  br label %do.end325.i.i

do.end325.i.i:                                    ; preds = %do.end316.i.i, %if.then311.i.i
  %call327.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.45) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %sw.epilog.i.i

if.end328.i.i:                                    ; preds = %if.then308.i.i
  %frontend.i.i = getelementptr inbounds %struct.dst_state, ptr %call7.i.i.i, i32 0, i32 3
  %fe329.i.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 15
  %157 = ptrtoint ptr %fe329.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %frontend.i.i, ptr %fe329.i.i, align 8
  %dst_hw_cap.i.i = getelementptr inbounds %struct.dst_state, ptr %call7.i.i.i, i32 0, i32 23
  %158 = ptrtoint ptr %dst_hw_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %dst_hw_cap.i.i, align 8
  %and.i.i = and i32 %159, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool330.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool330.not.i.i, label %if.end328.i.i.sw.epilog.i.i_crit_edge, label %if.then331.i.i

if.end328.i.i.sw.epilog.i.i_crit_edge:            ; preds = %if.end328.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

if.then331.i.i:                                   ; preds = %if.end328.i.i
  %call334.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.95) #8
  %tobool335.not.i.i = icmp eq ptr %call334.i.i, null
  br i1 %tobool335.not.i.i, label %cond.end340.i.i, label %if.then331.i.i.if.then343.i.i_crit_edge

if.then331.i.i.if.then343.i.i_crit_edge:          ; preds = %if.then331.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then343.i.i

cond.end340.i.i:                                  ; preds = %if.then331.i.i
  %call338.i.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.96) #8
  %call339.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.95) #8
  %tobool342.not.i.i = icmp eq ptr %call339.i.i, null
  br i1 %tobool342.not.i.i, label %do.end352.i.i, label %cond.end340.i.i.if.then343.i.i_crit_edge

cond.end340.i.i.if.then343.i.i_crit_edge:         ; preds = %cond.end340.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then343.i.i

if.then343.i.i:                                   ; preds = %cond.end340.i.i.if.then343.i.i_crit_edge, %if.then331.i.i.if.then343.i.i_crit_edge
  %cond341641.i.i = phi ptr [ %call339.i.i, %cond.end340.i.i.if.then343.i.i_crit_edge ], [ %call334.i.i, %if.then331.i.i.if.then343.i.i_crit_edge ]
  %call345.i.i = tail call ptr %cond341641.i.i(ptr noundef nonnull %call7.i.i.i, ptr noundef %dvb_adapter.i) #8
  %cmp346.i.i = icmp eq ptr %call345.i.i, null
  br i1 %cmp346.i.i, label %if.then347.i.i, label %if.then343.i.i.sw.epilog.i.i_crit_edge

if.then343.i.i.sw.epilog.i.i_crit_edge:           ; preds = %if.then343.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

if.then347.i.i:                                   ; preds = %if.then343.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.95) #8
  br label %sw.epilog.i.i

do.end352.i.i:                                    ; preds = %cond.end340.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call354.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #12
  br label %sw.epilog.i.i

sw.bb358.i.i:                                     ; preds = %if.end96.i
  %call361.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.100) #8
  %tobool362.not.i.i = icmp eq ptr %call361.i.i, null
  br i1 %tobool362.not.i.i, label %cond.end367.i.i, label %sw.bb358.i.i.if.then370.i.i_crit_edge

sw.bb358.i.i.if.then370.i.i_crit_edge:            ; preds = %sw.bb358.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then370.i.i

cond.end367.i.i:                                  ; preds = %sw.bb358.i.i
  %call365.i.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.101) #8
  %call366.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.100) #8
  %tobool369.not.i.i = icmp eq ptr %call366.i.i, null
  br i1 %tobool369.not.i.i, label %do.end379.i.i, label %cond.end367.i.i.if.then370.i.i_crit_edge

cond.end367.i.i.if.then370.i.i_crit_edge:         ; preds = %cond.end367.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then370.i.i

if.then370.i.i:                                   ; preds = %cond.end367.i.i.if.then370.i.i_crit_edge, %sw.bb358.i.i.if.then370.i.i_crit_edge
  %cond368644.i.i = phi ptr [ %call366.i.i, %cond.end367.i.i.if.then370.i.i_crit_edge ], [ %call361.i.i, %sw.bb358.i.i.if.then370.i.i_crit_edge ]
  %160 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %i2c_adapter, align 4
  %call372.i.i = tail call ptr %cond368644.i.i(ptr noundef nonnull @pctvsat_config, ptr noundef %161) #8
  %cmp373.i.i = icmp eq ptr %call372.i.i, null
  br i1 %cmp373.i.i, label %if.then374.i.i, label %if.then387.i.i

if.then374.i.i:                                   ; preds = %if.then370.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.100) #8
  br label %if.end382.thread.i.i

do.end379.i.i:                                    ; preds = %cond.end367.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call381.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #12
  br label %if.end382.thread.i.i

if.end382.thread.i.i:                             ; preds = %do.end379.i.i, %if.then374.i.i
  %fe384646.i.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 15
  %162 = ptrtoint ptr %fe384646.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr null, ptr %fe384646.i.i, align 8
  br label %sw.epilog.i.i

if.then387.i.i:                                   ; preds = %if.then370.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %fe384.i.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 15
  %163 = ptrtoint ptr %fe384.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call372.i.i, ptr %fe384.i.i, align 8
  %init.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %call372.i.i, i32 0, i32 1, i32 32, i32 2
  %164 = ptrtoint ptr %init.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @pinnsat_tuner_init, ptr %init.i.i, align 4
  %165 = load ptr, ptr %fe384.i.i, align 8
  %sleep.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %165, i32 0, i32 1, i32 32, i32 3
  %166 = ptrtoint ptr %sleep.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr @pinnsat_tuner_sleep, ptr %sleep.i.i, align 4
  %167 = load ptr, ptr %fe384.i.i, align 8
  %set_params397.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %167, i32 0, i32 1, i32 32, i32 6
  %168 = ptrtoint ptr %set_params397.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr @cx24108_tuner_set_params, ptr %set_params397.i.i, align 4
  br label %sw.epilog.i.i

sw.bb399.i.i:                                     ; preds = %if.end96.i
  %call402.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.105) #8
  %tobool403.not.i.i = icmp eq ptr %call402.i.i, null
  br i1 %tobool403.not.i.i, label %cond.end408.i.i, label %sw.bb399.i.i.if.then411.i.i_crit_edge

sw.bb399.i.i.if.then411.i.i_crit_edge:            ; preds = %sw.bb399.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then411.i.i

cond.end408.i.i:                                  ; preds = %sw.bb399.i.i
  %call406.i.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.106) #8
  %call407.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.105) #8
  %tobool410.not.i.i = icmp eq ptr %call407.i.i, null
  br i1 %tobool410.not.i.i, label %do.end420.i.i, label %cond.end408.i.i.if.then411.i.i_crit_edge

cond.end408.i.i.if.then411.i.i_crit_edge:         ; preds = %cond.end408.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then411.i.i

if.then411.i.i:                                   ; preds = %cond.end408.i.i.if.then411.i.i_crit_edge, %sw.bb399.i.i.if.then411.i.i_crit_edge
  %cond409650.i.i = phi ptr [ %call407.i.i, %cond.end408.i.i.if.then411.i.i_crit_edge ], [ %call402.i.i, %sw.bb399.i.i.if.then411.i.i_crit_edge ]
  %169 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %i2c_adapter, align 4
  %call413.i.i = tail call ptr %cond409650.i.i(ptr noundef nonnull @or51211_config, ptr noundef %170) #8
  %cmp414.i.i = icmp eq ptr %call413.i.i, null
  br i1 %cmp414.i.i, label %if.then415.i.i, label %if.then428.i.i

if.then415.i.i:                                   ; preds = %if.then411.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.105) #8
  br label %if.end423.thread.i.i

do.end420.i.i:                                    ; preds = %cond.end408.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call422.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108) #12
  br label %if.end423.thread.i.i

if.end423.thread.i.i:                             ; preds = %do.end420.i.i, %if.then415.i.i
  %fe425652.i.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 15
  %171 = ptrtoint ptr %fe425652.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr null, ptr %fe425652.i.i, align 8
  br label %sw.epilog.i.i

if.then428.i.i:                                   ; preds = %if.then411.i.i
  %fe425.i.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 15
  %172 = ptrtoint ptr %fe425.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %call413.i.i, ptr %fe425.i.i, align 8
  %call431.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.56) #8
  %tobool432.not.i.i = icmp eq ptr %call431.i.i, null
  br i1 %tobool432.not.i.i, label %cond.end437.i.i, label %if.then428.i.i.if.then440.i.i_crit_edge

if.then428.i.i.if.then440.i.i_crit_edge:          ; preds = %if.then428.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then440.i.i

cond.end437.i.i:                                  ; preds = %if.then428.i.i
  %call435.i.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.57) #8
  %call436.i.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.56) #8
  %tobool439.not.i.i = icmp eq ptr %call436.i.i, null
  br i1 %tobool439.not.i.i, label %do.end450.i.i, label %cond.end437.i.i.if.then440.i.i_crit_edge

cond.end437.i.i.if.then440.i.i_crit_edge:         ; preds = %cond.end437.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then440.i.i

if.then440.i.i:                                   ; preds = %cond.end437.i.i.if.then440.i.i_crit_edge, %if.then428.i.i.if.then440.i.i_crit_edge
  %cond438656.i.i = phi ptr [ %call436.i.i, %cond.end437.i.i.if.then440.i.i_crit_edge ], [ %call431.i.i, %if.then428.i.i.if.then440.i.i_crit_edge ]
  %173 = ptrtoint ptr %fe425.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %fe425.i.i, align 8
  %175 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %i2c_adapter, align 4
  %call443.i.i = tail call ptr %cond438656.i.i(ptr noundef %174, ptr noundef %176, i8 noundef zeroext 97, i32 noundef 42) #8
  %cmp444.i.i = icmp eq ptr %call443.i.i, null
  br i1 %cmp444.i.i, label %if.then445.i.i, label %if.then440.i.i.sw.epilog.i.i_crit_edge

if.then440.i.i.sw.epilog.i.i_crit_edge:           ; preds = %if.then440.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

if.then445.i.i:                                   ; preds = %if.then440.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.56) #8
  br label %sw.epilog.i.i

do.end450.i.i:                                    ; preds = %cond.end437.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call452.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #12
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %do.end450.i.i, %if.then445.i.i, %if.then440.i.i.sw.epilog.i.i_crit_edge, %if.end423.thread.i.i, %if.then387.i.i, %if.end382.thread.i.i, %do.end352.i.i, %if.then347.i.i, %if.then343.i.i.sw.epilog.i.i_crit_edge, %if.end328.i.i.sw.epilog.i.i_crit_edge, %do.end325.i.i, %do.end291.i.i, %if.then271.i.i, %if.end266.thread.i.i, %if.then236.i.i, %if.end231.thread.i.i, %do.end200.i.i, %if.then190.i.i.sw.epilog.i.i_crit_edge, %if.end185.thread.i.i, %do.end155.i.i, %if.then146.i.i.sw.epilog.i.i_crit_edge, %do.end110.i.i, %if.end103.i.i.sw.epilog.i.i_crit_edge, %if.end73.thread.i.i, %if.then41.i.i, %if.end38.thread598.i.i, %if.end96.i.sw.epilog.i.i_crit_edge
  %fe456.i.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 15
  %177 = ptrtoint ptr %fe456.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %fe456.i.i, align 8
  %cmp457.i.i = icmp eq ptr %178, null
  br i1 %cmp457.i.i, label %do.end461.i.i, label %if.else474.i.i

do.end461.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %179 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %bt, align 8
  %dev.i.i = getelementptr inbounds %struct.bt878, ptr %180, i32 0, i32 4
  %181 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev.i.i, align 4
  %vendor.i.i = getelementptr inbounds %struct.pci_dev, ptr %182, i32 0, i32 7
  %183 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %vendor.i.i, align 8
  %conv.i.i = zext i16 %184 to i32
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %182, i32 0, i32 8
  %185 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %device.i.i, align 2
  %conv466.i.i = zext i16 %186 to i32
  %subsystem_vendor.i.i141 = getelementptr inbounds %struct.pci_dev, ptr %182, i32 0, i32 9
  %187 = ptrtoint ptr %subsystem_vendor.i.i141 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %subsystem_vendor.i.i141, align 4
  %conv469.i.i = zext i16 %188 to i32
  %subsystem_device.i.i142 = getelementptr inbounds %struct.pci_dev, ptr %182, i32 0, i32 10
  %189 = ptrtoint ptr %subsystem_device.i.i142 to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %subsystem_device.i.i142, align 2
  %conv472.i.i = zext i16 %190 to i32
  %call473.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, i32 noundef %conv.i.i, i32 noundef %conv466.i.i, i32 noundef %conv469.i.i, i32 noundef %conv472.i.i) #12
  br label %if.end90

if.else474.i.i:                                   ; preds = %sw.epilog.i.i
  %call477.i.i = tail call i32 @dvb_register_frontend(ptr noundef %dvb_adapter.i, ptr noundef nonnull %178) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call477.i.i)
  %tobool478.not.i.i = icmp eq i32 %call477.i.i, 0
  br i1 %tobool478.not.i.i, label %if.else474.i.i.if.end90_crit_edge, label %do.end482.i.i

if.else474.i.i.if.end90_crit_edge:                ; preds = %if.else474.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

do.end482.i.i:                                    ; preds = %if.else474.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call484.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #12
  %191 = ptrtoint ptr %fe456.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %fe456.i.i, align 8
  tail call void @dvb_frontend_detach(ptr noundef %192) #8
  %193 = ptrtoint ptr %fe456.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr null, ptr %fe456.i.i, align 8
  br label %if.end90

err_remove_mem_frontend.i:                        ; preds = %do.end93.i, %do.end81.i
  %result.0.i = phi i32 [ %call76.i, %do.end81.i ], [ %call88.i, %do.end93.i ]
  %remove_frontend.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 11
  %194 = ptrtoint ptr %remove_frontend.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %remove_frontend.i, align 4
  %call108.i = tail call i32 %195(ptr noundef %demux.i, ptr noundef %fe_mem.i) #8
  br label %err_remove_hw_frontend.i

err_remove_hw_frontend.i:                         ; preds = %err_remove_mem_frontend.i, %do.end67.i
  %result.1.i = phi i32 [ %call62.i, %do.end67.i ], [ %result.0.i, %err_remove_mem_frontend.i ]
  %remove_frontend111.i = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 11
  %196 = ptrtoint ptr %remove_frontend111.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %remove_frontend111.i, align 4
  %call115.i = tail call i32 %197(ptr noundef %demux.i, ptr noundef %fe_hw.i) #8
  br label %err_dmxdev_release.i

err_dmxdev_release.i:                             ; preds = %err_remove_hw_frontend.i, %do.end51.i
  %result.2.i = phi i32 [ %call46.i, %do.end51.i ], [ %result.1.i, %err_remove_hw_frontend.i ]
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev.i) #8
  br label %err_dmx_release.i

err_dmx_release.i:                                ; preds = %err_dmxdev_release.i, %do.end37.i
  %result.3.i = phi i32 [ %call32.i, %do.end37.i ], [ %result.2.i, %err_dmxdev_release.i ]
  tail call void @dvb_dmx_release(ptr noundef %demux.i) #8
  br label %err_unregister_adaptor.i

err_unregister_adaptor.i:                         ; preds = %err_dmx_release.i, %do.end19.i
  %result.4.i = phi i32 [ %call14.i, %do.end19.i ], [ %result.3.i, %err_dmx_release.i ]
  %call119.i = tail call i32 @dvb_unregister_adapter(ptr noundef %dvb_adapter.i) #8
  br label %if.then89

if.then89:                                        ; preds = %err_unregister_adaptor.i, %do.end.i
  %retval.0.i143 = phi i32 [ %call.i, %do.end.i ], [ %result.4.i, %err_unregister_adaptor.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end90:                                         ; preds = %do.end482.i.i, %if.else474.i.i.if.end90_crit_edge, %do.end461.i.i
  %driver_data.i = getelementptr inbounds %struct.device, ptr %sub, i32 0, i32 8
  %198 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %if.then89, %do.end67, %do.end56, %do.end32, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end32 ], [ %retval.0.i143, %if.then89 ], [ 0, %if.end90 ], [ -19, %do.end67 ], [ -19, %do.end56 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dvb_bt8xx_remove(ptr nocapture noundef readonly %sub) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %sub, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bttv_nr = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %bttv_nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bttv_nr, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133, i32 noundef %4) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %bt = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bt, align 8
  tail call void @bt878_stop(ptr noundef %6) #8
  %7 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bt, align 8
  %tasklet = getelementptr inbounds %struct.bt878, ptr %8, i32 0, i32 24
  tail call void @tasklet_kill(ptr noundef %tasklet) #8
  %dvbnet = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %1, i32 0, i32 14
  tail call void @dvb_net_release(ptr noundef %dvbnet) #8
  %demux = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %1, i32 0, i32 6
  %remove_frontend = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %1, i32 0, i32 6, i32 0, i32 11
  %9 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %remove_frontend, align 4
  %fe_mem = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %1, i32 0, i32 9
  %call8 = tail call i32 %10(ptr noundef %demux, ptr noundef %fe_mem) #8
  %11 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %remove_frontend, align 4
  %fe_hw = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %1, i32 0, i32 8
  %call14 = tail call i32 %12(ptr noundef %demux, ptr noundef %fe_hw) #8
  %dmxdev = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %1, i32 0, i32 7
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #8
  tail call void @dvb_dmx_release(ptr noundef %demux) #8
  %fe = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fe, align 8
  %tobool16.not = icmp eq ptr %14, null
  br i1 %tobool16.not, label %do.end4.if.end21_crit_edge, label %if.then17

do.end4.if.end21_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then17:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 @dvb_unregister_frontend(ptr noundef nonnull %14) #8
  %15 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fe, align 8
  tail call void @dvb_frontend_detach(ptr noundef %16) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %do.end4.if.end21_crit_edge
  %dvb_adapter = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %1, i32 0, i32 3
  %call22 = tail call i32 @dvb_unregister_adapter(ptr noundef %dvb_adapter) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bttv_get_pcidev(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_bt8xx_start_feed(ptr nocapture noundef readonly %dvbdmxfeed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %frontend = getelementptr inbounds %struct.dmx_demux, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %frontend, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #8
  %nfeeds = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %nfeeds to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nfeeds, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %nfeeds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then9, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %bt = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bt, align 8
  %gpio_mode = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %3, i32 0, i32 10
  %11 = ptrtoint ptr %gpio_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gpio_mode, align 8
  %op_sync_orin = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %3, i32 0, i32 11
  %13 = ptrtoint ptr %op_sync_orin to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %op_sync_orin, align 4
  %irq_err_ignore = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %irq_err_ignore to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq_err_ignore, align 8
  tail call void @bt878_start(ptr noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6.if.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %inc, %if.end10 ], [ -22, %do.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_bt8xx_stop_feed(ptr nocapture noundef readonly %dvbdmxfeed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %frontend = getelementptr inbounds %struct.dmx_demux, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %frontend, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #8
  %nfeeds = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %nfeeds to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nfeeds, align 4
  %dec = add i32 %8, -1
  store i32 %dec, ptr %nfeeds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then8, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %bt = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bt, align 8
  tail call void @bt878_stop(ptr noundef %10) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %do.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_net_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dvb_bt8xx_task(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr i8, ptr %t, i32 -84
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %driver_data.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bt3 = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %bt3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bt3, align 8
  %finished_block = getelementptr inbounds %struct.bt878, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %finished_block to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %finished_block, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %8) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %bt7 = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %bt7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bt7, align 8
  %last_block34 = getelementptr inbounds %struct.bt878, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %last_block34 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %last_block34, align 4
  %finished_block935 = getelementptr inbounds %struct.bt878, ptr %10, i32 0, i32 11
  %13 = ptrtoint ptr %finished_block935 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %finished_block935, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.not36 = icmp eq i32 %12, %14
  br i1 %cmp.not36, label %do.end6.while.end_crit_edge, label %while.body.lr.ph

do.end6.while.end_crit_edge:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end6
  %demux = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %3, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %last_block37 = phi ptr [ %last_block34, %while.body.lr.ph ], [ %last_block, %while.body.while.body_crit_edge ]
  %15 = phi ptr [ %10, %while.body.lr.ph ], [ %30, %while.body.while.body_crit_edge ]
  %TS_Size = getelementptr inbounds %struct.bt878, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %TS_Size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %TS_Size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool11.not = icmp eq i32 %17, 0
  %cond = select i1 %tobool11.not, ptr @dvb_dmx_swfilter, ptr @dvb_dmx_swfilter_204
  %buf_cpu = getelementptr inbounds %struct.bt878, ptr %15, i32 0, i32 18
  %18 = ptrtoint ptr %buf_cpu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf_cpu, align 4
  %20 = ptrtoint ptr %last_block37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %last_block37, align 4
  %block_bytes = getelementptr inbounds %struct.bt878, ptr %15, i32 0, i32 14
  %22 = ptrtoint ptr %block_bytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %block_bytes, align 4
  %mul = mul i32 %23, %21
  %arrayidx = getelementptr i8, ptr %19, i32 %mul
  tail call void %cond(ptr noundef %demux, ptr noundef %arrayidx, i32 noundef %23) #8, !callees !295
  %24 = ptrtoint ptr %bt7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bt7, align 8
  %last_block19 = getelementptr inbounds %struct.bt878, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %last_block19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %last_block19, align 4
  %add = add i32 %27, 1
  %block_count = getelementptr inbounds %struct.bt878, ptr %25, i32 0, i32 13
  %28 = ptrtoint ptr %block_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %block_count, align 4
  %rem = urem i32 %add, %29
  store volatile i32 %rem, ptr %last_block19, align 4
  %30 = load ptr, ptr %bt7, align 8
  %last_block = getelementptr inbounds %struct.bt878, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %last_block to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %last_block, align 4
  %finished_block9 = getelementptr inbounds %struct.bt878, ptr %30, i32 0, i32 11
  %33 = ptrtoint ptr %finished_block9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %finished_block9, align 4
  %cmp.not = icmp eq i32 %32, %34
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end6.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt878_start(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt878_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter_204(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @thomson_dtt7579_tuner_calc_regs(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %pllbuf, i32 noundef %buf_len) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %buf_len)
  %cmp = icmp slt i32 %buf_len, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %0 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dtv_property_cache, align 4
  %2 = mul i32 %1, 3
  %mul = add i32 %2, 249999
  %div1 = udiv i32 %mul, 500000
  %add2 = add nuw nsw i32 %div1, 217
  call void @__sanitizer_cov_trace_const_cmp4(i32 542000000, i32 %1)
  %cmp4 = icmp ult i32 %1, 542000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 771000000, i32 %1)
  %cmp7 = icmp ult i32 %1, 771000000
  %. = select i1 %cmp7, i8 -68, i8 -12
  %cp.0 = select i1 %cmp4, i8 -76, i8 %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp13 = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 443250000, i32 %1)
  %cmp17 = icmp ult i32 %1, 443250000
  %.40 = select i1 %cmp17, i8 2, i8 8
  %bs.0 = select i1 %cmp13, i8 3, i8 %.40
  %3 = ptrtoint ptr %pllbuf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 96, ptr %pllbuf, align 1
  %shr = lshr i32 %add2, 8
  %conv = trunc i32 %shr to i8
  %arrayidx22 = getelementptr i8, ptr %pllbuf, i32 1
  %4 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx22, align 1
  %conv23 = trunc i32 %add2 to i8
  %arrayidx24 = getelementptr i8, ptr %pllbuf, i32 2
  %5 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv23, ptr %arrayidx24, align 1
  %arrayidx25 = getelementptr i8, ptr %pllbuf, i32 3
  %6 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %cp.0, ptr %arrayidx25, align 1
  %arrayidx26 = getelementptr i8, ptr %pllbuf, i32 4
  %7 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %bs.0, ptr %arrayidx26, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 5, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @digitv_alps_tded4_reset(ptr nocapture noundef readonly %bt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bttv_nr = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %bt, i32 0, i32 5
  %0 = ptrtoint ptr %bttv_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bttv_nr, align 4
  %call = tail call i32 @bttv_gpio_enable(i32 noundef %1, i32 noundef 8, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef %call) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %bttv_nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bttv_nr, align 4
  %call3 = tail call i32 @bttv_write_gpio(i32 noundef %3, i32 noundef 8, i32 noundef 8) #8
  %4 = ptrtoint ptr %bttv_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bttv_nr, align 4
  %call5 = tail call i32 @bttv_write_gpio(i32 noundef %5, i32 noundef 8, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 100) #8
  %6 = ptrtoint ptr %bttv_nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bttv_nr, align 4
  %call7 = tail call i32 @bttv_write_gpio(i32 noundef %7, i32 noundef 8, i32 noundef 8) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp3021_alps_tded4_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #8
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %7 = getelementptr inbounds i8, ptr %buf, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #8
  %9 = getelementptr inbounds i8, ptr %msg, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 96, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 4, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %14 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf, ptr %buf1, align 4
  %15 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dtv_property_cache, align 4
  %add = add i32 %16, 36166667
  %div2 = udiv i32 %add, 166667
  %shr = lshr i32 %div2, 8
  %conv = trunc i32 %shr to i8
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %buf, align 1
  %conv4 = trunc i32 %div2 to i8
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv4, ptr %4, align 1
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -123, ptr %5, align 1
  %20 = add i32 %16, -47000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 106000000, i32 %20)
  %21 = icmp ult i32 %20, 106000000
  br i1 %21, label %entry.if.end45_crit_edge, label %if.else

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.else:                                          ; preds = %entry
  %22 = add i32 %16, -153000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 277000000, i32 %22)
  %23 = icmp ult i32 %22, 277000000
  br i1 %23, label %if.else.if.end45_crit_edge, label %if.else22

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.else22:                                        ; preds = %if.else
  %24 = add i32 %16, -430000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 394000000, i32 %24)
  %25 = icmp ult i32 %24, 394000000
  br i1 %25, label %if.else22.if.end45_crit_edge, label %if.else32

if.else22.if.end45_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.else32:                                        ; preds = %if.else22
  %26 = add i32 %16, -824000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 39000000, i32 %26)
  %27 = icmp ult i32 %26, 39000000
  br i1 %27, label %if.else32.if.end45_crit_edge, label %if.else32.cleanup_crit_edge

if.else32.cleanup_crit_edge:                      ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else32.if.end45_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.end45:                                         ; preds = %if.else32.if.end45_crit_edge, %if.else22.if.end45_crit_edge, %if.else.if.end45_crit_edge, %entry.if.end45_crit_edge
  %.sink = phi i8 [ 1, %entry.if.end45_crit_edge ], [ 2, %if.else.if.end45_crit_edge ], [ 12, %if.else22.if.end45_crit_edge ], [ -116, %if.else32.if.end45_crit_edge ]
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %.sink, ptr %6, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %29 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %if.end45.if.end49_crit_edge, label %if.then46

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then46:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %call = call i32 %30(ptr noundef %fe, i32 noundef 1) #8
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end45.if.end49_crit_edge
  %i2c_adapter = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %3, i32 0, i32 13
  %31 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c_adapter, align 4
  %call50 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %msg, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.else32.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end49 ], [ -22, %if.else32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digitv_alps_tded4_tuner_calc_regs(ptr nocapture noundef readonly %fe, ptr nocapture noundef %pllbuf, i32 noundef %buf_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %buf_len)
  %cmp = icmp slt i32 %buf_len, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dtv_property_cache, align 4
  %2 = mul i32 %1, 3
  %mul = add i32 %2, 249999
  %div1 = udiv i32 %mul, 500000
  %add2 = add nuw nsw i32 %div1, 217
  %3 = ptrtoint ptr %pllbuf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 97, ptr %pllbuf, align 1
  %shr = lshr i32 %add2, 8
  %conv = trunc i32 %shr to i8
  %arrayidx3 = getelementptr i8, ptr %pllbuf, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx3, align 1
  %conv5 = trunc i32 %add2 to i8
  %arrayidx6 = getelementptr i8, ptr %pllbuf, i32 2
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv5, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr i8, ptr %pllbuf, i32 3
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -123, ptr %arrayidx7, align 1
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end.do.end13_crit_edge, label %do.end

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dtv_property_cache, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121, i32 noundef %9, i32 noundef %add2) #12
  br label %do.end13

do.end13:                                         ; preds = %do.end, %if.end.do.end13_crit_edge
  %10 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 470000000, i32 %11)
  %cmp15 = icmp ult i32 %11, 470000000
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx18 = getelementptr i8, ptr %pllbuf, i32 4
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %arrayidx18, align 1
  br label %if.end27

if.else:                                          ; preds = %do.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 823000000, i32 %11)
  %cmp20 = icmp ugt i32 %11, 823000000
  %arrayidx23 = getelementptr i8, ptr %pllbuf, i32 4
  br i1 %cmp20, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -120, ptr %arrayidx23, align 1
  br label %if.end27

if.else24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %arrayidx23, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.else24, %if.then22, %if.then17
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %15 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %16)
  %cmp28 = icmp eq i32 %16, 8000000
  br i1 %cmp28, label %if.then30, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx31 = getelementptr i8, ptr %pllbuf, i32 4
  %17 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx31, align 1
  %19 = or i8 %18, 4
  store i8 %19, ptr %arrayidx31, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end27.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 5, %if.then30 ], [ 5, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @microtune_mt7202dtf_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %data = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #8
  %4 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #8
  %7 = getelementptr inbounds i8, ptr %msg, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 96, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %data, ptr %buf, align 4
  %13 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dtv_property_cache, align 4
  %add1 = add i32 %14, 36083333
  %div2 = udiv i32 %add1, 166666
  call void @__sanitizer_cov_trace_const_cmp4(i32 175000000, i32 %14)
  %cmp = icmp ult i32 %14, 175000000
  br i1 %cmp, label %entry.if.end18_crit_edge, label %if.else

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 390000000, i32 %14)
  %cmp5 = icmp ult i32 %14, 390000000
  br i1 %cmp5, label %if.else.if.end18_crit_edge, label %if.else7

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 470000000, i32 %14)
  %cmp9 = icmp ult i32 %14, 470000000
  br i1 %cmp9, label %if.else7.if.end18_crit_edge, label %if.else11

if.else7.if.end18_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.else11:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 750000000, i32 %14)
  %cmp13 = icmp ult i32 %14, 750000000
  %. = select i1 %cmp13, i8 -128, i8 -64
  br label %if.end18

if.end18:                                         ; preds = %if.else11, %if.else7.if.end18_crit_edge, %if.else.if.end18_crit_edge, %entry.if.end18_crit_edge
  %cpump.0 = phi i8 [ -128, %entry.if.end18_crit_edge ], [ 64, %if.else.if.end18_crit_edge ], [ -128, %if.else7.if.end18_crit_edge ], [ %., %if.else11 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 470000000, i32 %14)
  %cmp24 = icmp ult i32 %14, 470000000
  %.62 = select i1 %cmp24, i8 5, i8 3
  %band_select.0 = select i1 %cmp, i8 14, i8 %.62
  %shr = lshr i32 %div2, 8
  %conv = trunc i32 %shr to i8
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %data, align 1
  %conv30 = trunc i32 %div2 to i8
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv30, ptr %4, align 1
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -120, ptr %5, align 1
  %or39 = or i8 %cpump.0, %band_select.0
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %or39, ptr %6, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %19 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %if.end18.if.end45_crit_edge, label %if.then42

if.end18.if.end45_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then42:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call = call i32 %20(ptr noundef %fe, i32 noundef 1) #8
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end18.if.end45_crit_edge
  %i2c_adapter = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %3, i32 0, i32 13
  %21 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_adapter, align 4
  %call46 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg, i32 noundef 1) #8
  %mul = mul nuw i32 %div2, 166666
  %sub = add i32 %mul, -36000000
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #8
  ret i32 %sub
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @advbt771_samsung_tdtc9251dh0_tuner_calc_regs(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %pllbuf, i32 noundef %buf_len) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %buf_len)
  %cmp = icmp slt i32 %buf_len, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %0 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dtv_property_cache, align 4
  %2 = mul i32 %1, 3
  %mul = add i32 %2, 249999
  %div1 = udiv i32 %mul, 500000
  %add2 = add nuw nsw i32 %div1, 217
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000000, i32 %1)
  %cmp4 = icmp ult i32 %1, 150000000
  br i1 %cmp4, label %if.end.if.end71_crit_edge, label %if.else

if.end.if.end71_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 173000000, i32 %1)
  %cmp7 = icmp ult i32 %1, 173000000
  br i1 %cmp7, label %if.else.if.end71_crit_edge, label %if.else9

if.else.if.end71_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000000, i32 %1)
  %cmp11 = icmp ult i32 %1, 250000000
  br i1 %cmp11, label %if.else9.if.end71_crit_edge, label %if.else13

if.else9.if.end71_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.else13:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000000, i32 %1)
  %cmp15 = icmp ult i32 %1, 400000000
  br i1 %cmp15, label %if.else13.if.end71_crit_edge, label %if.else17

if.else13.if.end71_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.else17:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_const_cmp4(i32 420000000, i32 %1)
  %cmp19 = icmp ult i32 %1, 420000000
  br i1 %cmp19, label %if.else17.if.end71_crit_edge, label %if.else21

if.else17.if.end71_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.else21:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_const_cmp4(i32 470000000, i32 %1)
  %cmp23 = icmp ult i32 %1, 470000000
  br i1 %cmp23, label %if.else21.if.end71_crit_edge, label %if.else25

if.else21.if.end71_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.else25:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_const_cmp4(i32 600000000, i32 %1)
  %cmp27 = icmp ult i32 %1, 600000000
  br i1 %cmp27, label %if.else25.if.end71_crit_edge, label %if.else29

if.else25.if.end71_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.else29:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 730000000, i32 %1)
  %cmp31 = icmp ult i32 %1, 730000000
  %. = select i1 %cmp31, i8 -12, i8 -4
  br label %if.end71

if.end71:                                         ; preds = %if.else29, %if.else25.if.end71_crit_edge, %if.else21.if.end71_crit_edge, %if.else17.if.end71_crit_edge, %if.else13.if.end71_crit_edge, %if.else9.if.end71_crit_edge, %if.else.if.end71_crit_edge, %if.end.if.end71_crit_edge
  %cp.0106 = phi i8 [ -76, %if.end.if.end71_crit_edge ], [ -68, %if.else.if.end71_crit_edge ], [ -76, %if.else9.if.end71_crit_edge ], [ -68, %if.else13.if.end71_crit_edge ], [ -12, %if.else17.if.end71_crit_edge ], [ -4, %if.else21.if.end71_crit_edge ], [ -68, %if.else25.if.end71_crit_edge ], [ %., %if.else29 ]
  %bs.0 = phi i8 [ 1, %if.end.if.end71_crit_edge ], [ 1, %if.else.if.end71_crit_edge ], [ 2, %if.else9.if.end71_crit_edge ], [ 2, %if.else13.if.end71_crit_edge ], [ 2, %if.else17.if.end71_crit_edge ], [ 2, %if.else21.if.end71_crit_edge ], [ 8, %if.else25.if.end71_crit_edge ], [ 8, %if.else29 ]
  %3 = ptrtoint ptr %pllbuf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 97, ptr %pllbuf, align 1
  %shr = lshr i32 %add2, 8
  %conv = trunc i32 %shr to i8
  %arrayidx72 = getelementptr i8, ptr %pllbuf, i32 1
  %4 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx72, align 1
  %conv73 = trunc i32 %add2 to i8
  %arrayidx74 = getelementptr i8, ptr %pllbuf, i32 2
  %5 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv73, ptr %arrayidx74, align 1
  %arrayidx75 = getelementptr i8, ptr %pllbuf, i32 3
  %6 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %cp.0106, ptr %arrayidx75, align 1
  %arrayidx76 = getelementptr i8, ptr %pllbuf, i32 4
  %7 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %bs.0, ptr %arrayidx76, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 5, %if.end71 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinnsat_tuner_init(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %bttv_nr = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bttv_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bttv_nr, align 4
  %call = tail call i32 @bttv_gpio_enable(i32 noundef %5, i32 noundef 1, i32 noundef 1) #8
  %6 = ptrtoint ptr %bttv_nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bttv_nr, align 4
  %call2 = tail call i32 @bttv_write_gpio(i32 noundef %7, i32 noundef 1, i32 noundef 1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinnsat_tuner_sleep(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %bttv_nr = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bttv_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bttv_nr, align 4
  %call = tail call i32 @bttv_write_gpio(i32 noundef %5, i32 noundef 1, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24108_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %buf.i92 = alloca [3 x i8], align 1
  %buf.i86 = alloca [3 x i8], align 1
  %buf.i80 = alloca [3 x i8], align 1
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %0 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dtv_property_cache, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123, i32 noundef %1) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = tail call i32 @llvm.umin.i32(i32 %1, i32 2150000)
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 950000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1019000, i32 %4)
  %cmp10 = icmp ugt i32 %4, 1019000
  br i1 %cmp10, label %for.inc, label %do.end3.do.body11_crit_edge

do.end3.do.body11_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

for.inc:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1075000, i32 %4)
  %cmp10.1 = icmp ugt i32 %4, 1075000
  br i1 %cmp10.1, label %for.inc.1, label %for.inc.do.body11_crit_edge

for.inc.do.body11_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 1178000, i32 %4)
  %cmp10.2 = icmp ugt i32 %4, 1178000
  br i1 %cmp10.2, label %for.inc.2, label %for.inc.1.do.body11_crit_edge

for.inc.1.do.body11_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1296000, i32 %4)
  %cmp10.3 = icmp ugt i32 %4, 1296000
  br i1 %cmp10.3, label %for.inc.3, label %for.inc.2.do.body11_crit_edge

for.inc.2.do.body11_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1432000, i32 %4)
  %cmp10.4 = icmp ugt i32 %4, 1432000
  br i1 %cmp10.4, label %for.inc.4, label %for.inc.3.do.body11_crit_edge

for.inc.3.do.body11_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1576000, i32 %4)
  %cmp10.5 = icmp ugt i32 %4, 1576000
  br i1 %cmp10.5, label %for.inc.5, label %for.inc.4.do.body11_crit_edge

for.inc.4.do.body11_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1718000, i32 %4)
  %cmp10.6 = icmp ugt i32 %4, 1718000
  br i1 %cmp10.6, label %for.inc.6, label %for.inc.5.do.body11_crit_edge

for.inc.5.do.body11_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1856000, i32 %4)
  %cmp10.7 = icmp ugt i32 %4, 1856000
  br i1 %cmp10.7, label %for.inc.7, label %for.inc.6.do.body11_crit_edge

for.inc.6.do.body11_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2036000, i32 %4)
  %cmp10.8 = icmp ugt i32 %4, 2036000
  %spec.select105 = select i1 %cmp10.8, i32 10, i32 9
  br label %do.body11

do.body11:                                        ; preds = %for.inc.7, %for.inc.6.do.body11_crit_edge, %for.inc.5.do.body11_crit_edge, %for.inc.4.do.body11_crit_edge, %for.inc.3.do.body11_crit_edge, %for.inc.2.do.body11_crit_edge, %for.inc.1.do.body11_crit_edge, %for.inc.do.body11_crit_edge, %do.end3.do.body11_crit_edge
  %cmp23.inv = phi i32 [ 1, %for.inc.6.do.body11_crit_edge ], [ 1, %for.inc.5.do.body11_crit_edge ], [ 1, %for.inc.4.do.body11_crit_edge ], [ 1, %for.inc.3.do.body11_crit_edge ], [ 1, %for.inc.2.do.body11_crit_edge ], [ 1, %for.inc.1.do.body11_crit_edge ], [ 2, %for.inc.do.body11_crit_edge ], [ 2, %do.end3.do.body11_crit_edge ], [ 1, %for.inc.7 ]
  %i.0.lcssa = phi i32 [ 8, %for.inc.6.do.body11_crit_edge ], [ 7, %for.inc.5.do.body11_crit_edge ], [ 6, %for.inc.4.do.body11_crit_edge ], [ 5, %for.inc.3.do.body11_crit_edge ], [ 4, %for.inc.2.do.body11_crit_edge ], [ 3, %for.inc.1.do.body11_crit_edge ], [ 2, %for.inc.do.body11_crit_edge ], [ 1, %do.end3.do.body11_crit_edge ], [ %spec.select105, %for.inc.7 ]
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool12.not = icmp eq i32 %5, 0
  br i1 %tobool12.not, label %do.body11.do.end21_crit_edge, label %do.end16

do.body11.do.end21_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21

do.end16:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.123, i32 noundef %i.0.lcssa, i32 noundef %4) #12
  br label %do.end21

do.end21:                                         ; preds = %do.end16, %do.body11.do.end21_crit_edge
  %arrayidx22 = getelementptr [11 x i32], ptr @__const.cx24108_tuner_set_params.bandsel, i32 0, i32 %i.0.lcssa
  %6 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx22, align 4
  %mul = mul nuw nsw i32 %4, 10
  %mul24 = mul nuw nsw i32 %mul, %cmp23.inv
  %div = udiv i32 %mul24, 10111
  %rem = and i32 %div, 31
  %div25 = udiv i32 %mul24, 323552
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp26 = icmp eq i32 %rem, 0
  %dec = sext i1 %cmp26 to i32
  %spec.select = add nsw i32 %div25, %dec
  %sub = add nsw i32 %i.0.lcssa, -1
  %arrayidx29 = getelementptr [11 x i32], ptr @__const.cx24108_tuner_set_params.osci, i32 0, i32 %sub
  %8 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx29, align 4
  %arrayidx30 = getelementptr [11 x i32], ptr @__const.cx24108_tuner_set_params.osci, i32 0, i32 %i.0.lcssa
  %10 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx30, align 4
  %add = add i32 %11, %9
  %div3179 = lshr i32 %add, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %div3179)
  %cmp32 = icmp ult i32 %4, %div3179
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool41.not = icmp eq i32 %12, 0
  br i1 %tobool41.not, label %do.end21.do.end50_crit_edge, label %do.end45

do.end21.do.end50_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50

do.end45:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i1 %cmp32 to i32
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.123, i32 noundef %conv, i32 noundef %spec.select, i32 noundef %rem) #12
  br label %do.end50

do.end50:                                         ; preds = %do.end45, %do.end21.do.end50_crit_edge
  %or = select i1 %cmp32, i32 -100663296, i32 -67108864
  %and = shl nuw nsw i32 %spec.select, 16
  %shl35 = and i32 %and, 16777216
  %or36 = or i32 %or, %shl35
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #8
  %13 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %14 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %shr.i = lshr i32 %7, 24
  %conv.i = trunc i32 %shr.i to i8
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %buf.i, align 1
  %shr1.i = lshr i32 %7, 16
  %conv3.i = trunc i32 %shr1.i to i8
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv3.i, ptr %13, align 1
  %shr5.i = lshr i32 %7, 8
  %conv7.i = trunc i32 %shr5.i to i8
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv7.i, ptr %14, align 1
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %18 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %do.end50.cx24110_pll_write.exit_crit_edge, label %if.then.i

do.end50.cx24110_pll_write.exit_crit_edge:        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24110_pll_write.exit

if.then.i:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 %19(ptr noundef %fe, ptr noundef nonnull %buf.i, i32 noundef 3) #8
  br label %cx24110_pll_write.exit

cx24110_pll_write.exit:                           ; preds = %if.then.i, %do.end50.cx24110_pll_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i80) #8
  %20 = getelementptr inbounds [3 x i8], ptr %buf.i80, i32 0, i32 1
  %21 = getelementptr inbounds [3 x i8], ptr %buf.i80, i32 0, i32 2
  %22 = ptrtoint ptr %buf.i80 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 80, ptr %buf.i80, align 1
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 12, ptr %20, align 1
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %21, align 1
  %25 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write.i, align 4
  %tobool.not.i82 = icmp eq ptr %26, null
  br i1 %tobool.not.i82, label %cx24110_pll_write.exit.cx24110_pll_write.exit85_crit_edge, label %if.then.i84

cx24110_pll_write.exit.cx24110_pll_write.exit85_crit_edge: ; preds = %cx24110_pll_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24110_pll_write.exit85

if.then.i84:                                      ; preds = %cx24110_pll_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i83 = call i32 %26(ptr noundef %fe, ptr noundef nonnull %buf.i80, i32 noundef 3) #8
  br label %cx24110_pll_write.exit85

cx24110_pll_write.exit85:                         ; preds = %if.then.i84, %cx24110_pll_write.exit.cx24110_pll_write.exit85_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i80) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i86) #8
  %27 = getelementptr inbounds [3 x i8], ptr %buf.i86, i32 0, i32 1
  %28 = getelementptr inbounds [3 x i8], ptr %buf.i86, i32 0, i32 2
  %29 = ptrtoint ptr %buf.i86 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -125, ptr %buf.i86, align 1
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -15, ptr %27, align 1
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -8, ptr %28, align 1
  %32 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write.i, align 4
  %tobool.not.i88 = icmp eq ptr %33, null
  br i1 %tobool.not.i88, label %cx24110_pll_write.exit85.cx24110_pll_write.exit91_crit_edge, label %if.then.i90

cx24110_pll_write.exit85.cx24110_pll_write.exit91_crit_edge: ; preds = %cx24110_pll_write.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24110_pll_write.exit91

if.then.i90:                                      ; preds = %cx24110_pll_write.exit85
  call void @__sanitizer_cov_trace_pc() #10
  %call.i89 = call i32 %33(ptr noundef %fe, ptr noundef nonnull %buf.i86, i32 noundef 3) #8
  br label %cx24110_pll_write.exit91

cx24110_pll_write.exit91:                         ; preds = %if.then.i90, %cx24110_pll_write.exit85.cx24110_pll_write.exit91_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i86) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i92) #8
  %34 = getelementptr inbounds [3 x i8], ptr %buf.i92, i32 0, i32 1
  %35 = getelementptr inbounds [3 x i8], ptr %buf.i92, i32 0, i32 2
  %shr.i93 = lshr exact i32 %or36, 24
  %conv.i94 = trunc i32 %shr.i93 to i8
  %36 = ptrtoint ptr %buf.i92 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv.i94, ptr %buf.i92, align 1
  %conv3.i96 = trunc i32 %spec.select to i8
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv3.i96, ptr %34, align 1
  %div.tr = trunc i32 %div to i8
  %conv7.i98 = shl i8 %div.tr, 3
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv7.i98, ptr %35, align 1
  %39 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write.i, align 4
  %tobool.not.i100 = icmp eq ptr %40, null
  br i1 %tobool.not.i100, label %cx24110_pll_write.exit91.cx24110_pll_write.exit103_crit_edge, label %if.then.i102

cx24110_pll_write.exit91.cx24110_pll_write.exit103_crit_edge: ; preds = %cx24110_pll_write.exit91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24110_pll_write.exit103

if.then.i102:                                     ; preds = %cx24110_pll_write.exit91
  call void @__sanitizer_cov_trace_pc() #10
  %call.i101 = call i32 %40(ptr noundef %fe, ptr noundef nonnull %buf.i92, i32 noundef 3) #8
  br label %cx24110_pll_write.exit103

cx24110_pll_write.exit103:                        ; preds = %if.then.i102, %cx24110_pll_write.exit91.cx24110_pll_write.exit103_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i92) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thomson_dtt7579_demod_init(ptr noundef %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %0 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mt352_write.exit_crit_edge, label %if.then.i

entry.mt352_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt352_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %1(ptr noundef %fe, ptr noundef nonnull @thomson_dtt7579_demod_init.mt352_clock_config, i32 noundef 3) #8
  br label %mt352_write.exit

mt352_write.exit:                                 ; preds = %if.then.i, %entry.mt352_write.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 429496000) #8
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i12 = icmp eq ptr %4, null
  br i1 %tobool.not.i12, label %mt352_write.exit.mt352_write.exit35_crit_edge, label %mt352_write.exit15

mt352_write.exit.mt352_write.exit35_crit_edge:    ; preds = %mt352_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt352_write.exit35

mt352_write.exit15:                               ; preds = %mt352_write.exit
  %call.i13 = tail call i32 %4(ptr noundef %fe, ptr noundef nonnull @thomson_dtt7579_demod_init.mt352_reset, i32 noundef 2) #8
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i17 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i17, label %mt352_write.exit15.mt352_write.exit35_crit_edge, label %mt352_write.exit20

mt352_write.exit15.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit15
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt352_write.exit35

mt352_write.exit20:                               ; preds = %mt352_write.exit15
  %call.i18 = tail call i32 %.pr(ptr noundef %fe, ptr noundef nonnull @thomson_dtt7579_demod_init.mt352_adc_ctl_1_cfg, i32 noundef 2) #8
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr37 = load ptr, ptr %write.i, align 4
  %tobool.not.i22 = icmp eq ptr %.pr37, null
  br i1 %tobool.not.i22, label %mt352_write.exit20.mt352_write.exit35_crit_edge, label %mt352_write.exit25

mt352_write.exit20.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit20
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt352_write.exit35

mt352_write.exit25:                               ; preds = %mt352_write.exit20
  %call.i23 = tail call i32 %.pr37(ptr noundef %fe, ptr noundef nonnull @thomson_dtt7579_demod_init.mt352_agc_cfg, i32 noundef 3) #8
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr39.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i27 = icmp eq ptr %.pr39.pr, null
  br i1 %tobool.not.i27, label %mt352_write.exit25.mt352_write.exit35_crit_edge, label %mt352_write.exit30

mt352_write.exit25.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit25
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt352_write.exit35

mt352_write.exit30:                               ; preds = %mt352_write.exit25
  %call.i28 = tail call i32 %.pr39.pr(ptr noundef %fe, ptr noundef nonnull @thomson_dtt7579_demod_init.mt352_gpp_ctl_cfg, i32 noundef 2) #8
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr41 = load ptr, ptr %write.i, align 4
  %tobool.not.i32 = icmp eq ptr %.pr41, null
  br i1 %tobool.not.i32, label %mt352_write.exit30.mt352_write.exit35_crit_edge, label %if.then.i34

mt352_write.exit30.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit30
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt352_write.exit35

if.then.i34:                                      ; preds = %mt352_write.exit30
  call void @__sanitizer_cov_trace_pc() #10
  %call.i33 = tail call i32 %.pr41(ptr noundef %fe, ptr noundef nonnull @thomson_dtt7579_demod_init.mt352_capt_range_cfg, i32 noundef 2) #8
  br label %mt352_write.exit35

mt352_write.exit35:                               ; preds = %if.then.i34, %mt352_write.exit30.mt352_write.exit35_crit_edge, %mt352_write.exit25.mt352_write.exit35_crit_edge, %mt352_write.exit20.mt352_write.exit35_crit_edge, %mt352_write.exit15.mt352_write.exit35_crit_edge, %mt352_write.exit.mt352_write.exit35_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bttv_write_gpio(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bttv_gpio_enable(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digitv_alps_tded4_demod_init(ptr noundef %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %0 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mt352_write.exit_crit_edge, label %if.then.i

entry.mt352_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt352_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %1(ptr noundef %fe, ptr noundef nonnull @digitv_alps_tded4_demod_init.mt352_clock_config, i32 noundef 3) #8
  br label %mt352_write.exit

mt352_write.exit:                                 ; preds = %if.then.i, %entry.mt352_write.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 429496000) #8
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i10 = icmp eq ptr %4, null
  br i1 %tobool.not.i10, label %mt352_write.exit.mt352_write.exit28_crit_edge, label %mt352_write.exit13

mt352_write.exit.mt352_write.exit28_crit_edge:    ; preds = %mt352_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt352_write.exit28

mt352_write.exit13:                               ; preds = %mt352_write.exit
  %call.i11 = tail call i32 %4(ptr noundef %fe, ptr noundef nonnull @digitv_alps_tded4_demod_init.mt352_reset, i32 noundef 2) #8
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i15 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i15, label %mt352_write.exit13.mt352_write.exit28_crit_edge, label %mt352_write.exit18

mt352_write.exit13.mt352_write.exit28_crit_edge:  ; preds = %mt352_write.exit13
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt352_write.exit28

mt352_write.exit18:                               ; preds = %mt352_write.exit13
  %call.i16 = tail call i32 %.pr(ptr noundef %fe, ptr noundef nonnull @digitv_alps_tded4_demod_init.mt352_adc_ctl_1_cfg, i32 noundef 2) #8
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr30 = load ptr, ptr %write.i, align 4
  %tobool.not.i20 = icmp eq ptr %.pr30, null
  br i1 %tobool.not.i20, label %mt352_write.exit18.mt352_write.exit28_crit_edge, label %mt352_write.exit23

mt352_write.exit18.mt352_write.exit28_crit_edge:  ; preds = %mt352_write.exit18
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt352_write.exit28

mt352_write.exit23:                               ; preds = %mt352_write.exit18
  %call.i21 = tail call i32 %.pr30(ptr noundef %fe, ptr noundef nonnull @digitv_alps_tded4_demod_init.mt352_agc_cfg, i32 noundef 3) #8
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr32.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i25 = icmp eq ptr %.pr32.pr, null
  br i1 %tobool.not.i25, label %mt352_write.exit23.mt352_write.exit28_crit_edge, label %if.then.i27

mt352_write.exit23.mt352_write.exit28_crit_edge:  ; preds = %mt352_write.exit23
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt352_write.exit28

if.then.i27:                                      ; preds = %mt352_write.exit23
  call void @__sanitizer_cov_trace_pc() #10
  %call.i26 = tail call i32 %.pr32.pr(ptr noundef %fe, ptr noundef nonnull @digitv_alps_tded4_demod_init.mt352_capt_range_cfg, i32 noundef 2) #8
  br label %mt352_write.exit28

mt352_write.exit28:                               ; preds = %if.then.i27, %mt352_write.exit23.mt352_write.exit28_crit_edge, %mt352_write.exit18.mt352_write.exit28_crit_edge, %mt352_write.exit13.mt352_write.exit28_crit_edge, %mt352_write.exit.mt352_write.exit28_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @microtune_mt7202dtf_request_firmware(ptr nocapture noundef readonly %fe, ptr noundef %fw, ptr noundef %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %bt1 = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %bt1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bt1, align 8
  %dev = getelementptr inbounds %struct.bt878, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %call = tail call i32 @request_firmware(ptr noundef %fw, ptr noundef %name, ptr noundef %dev2) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @advbt771_samsung_tdtc9251dh0_demod_init(ptr noundef %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %0 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mt352_write.exit_crit_edge, label %if.then.i

entry.mt352_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt352_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %1(ptr noundef %fe, ptr noundef nonnull @advbt771_samsung_tdtc9251dh0_demod_init.mt352_clock_config, i32 noundef 3) #8
  br label %mt352_write.exit

mt352_write.exit:                                 ; preds = %if.then.i, %entry.mt352_write.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 429496000) #8
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i12 = icmp eq ptr %4, null
  br i1 %tobool.not.i12, label %mt352_write.exit.mt352_write.exit25_crit_edge, label %mt352_write.exit15

mt352_write.exit.mt352_write.exit25_crit_edge:    ; preds = %mt352_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt352_write.exit25

mt352_write.exit15:                               ; preds = %mt352_write.exit
  %call.i13 = tail call i32 %4(ptr noundef %fe, ptr noundef nonnull @advbt771_samsung_tdtc9251dh0_demod_init.mt352_reset, i32 noundef 2) #8
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i17 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i17, label %mt352_write.exit15.mt352_write.exit25_crit_edge, label %mt352_write.exit20

mt352_write.exit15.mt352_write.exit25_crit_edge:  ; preds = %mt352_write.exit15
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt352_write.exit25

mt352_write.exit20:                               ; preds = %mt352_write.exit15
  %call.i18 = tail call i32 %.pr(ptr noundef %fe, ptr noundef nonnull @advbt771_samsung_tdtc9251dh0_demod_init.mt352_adc_ctl_1_cfg, i32 noundef 2) #8
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr37 = load ptr, ptr %write.i, align 4
  %tobool.not.i22 = icmp eq ptr %.pr37, null
  br i1 %tobool.not.i22, label %mt352_write.exit20.mt352_write.exit25_crit_edge, label %if.then.i24

mt352_write.exit20.mt352_write.exit25_crit_edge:  ; preds = %mt352_write.exit20
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt352_write.exit25

if.then.i24:                                      ; preds = %mt352_write.exit20
  call void @__sanitizer_cov_trace_pc() #10
  %call.i23 = tail call i32 %.pr37(ptr noundef %fe, ptr noundef nonnull @advbt771_samsung_tdtc9251dh0_demod_init.mt352_agc_cfg, i32 noundef 11) #8
  br label %mt352_write.exit25

mt352_write.exit25:                               ; preds = %if.then.i24, %mt352_write.exit20.mt352_write.exit25_crit_edge, %mt352_write.exit15.mt352_write.exit25_crit_edge, %mt352_write.exit.mt352_write.exit25_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 429496000) #8
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i, align 4
  %tobool.not.i27 = icmp eq ptr %9, null
  br i1 %tobool.not.i27, label %mt352_write.exit25.mt352_write.exit35_crit_edge, label %mt352_write.exit30

mt352_write.exit25.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit25
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt352_write.exit35

mt352_write.exit30:                               ; preds = %mt352_write.exit25
  %call.i28 = tail call i32 %9(ptr noundef %fe, ptr noundef nonnull @advbt771_samsung_tdtc9251dh0_demod_init.mt352_av771_extra, i32 noundef 2) #8
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr39 = load ptr, ptr %write.i, align 4
  %tobool.not.i32 = icmp eq ptr %.pr39, null
  br i1 %tobool.not.i32, label %mt352_write.exit30.mt352_write.exit35_crit_edge, label %if.then.i34

mt352_write.exit30.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit30
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt352_write.exit35

if.then.i34:                                      ; preds = %mt352_write.exit30
  call void @__sanitizer_cov_trace_pc() #10
  %call.i33 = tail call i32 %.pr39(ptr noundef %fe, ptr noundef nonnull @advbt771_samsung_tdtc9251dh0_demod_init.mt352_capt_range_cfg, i32 noundef 2) #8
  br label %mt352_write.exit35

mt352_write.exit35:                               ; preds = %if.then.i34, %mt352_write.exit30.mt352_write.exit35_crit_edge, %mt352_write.exit25.mt352_write.exit35_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @or51211_request_firmware(ptr nocapture noundef readonly %fe, ptr noundef %fw, ptr noundef %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %bt1 = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %bt1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bt1, align 8
  %dev = getelementptr inbounds %struct.bt878, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %call = tail call i32 @request_firmware(ptr noundef %fw, ptr noundef %name, ptr noundef %dev2) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @or51211_setmode(ptr nocapture noundef readonly %fe, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %bttv_nr = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bttv_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bttv_nr, align 4
  %call = tail call i32 @bttv_write_gpio(i32 noundef %5, i32 noundef 2, i32 noundef %mode) #8
  tail call void @msleep(i32 noundef 20) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @or51211_reset(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %bttv_nr = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bttv_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bttv_nr, align 4
  %call = tail call i32 @bttv_gpio_enable(i32 noundef %5, i32 noundef 31, i32 noundef 31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %call) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %bttv_nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bttv_nr, align 4
  %call3 = tail call i32 @bttv_write_gpio(i32 noundef %7, i32 noundef 31, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 20) #8
  %8 = ptrtoint ptr %bttv_nr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bttv_nr, align 4
  %call5 = tail call i32 @bttv_write_gpio(i32 noundef %9, i32 noundef 31, i32 noundef 1) #8
  tail call void @msleep(i32 noundef 500) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @or51211_sleep(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %bttv_nr = getelementptr inbounds %struct.dvb_bt8xx_card, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bttv_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bttv_nr, align 4
  %call = tail call i32 @bttv_write_gpio(i32 noundef %5, i32 noundef 1, i32 noundef 0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_net_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bttv_sub_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !19, !20, !22, !23, !24, !25, !26, !28, !30, !32, !33, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !105, !106, !108, !109, !110, !111, !112, !114, !115, !116, !117, !118, !120, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !134, !136, !137, !138, !140, !141, !143, !144, !145, !147, !148, !149, !150, !151, !153, !154, !156, !157, !158, !160, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !173, !174, !176, !177, !178, !179, !180, !182, !183, !184, !185, !186, !188, !189, !191, !192, !193, !195, !196, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !218, !219, !220, !222, !224, !226, !228, !230, !232, !234, !236, !237, !238, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !276, !277, !278, !279, !281, !282, !283, !284}
!llvm.module.flags = !{!286, !287, !288, !289, !290, !291, !292, !293}
!llvm.ident = !{!294}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype385, !1, !"__UNIQUE_ID_debugtype385", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug386, !4, !"__UNIQUE_ID_debug386", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 29, i32 1}
!5 = !{ptr @__param_adapter_nr, !6, !"__param_adapter_nr", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 31, i32 1}
!7 = !{ptr @__UNIQUE_ID_adapter_nrtype387, !6, !"__UNIQUE_ID_adapter_nrtype387", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_adapter_nr388, !6, !"__UNIQUE_ID_adapter_nr388", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_dvb_bt8xx__389_959_dvb_bt8xx_init6, !10, !"__initcall__kmod_dvb_bt8xx__389_959_dvb_bt8xx_init6", i1 false, i1 false}
!10 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 959, i32 1}
!11 = !{ptr @__exitcall_dvb_bt8xx_exit, !12, !"__exitcall_dvb_bt8xx_exit", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 960, i32 1}
!13 = !{ptr @__UNIQUE_ID_description390, !14, !"__UNIQUE_ID_description390", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 962, i32 1}
!15 = !{ptr @__UNIQUE_ID_author391, !16, !"__UNIQUE_ID_author391", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 963, i32 1}
!17 = !{ptr @__UNIQUE_ID_file392, !18, !"__UNIQUE_ID_file392", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 964, i32 1}
!19 = !{ptr @__UNIQUE_ID_license393, !18, !"__UNIQUE_ID_license393", i1 false, i1 false}
!20 = !{ptr @debug, !21, !"debug", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 26, i32 12}
!22 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!23 = !{ptr @__param_str_adapter_nr, !6, !"__param_str_adapter_nr", i1 false, i1 false}
!24 = !{ptr @__param_arr_adapter_nr, !6, !"__param_arr_adapter_nr", i1 false, i1 false}
!25 = !{ptr @adapter_nr, !6, !"adapter_nr", i1 false, i1 false}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 938, i32 12}
!28 = !{ptr @driver, !29, !"driver", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 936, i32 31}
!30 = !{ptr @dvb_bt8xx_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 811, i32 2}
!32 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.2, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 881, i32 3}
!35 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @dvb_bt8xx_probe._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @dvb_bt8xx_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 886, i32 2}
!41 = !{ptr @dvb_bt8xx_probe._entry.5, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @dvb_bt8xx_probe._entry_ptr.7, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 889, i32 3}
!45 = !{ptr @dvb_bt8xx_probe._entry.8, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @dvb_bt8xx_probe._entry_ptr.10, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 895, i32 3}
!49 = !{ptr @dvb_bt8xx_probe._entry.11, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @dvb_bt8xx_probe._entry_ptr.13, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 896, i32 3}
!53 = !{ptr @dvb_bt8xx_probe._entry.14, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @dvb_bt8xx_probe._entry_ptr.16, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @dvb_bt8xx_probe.__key.17, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 902, i32 2}
!57 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 719, i32 3}
!60 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @dvb_bt8xx_load_card._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @dvb_bt8xx_load_card._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 739, i32 3}
!65 = !{ptr @dvb_bt8xx_load_card._entry.21, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @dvb_bt8xx_load_card._entry_ptr.23, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 749, i32 3}
!69 = !{ptr @dvb_bt8xx_load_card._entry.24, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @dvb_bt8xx_load_card._entry_ptr.26, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @dvb_bt8xx_load_card._entry.27, !72, !"_entry", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 757, i32 3}
!73 = !{ptr @dvb_bt8xx_load_card._entry_ptr.28, !72, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @dvb_bt8xx_load_card._entry.29, !75, !"_entry", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 765, i32 3}
!76 = !{ptr @dvb_bt8xx_load_card._entry_ptr.30, !75, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @dvb_bt8xx_load_card._entry.31, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 771, i32 3}
!79 = !{ptr @dvb_bt8xx_load_card._entry_ptr.32, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 777, i32 3}
!82 = !{ptr @dvb_bt8xx_load_card._entry.33, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @dvb_bt8xx_load_card._entry_ptr.35, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 66, i32 2}
!86 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @dvb_bt8xx_start_feed._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @dvb_bt8xx_start_feed._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 86, i32 2}
!91 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @dvb_bt8xx_stop_feed._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @dvb_bt8xx_stop_feed._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 47, i32 2}
!96 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @dvb_bt8xx_task._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @dvb_bt8xx_task._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 588, i32 14}
!101 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @frontend_init._entry, !100, !"_entry", i1 false, i1 false}
!105 = !{ptr @frontend_init._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 591, i32 15}
!108 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @frontend_init._entry.48, !107, !"_entry", i1 false, i1 false}
!111 = !{ptr @frontend_init._entry_ptr.50, !107, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 603, i32 14}
!114 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @frontend_init._entry.53, !113, !"_entry", i1 false, i1 false}
!117 = !{ptr @frontend_init._entry_ptr.55, !113, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 606, i32 4}
!120 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @frontend_init._entry.58, !119, !"_entry", i1 false, i1 false}
!123 = !{ptr @frontend_init._entry_ptr.60, !119, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 609, i32 4}
!126 = !{ptr @frontend_init._entry.61, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @frontend_init._entry_ptr.63, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 621, i32 14}
!130 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @frontend_init._entry.66, !129, !"_entry", i1 false, i1 false}
!133 = !{ptr @frontend_init._entry_ptr.68, !129, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 624, i32 4}
!136 = !{ptr @frontend_init._entry.69, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @frontend_init._entry_ptr.71, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @frontend_init._entry.72, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 630, i32 14}
!140 = !{ptr @frontend_init._entry_ptr.73, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.75, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 634, i32 4}
!143 = !{ptr @frontend_init._entry.74, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @frontend_init._entry_ptr.76, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 639, i32 14}
!147 = !{ptr @.str.78, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.80, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @frontend_init._entry.79, !146, !"_entry", i1 false, i1 false}
!150 = !{ptr @frontend_init._entry_ptr.81, !146, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @frontend_init._entry.82, !152, !"_entry", i1 false, i1 false}
!152 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 646, i32 14}
!153 = !{ptr @frontend_init._entry_ptr.83, !152, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.85, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 658, i32 4}
!156 = !{ptr @frontend_init._entry.84, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @frontend_init._entry_ptr.86, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.87, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 667, i32 7}
!160 = !{ptr @.str.88, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.90, !159, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @frontend_init._entry.89, !159, !"_entry", i1 false, i1 false}
!163 = !{ptr @frontend_init._entry_ptr.91, !159, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.93, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 668, i32 4}
!166 = !{ptr @frontend_init._entry.92, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @frontend_init._entry_ptr.94, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.95, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 676, i32 4}
!170 = !{ptr @.str.96, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.98, !169, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @frontend_init._entry.97, !169, !"_entry", i1 false, i1 false}
!173 = !{ptr @frontend_init._entry_ptr.99, !169, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.100, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 680, i32 14}
!176 = !{ptr @.str.101, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.103, !175, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @frontend_init._entry.102, !175, !"_entry", i1 false, i1 false}
!179 = !{ptr @frontend_init._entry_ptr.104, !175, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.105, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 689, i32 14}
!182 = !{ptr @.str.106, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.108, !181, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @frontend_init._entry.107, !181, !"_entry", i1 false, i1 false}
!185 = !{ptr @frontend_init._entry_ptr.109, !181, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @frontend_init._entry.110, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 691, i32 4}
!188 = !{ptr @frontend_init._entry_ptr.111, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.113, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 698, i32 3}
!191 = !{ptr @frontend_init._entry.112, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @frontend_init._entry_ptr.114, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.116, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 705, i32 4}
!195 = !{ptr @frontend_init._entry.115, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @frontend_init._entry_ptr.117, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @thomson_dtt7579_config, !198, !"thomson_dtt7579_config", i1 false, i1 false}
!198 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 178, i32 28}
!199 = !{ptr @thomson_dtt7579_demod_init.mt352_clock_config, !200, !"mt352_clock_config", i1 false, i1 false}
!200 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 124, i32 12}
!201 = !{ptr @thomson_dtt7579_demod_init.mt352_reset, !202, !"mt352_reset", i1 false, i1 false}
!202 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 125, i32 12}
!203 = !{ptr @thomson_dtt7579_demod_init.mt352_adc_ctl_1_cfg, !204, !"mt352_adc_ctl_1_cfg", i1 false, i1 false}
!204 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 126, i32 12}
!205 = !{ptr @thomson_dtt7579_demod_init.mt352_agc_cfg, !206, !"mt352_agc_cfg", i1 false, i1 false}
!206 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 127, i32 12}
!207 = !{ptr @thomson_dtt7579_demod_init.mt352_gpp_ctl_cfg, !208, !"mt352_gpp_ctl_cfg", i1 false, i1 false}
!208 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 128, i32 12}
!209 = !{ptr @thomson_dtt7579_demod_init.mt352_capt_range_cfg, !210, !"mt352_capt_range_cfg", i1 false, i1 false}
!210 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 129, i32 12}
!211 = !{ptr @thomson_dtt7579_zl10353_config, !212, !"thomson_dtt7579_zl10353_config", i1 false, i1 false}
!212 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 183, i32 30}
!213 = !{ptr @tdvs_tua6034_config, !214, !"tdvs_tua6034_config", i1 false, i1 false}
!214 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 564, i32 31}
!215 = !{ptr @.str.118, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 548, i32 3}
!217 = !{ptr @.str.119, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @digitv_alps_tded4_reset._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @digitv_alps_tded4_reset._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @vp3021_alps_tded4_config, !221, !"vp3021_alps_tded4_config", i1 false, i1 false}
!221 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 484, i32 30}
!222 = !{ptr @digitv_alps_tded4_config, !223, !"digitv_alps_tded4_config", i1 false, i1 false}
!223 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 559, i32 28}
!224 = !{ptr @digitv_alps_tded4_demod_init.mt352_clock_config, !225, !"mt352_clock_config", i1 false, i1 false}
!225 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 491, i32 12}
!226 = !{ptr @digitv_alps_tded4_demod_init.mt352_reset, !227, !"mt352_reset", i1 false, i1 false}
!227 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 492, i32 12}
!228 = !{ptr @digitv_alps_tded4_demod_init.mt352_adc_ctl_1_cfg, !229, !"mt352_adc_ctl_1_cfg", i1 false, i1 false}
!229 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 493, i32 12}
!230 = !{ptr @digitv_alps_tded4_demod_init.mt352_agc_cfg, !231, !"mt352_agc_cfg", i1 false, i1 false}
!231 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 494, i32 12}
!232 = !{ptr @digitv_alps_tded4_demod_init.mt352_capt_range_cfg, !233, !"mt352_capt_range_cfg", i1 false, i1 false}
!233 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 495, i32 12}
!234 = !{ptr @.str.120, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 522, i32 2}
!236 = !{ptr @.str.121, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @digitv_alps_tded4_tuner_calc_regs._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @digitv_alps_tded4_tuner_calc_regs._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @microtune_mt7202dtf_config, !240, !"microtune_mt7202dtf_config", i1 false, i1 false}
!240 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 310, i32 35}
!241 = !{ptr @advbt771_samsung_tdtc9251dh0_config, !242, !"advbt771_samsung_tdtc9251dh0_config", i1 false, i1 false}
!242 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 392, i32 28}
!243 = !{ptr @advbt771_samsung_tdtc9251dh0_demod_init.mt352_clock_config, !244, !"mt352_clock_config", i1 false, i1 false}
!244 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 317, i32 12}
!245 = !{ptr @advbt771_samsung_tdtc9251dh0_demod_init.mt352_reset, !246, !"mt352_reset", i1 false, i1 false}
!246 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 318, i32 12}
!247 = !{ptr @advbt771_samsung_tdtc9251dh0_demod_init.mt352_adc_ctl_1_cfg, !248, !"mt352_adc_ctl_1_cfg", i1 false, i1 false}
!248 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 319, i32 12}
!249 = !{ptr @advbt771_samsung_tdtc9251dh0_demod_init.mt352_agc_cfg, !250, !"mt352_agc_cfg", i1 false, i1 false}
!250 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 320, i32 12}
!251 = !{ptr @advbt771_samsung_tdtc9251dh0_demod_init.mt352_av771_extra, !252, !"mt352_av771_extra", i1 false, i1 false}
!252 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 322, i32 12}
!253 = !{ptr @advbt771_samsung_tdtc9251dh0_demod_init.mt352_capt_range_cfg, !254, !"mt352_capt_range_cfg", i1 false, i1 false}
!254 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 323, i32 12}
!255 = !{ptr @dst_config, !256, !"dst_config", i1 false, i1 false}
!256 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 397, i32 32}
!257 = !{ptr @pctvsat_config, !258, !"pctvsat_config", i1 false, i1 false}
!258 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 258, i32 30}
!259 = !{ptr @.str.122, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 200, i32 2}
!261 = !{ptr @.str.123, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @cx24108_tuner_set_params._entry, !260, !"_entry", i1 false, i1 false}
!263 = !{ptr @cx24108_tuner_set_params._entry_ptr, !260, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.125, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 211, i32 2}
!266 = !{ptr @cx24108_tuner_set_params._entry.124, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @cx24108_tuner_set_params._entry_ptr.126, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.128, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 227, i32 2}
!270 = !{ptr @cx24108_tuner_set_params._entry.127, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @cx24108_tuner_set_params._entry_ptr.129, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @or51211_config, !273, !"or51211_config", i1 false, i1 false}
!273 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 446, i32 36}
!274 = !{ptr @.str.130, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 431, i32 3}
!276 = !{ptr @.str.131, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @or51211_reset._entry, !275, !"_entry", i1 false, i1 false}
!278 = !{ptr @or51211_reset._entry_ptr, !275, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.132, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 918, i32 2}
!281 = !{ptr @.str.133, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @dvb_bt8xx_remove._entry, !280, !"_entry", i1 false, i1 false}
!283 = !{ptr @dvb_bt8xx_remove._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.134, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/media/pci/bt8xx/dvb-bt8xx.c", i32 951, i32 36}
!286 = !{i32 1, !"wchar_size", i32 2}
!287 = !{i32 1, !"min_enum_size", i32 4}
!288 = !{i32 8, !"branch-target-enforcement", i32 0}
!289 = !{i32 8, !"sign-return-address", i32 0}
!290 = !{i32 8, !"sign-return-address-all", i32 0}
!291 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!292 = !{i32 7, !"uwtable", i32 1}
!293 = !{i32 7, !"frame-pointer", i32 2}
!294 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!295 = !{ptr @dvb_dmx_swfilter, ptr @dvb_dmx_swfilter_204}
