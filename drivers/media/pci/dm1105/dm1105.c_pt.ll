; ModuleID = '/llk/IR_all_yes/drivers/media/pci/dm1105/dm1105.c_pt.bc'
source_filename = "../drivers/media/pci/dm1105/dm1105.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
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
%struct.dm1105_subid = type { i16, i16, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dm1105_board = type { ptr, %struct.anon.141, i32, i32 }
%struct.anon.141 = type { i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.stv0299_config = type { i8, ptr, i32, i8, i32, ptr, ptr }
%struct.stv0288_config = type { i8, ptr, i32, ptr }
%struct.si21xx_config = type { i8, i32 }
%struct.cx24116_config = type { i8, ptr, ptr, i8, i16 }
%struct.ds3000_config = type { i8, i8, ptr, ptr }
%struct.dm1105_dev = type { ptr, ptr, %struct.infrared, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dmxdev, %struct.dvb_adapter, %struct.dvb_demux, ptr, %struct.dvb_net, i32, i32, i32, %struct.i2c_adapter, %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.work_struct, ptr, [16 x i8], i32, ptr, i32, i32, i32, i32, i32, %struct.spinlock }
%struct.infrared = type { ptr, [32 x i8], %struct.work_struct, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.124, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.124 = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_demux_feed = type { %union.anon.137, %union.anon.138, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.137 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.138 = type { ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.139], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.139 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.140 }>
%union.anon.140 = type { i64 }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }

@__param_str_card = internal constant [12 x i8] c"dm1105.card\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_card = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_int, ptr @card }, align 4
@__param_card = internal constant %struct.kernel_param { ptr @__param_str_card, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_card } }, section "__param", align 4
@__UNIQUE_ID_cardtype383 = internal constant [34 x i8] c"dm1105.parmtype=card:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_card384 = internal constant [27 x i8] c"dm1105.parm=card:card type\00", section ".modinfo", align 1
@__param_str_ir_debug = internal constant [16 x i8] c"dm1105.ir_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ir_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ir_debug = internal constant %struct.kernel_param { ptr @__param_str_ir_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @ir_debug } }, section "__param", align 4
@__UNIQUE_ID_ir_debugtype385 = internal constant [29 x i8] c"dm1105.parmtype=ir_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ir_debug386 = internal constant [66 x i8] c"dm1105.parm=ir_debug:enable debugging information for IR decoding\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [18 x i8] c"dm1105.adapter_nr\00", align 1
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype387 = internal constant [42 x i8] c"dm1105.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr388 = internal constant [43 x i8] c"dm1105.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dm1105__389_1227_dm1105_driver_init6 = internal global ptr @dm1105_driver_init, section ".initcall6.init", align 4
@dm1105_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @dm1105_id_table, ptr @dm1105_probe, ptr @dm1105_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_dm1105_driver_exit = internal global ptr @dm1105_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author390 = internal constant [50 x i8] c"dm1105.author=Igor M. Liplianin <liplianin@me.by>\00", section ".modinfo", align 1
@__UNIQUE_ID_description391 = internal constant [42 x i8] c"dm1105.description=SDMC DM1105 DVB driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file392 = internal constant [44 x i8] c"dm1105.file=drivers/media/pci/dm1105/dm1105\00", section ".modinfo", align 1
@__UNIQUE_ID_license393 = internal constant [19 x i8] c"dm1105.license=GPL\00", section ".modinfo", align 1
@card = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [16 x i8] zeroinitializer }, align 32
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dm1105\00", [25 x i8] zeroinitializer }, align 32
@dm1105_id_table = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4255, i32 879, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6493, i32 4357, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@dm1105_devcount = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dm1105_subids = internal constant { [5 x %struct.dm1105_subid], [56 x i8] } { [5 x %struct.dm1105_subid] [%struct.dm1105_subid { i16 0, i16 8194, i32 1 }, %struct.dm1105_subid { i16 1, i16 8194, i32 1 }, %struct.dm1105_subid { i16 0, i16 8196, i32 2 }, %struct.dm1105_subid { i16 1, i16 8196, i32 2 }, %struct.dm1105_subid { i16 6493, i16 4357, i32 3 }], [56 x i8] zeroinitializer }, align 32
@dm1105_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@dm1105_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @dm1105_i2c_xfer, ptr null, ptr null, ptr null, ptr @functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dm1105-gpio\00", [20 x i8] zeroinitializer }, align 32
@dm1105_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&dev->work)\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s/%d\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dm1105_card_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [251 x i8], [37 x i8] } { [251 x i8] c"\013dm1105: Your board has no valid PCI Subsystem ID\0Adm1105: and thus can't be autodetected\0Adm1105: Please pass card=<n> insmod option to\0Adm1105: workaround that.  Redirect complaints to\0Adm1105: the vendor of the TV card.  Best regards,\0Adm1105: -- tux\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dm1105_card_list\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/pci/dm1105/dm1105.c\00", [62 x i8] zeroinitializer }, align 32
@dm1105_card_list._entry_ptr = internal global ptr @dm1105_card_list._entry, section ".printk_index", align 4
@dm1105_card_list._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.9, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [219 x i8], [37 x i8] } { [219 x i8] c"\013dm1105: Your board isn't known (yet) to the driver.\0Adm1105: You can try to pick one of the existing\0Adm1105: card configs via card=<n> insmod option.\0Adm1105: Updating to the latest version might help\0Adm1105: as well.\0A\00", [37 x i8] zeroinitializer }, align 32
@dm1105_card_list._entry_ptr.12 = internal global ptr @dm1105_card_list._entry.10, section ".printk_index", align 4
@dm1105_card_list._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.9, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013Here is a list of valid choices for the card=<n> insmod option:\0A\00", [61 x i8] zeroinitializer }, align 32
@dm1105_card_list._entry_ptr.15 = internal global ptr @dm1105_card_list._entry.13, section ".printk_index", align 4
@dm1105_card_list._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.9, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013dm1105:    card=%d -> %s\0A\00", [36 x i8] zeroinitializer }, align 32
@dm1105_card_list._entry_ptr.18 = internal global ptr @dm1105_card_list._entry.16, section ".printk_index", align 4
@dm1105_boards = internal constant { [5 x %struct.dm1105_board], [52 x i8] } { [5 x %struct.dm1105_board] [%struct.dm1105_board { ptr @.str.19, %struct.anon.141 { i32 237567, i32 131072, i32 65792, i32 256 }, i32 0, i32 0 }, %struct.dm1105_board { ptr @.str.20, %struct.anon.141 { i32 237567, i32 131072, i32 65792, i32 256 }, i32 0, i32 0 }, %struct.dm1105_board { ptr @.str.21, %struct.anon.141 { i32 237567, i32 131072, i32 65792, i32 256 }, i32 0, i32 0 }, %struct.dm1105_board { ptr @.str.22, %struct.anon.141 { i32 237567, i32 131072, i32 131072, i32 196608 }, i32 0, i32 0 }, %struct.dm1105_board { ptr @.str.23, %struct.anon.141 { i32 196608, i32 0, i32 131072, i32 196608 }, i32 16384, i32 8192 }], [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"UNKNOWN/GENERIC\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DVBWorld PCI 2002\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DVBWorld PCI 2004\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Axess/EasyTv DM05\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unbranded DM1105 with i2c on GPIOs\00", [61 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dm1105_gpio_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.9, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Only 18 GPIO's are allowed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dm1105_gpio_enable\00", [45 x i8] zeroinitializer }, align 32
@dm1105_gpio_enable._entry_ptr = internal global ptr @dm1105_gpio_enable._entry, section ".printk_index", align 4
@dm1105_gpio_clear._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.26, ptr @.str.9, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dm1105_gpio_clear\00", [46 x i8] zeroinitializer }, align 32
@dm1105_gpio_clear._entry_ptr = internal global ptr @dm1105_gpio_clear._entry, section ".printk_index", align 4
@dm1105_gpio_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.27, ptr @.str.9, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dm1105_gpio_get\00", [16 x i8] zeroinitializer }, align 32
@dm1105_gpio_get._entry_ptr = internal global ptr @dm1105_gpio_get._entry, section ".printk_index", align 4
@dm1105_read_mac.command = internal global { [1 x i8], [31 x i8] } { [1 x i8] c"(", [31 x i8] zeroinitializer }, align 32
@dm1105_read_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.9, i32 963, ptr @.str.30, ptr @.str.31 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MAC %pM\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dm1105_read_mac\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dm1105_read_mac._entry_ptr = internal global ptr @dm1105_read_mac._entry, section ".printk_index", align 4
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0299_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0299_attach\00", [42 x i8] zeroinitializer }, align 32
@sharp_z0194a_config = internal constant { %struct.stv0299_config, [36 x i8] } { %struct.stv0299_config { i8 104, ptr @sharp_z0194a_inittab, i32 88000000, i8 -104, i32 100, ptr @sharp_z0194a_set_symbol_rate, ptr null }, [36 x i8] zeroinitializer }, align 32
@frontend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.9, i32 854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0299_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"frontend_init\00", [18 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr = internal global ptr @frontend_init._entry, section ".printk_index", align 4
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_pll_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:dvb_pll_attach\00", [42 x i8] zeroinitializer }, align 32
@frontend_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.35, ptr @.str.9, i32 858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol dvb_pll_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.40 = internal global ptr @frontend_init._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0288_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0288_attach\00", [42 x i8] zeroinitializer }, align 32
@earda_config = internal global { %struct.stv0288_config, [16 x i8] } { %struct.stv0288_config { i8 104, ptr null, i32 100, ptr null }, [16 x i8] zeroinitializer }, align 32
@frontend_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.35, ptr @.str.9, i32 864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0288_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.45 = internal global ptr @frontend_init._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stb6000_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stb6000_attach\00", [42 x i8] zeroinitializer }, align 32
@frontend_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.35, ptr @.str.9, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stb6000_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.50 = internal global ptr @frontend_init._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"si21xx_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:si21xx_attach\00", [43 x i8] zeroinitializer }, align 32
@serit_config = internal global { %struct.si21xx_config, [24 x i8] } { %struct.si21xx_config { i8 104, i32 100 }, [24 x i8] zeroinitializer }, align 32
@frontend_init._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.35, ptr @.str.9, i32 874, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol si21xx_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.55 = internal global ptr @frontend_init._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx24116_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:cx24116_attach\00", [42 x i8] zeroinitializer }, align 32
@serit_sp2633_config = internal global { %struct.cx24116_config, [16 x i8] } { %struct.cx24116_config { i8 85, ptr null, ptr null, i8 0, i16 0 }, [16 x i8] zeroinitializer }, align 32
@frontend_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.35, ptr @.str.9, i32 881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol cx24116_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.60 = internal global ptr @frontend_init._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ds3000_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:ds3000_attach\00", [43 x i8] zeroinitializer }, align 32
@dvbworld_ds3000_config = internal global { %struct.ds3000_config, [20 x i8] } { %struct.ds3000_config { i8 104, i8 0, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@frontend_init._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.35, ptr @.str.9, i32 889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol ds3000_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.65 = internal global ptr @frontend_init._entry.63, section ".printk_index", align 4
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ts2020_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:ts2020_attach\00", [43 x i8] zeroinitializer }, align 32
@frontend_init._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.35, ptr @.str.9, i32 892, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol ts2020_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.70 = internal global ptr @frontend_init._entry.68, section ".printk_index", align 4
@frontend_init._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.9, i32 902, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.72 = internal global ptr @frontend_init._entry.71, section ".printk_index", align 4
@frontend_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.35, ptr @.str.9, i32 906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.74 = internal global ptr @frontend_init._entry.73, section ".printk_index", align 4
@frontend_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.35, ptr @.str.9, i32 912, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.76 = internal global ptr @frontend_init._entry.75, section ".printk_index", align 4
@frontend_init._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.35, ptr @.str.9, i32 916, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.78 = internal global ptr @frontend_init._entry.77, section ".printk_index", align 4
@frontend_init._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.35, ptr @.str.9, i32 922, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.80 = internal global ptr @frontend_init._entry.79, section ".printk_index", align 4
@frontend_init._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.35, ptr @.str.9, i32 929, ptr @.str.83, ptr @.str.31 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not attach frontend\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.84 = internal global ptr @frontend_init._entry.81, section ".printk_index", align 4
@dm1105_gpio_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.85, ptr @.str.9, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dm1105_gpio_set\00", [16 x i8] zeroinitializer }, align 32
@dm1105_gpio_set._entry_ptr = internal global ptr @dm1105_gpio_set._entry, section ".printk_index", align 4
@sharp_z0194a_inittab = internal global { [78 x i8], [50 x i8] } { [78 x i8] c"\01\15\020\03\00\04}\055\06@\07\00\08@\09\00\0CQ\0D\82\0E#\10?\11\84\12\B9\15\C9\16\00\17\00\18\00\19\00\1A\00\1FP \00!\00\22\00#\00(\00)\1E*\14+\0F,\09-\05.\011\1F2\193\FC4\93\0FR\FF\FF", [50 x i8] zeroinitializer }, align 32
@dm1105_gpio_andor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.86, ptr @.str.9, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dm1105_gpio_andor\00", [46 x i8] zeroinitializer }, align 32
@dm1105_gpio_andor._entry_ptr = internal global ptr @dm1105_gpio_andor._entry, section ".printk_index", align 4
@dvbworld_ts2020_config = internal global { { i8, i32, i8, i8, ptr, i8, ptr }, [40 x i8] } { { i8, i32, i8, i8, ptr, i8, ptr } { i8 96, i32 0, i8 1, i8 0, ptr null, i8 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci-%s/ir0\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rc-dm1105-nec\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DVB on-card IR receiver\00", [40 x i8] zeroinitializer }, align 32
@dm1105_ir_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.91 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&dm1105->ir.work)\00", [60 x i8] zeroinitializer }, align 32
@dm1105_emit_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.9, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: received byte 0x%04x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dm1105_emit_key\00", [16 x i8] zeroinitializer }, align 32
@dm1105_emit_key._entry_ptr = internal global ptr @dm1105_emit_key._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 8, i64 9]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.96 = private unnamed_addr constant [9 x i8] c"ir_debug\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 186, i32 12 }
@___asan_gen_.99 = private unnamed_addr constant [14 x i8] c"dm1105_driver\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1220, i32 26 }
@___asan_gen_.102 = private unnamed_addr constant [5 x i8] c"card\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 182, i32 21 }
@___asan_gen_.105 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 192, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1227, i32 1 }
@___asan_gen_.111 = private unnamed_addr constant [16 x i8] c"dm1105_id_table\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1202, i32 35 }
@___asan_gen_.114 = private unnamed_addr constant [16 x i8] c"dm1105_devcount\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 190, i32 21 }
@___asan_gen_.117 = private unnamed_addr constant [14 x i8] c"dm1105_subids\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 258, i32 34 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1027, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [12 x i8] c"dm1105_algo\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 563, i32 35 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1047, i32 33 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1124, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1125, i32 20 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1126, i32 12 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 288, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 296, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 303, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 305, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [14 x i8] c"dm1105_boards\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 208, i32 34 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 210, i32 12 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 219, i32 12 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 228, i32 12 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 237, i32 12 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 246, i32 12 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 424, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 393, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 413, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 946, i32 12 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 963, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant [20 x i8] c"sharp_z0194a_config\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 805, i32 36 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 852, i32 13 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 857, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant [13 x i8] c"earda_config\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 817, i32 30 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 862, i32 13 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 867, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant [13 x i8] c"serit_config\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 822, i32 29 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 872, i32 13 }
@___asan_gen_.309 = private unnamed_addr constant [20 x i8] c"serit_sp2633_config\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 828, i32 30 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 879, i32 13 }
@___asan_gen_.324 = private unnamed_addr constant [23 x i8] c"dvbworld_ds3000_config\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 832, i32 29 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 887, i32 13 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 891, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 900, i32 13 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 905, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 910, i32 13 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 915, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 920, i32 13 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 929, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 383, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant [21 x i8] c"sharp_z0194a_inittab\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [40 x i8] c"../drivers/media/dvb-frontends/z0194a.h\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 40, i32 11 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 403, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant [23 x i8] c"dvbworld_ts2020_config\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 836, i32 29 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 734, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 737, i32 18 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 738, i32 21 }
@___asan_gen_.396 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 751, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.409 = private constant [37 x i8] c"../drivers/media/pci/dm1105/dm1105.c\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 660, i32 3 }
@llvm.compiler.used = appending global [146 x ptr] [ptr @__UNIQUE_ID_adapter_nr388, ptr @__UNIQUE_ID_adapter_nrtype387, ptr @__UNIQUE_ID_author390, ptr @__UNIQUE_ID_card384, ptr @__UNIQUE_ID_cardtype383, ptr @__UNIQUE_ID_description391, ptr @__UNIQUE_ID_file392, ptr @__UNIQUE_ID_ir_debug386, ptr @__UNIQUE_ID_ir_debugtype385, ptr @__UNIQUE_ID_license393, ptr @__exitcall_dm1105_driver_exit, ptr @__initcall__kmod_dm1105__389_1227_dm1105_driver_init6, ptr @__param_adapter_nr, ptr @__param_card, ptr @__param_ir_debug, ptr @dm1105_card_list._entry, ptr @dm1105_card_list._entry.10, ptr @dm1105_card_list._entry.13, ptr @dm1105_card_list._entry.16, ptr @dm1105_card_list._entry_ptr, ptr @dm1105_card_list._entry_ptr.12, ptr @dm1105_card_list._entry_ptr.15, ptr @dm1105_card_list._entry_ptr.18, ptr @dm1105_driver_exit, ptr @dm1105_emit_key._entry, ptr @dm1105_emit_key._entry_ptr, ptr @dm1105_gpio_andor._entry, ptr @dm1105_gpio_andor._entry_ptr, ptr @dm1105_gpio_clear._entry, ptr @dm1105_gpio_clear._entry_ptr, ptr @dm1105_gpio_enable._entry, ptr @dm1105_gpio_enable._entry_ptr, ptr @dm1105_gpio_get._entry, ptr @dm1105_gpio_get._entry_ptr, ptr @dm1105_gpio_set._entry, ptr @dm1105_gpio_set._entry_ptr, ptr @dm1105_read_mac._entry, ptr @dm1105_read_mac._entry_ptr, ptr @frontend_init._entry, ptr @frontend_init._entry.38, ptr @frontend_init._entry.43, ptr @frontend_init._entry.48, ptr @frontend_init._entry.53, ptr @frontend_init._entry.58, ptr @frontend_init._entry.63, ptr @frontend_init._entry.68, ptr @frontend_init._entry.71, ptr @frontend_init._entry.73, ptr @frontend_init._entry.75, ptr @frontend_init._entry.77, ptr @frontend_init._entry.79, ptr @frontend_init._entry.81, ptr @frontend_init._entry_ptr, ptr @frontend_init._entry_ptr.40, ptr @frontend_init._entry_ptr.45, ptr @frontend_init._entry_ptr.50, ptr @frontend_init._entry_ptr.55, ptr @frontend_init._entry_ptr.60, ptr @frontend_init._entry_ptr.65, ptr @frontend_init._entry_ptr.70, ptr @frontend_init._entry_ptr.72, ptr @frontend_init._entry_ptr.74, ptr @frontend_init._entry_ptr.76, ptr @frontend_init._entry_ptr.78, ptr @frontend_init._entry_ptr.80, ptr @frontend_init._entry_ptr.84, ptr @ir_debug, ptr @dm1105_driver, ptr @card, ptr @adapter_nr, ptr @.str, ptr @dm1105_id_table, ptr @dm1105_devcount, ptr @dm1105_subids, ptr @dm1105_probe.__key, ptr @.str.1, ptr @dm1105_algo, ptr @.str.2, ptr @dm1105_probe.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @dm1105_boards, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @dm1105_read_mac.command, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @sharp_z0194a_config, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @earda_config, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @serit_config, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @serit_sp2633_config, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @dvbworld_ds3000_config, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @sharp_z0194a_inittab, ptr @.str.86, ptr @dvbworld_ts2020_config, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @dm1105_ir_init.__key, ptr @.str.91, ptr @.str.92, ptr @.str.93], section "llvm.metadata"
@0 = internal global [105 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm1105_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm1105_id_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm1105_devcount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm1105_subids to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm1105_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm1105_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm1105_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm1105_card_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 251, i32 288, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm1105_card_list._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 219, i32 256, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm1105_card_list._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm1105_card_list._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm1105_boards to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm1105_gpio_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm1105_gpio_clear._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm1105_gpio_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm1105_read_mac.command to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm1105_read_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_z0194a_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @earda_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serit_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serit_sp2633_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbworld_ds3000_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm1105_gpio_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_z0194a_inittab to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm1105_gpio_andor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbworld_ts2020_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm1105_ir_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm1105_emit_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm1105_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @dm1105_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm1105_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @dm1105_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm1105_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dm1105_devcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp ugt i32 %0, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 5088) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %2 = load i32, ptr @dm1105_devcount, align 4
  %nr = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 12
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %nr, align 4
  %boardnr = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 11
  %arrayidx = getelementptr [4 x i32], ptr @card, i32 0, i32 %2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp4 = icmp ult i32 %5, 5
  %spec.store.select = select i1 %cmp4, i32 %5, i32 -1
  %6 = ptrtoint ptr %boardnr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.store.select, ptr %boardnr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.store.select)
  %cmp11389 = icmp eq i32 %spec.store.select, -1
  br i1 %cmp11389, label %for.body.lr.ph, label %if.end2.if.end31_crit_edge

if.end2.if.end31_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

for.body.lr.ph:                                   ; preds = %if.end2
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %7 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %subsystem_vendor, align 4
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %9 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %9)
  %boardnr.promoted = load i32, ptr %boardnr, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp15 = icmp eq i16 %8, 0
  br i1 %cmp15, label %land.lhs.true, label %for.body.lr.ph.for.inc_crit_edge

for.body.lr.ph.for.inc_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body.lr.ph
  %10 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8194, i16 %11)
  %cmp20 = icmp eq i16 %11, 8194
  br i1 %cmp20, label %if.then22, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %boardnr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %boardnr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %land.lhs.true.for.inc_crit_edge, %for.body.lr.ph.for.inc_crit_edge
  %.pr393 = phi i32 [ %boardnr.promoted, %for.body.lr.ph.for.inc_crit_edge ], [ %boardnr.promoted, %land.lhs.true.for.inc_crit_edge ], [ 1, %if.then22 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr393)
  %cmp11 = icmp eq i32 %.pr393, -1
  br i1 %cmp11, label %for.body.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cmp15.1 = icmp eq i16 %8, 1
  br i1 %cmp15.1, label %land.lhs.true.1, label %for.body.1.for.inc.1_crit_edge

for.body.1.for.inc.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.body.1
  %13 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8194, i16 %14)
  %cmp20.1 = icmp eq i16 %14, 8194
  br i1 %cmp20.1, label %if.then22.1, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then22.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %boardnr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %boardnr, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then22.1, %land.lhs.true.1.for.inc.1_crit_edge, %for.body.1.for.inc.1_crit_edge
  %cmp11.1 = phi i1 [ false, %if.then22.1 ], [ true, %land.lhs.true.1.for.inc.1_crit_edge ], [ true, %for.body.1.for.inc.1_crit_edge ]
  br i1 %cmp11.1, label %for.body.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp15.2 = icmp eq i16 %8, 0
  br i1 %cmp15.2, label %land.lhs.true.2, label %for.body.2.for.inc.2_crit_edge

for.body.2.for.inc.2_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.body.2
  %16 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8196, i16 %17)
  %cmp20.2 = icmp eq i16 %17, 8196
  br i1 %cmp20.2, label %if.then22.2, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then22.2:                                      ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %boardnr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %boardnr, align 8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then22.2, %land.lhs.true.2.for.inc.2_crit_edge, %for.body.2.for.inc.2_crit_edge
  %cmp11.2 = phi i1 [ false, %if.then22.2 ], [ true, %land.lhs.true.2.for.inc.2_crit_edge ], [ true, %for.body.2.for.inc.2_crit_edge ]
  br i1 %cmp11.2, label %for.body.3, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cmp15.3 = icmp eq i16 %8, 1
  br i1 %cmp15.3, label %land.lhs.true.3, label %for.body.3.for.inc.3_crit_edge

for.body.3.for.inc.3_crit_edge:                   ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.body.3
  %19 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8196, i16 %20)
  %cmp20.3 = icmp eq i16 %20, 8196
  br i1 %cmp20.3, label %if.then22.3, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.then22.3:                                      ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %boardnr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %boardnr, align 8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then22.3, %land.lhs.true.3.for.inc.3_crit_edge, %for.body.3.for.inc.3_crit_edge
  %cmp11.3 = phi i1 [ false, %if.then22.3 ], [ true, %land.lhs.true.3.for.inc.3_crit_edge ], [ true, %for.body.3.for.inc.3_crit_edge ]
  br i1 %cmp11.3, label %for.body.4, label %for.inc.3.for.end_crit_edge

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp2(i16 6493, i16 %8)
  %cmp15.4 = icmp eq i16 %8, 6493
  br i1 %cmp15.4, label %land.lhs.true.4, label %for.body.4.if.then29_crit_edge

for.body.4.if.then29_crit_edge:                   ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

land.lhs.true.4:                                  ; preds = %for.body.4
  %22 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4357, i16 %23)
  %cmp20.4 = icmp eq i16 %23, 4357
  br i1 %cmp20.4, label %if.then22.4, label %land.lhs.true.4.if.then29_crit_edge

land.lhs.true.4.if.then29_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

if.then22.4:                                      ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %boardnr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %boardnr, align 8
  br label %if.end31

for.end:                                          ; preds = %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge
  %cmp11.lcssa = phi i1 [ %cmp11, %for.inc.for.end_crit_edge ], [ %cmp11.1, %for.inc.1.for.end_crit_edge ], [ %cmp11.2, %for.inc.2.for.end_crit_edge ], [ %cmp11.3, %for.inc.3.for.end_crit_edge ]
  br i1 %cmp11.lcssa, label %for.end.if.then29_crit_edge, label %for.end.if.end31_crit_edge

for.end.if.end31_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

for.end.if.then29_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

if.then29:                                        ; preds = %for.end.if.then29_crit_edge, %land.lhs.true.4.if.then29_crit_edge, %for.body.4.if.then29_crit_edge
  %25 = ptrtoint ptr %boardnr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %boardnr, align 8
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %26 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %subsystem_vendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp.i = icmp eq i16 %27, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then29.do.end7.i_crit_edge

if.then29.do.end7.i_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %if.then29
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %28 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %subsystem_device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp3.i = icmp eq i16 %29, 0
  br i1 %cmp3.i, label %land.lhs.true.i.dm1105_card_list.exit_crit_edge, label %land.lhs.true.i.do.end7.i_crit_edge

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

land.lhs.true.i.dm1105_card_list.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dm1105_card_list.exit

do.end7.i:                                        ; preds = %land.lhs.true.i.do.end7.i_crit_edge, %if.then29.do.end7.i_crit_edge
  br label %dm1105_card_list.exit

dm1105_card_list.exit:                            ; preds = %do.end7.i, %land.lhs.true.i.dm1105_card_list.exit_crit_edge
  %.str.7.sink.i = phi ptr [ @.str.11, %do.end7.i ], [ @.str.7, %land.lhs.true.i.dm1105_card_list.exit_crit_edge ]
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.7.sink.i) #13
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef 0, ptr noundef nonnull @.str.19) #13
  %call21.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef 1, ptr noundef nonnull @.str.20) #13
  %call21.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef 2, ptr noundef nonnull @.str.21) #13
  %call21.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef 3, ptr noundef nonnull @.str.22) #13
  %call21.4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef 4, ptr noundef nonnull @.str.23) #13
  br label %if.end31

if.end31:                                         ; preds = %dm1105_card_list.exit, %for.end.if.end31_crit_edge, %if.then22.4, %if.end2.if.end31_crit_edge
  %30 = load i32, ptr @dm1105_devcount, align 4
  %inc32 = add i32 %30, 1
  store i32 %inc32, ptr @dm1105_devcount, align 4
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %pdev, ptr %call7.i.i, align 8
  %buffer_size = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 23
  %32 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 120320, ptr %buffer_size, align 8
  %PacketErrorCount = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 24
  %33 = ptrtoint ptr %PacketErrorCount to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %PacketErrorCount, align 4
  %dmarst = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 25
  %34 = ptrtoint ptr %dmarst to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %dmarst, align 8
  %call34 = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end31.err_kfree_crit_edge, label %if.end38

if.end31.err_kfree_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_kfree

if.end38:                                         ; preds = %if.end31
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call40 = tail call i32 @dma_set_mask(ptr noundef %dev39, i64 noundef 4294967295) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.end38.err_pci_disable_device_crit_edge, label %if.end44

if.end38.err_pci_disable_device_crit_edge:        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pci_disable_device

if.end44:                                         ; preds = %if.end38
  tail call void @pci_set_master(ptr noundef %pdev) #9
  %call45 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end44.err_pci_disable_device_crit_edge, label %if.end49

if.end44.err_pci_disable_device_crit_edge:        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pci_disable_device

if.end49:                                         ; preds = %if.end44
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %35 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp51 = icmp eq i32 %36, 0
  br i1 %cmp51, label %if.end49.cond.end_crit_edge, label %cond.false

if.end49.cond.end_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %37 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %resource, align 8
  %sub = add i32 %36, 1
  %add = sub i32 %sub, %38
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end49.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end49.cond.end_crit_edge ]
  %call58 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef %cond) #9
  %io_mem = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %io_mem to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call58, ptr %io_mem, align 4
  %tobool60.not = icmp eq ptr %call58, null
  br i1 %tobool60.not, label %cond.end.err_pci_release_regions_crit_edge, label %do.body

cond.end.err_pci_release_regions_crit_edge:       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pci_release_regions

do.body:                                          ; preds = %cond.end
  %lock = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 26
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @dm1105_probe.__key, i16 noundef signext 3) #9
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  tail call void @arm_heavy_mb() #9
  %41 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %io_mem, align 4
  %arrayidx.i.i = getelementptr i8, ptr %42, i32 72
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  %and.i.i = and i32 %43, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %44 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 8) #9, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !225
  tail call void @arm_heavy_mb() #9
  %45 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %io_mem, align 4
  %arrayidx4.i.i = getelementptr i8, ptr %46, i32 48
  %47 = ptrtoint ptr %arrayidx4.i.i to i32
  %and5.i.i = and i32 %47, 1048575
  %add6.i.i = or i32 %and5.i.i, -18874368
  %48 = inttoptr i32 %add6.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 0) #9, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !226
  tail call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %io_mem, align 4
  %arrayidx.i = getelementptr i8, ptr %50, i32 24
  %51 = ptrtoint ptr %arrayidx.i to i32
  %and.i = and i32 %51, 1048575
  %add.i = or i32 %and.i, -18874368
  %52 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 0) #9, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  tail call void @arm_heavy_mb() #9
  %53 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %io_mem, align 4
  %arrayidx4.i = getelementptr i8, ptr %54, i32 4
  %55 = ptrtoint ptr %arrayidx4.i to i32
  %and5.i = and i32 %55, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %56 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 -68) #9, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !228
  tail call void @arm_heavy_mb() #9
  %57 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %io_mem, align 4
  %59 = ptrtoint ptr %58 to i32
  %and12.i = and i32 %59, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %60 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %60, i16 2753) #9, !srcloc !229
  %61 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call7.i.i, align 8
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %dma_addr.i.i = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 19
  %call.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1.i.i, i32 noundef 144384, ptr noundef %dma_addr.i.i, i32 noundef 3264, i32 noundef 0) #9
  %ts_buf.i.i = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 20
  %63 = ptrtoint ptr %ts_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i.i.i, ptr %ts_buf.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  tail call void @arm_heavy_mb() #9
  %64 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dma_addr.i.i, align 8
  %66 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %io_mem, align 4
  %arrayidx.i3.i = getelementptr i8, ptr %67, i32 56
  %68 = ptrtoint ptr %arrayidx.i3.i to i32
  %and.i4.i = and i32 %68, 1048575
  %add.i5.i = or i32 %and.i4.i, -18874368
  %69 = inttoptr i32 %add.i5.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %69, i32 %65) #9, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !232
  tail call void @arm_heavy_mb() #9
  %70 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %io_mem, align 4
  %arrayidx19.i = getelementptr i8, ptr %71, i32 60
  %72 = ptrtoint ptr %arrayidx19.i to i32
  %and20.i = and i32 %72, 1048575
  %add21.i = or i32 %and20.i, -18874368
  %73 = inttoptr i32 %add21.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %73, i32 14024960) #9, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !233
  tail call void @arm_heavy_mb() #9
  %74 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %io_mem, align 4
  %arrayidx26.i = getelementptr i8, ptr %75, i32 68
  %76 = ptrtoint ptr %arrayidx26.i to i32
  %and27.i = and i32 %76, 1048575
  %add28.i = or i32 %and27.i, -18874368
  %77 = inttoptr i32 %add28.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 47) #9, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !234
  tail call void @arm_heavy_mb() #9
  %78 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %io_mem, align 4
  %arrayidx33.i = getelementptr i8, ptr %79, i32 100
  %80 = ptrtoint ptr %arrayidx33.i to i32
  %and34.i = and i32 %80, 1048575
  %add35.i = or i32 %and34.i, -18874368
  %81 = inttoptr i32 %add35.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %81, i8 3) #9, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !235
  tail call void @arm_heavy_mb() #9
  %82 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %io_mem, align 4
  %arrayidx40.i = getelementptr i8, ptr %83, i32 104
  %84 = ptrtoint ptr %arrayidx40.i to i32
  %and41.i = and i32 %84, 1048575
  %add42.i = or i32 %and41.i, -18874368
  %85 = inttoptr i32 %add42.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %85, i8 0) #9, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !236
  tail call void @arm_heavy_mb() #9
  %86 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %io_mem, align 4
  %arrayidx47.i = getelementptr i8, ptr %87, i32 108
  %88 = ptrtoint ptr %arrayidx47.i to i32
  %and48.i = and i32 %88, 1048575
  %add49.i = or i32 %and48.i, -18874368
  %89 = inttoptr i32 %add49.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %89, i16 0) #9, !srcloc !229
  %i2c_adap = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 13
  %driver_data.i.i353 = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 13, i32 9, i32 8
  %90 = ptrtoint ptr %driver_data.i.i353 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call7.i.i, ptr %driver_data.i.i353, align 4
  %name = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 13, i32 12
  %call70 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 48) #9
  %91 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %i2c_adap, align 8
  %parent = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 13, i32 9, i32 1
  %92 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %dev39, ptr %parent, align 8
  %algo = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 13, i32 2
  %93 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @dm1105_algo, ptr %algo, align 8
  %algo_data = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 13, i32 3
  %94 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call7.i.i, ptr %algo_data, align 4
  %call78 = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adap) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %do.body.err_dm1105_hw_exit_crit_edge, label %if.end82

do.body.err_dm1105_hw_exit_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_dm1105_hw_exit

if.end82:                                         ; preds = %do.body
  %i2c_bb_adap = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 14
  %driver_data.i.i354 = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 14, i32 9, i32 8
  %95 = ptrtoint ptr %driver_data.i.i354 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call7.i.i, ptr %driver_data.i.i354, align 4
  %name84 = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 14, i32 12
  %call86 = tail call i32 @strscpy(ptr noundef %name84, ptr noundef nonnull @.str.2, i32 noundef 48) #9
  %96 = ptrtoint ptr %i2c_bb_adap to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %i2c_bb_adap, align 8
  %parent92 = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 14, i32 9, i32 1
  %97 = ptrtoint ptr %parent92 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %dev39, ptr %parent92, align 8
  %i2c_bit = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 15
  %algo_data94 = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 14, i32 3
  %98 = ptrtoint ptr %algo_data94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %i2c_bit, ptr %algo_data94, align 4
  %99 = ptrtoint ptr %i2c_bit to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call7.i.i, ptr %i2c_bit, align 8
  %setsda = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 15, i32 1
  %100 = ptrtoint ptr %setsda to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @dm1105_setsda, ptr %setsda, align 4
  %setscl = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 15, i32 2
  %101 = ptrtoint ptr %setscl to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @dm1105_setscl, ptr %setscl, align 8
  %getsda = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 15, i32 3
  %102 = ptrtoint ptr %getsda to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @dm1105_getsda, ptr %getsda, align 4
  %getscl = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 15, i32 4
  %103 = ptrtoint ptr %getscl to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @dm1105_getscl, ptr %getscl, align 8
  %udelay = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 15, i32 7
  %104 = ptrtoint ptr %udelay to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 10, ptr %udelay, align 4
  %timeout = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 15, i32 8
  %105 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 10, ptr %timeout, align 8
  %106 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %boardnr, align 8
  %108 = and i32 %107, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %108)
  %tobool2.not.i.not.i.not = icmp eq i32 %108, 4
  br i1 %tobool2.not.i.not.i.not, label %do.body25.i.i, label %if.end82.dm1105_setline.exit_crit_edge

if.end82.dm1105_setline.exit_crit_edge:           ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %dm1105_setline.exit

do.body25.i.i:                                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  %gpio_sda.i = getelementptr [5 x %struct.dm1105_board], ptr @dm1105_boards, i32 0, i32 %107, i32 3
  %109 = ptrtoint ptr %gpio_sda.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %gpio_sda.i, align 4
  %and1.i.i = and i32 %110, 262143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !237
  tail call void @arm_heavy_mb() #9
  %111 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %io_mem, align 4
  %arrayidx29.i.i = getelementptr i8, ptr %112, i32 12
  %113 = ptrtoint ptr %arrayidx29.i.i to i32
  %and30.i.i = and i32 %113, 1048575
  %add31.i.i = or i32 %and30.i.i, -18874368
  %114 = inttoptr i32 %add31.i.i to ptr
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %114) #9, !srcloc !238
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !239
  %or41.i.i = or i32 %116, %and1.i.i
  %117 = tail call i32 @llvm.bswap.i32(i32 %or41.i.i) #9
  %118 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %io_mem, align 4
  %arrayidx43.i.i = getelementptr i8, ptr %119, i32 12
  %120 = ptrtoint ptr %arrayidx43.i.i to i32
  %and44.i.i = and i32 %120, 1048575
  %add45.i.i = or i32 %and44.i.i, -18874368
  %121 = inttoptr i32 %add45.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %121, i32 %117) #9, !srcloc !231
  br label %dm1105_setline.exit

dm1105_setline.exit:                              ; preds = %do.body25.i.i, %if.end82.dm1105_setline.exit_crit_edge
  %122 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %boardnr, align 8
  %124 = and i32 %123, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %124)
  %tobool2.not.i.not.i377.not = icmp eq i32 %124, 4
  br i1 %tobool2.not.i.not.i377.not, label %do.body25.i.i387, label %dm1105_setline.exit.dm1105_setline.exit388_crit_edge

dm1105_setline.exit.dm1105_setline.exit388_crit_edge: ; preds = %dm1105_setline.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dm1105_setline.exit388

do.body25.i.i387:                                 ; preds = %dm1105_setline.exit
  call void @__sanitizer_cov_trace_pc() #11
  %gpio_scl.i = getelementptr [5 x %struct.dm1105_board], ptr @dm1105_boards, i32 0, i32 %123, i32 2
  %125 = ptrtoint ptr %gpio_scl.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %gpio_scl.i, align 4
  %and1.i.i376 = and i32 %126, 262143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !237
  tail call void @arm_heavy_mb() #9
  %127 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %io_mem, align 4
  %arrayidx29.i.i380 = getelementptr i8, ptr %128, i32 12
  %129 = ptrtoint ptr %arrayidx29.i.i380 to i32
  %and30.i.i381 = and i32 %129, 1048575
  %add31.i.i382 = or i32 %and30.i.i381, -18874368
  %130 = inttoptr i32 %add31.i.i382 to ptr
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %130) #9, !srcloc !238
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !239
  %or41.i.i383 = or i32 %132, %and1.i.i376
  %133 = tail call i32 @llvm.bswap.i32(i32 %or41.i.i383) #9
  %134 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %io_mem, align 4
  %arrayidx43.i.i384 = getelementptr i8, ptr %135, i32 12
  %136 = ptrtoint ptr %arrayidx43.i.i384 to i32
  %and44.i.i385 = and i32 %136, 1048575
  %add45.i.i386 = or i32 %and44.i.i385, -18874368
  %137 = inttoptr i32 %add45.i.i386 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %137, i32 %133) #9, !srcloc !231
  br label %dm1105_setline.exit388

dm1105_setline.exit388:                           ; preds = %do.body25.i.i387, %dm1105_setline.exit.dm1105_setline.exit388_crit_edge
  %call103 = tail call i32 @i2c_bit_add_bus(ptr noundef %i2c_bb_adap) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %dm1105_setline.exit388.err_i2c_del_adapter_crit_edge, label %if.end107

dm1105_setline.exit388.err_i2c_del_adapter_crit_edge: ; preds = %dm1105_setline.exit388
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_i2c_del_adapter

if.end107:                                        ; preds = %dm1105_setline.exit388
  %dvb_adapter108 = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 6
  %call110 = tail call i32 @dvb_register_adapter(ptr noundef %dvb_adapter108, ptr noundef nonnull @.str, ptr noundef null, ptr noundef %dev39, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.end107.err_i2c_del_adapters_crit_edge, label %if.end114

if.end107.err_i2c_del_adapters_crit_edge:         ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_i2c_del_adapters

if.end114:                                        ; preds = %if.end107
  %proposed_mac = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 6, i32 4
  tail call fastcc void @dm1105_read_mac(ptr noundef nonnull %call7.i.i, ptr noundef %proposed_mac)
  %demux = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 7
  %filternum = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 7, i32 2
  %138 = ptrtoint ptr %filternum to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 256, ptr %filternum, align 8
  %feednum = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 7, i32 3
  %139 = ptrtoint ptr %feednum to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 256, ptr %feednum, align 4
  %start_feed = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 7, i32 4
  %140 = ptrtoint ptr %start_feed to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @dm1105_start_feed, ptr %start_feed, align 8
  %stop_feed = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 7, i32 5
  %141 = ptrtoint ptr %stop_feed to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @dm1105_stop_feed, ptr %stop_feed, align 4
  %142 = ptrtoint ptr %demux to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 13, ptr %demux, align 8
  %call118 = tail call i32 @dvb_dmx_init(ptr noundef %demux) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %if.end114.err_dvb_unregister_adapter_crit_edge, label %if.end122

if.end114.err_dvb_unregister_adapter_crit_edge:   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_dvb_unregister_adapter

if.end122:                                        ; preds = %if.end114
  %dmxdev = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 5
  %filternum124 = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 5, i32 4
  %143 = ptrtoint ptr %filternum124 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 256, ptr %filternum124, align 4
  %demux126 = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 5, i32 3
  %144 = ptrtoint ptr %demux126 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %demux, ptr %demux126, align 8
  %capabilities128 = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 5, i32 5
  %145 = ptrtoint ptr %capabilities128 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %capabilities128, align 8
  %call130 = tail call i32 @dvb_dmxdev_init(ptr noundef %dmxdev, ptr noundef %dvb_adapter108) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %if.end122.err_dvb_dmx_release_crit_edge, label %if.end134

if.end122.err_dvb_dmx_release_crit_edge:          ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_dvb_dmx_release

if.end134:                                        ; preds = %if.end122
  %hw_frontend = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 3
  %source = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 3, i32 1
  %146 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 1, ptr %source, align 4
  %add_frontend = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 10
  %147 = ptrtoint ptr %add_frontend to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %add_frontend, align 8
  %call136 = tail call i32 %148(ptr noundef %demux, ptr noundef %hw_frontend) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %cmp137 = icmp slt i32 %call136, 0
  br i1 %cmp137, label %if.end134.err_dvb_dmxdev_release_crit_edge, label %if.end140

if.end134.err_dvb_dmxdev_release_crit_edge:       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_dvb_dmxdev_release

if.end140:                                        ; preds = %if.end134
  %mem_frontend = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 4
  %source141 = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 4, i32 1
  %149 = ptrtoint ptr %source141 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %source141, align 8
  %150 = ptrtoint ptr %add_frontend to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %add_frontend, align 8
  %call144 = tail call i32 %151(ptr noundef %demux, ptr noundef %mem_frontend) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %cmp145 = icmp slt i32 %call144, 0
  br i1 %cmp145, label %if.end140.err_remove_hw_frontend_crit_edge, label %if.end148

if.end140.err_remove_hw_frontend_crit_edge:       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_remove_hw_frontend

if.end148:                                        ; preds = %if.end140
  %connect_frontend = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 13
  %152 = ptrtoint ptr %connect_frontend to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %connect_frontend, align 4
  %call150 = tail call i32 %153(ptr noundef %demux, ptr noundef %hw_frontend) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %cmp151 = icmp slt i32 %call150, 0
  br i1 %cmp151, label %if.end148.err_remove_mem_frontend_crit_edge, label %if.end154

if.end148.err_remove_mem_frontend_crit_edge:      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_remove_mem_frontend

if.end154:                                        ; preds = %if.end148
  %dvbnet = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 9
  %call155 = tail call i32 @dvb_net_init(ptr noundef %dvb_adapter108, ptr noundef %dvbnet, ptr noundef %demux) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %cmp156 = icmp slt i32 %call155, 0
  br i1 %cmp156, label %if.end154.err_disconnect_frontend_crit_edge, label %if.end159

if.end154.err_disconnect_frontend_crit_edge:      ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_disconnect_frontend

if.end159:                                        ; preds = %if.end154
  %call160 = tail call fastcc i32 @frontend_init(ptr noundef %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %cmp161 = icmp slt i32 %call160, 0
  br i1 %cmp161, label %if.end159.err_dvb_net_crit_edge, label %if.end164

if.end159.err_dvb_net_crit_edge:                  ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_dvb_net

if.end164:                                        ; preds = %if.end159
  tail call fastcc void @dm1105_ir_init(ptr noundef %call7.i.i)
  %work = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 16
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %154 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 16, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @dm1105_probe.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry171 = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 16, i32 1
  %155 = ptrtoint ptr %entry171 to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile ptr %entry171, ptr %entry171, align 4
  %prev.i = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 16, i32 1, i32 1
  %156 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %entry171, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 16, i32 2
  %157 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr @dm1105_dmx_buffer, ptr %func, align 4
  %wqn = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 18
  %name176 = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 6, i32 3
  %158 = ptrtoint ptr %name176 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %name176, align 8
  %160 = ptrtoint ptr %dvb_adapter108 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %dvb_adapter108, align 4
  %call177 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %wqn, ptr noundef nonnull @.str.5, ptr noundef %159, i32 noundef %161)
  %call180 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.6, i32 noundef 917514, i32 noundef 1, ptr noundef %wqn) #9
  %wq = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 17
  %162 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call180, ptr %wq, align 4
  %tobool182.not = icmp eq ptr %call180, null
  br i1 %tobool182.not, label %if.end164.err_dvb_net_crit_edge, label %if.end184

if.end164.err_dvb_net_crit_edge:                  ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_dvb_net

if.end184:                                        ; preds = %if.end164
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %163 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %irq, align 4
  %call.i356 = tail call i32 @request_threaded_irq(i32 noundef %164, ptr noundef nonnull @dm1105_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i356)
  %cmp186 = icmp slt i32 %call.i356, 0
  br i1 %cmp186, label %err_workqueue, label %if.end184.cleanup_crit_edge

if.end184.cleanup_crit_edge:                      ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_workqueue:                                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #11
  %165 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %166) #9
  br label %err_dvb_net

err_dvb_net:                                      ; preds = %err_workqueue, %if.end164.err_dvb_net_crit_edge, %if.end159.err_dvb_net_crit_edge
  %ret.0 = phi i32 [ %call160, %if.end159.err_dvb_net_crit_edge ], [ %call.i356, %err_workqueue ], [ -12, %if.end164.err_dvb_net_crit_edge ]
  tail call void @dvb_net_release(ptr noundef %dvbnet) #9
  br label %err_disconnect_frontend

err_disconnect_frontend:                          ; preds = %err_dvb_net, %if.end154.err_disconnect_frontend_crit_edge
  %ret.1 = phi i32 [ %call155, %if.end154.err_disconnect_frontend_crit_edge ], [ %ret.0, %err_dvb_net ]
  %disconnect_frontend = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 14
  %167 = ptrtoint ptr %disconnect_frontend to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %disconnect_frontend, align 8
  %call192 = tail call i32 %168(ptr noundef %demux) #9
  br label %err_remove_mem_frontend

err_remove_mem_frontend:                          ; preds = %err_disconnect_frontend, %if.end148.err_remove_mem_frontend_crit_edge
  %ret.2 = phi i32 [ %call150, %if.end148.err_remove_mem_frontend_crit_edge ], [ %ret.1, %err_disconnect_frontend ]
  %remove_frontend = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 11
  %169 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %remove_frontend, align 4
  %call194 = tail call i32 %170(ptr noundef %demux, ptr noundef %mem_frontend) #9
  br label %err_remove_hw_frontend

err_remove_hw_frontend:                           ; preds = %err_remove_mem_frontend, %if.end140.err_remove_hw_frontend_crit_edge
  %ret.3 = phi i32 [ %call144, %if.end140.err_remove_hw_frontend_crit_edge ], [ %ret.2, %err_remove_mem_frontend ]
  %remove_frontend195 = getelementptr inbounds %struct.dm1105_dev, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 11
  %171 = ptrtoint ptr %remove_frontend195 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %remove_frontend195, align 4
  %call197 = tail call i32 %172(ptr noundef %demux, ptr noundef %hw_frontend) #9
  br label %err_dvb_dmxdev_release

err_dvb_dmxdev_release:                           ; preds = %err_remove_hw_frontend, %if.end134.err_dvb_dmxdev_release_crit_edge
  %ret.4 = phi i32 [ %call136, %if.end134.err_dvb_dmxdev_release_crit_edge ], [ %ret.3, %err_remove_hw_frontend ]
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #9
  br label %err_dvb_dmx_release

err_dvb_dmx_release:                              ; preds = %err_dvb_dmxdev_release, %if.end122.err_dvb_dmx_release_crit_edge
  %ret.5 = phi i32 [ %call130, %if.end122.err_dvb_dmx_release_crit_edge ], [ %ret.4, %err_dvb_dmxdev_release ]
  tail call void @dvb_dmx_release(ptr noundef %demux) #9
  br label %err_dvb_unregister_adapter

err_dvb_unregister_adapter:                       ; preds = %err_dvb_dmx_release, %if.end114.err_dvb_unregister_adapter_crit_edge
  %ret.6 = phi i32 [ %call118, %if.end114.err_dvb_unregister_adapter_crit_edge ], [ %ret.5, %err_dvb_dmx_release ]
  %call199 = tail call i32 @dvb_unregister_adapter(ptr noundef %dvb_adapter108) #9
  br label %err_i2c_del_adapters

err_i2c_del_adapters:                             ; preds = %err_dvb_unregister_adapter, %if.end107.err_i2c_del_adapters_crit_edge
  %ret.7 = phi i32 [ %call110, %if.end107.err_i2c_del_adapters_crit_edge ], [ %ret.6, %err_dvb_unregister_adapter ]
  tail call void @i2c_del_adapter(ptr noundef %i2c_bb_adap) #9
  br label %err_i2c_del_adapter

err_i2c_del_adapter:                              ; preds = %err_i2c_del_adapters, %dm1105_setline.exit388.err_i2c_del_adapter_crit_edge
  %ret.8 = phi i32 [ %call103, %dm1105_setline.exit388.err_i2c_del_adapter_crit_edge ], [ %ret.7, %err_i2c_del_adapters ]
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap) #9
  br label %err_dm1105_hw_exit

err_dm1105_hw_exit:                               ; preds = %err_i2c_del_adapter, %do.body.err_dm1105_hw_exit_crit_edge
  %ret.9 = phi i32 [ %call78, %do.body.err_dm1105_hw_exit_crit_edge ], [ %ret.8, %err_i2c_del_adapter ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  tail call void @arm_heavy_mb() #9
  %173 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %io_mem, align 4
  %arrayidx.i.i358 = getelementptr i8, ptr %174, i32 72
  %175 = ptrtoint ptr %arrayidx.i.i358 to i32
  %and.i.i359 = and i32 %175, 1048575
  %add.i.i360 = or i32 %and.i.i359, -18874368
  %176 = inttoptr i32 %add.i.i360 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %176, i8 8) #9, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !225
  tail call void @arm_heavy_mb() #9
  %177 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %io_mem, align 4
  %arrayidx4.i.i361 = getelementptr i8, ptr %178, i32 48
  %179 = ptrtoint ptr %arrayidx4.i.i361 to i32
  %and5.i.i362 = and i32 %179, 1048575
  %add6.i.i363 = or i32 %and5.i.i362, -18874368
  %180 = inttoptr i32 %add6.i.i363 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %180, i8 0) #9, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  tail call void @arm_heavy_mb() #9
  %181 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %io_mem, align 4
  %arrayidx.i364 = getelementptr i8, ptr %182, i32 100
  %183 = ptrtoint ptr %arrayidx.i364 to i32
  %and.i365 = and i32 %183, 1048575
  %add.i366 = or i32 %and.i365, -18874368
  %184 = inttoptr i32 %add.i366 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %184, i8 0) #9, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !241
  tail call void @arm_heavy_mb() #9
  %185 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %io_mem, align 4
  %arrayidx4.i367 = getelementptr i8, ptr %186, i32 72
  %187 = ptrtoint ptr %arrayidx4.i367 to i32
  %and5.i368 = and i32 %187, 1048575
  %add6.i369 = or i32 %and5.i368, -18874368
  %188 = inttoptr i32 %add6.i369 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %188, i8 0) #9, !srcloc !224
  %189 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %call7.i.i, align 8
  %dev1.i.i370 = getelementptr inbounds %struct.pci_dev, ptr %190, i32 0, i32 44
  %191 = ptrtoint ptr %ts_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %ts_buf.i.i, align 4
  %193 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %dma_addr.i.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev1.i.i370, i32 noundef 144384, ptr noundef %192, i32 noundef %194, i32 noundef 0) #9
  %195 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %io_mem, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %196) #9
  br label %err_pci_release_regions

err_pci_release_regions:                          ; preds = %err_dm1105_hw_exit, %cond.end.err_pci_release_regions_crit_edge
  %ret.11 = phi i32 [ %ret.9, %err_dm1105_hw_exit ], [ -5, %cond.end.err_pci_release_regions_crit_edge ]
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  br label %err_pci_disable_device

err_pci_disable_device:                           ; preds = %err_pci_release_regions, %if.end44.err_pci_disable_device_crit_edge, %if.end38.err_pci_disable_device_crit_edge
  %ret.12 = phi i32 [ %call40, %if.end38.err_pci_disable_device_crit_edge ], [ %call45, %if.end44.err_pci_disable_device_crit_edge ], [ %ret.11, %err_pci_release_regions ]
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  br label %err_kfree

err_kfree:                                        ; preds = %err_pci_disable_device, %if.end31.err_kfree_crit_edge
  %ret.13 = phi i32 [ %call34, %if.end31.err_kfree_crit_edge ], [ %ret.12, %err_pci_disable_device ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_kfree, %if.end184.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.13, %err_kfree ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end184.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm1105_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %demux = getelementptr inbounds %struct.dm1105_dev, ptr %1, i32 0, i32 7
  %ir.i = getelementptr inbounds %struct.dm1105_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ir.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ir.i, align 8
  tail call void @rc_unregister_device(ptr noundef %3) #9
  %close = getelementptr inbounds %struct.dm1105_dev, ptr %1, i32 0, i32 7, i32 0, i32 4
  %4 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %close, align 4
  %call3 = tail call i32 %5(ptr noundef %demux) #9
  %dvbnet = getelementptr inbounds %struct.dm1105_dev, ptr %1, i32 0, i32 9
  tail call void @dvb_net_release(ptr noundef %dvbnet) #9
  %fe = getelementptr inbounds %struct.dm1105_dev, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fe, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @dvb_unregister_frontend(ptr noundef nonnull %7) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dvb_adapter1 = getelementptr inbounds %struct.dm1105_dev, ptr %1, i32 0, i32 6
  %disconnect_frontend = getelementptr inbounds %struct.dm1105_dev, ptr %1, i32 0, i32 7, i32 0, i32 14
  %8 = ptrtoint ptr %disconnect_frontend to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disconnect_frontend, align 4
  %call6 = tail call i32 %9(ptr noundef %demux) #9
  %remove_frontend = getelementptr inbounds %struct.dm1105_dev, ptr %1, i32 0, i32 7, i32 0, i32 11
  %10 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remove_frontend, align 4
  %mem_frontend = getelementptr inbounds %struct.dm1105_dev, ptr %1, i32 0, i32 4
  %call7 = tail call i32 %11(ptr noundef %demux, ptr noundef %mem_frontend) #9
  %12 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %remove_frontend, align 4
  %hw_frontend = getelementptr inbounds %struct.dm1105_dev, ptr %1, i32 0, i32 3
  %call9 = tail call i32 %13(ptr noundef %demux, ptr noundef %hw_frontend) #9
  %dmxdev = getelementptr inbounds %struct.dm1105_dev, ptr %1, i32 0, i32 5
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #9
  tail call void @dvb_dmx_release(ptr noundef %demux) #9
  %call10 = tail call i32 @dvb_unregister_adapter(ptr noundef %dvb_adapter1) #9
  %i2c_adap = getelementptr inbounds %struct.dm1105_dev, ptr %1, i32 0, i32 13
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  tail call void @arm_heavy_mb() #9
  %io_mem.i.i = getelementptr inbounds %struct.dm1105_dev, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %io_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_mem.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %15, i32 72
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  %and.i.i = and i32 %16, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %17 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 8) #9, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !225
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %io_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_mem.i.i, align 4
  %arrayidx4.i.i = getelementptr i8, ptr %19, i32 48
  %20 = ptrtoint ptr %arrayidx4.i.i to i32
  %and5.i.i = and i32 %20, 1048575
  %add6.i.i = or i32 %and5.i.i, -18874368
  %21 = inttoptr i32 %add6.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 0) #9, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %io_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_mem.i.i, align 4
  %arrayidx.i = getelementptr i8, ptr %23, i32 100
  %24 = ptrtoint ptr %arrayidx.i to i32
  %and.i = and i32 %24, 1048575
  %add.i = or i32 %and.i, -18874368
  %25 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 0) #9, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !241
  tail call void @arm_heavy_mb() #9
  %26 = ptrtoint ptr %io_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_mem.i.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %27, i32 72
  %28 = ptrtoint ptr %arrayidx4.i to i32
  %and5.i = and i32 %28, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %29 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 0) #9, !srcloc !224
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %ts_buf.i.i = getelementptr inbounds %struct.dm1105_dev, ptr %1, i32 0, i32 20
  %32 = ptrtoint ptr %ts_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ts_buf.i.i, align 4
  %dma_addr.i.i = getelementptr inbounds %struct.dm1105_dev, ptr %1, i32 0, i32 19
  %34 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_addr.i.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev1.i.i, i32 noundef 144384, ptr noundef %33, i32 noundef %35, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq, align 4
  %call11 = tail call ptr @free_irq(i32 noundef %37, ptr noundef %1) #9
  %38 = ptrtoint ptr %io_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io_mem.i.i, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %39) #9
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  %40 = load i32, ptr @dm1105_devcount, align 4
  %dec = add i32 %40, -1
  store i32 %dec, ptr @dm1105_devcount, align 4
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm1105_setsda(ptr nocapture noundef readonly %data, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %boardnr = getelementptr inbounds %struct.dm1105_dev, ptr %data, i32 0, i32 11
  %0 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %boardnr, align 8
  %gpio_sda = getelementptr [5 x %struct.dm1105_board], ptr @dm1105_boards, i32 0, i32 %1, i32 3
  %2 = ptrtoint ptr %gpio_sda to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_sda, align 4
  tail call fastcc void @dm1105_setline(ptr noundef %data, i32 noundef %3, i32 noundef %state)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm1105_setscl(ptr nocapture noundef readonly %data, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %boardnr = getelementptr inbounds %struct.dm1105_dev, ptr %data, i32 0, i32 11
  %0 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %boardnr, align 8
  %gpio_scl = getelementptr [5 x %struct.dm1105_board], ptr @dm1105_boards, i32 0, i32 %1, i32 2
  %2 = ptrtoint ptr %gpio_scl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_scl, align 4
  tail call fastcc void @dm1105_setline(ptr noundef %data, i32 noundef %3, i32 noundef %state)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm1105_getsda(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %boardnr = getelementptr inbounds %struct.dm1105_dev, ptr %data, i32 0, i32 11
  %0 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %boardnr, align 8
  %2 = and i32 %1, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %tobool2.not.i.not = icmp eq i32 %2, 4
  br i1 %tobool2.not.i.not, label %if.then3.i, label %entry.dm1105_gpio_get.exit_crit_edge

entry.dm1105_gpio_get.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dm1105_gpio_get.exit

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %gpio_sda = getelementptr [5 x %struct.dm1105_board], ptr @dm1105_boards, i32 0, i32 %1, i32 3
  %3 = ptrtoint ptr %gpio_sda to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gpio_sda, align 4
  %and1.i = and i32 %4, 262143
  %io_mem.i = getelementptr inbounds %struct.dm1105_dev, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_mem.i, align 4
  %arrayidx.i = getelementptr i8, ptr %6, i32 8
  %7 = ptrtoint ptr %arrayidx.i to i32
  %and4.i = and i32 %7, 1048575
  %add.i = or i32 %and4.i, -18874368
  %8 = inttoptr i32 %add.i to ptr
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %8) #9, !srcloc !238
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !242
  %and9.i = and i32 %and1.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %phi.cmp = icmp ne i32 %and9.i, 0
  %phi.cast = zext i1 %phi.cmp to i32
  br label %dm1105_gpio_get.exit

dm1105_gpio_get.exit:                             ; preds = %if.then3.i, %entry.dm1105_gpio_get.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast, %if.then3.i ], [ 0, %entry.dm1105_gpio_get.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm1105_getscl(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %boardnr = getelementptr inbounds %struct.dm1105_dev, ptr %data, i32 0, i32 11
  %0 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %boardnr, align 8
  %2 = and i32 %1, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %tobool2.not.i.not = icmp eq i32 %2, 4
  br i1 %tobool2.not.i.not, label %if.then3.i, label %entry.dm1105_gpio_get.exit_crit_edge

entry.dm1105_gpio_get.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dm1105_gpio_get.exit

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %gpio_scl = getelementptr [5 x %struct.dm1105_board], ptr @dm1105_boards, i32 0, i32 %1, i32 2
  %3 = ptrtoint ptr %gpio_scl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gpio_scl, align 4
  %and1.i = and i32 %4, 262143
  %io_mem.i = getelementptr inbounds %struct.dm1105_dev, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_mem.i, align 4
  %arrayidx.i = getelementptr i8, ptr %6, i32 8
  %7 = ptrtoint ptr %arrayidx.i to i32
  %and4.i = and i32 %7, 1048575
  %add.i = or i32 %and4.i, -18874368
  %8 = inttoptr i32 %add.i to ptr
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %8) #9, !srcloc !238
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !242
  %and9.i = and i32 %and1.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %phi.cmp = icmp ne i32 %and9.i, 0
  %phi.cast = zext i1 %phi.cmp to i32
  br label %dm1105_gpio_get.exit

dm1105_gpio_get.exit:                             ; preds = %if.then3.i, %entry.dm1105_gpio_get.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast, %if.then3.i ], [ 0, %entry.dm1105_gpio_get.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm1105_read_mac(ptr nocapture noundef readonly %dev, ptr noundef %mac) unnamed_addr #2 align 64 {
entry:
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #9
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 80, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @dm1105_read_mac.command, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %6 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 80, ptr %arrayinit.element, align 4
  %flags2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %7 = ptrtoint ptr %flags2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %flags2, align 2
  %len3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %8 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 6, ptr %len3, align 4
  %buf4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %9 = ptrtoint ptr %buf4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mac, ptr %buf4, align 4
  %i2c_adap = getelementptr inbounds %struct.dm1105_dev, ptr %dev, i32 0, i32 13
  %call = call i32 @dm1105_i2c_xfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 2)
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5, ptr noundef nonnull @.str.28, ptr noundef %mac) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm1105_start_feed(ptr nocapture noundef readonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demux.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux.i, align 4
  %full_ts_users = getelementptr i8, ptr %1, i32 812
  %2 = ptrtoint ptr %full_ts_users to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %full_ts_users, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %full_ts_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  tail call void @arm_heavy_mb() #9
  %io_mem.i = getelementptr i8, ptr %1, i32 -1364
  %4 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_mem.i, align 4
  %arrayidx.i = getelementptr i8, ptr %5, i32 72
  %6 = ptrtoint ptr %arrayidx.i to i32
  %and.i = and i32 %6, 1048575
  %add.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 13) #9, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !244
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_mem.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %9, i32 48
  %10 = ptrtoint ptr %arrayidx4.i to i32
  %and5.i = and i32 %10, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %11 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 1) #9, !srcloc !224
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm1105_stop_feed(ptr nocapture noundef readonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demux.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux.i, align 4
  %full_ts_users = getelementptr i8, ptr %1, i32 812
  %2 = ptrtoint ptr %full_ts_users to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %full_ts_users, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %full_ts_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  tail call void @arm_heavy_mb() #9
  %io_mem.i = getelementptr i8, ptr %1, i32 -1364
  %4 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_mem.i, align 4
  %arrayidx.i = getelementptr i8, ptr %5, i32 72
  %6 = ptrtoint ptr %arrayidx.i to i32
  %and.i = and i32 %6, 1048575
  %add.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 8) #9, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !225
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_mem.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %9, i32 48
  %10 = ptrtoint ptr %arrayidx4.i to i32
  %and5.i = and i32 %10, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %11 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 0) #9, !srcloc !224
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_net_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @frontend_init(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %boardnr = getelementptr inbounds %struct.dm1105_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %boardnr, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default [
    i32 4, label %sw.bb
    i32 2, label %sw.bb132
  ]

sw.bb:                                            ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !245
  tail call void @arm_heavy_mb() #9
  %io_mem.i = getelementptr inbounds %struct.dm1105_dev, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io_mem.i, align 4
  %arrayidx.i = getelementptr i8, ptr %4, i32 12
  %5 = ptrtoint ptr %arrayidx.i to i32
  %and7.i = and i32 %5, 1048575
  %add.i = or i32 %and7.i, -18874368
  %6 = inttoptr i32 %add.i to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #9, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !246
  %8 = and i32 %7, -8388609
  %9 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_mem.i, align 4
  %arrayidx16.i = getelementptr i8, ptr %10, i32 12
  %11 = ptrtoint ptr %arrayidx16.i to i32
  %and17.i = and i32 %11, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %12 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 %8) #9, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_mem.i, align 4
  %arrayidx.i481 = getelementptr i8, ptr %14, i32 8
  %15 = ptrtoint ptr %arrayidx.i481 to i32
  %and6.i = and i32 %15, 1048575
  %add.i482 = or i32 %and6.i, -18874368
  %16 = inttoptr i32 %add.i482 to ptr
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %16) #9, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  %18 = and i32 %17, -8388609
  %19 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_mem.i, align 4
  %arrayidx15.i = getelementptr i8, ptr %20, i32 8
  %21 = ptrtoint ptr %arrayidx15.i to i32
  %and16.i = and i32 %21, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %22 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 %18) #9, !srcloc !231
  tail call void @msleep(i32 noundef 100) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !249
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_mem.i, align 4
  %arrayidx.i484 = getelementptr i8, ptr %24, i32 8
  %25 = ptrtoint ptr %arrayidx.i484 to i32
  %and6.i485 = and i32 %25, 1048575
  %add.i486 = or i32 %and6.i485, -18874368
  %26 = inttoptr i32 %add.i486 to ptr
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %26) #9, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  %28 = or i32 %27, 8388608
  %29 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_mem.i, align 4
  %arrayidx16.i487 = getelementptr i8, ptr %30, i32 8
  %31 = ptrtoint ptr %arrayidx16.i487 to i32
  %and17.i488 = and i32 %31, 1048575
  %add18.i489 = or i32 %and17.i488, -18874368
  %32 = inttoptr i32 %add18.i489 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %32, i32 %28) #9, !srcloc !231
  tail call void @msleep(i32 noundef 200) #9
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.32) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %sw.bb.if.then_crit_edge

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.end:                                         ; preds = %sw.bb
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.33) #9
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.32) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %sw.bb.if.then_crit_edge
  %cond492 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %sw.bb.if.then_crit_edge ]
  %i2c_bb_adap = getelementptr inbounds %struct.dm1105_dev, ptr %dev, i32 0, i32 14
  %call4 = tail call ptr %cond492(ptr noundef nonnull @sharp_z0194a_config, ptr noundef %i2c_bb_adap) #9
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then11

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.32) #9
  br label %if.end39

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #13
  br label %if.end39

if.then11:                                        ; preds = %if.then
  %fe = getelementptr inbounds %struct.dm1105_dev, ptr %dev, i32 0, i32 8
  %33 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call4, ptr %fe, align 8
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %call4, i32 0, i32 1, i32 25
  %34 = ptrtoint ptr %set_voltage to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @dm1105_set_voltage, ptr %set_voltage, align 4
  %call15 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.36) #9
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %cond.end21, label %if.then11.if.then24_crit_edge

if.then11.if.then24_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

cond.end21:                                       ; preds = %if.then11
  %call19 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.37) #9
  %call20 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.36) #9
  %tobool23.not = icmp eq ptr %call20, null
  br i1 %tobool23.not, label %do.end34, label %cond.end21.if.then24_crit_edge

cond.end21.if.then24_crit_edge:                   ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

if.then24:                                        ; preds = %cond.end21.if.then24_crit_edge, %if.then11.if.then24_crit_edge
  %cond22499 = phi ptr [ %call20, %cond.end21.if.then24_crit_edge ], [ %call15, %if.then11.if.then24_crit_edge ]
  %35 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fe, align 8
  %call27 = tail call ptr %cond22499(ptr noundef %36, i32 noundef 96, ptr noundef %i2c_bb_adap, i32 noundef 13) #9
  %cmp28 = icmp eq ptr %call27, null
  br i1 %cmp28, label %if.then29, label %if.then24.sw.epilog_crit_edge

if.then24.sw.epilog_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then29:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.36) #9
  br label %sw.epilog

do.end34:                                         ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #11
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #13
  br label %sw.epilog

if.end39:                                         ; preds = %do.end, %if.then5
  %fe494 = getelementptr inbounds %struct.dm1105_dev, ptr %dev, i32 0, i32 8
  %37 = ptrtoint ptr %fe494 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %fe494, align 8
  %call42 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.41) #9
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %cond.end48, label %if.end39.if.then51_crit_edge

if.end39.if.then51_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51

cond.end48:                                       ; preds = %if.end39
  %call46 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.42) #9
  %call47 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.41) #9
  %tobool50.not = icmp eq ptr %call47, null
  br i1 %tobool50.not, label %do.end60, label %cond.end48.if.then51_crit_edge

cond.end48.if.then51_crit_edge:                   ; preds = %cond.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51

if.then51:                                        ; preds = %cond.end48.if.then51_crit_edge, %if.end39.if.then51_crit_edge
  %cond49502 = phi ptr [ %call47, %cond.end48.if.then51_crit_edge ], [ %call42, %if.end39.if.then51_crit_edge ]
  %i2c_bb_adap52 = getelementptr inbounds %struct.dm1105_dev, ptr %dev, i32 0, i32 14
  %call53 = tail call ptr %cond49502(ptr noundef nonnull @earda_config, ptr noundef %i2c_bb_adap52) #9
  %cmp54 = icmp eq ptr %call53, null
  br i1 %cmp54, label %if.then55, label %if.then68

if.then55:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.41) #9
  br label %if.end98

do.end60:                                         ; preds = %cond.end48
  call void @__sanitizer_cov_trace_pc() #11
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #13
  br label %if.end98

if.then68:                                        ; preds = %if.then51
  %38 = ptrtoint ptr %fe494 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call53, ptr %fe494, align 8
  %set_voltage71 = getelementptr inbounds %struct.dvb_frontend, ptr %call53, i32 0, i32 1, i32 25
  %39 = ptrtoint ptr %set_voltage71 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @dm1105_set_voltage, ptr %set_voltage71, align 4
  %call74 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.46) #9
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %cond.end80, label %if.then68.if.then83_crit_edge

if.then68.if.then83_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then83

cond.end80:                                       ; preds = %if.then68
  %call78 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.47) #9
  %call79 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.46) #9
  %tobool82.not = icmp eq ptr %call79, null
  br i1 %tobool82.not, label %do.end93, label %cond.end80.if.then83_crit_edge

cond.end80.if.then83_crit_edge:                   ; preds = %cond.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then83

if.then83:                                        ; preds = %cond.end80.if.then83_crit_edge, %if.then68.if.then83_crit_edge
  %cond81507 = phi ptr [ %call79, %cond.end80.if.then83_crit_edge ], [ %call74, %if.then68.if.then83_crit_edge ]
  %40 = ptrtoint ptr %fe494 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fe494, align 8
  %call86 = tail call ptr %cond81507(ptr noundef %41, i32 noundef 97, ptr noundef %i2c_bb_adap52) #9
  %cmp87 = icmp eq ptr %call86, null
  br i1 %cmp87, label %if.then88, label %if.then83.sw.epilog_crit_edge

if.then83.sw.epilog_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then88:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.46) #9
  br label %sw.epilog

do.end93:                                         ; preds = %cond.end80
  call void @__sanitizer_cov_trace_pc() #11
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #13
  br label %sw.epilog

if.end98:                                         ; preds = %do.end60, %if.then55
  %42 = ptrtoint ptr %fe494 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %fe494, align 8
  %call101 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #9
  %tobool102.not = icmp eq ptr %call101, null
  br i1 %tobool102.not, label %cond.end107, label %if.end98.if.then110_crit_edge

if.end98.if.then110_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then110

cond.end107:                                      ; preds = %if.end98
  %call105 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.52) #9
  %call106 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #9
  %tobool109.not = icmp eq ptr %call106, null
  br i1 %tobool109.not, label %do.end119, label %cond.end107.if.then110_crit_edge

cond.end107.if.then110_crit_edge:                 ; preds = %cond.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then110

if.then110:                                       ; preds = %cond.end107.if.then110_crit_edge, %if.end98.if.then110_crit_edge
  %cond108510 = phi ptr [ %call106, %cond.end107.if.then110_crit_edge ], [ %call101, %if.end98.if.then110_crit_edge ]
  %i2c_bb_adap111 = getelementptr inbounds %struct.dm1105_dev, ptr %dev, i32 0, i32 14
  %call112 = tail call ptr %cond108510(ptr noundef nonnull @serit_config, ptr noundef %i2c_bb_adap111) #9
  %cmp113 = icmp eq ptr %call112, null
  br i1 %cmp113, label %if.then114, label %if.then127

if.then114:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.51) #9
  br label %if.end122.thread

do.end119:                                        ; preds = %cond.end107
  call void @__sanitizer_cov_trace_pc() #11
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #13
  br label %if.end122.thread

if.end122.thread:                                 ; preds = %do.end119, %if.then114
  %43 = ptrtoint ptr %fe494 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %fe494, align 8
  br label %sw.epilog

if.then127:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %fe494 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call112, ptr %fe494, align 8
  %set_voltage130 = getelementptr inbounds %struct.dvb_frontend, ptr %call112, i32 0, i32 1, i32 25
  %45 = ptrtoint ptr %set_voltage130 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @dm1105_set_voltage, ptr %set_voltage130, align 4
  br label %sw.epilog

sw.bb132:                                         ; preds = %entry
  %call135 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.56) #9
  %tobool136.not = icmp eq ptr %call135, null
  br i1 %tobool136.not, label %cond.end141, label %sw.bb132.if.then144_crit_edge

sw.bb132.if.then144_crit_edge:                    ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then144

cond.end141:                                      ; preds = %sw.bb132
  %call139 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.57) #9
  %call140 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.56) #9
  %tobool143.not = icmp eq ptr %call140, null
  br i1 %tobool143.not, label %do.end152, label %cond.end141.if.then144_crit_edge

cond.end141.if.then144_crit_edge:                 ; preds = %cond.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then144

if.then144:                                       ; preds = %cond.end141.if.then144_crit_edge, %sw.bb132.if.then144_crit_edge
  %cond142515 = phi ptr [ %call140, %cond.end141.if.then144_crit_edge ], [ %call135, %sw.bb132.if.then144_crit_edge ]
  %i2c_adap = getelementptr inbounds %struct.dm1105_dev, ptr %dev, i32 0, i32 13
  %call145 = tail call ptr %cond142515(ptr noundef nonnull @serit_sp2633_config, ptr noundef %i2c_adap) #9
  %cmp146 = icmp eq ptr %call145, null
  br i1 %cmp146, label %if.then147, label %if.then160

if.then147:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.56) #9
  br label %if.end164

do.end152:                                        ; preds = %cond.end141
  call void @__sanitizer_cov_trace_pc() #11
  %call154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #13
  br label %if.end164

if.then160:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #11
  %fe157 = getelementptr inbounds %struct.dm1105_dev, ptr %dev, i32 0, i32 8
  %46 = ptrtoint ptr %fe157 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call145, ptr %fe157, align 8
  %set_voltage163 = getelementptr inbounds %struct.dvb_frontend, ptr %call145, i32 0, i32 1, i32 25
  %47 = ptrtoint ptr %set_voltage163 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @dm1105_set_voltage, ptr %set_voltage163, align 4
  br label %sw.epilog

if.end164:                                        ; preds = %do.end152, %if.then147
  %fe157517 = getelementptr inbounds %struct.dm1105_dev, ptr %dev, i32 0, i32 8
  %48 = ptrtoint ptr %fe157517 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %fe157517, align 8
  %call167 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.61) #9
  %tobool168.not = icmp eq ptr %call167, null
  br i1 %tobool168.not, label %cond.end173, label %if.end164.if.then176_crit_edge

if.end164.if.then176_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then176

cond.end173:                                      ; preds = %if.end164
  %call171 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.62) #9
  %call172 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.61) #9
  %tobool175.not = icmp eq ptr %call172, null
  br i1 %tobool175.not, label %do.end185, label %cond.end173.if.then176_crit_edge

cond.end173.if.then176_crit_edge:                 ; preds = %cond.end173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then176

if.then176:                                       ; preds = %cond.end173.if.then176_crit_edge, %if.end164.if.then176_crit_edge
  %cond174523 = phi ptr [ %call172, %cond.end173.if.then176_crit_edge ], [ %call167, %if.end164.if.then176_crit_edge ]
  %i2c_adap177 = getelementptr inbounds %struct.dm1105_dev, ptr %dev, i32 0, i32 13
  %call178 = tail call ptr %cond174523(ptr noundef nonnull @dvbworld_ds3000_config, ptr noundef %i2c_adap177) #9
  %cmp179 = icmp eq ptr %call178, null
  br i1 %cmp179, label %if.then180, label %if.then193

if.then180:                                       ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.61) #9
  br label %if.end188.thread

do.end185:                                        ; preds = %cond.end173
  call void @__sanitizer_cov_trace_pc() #11
  %call187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #13
  br label %if.end188.thread

if.end188.thread:                                 ; preds = %do.end185, %if.then180
  %49 = ptrtoint ptr %fe157517 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %fe157517, align 8
  br label %sw.epilog

if.then193:                                       ; preds = %if.then176
  %50 = ptrtoint ptr %fe157517 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call178, ptr %fe157517, align 8
  %call196 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.66) #9
  %tobool197.not = icmp eq ptr %call196, null
  br i1 %tobool197.not, label %cond.end202, label %if.then193.if.then205_crit_edge

if.then193.if.then205_crit_edge:                  ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then205

cond.end202:                                      ; preds = %if.then193
  %call200 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.67) #9
  %call201 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.66) #9
  %tobool204.not = icmp eq ptr %call201, null
  br i1 %tobool204.not, label %do.end215, label %cond.end202.if.then205_crit_edge

cond.end202.if.then205_crit_edge:                 ; preds = %cond.end202
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then205

if.then205:                                       ; preds = %cond.end202.if.then205_crit_edge, %if.then193.if.then205_crit_edge
  %cond203528 = phi ptr [ %call201, %cond.end202.if.then205_crit_edge ], [ %call196, %if.then193.if.then205_crit_edge ]
  %51 = ptrtoint ptr %fe157517 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fe157517, align 8
  %call208 = tail call ptr %cond203528(ptr noundef %52, ptr noundef nonnull @dvbworld_ts2020_config, ptr noundef %i2c_adap177) #9
  %cmp209 = icmp eq ptr %call208, null
  br i1 %cmp209, label %if.then210, label %if.then205.if.end218_crit_edge

if.then205.if.end218_crit_edge:                   ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end218

if.then210:                                       ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.66) #9
  br label %if.end218

do.end215:                                        ; preds = %cond.end202
  call void @__sanitizer_cov_trace_pc() #11
  %call217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #13
  br label %if.end218

if.end218:                                        ; preds = %do.end215, %if.then210, %if.then205.if.end218_crit_edge
  %53 = ptrtoint ptr %fe157517 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fe157517, align 8
  %set_voltage222 = getelementptr inbounds %struct.dvb_frontend, ptr %54, i32 0, i32 1, i32 25
  %55 = ptrtoint ptr %set_voltage222 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @dm1105_set_voltage, ptr %set_voltage222, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call227 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.32) #9
  %tobool228.not = icmp eq ptr %call227, null
  br i1 %tobool228.not, label %cond.end233, label %sw.default.if.then236_crit_edge

sw.default.if.then236_crit_edge:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then236

cond.end233:                                      ; preds = %sw.default
  %call231 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.33) #9
  %call232 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.32) #9
  %tobool235.not = icmp eq ptr %call232, null
  br i1 %tobool235.not, label %do.end245, label %cond.end233.if.then236_crit_edge

cond.end233.if.then236_crit_edge:                 ; preds = %cond.end233
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then236

if.then236:                                       ; preds = %cond.end233.if.then236_crit_edge, %sw.default.if.then236_crit_edge
  %cond234531 = phi ptr [ %call232, %cond.end233.if.then236_crit_edge ], [ %call227, %sw.default.if.then236_crit_edge ]
  %i2c_adap237 = getelementptr inbounds %struct.dm1105_dev, ptr %dev, i32 0, i32 13
  %call238 = tail call ptr %cond234531(ptr noundef nonnull @sharp_z0194a_config, ptr noundef %i2c_adap237) #9
  %cmp239 = icmp eq ptr %call238, null
  br i1 %cmp239, label %if.then240, label %if.then253

if.then240:                                       ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.32) #9
  br label %if.end283

do.end245:                                        ; preds = %cond.end233
  call void @__sanitizer_cov_trace_pc() #11
  %call247 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #13
  br label %if.end283

if.then253:                                       ; preds = %if.then236
  %fe250 = getelementptr inbounds %struct.dm1105_dev, ptr %dev, i32 0, i32 8
  %56 = ptrtoint ptr %fe250 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call238, ptr %fe250, align 8
  %set_voltage256 = getelementptr inbounds %struct.dvb_frontend, ptr %call238, i32 0, i32 1, i32 25
  %57 = ptrtoint ptr %set_voltage256 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @dm1105_set_voltage, ptr %set_voltage256, align 4
  %call259 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.36) #9
  %tobool260.not = icmp eq ptr %call259, null
  br i1 %tobool260.not, label %cond.end265, label %if.then253.if.then268_crit_edge

if.then253.if.then268_crit_edge:                  ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then268

cond.end265:                                      ; preds = %if.then253
  %call263 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.37) #9
  %call264 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.36) #9
  %tobool267.not = icmp eq ptr %call264, null
  br i1 %tobool267.not, label %do.end278, label %cond.end265.if.then268_crit_edge

cond.end265.if.then268_crit_edge:                 ; preds = %cond.end265
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then268

if.then268:                                       ; preds = %cond.end265.if.then268_crit_edge, %if.then253.if.then268_crit_edge
  %cond266538 = phi ptr [ %call264, %cond.end265.if.then268_crit_edge ], [ %call259, %if.then253.if.then268_crit_edge ]
  %58 = ptrtoint ptr %fe250 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fe250, align 8
  %call271 = tail call ptr %cond266538(ptr noundef %59, i32 noundef 96, ptr noundef %i2c_adap237, i32 noundef 13) #9
  %cmp272 = icmp eq ptr %call271, null
  br i1 %cmp272, label %if.then273, label %if.then268.sw.epilog_crit_edge

if.then268.sw.epilog_crit_edge:                   ; preds = %if.then268
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then273:                                       ; preds = %if.then268
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.36) #9
  br label %sw.epilog

do.end278:                                        ; preds = %cond.end265
  call void @__sanitizer_cov_trace_pc() #11
  %call280 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #13
  br label %sw.epilog

if.end283:                                        ; preds = %do.end245, %if.then240
  %fe250533 = getelementptr inbounds %struct.dm1105_dev, ptr %dev, i32 0, i32 8
  %60 = ptrtoint ptr %fe250533 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %fe250533, align 8
  %call286 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.41) #9
  %tobool287.not = icmp eq ptr %call286, null
  br i1 %tobool287.not, label %cond.end292, label %if.end283.if.then295_crit_edge

if.end283.if.then295_crit_edge:                   ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then295

cond.end292:                                      ; preds = %if.end283
  %call290 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.42) #9
  %call291 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.41) #9
  %tobool294.not = icmp eq ptr %call291, null
  br i1 %tobool294.not, label %do.end304, label %cond.end292.if.then295_crit_edge

cond.end292.if.then295_crit_edge:                 ; preds = %cond.end292
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then295

if.then295:                                       ; preds = %cond.end292.if.then295_crit_edge, %if.end283.if.then295_crit_edge
  %cond293541 = phi ptr [ %call291, %cond.end292.if.then295_crit_edge ], [ %call286, %if.end283.if.then295_crit_edge ]
  %i2c_adap296 = getelementptr inbounds %struct.dm1105_dev, ptr %dev, i32 0, i32 13
  %call297 = tail call ptr %cond293541(ptr noundef nonnull @earda_config, ptr noundef %i2c_adap296) #9
  %cmp298 = icmp eq ptr %call297, null
  br i1 %cmp298, label %if.then299, label %if.then312

if.then299:                                       ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.41) #9
  br label %if.end342

do.end304:                                        ; preds = %cond.end292
  call void @__sanitizer_cov_trace_pc() #11
  %call306 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #13
  br label %if.end342

if.then312:                                       ; preds = %if.then295
  %61 = ptrtoint ptr %fe250533 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call297, ptr %fe250533, align 8
  %set_voltage315 = getelementptr inbounds %struct.dvb_frontend, ptr %call297, i32 0, i32 1, i32 25
  %62 = ptrtoint ptr %set_voltage315 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @dm1105_set_voltage, ptr %set_voltage315, align 4
  %call318 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.46) #9
  %tobool319.not = icmp eq ptr %call318, null
  br i1 %tobool319.not, label %cond.end324, label %if.then312.if.then327_crit_edge

if.then312.if.then327_crit_edge:                  ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then327

cond.end324:                                      ; preds = %if.then312
  %call322 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.47) #9
  %call323 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.46) #9
  %tobool326.not = icmp eq ptr %call323, null
  br i1 %tobool326.not, label %do.end337, label %cond.end324.if.then327_crit_edge

cond.end324.if.then327_crit_edge:                 ; preds = %cond.end324
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then327

if.then327:                                       ; preds = %cond.end324.if.then327_crit_edge, %if.then312.if.then327_crit_edge
  %cond325546 = phi ptr [ %call323, %cond.end324.if.then327_crit_edge ], [ %call318, %if.then312.if.then327_crit_edge ]
  %63 = ptrtoint ptr %fe250533 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fe250533, align 8
  %call330 = tail call ptr %cond325546(ptr noundef %64, i32 noundef 97, ptr noundef %i2c_adap296) #9
  %cmp331 = icmp eq ptr %call330, null
  br i1 %cmp331, label %if.then332, label %if.then327.sw.epilog_crit_edge

if.then327.sw.epilog_crit_edge:                   ; preds = %if.then327
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then332:                                       ; preds = %if.then327
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.46) #9
  br label %sw.epilog

do.end337:                                        ; preds = %cond.end324
  call void @__sanitizer_cov_trace_pc() #11
  %call339 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #13
  br label %sw.epilog

if.end342:                                        ; preds = %do.end304, %if.then299
  %65 = ptrtoint ptr %fe250533 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %fe250533, align 8
  %call345 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #9
  %tobool346.not = icmp eq ptr %call345, null
  br i1 %tobool346.not, label %cond.end351, label %if.end342.if.then354_crit_edge

if.end342.if.then354_crit_edge:                   ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then354

cond.end351:                                      ; preds = %if.end342
  %call349 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.52) #9
  %call350 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.51) #9
  %tobool353.not = icmp eq ptr %call350, null
  br i1 %tobool353.not, label %do.end363, label %cond.end351.if.then354_crit_edge

cond.end351.if.then354_crit_edge:                 ; preds = %cond.end351
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then354

if.then354:                                       ; preds = %cond.end351.if.then354_crit_edge, %if.end342.if.then354_crit_edge
  %cond352549 = phi ptr [ %call350, %cond.end351.if.then354_crit_edge ], [ %call345, %if.end342.if.then354_crit_edge ]
  %i2c_adap355 = getelementptr inbounds %struct.dm1105_dev, ptr %dev, i32 0, i32 13
  %call356 = tail call ptr %cond352549(ptr noundef nonnull @serit_config, ptr noundef %i2c_adap355) #9
  %cmp357 = icmp eq ptr %call356, null
  br i1 %cmp357, label %if.then358, label %if.then371

if.then358:                                       ; preds = %if.then354
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.51) #9
  br label %if.end366.thread

do.end363:                                        ; preds = %cond.end351
  call void @__sanitizer_cov_trace_pc() #11
  %call365 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #13
  br label %if.end366.thread

if.end366.thread:                                 ; preds = %do.end363, %if.then358
  %66 = ptrtoint ptr %fe250533 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %fe250533, align 8
  br label %sw.epilog

if.then371:                                       ; preds = %if.then354
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %fe250533 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call356, ptr %fe250533, align 8
  %set_voltage374 = getelementptr inbounds %struct.dvb_frontend, ptr %call356, i32 0, i32 1, i32 25
  %68 = ptrtoint ptr %set_voltage374 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @dm1105_set_voltage, ptr %set_voltage374, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then371, %if.end366.thread, %do.end337, %if.then332, %if.then327.sw.epilog_crit_edge, %do.end278, %if.then273, %if.then268.sw.epilog_crit_edge, %if.end218, %if.end188.thread, %if.then160, %if.then127, %if.end122.thread, %do.end93, %if.then88, %if.then83.sw.epilog_crit_edge, %do.end34, %if.then29, %if.then24.sw.epilog_crit_edge
  %fe376 = getelementptr inbounds %struct.dm1105_dev, ptr %dev, i32 0, i32 8
  %69 = ptrtoint ptr %fe376 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fe376, align 8
  %tobool377.not = icmp eq ptr %70, null
  br i1 %tobool377.not, label %do.end381, label %if.end383

do.end381:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 8
  %dev382 = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev382, ptr noundef nonnull @.str.82) #13
  br label %cleanup

if.end383:                                        ; preds = %sw.epilog
  %dvb_adapter = getelementptr inbounds %struct.dm1105_dev, ptr %dev, i32 0, i32 6
  %call385 = tail call i32 @dvb_register_frontend(ptr noundef %dvb_adapter, ptr noundef nonnull %70) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call385)
  %cmp386 = icmp slt i32 %call385, 0
  br i1 %cmp386, label %if.then387, label %if.end383.cleanup_crit_edge

if.end383.cleanup_crit_edge:                      ; preds = %if.end383
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then387:                                       ; preds = %if.end383
  %73 = ptrtoint ptr %fe376 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fe376, align 8
  %release = getelementptr inbounds %struct.dvb_frontend, ptr %74, i32 0, i32 1, i32 3
  %75 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %release, align 4
  %tobool390.not = icmp eq ptr %76, null
  br i1 %tobool390.not, label %if.then387.if.end396_crit_edge, label %if.then391

if.then387.if.end396_crit_edge:                   ; preds = %if.then387
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end396

if.then391:                                       ; preds = %if.then387
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %76(ptr noundef %74) #9
  br label %if.end396

if.end396:                                        ; preds = %if.then391, %if.then387.if.end396_crit_edge
  %77 = ptrtoint ptr %fe376 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %fe376, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end396, %if.end383.cleanup_crit_edge, %do.end381
  %retval.0 = phi i32 [ %call385, %if.end396 ], [ -19, %do.end381 ], [ 0, %if.end383.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm1105_ir_init(ptr noundef %dm1105) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rc_allocate_device(i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ir = getelementptr inbounds %struct.dm1105_dev, ptr %dm1105, i32 0, i32 2
  %input_phys = getelementptr inbounds %struct.dm1105_dev, ptr %dm1105, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %dm1105 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm1105, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %if.end.pci_name.exit_crit_edge ]
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %input_phys, i32 noundef 32, ptr noundef nonnull @.str.88, ptr noundef %retval.0.i.i)
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str, ptr %driver_name, align 8
  %map_name = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 7
  %7 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.89, ptr %map_name, align 4
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.90, ptr %device_name, align 8
  %input_phys6 = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 4
  %9 = ptrtoint ptr %input_phys6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %input_phys, ptr %input_phys6, align 4
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5
  %10 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %input_id, align 8
  %version = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5, i32 3
  %11 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %version, align 2
  %12 = ptrtoint ptr %dm1105 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dm1105, align 8
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool9.not = icmp eq i16 %15, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %vendor = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %vendor, align 2
  %17 = ptrtoint ptr %dm1105 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dm1105, align 8
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 10
  br label %if.end23

if.else:                                          ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %vendor17 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 7
  %19 = ptrtoint ptr %vendor17 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vendor17, align 8
  %vendor19 = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %vendor19 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %vendor19, align 2
  %22 = ptrtoint ptr %dm1105 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dm1105, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 8
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then10
  %.sink.in = phi ptr [ %device, %if.else ], [ %subsystem_device, %if.then10 ]
  %24 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %24)
  %.sink = load i16, ptr %.sink.in, align 2
  %25 = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %.sink, ptr %25, align 4
  %27 = ptrtoint ptr %dm1105 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dm1105, align 8
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %parent = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 1
  %29 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev25, ptr %parent, align 8
  %work = getelementptr inbounds %struct.dm1105_dev, ptr %dm1105, i32 0, i32 2, i32 2
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %30 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.dm1105_dev, ptr %dm1105, i32 0, i32 2, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.91, ptr noundef nonnull @dm1105_ir_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry34 = getelementptr inbounds %struct.dm1105_dev, ptr %dm1105, i32 0, i32 2, i32 2, i32 1
  %31 = ptrtoint ptr %entry34 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %entry34, ptr %entry34, align 4
  %prev.i = getelementptr inbounds %struct.dm1105_dev, ptr %dm1105, i32 0, i32 2, i32 2, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry34, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.dm1105_dev, ptr %dm1105, i32 0, i32 2, i32 2, i32 2
  %33 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @dm1105_emit_key, ptr %func, align 4
  %call37 = tail call i32 @rc_register_device(ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp = icmp slt i32 %call37, 0
  br i1 %cmp, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rc_free_device(ptr noundef nonnull %call) #9
  br label %cleanup

if.end39:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %ir to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call, ptr %ir, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then38, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm1105_dmx_buffer(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wrp = getelementptr i8, ptr %work, i32 72
  %0 = ptrtoint ptr %wrp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wrp, align 8
  %nextwrp1 = getelementptr i8, ptr %work, i32 76
  %2 = ptrtoint ptr %nextwrp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nextwrp1, align 4
  %ts_buf = getelementptr i8, ptr %work, i32 68
  %4 = ptrtoint ptr %ts_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ts_buf, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 %1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 71, i8 %7)
  %cmp = icmp eq i8 %7, 71
  br i1 %cmp, label %land.lhs.true, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  %add = add i32 %1, 188
  %arrayidx4 = getelementptr i8, ptr %5, i32 %add
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 71, i8 %9)
  %cmp6 = icmp eq i8 %9, 71
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true8:                                   ; preds = %land.lhs.true
  %add10 = add i32 %1, 376
  %arrayidx11 = getelementptr i8, ptr %5, i32 %add10
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 71, i8 %11)
  %cmp13 = icmp eq i8 %11, 71
  br i1 %cmp13, label %land.lhs.true8.if.end27_crit_edge, label %land.lhs.true8.if.then_crit_edge

land.lhs.true8.if.then_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true8.if.end27_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then:                                          ; preds = %land.lhs.true8.if.then_crit_edge, %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %PacketErrorCount = getelementptr i8, ptr %work, i32 84
  %12 = ptrtoint ptr %PacketErrorCount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %PacketErrorCount, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %PacketErrorCount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc)
  %cmp16 = icmp ugt i32 %inc, 1
  br i1 %cmp16, label %land.lhs.true18, label %if.then.if.end27_crit_edge

if.then.if.end27_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true18:                                  ; preds = %if.then
  %dmarst = getelementptr i8, ptr %work, i32 88
  %14 = ptrtoint ptr %dmarst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dmarst, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp19 = icmp eq i32 %15, 0
  br i1 %cmp19, label %do.body, label %land.lhs.true18.if.end27_crit_edge

land.lhs.true18.if.end27_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

do.body:                                          ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !251
  tail call void @arm_heavy_mb() #9
  %io_mem = getelementptr i8, ptr %work, i32 -4948
  %16 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_mem, align 4
  %arrayidx22 = getelementptr i8, ptr %17, i32 52
  %18 = ptrtoint ptr %arrayidx22 to i32
  %and = and i32 %18, 1048575
  %add23 = or i32 %and, -18874368
  %19 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 1) #9, !srcloc !224
  %20 = ptrtoint ptr %wrp to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %wrp, align 8
  %21 = ptrtoint ptr %PacketErrorCount to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %PacketErrorCount, align 4
  %22 = ptrtoint ptr %dmarst to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %dmarst, align 8
  br label %cleanup

if.end27:                                         ; preds = %land.lhs.true18.if.end27_crit_edge, %if.then.if.end27_crit_edge, %land.lhs.true8.if.end27_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp28 = icmp ult i32 %3, %1
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %buffer_size = getelementptr i8, ptr %work, i32 80
  %23 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buffer_size, align 8
  %add.ptr32 = getelementptr i8, ptr %5, i32 %24
  %25 = call ptr @memcpy(ptr %add.ptr32, ptr %5, i32 %3)
  %26 = load i32, ptr %buffer_size, align 8
  %sub = sub i32 %3, %1
  %add35 = add i32 %sub, %26
  br label %if.end38

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %sub36 = sub i32 %3, %1
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then30
  %nbpackets.0.in = phi i32 [ %add35, %if.then30 ], [ %sub36, %if.else ]
  %nbpackets.0 = udiv i32 %nbpackets.0.in, 188
  %27 = ptrtoint ptr %wrp to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %3, ptr %wrp, align 8
  %demux = getelementptr i8, ptr %work, i32 -3584
  %28 = ptrtoint ptr %ts_buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ts_buf, align 4
  %arrayidx41 = getelementptr i8, ptr %29, i32 %1
  tail call void @dvb_dmx_swfilter_packets(ptr noundef %demux, ptr noundef %arrayidx41, i32 noundef %nbpackets.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.body
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm1105_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %io_mem = getelementptr inbounds %struct.dm1105_dev, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_mem, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 76
  %2 = ptrtoint ptr %arrayidx to i32
  %and = and i32 %2, 1048575
  %add = or i32 %and, -18874368
  %3 = inttoptr i32 %add to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  tail call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_mem, align 4
  %arrayidx4 = getelementptr i8, ptr %6, i32 76
  %7 = ptrtoint ptr %arrayidx4 to i32
  %and5 = and i32 %7, 1048575
  %add6 = or i32 %and5, -18874368
  %8 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %4) #9, !srcloc !224
  %9 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %4, label %entry.sw.epilog_crit_edge [
    i8 1, label %entry.sw.bb_crit_edge
    i8 9, label %entry.sw.bb_crit_edge47
    i8 8, label %sw.bb25
  ]

entry.sw.bb_crit_edge47:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge47
  %10 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_mem, align 4
  %arrayidx10 = getelementptr i8, ptr %11, i32 64
  %12 = ptrtoint ptr %arrayidx10 to i32
  %and11 = and i32 %12, 1048575
  %add12 = or i32 %and11, -18874368
  %13 = inttoptr i32 %add12 to ptr
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %13) #9, !srcloc !238
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !255
  %16 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_mem, align 4
  %arrayidx18 = getelementptr i8, ptr %17, i32 56
  %18 = ptrtoint ptr %arrayidx18 to i32
  %and19 = and i32 %18, 1048575
  %add20 = or i32 %and19, -18874368
  %19 = inttoptr i32 %add20 to ptr
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %19) #9, !srcloc !238
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !256
  %sub = sub i32 %15, %21
  %nextwrp = getelementptr inbounds %struct.dm1105_dev, ptr %dev_id, i32 0, i32 22
  %22 = ptrtoint ptr %nextwrp to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub, ptr %nextwrp, align 4
  %wq = getelementptr inbounds %struct.dm1105_dev, ptr %dev_id, i32 0, i32 17
  %23 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wq, align 4
  %work = getelementptr inbounds %struct.dm1105_dev, ptr %dev_id, i32 0, i32 16
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %work) #9
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_mem, align 4
  %arrayidx28 = getelementptr i8, ptr %26, i32 112
  %27 = ptrtoint ptr %arrayidx28 to i32
  %and29 = and i32 %27, 1048575
  %add30 = or i32 %and29, -18874368
  %28 = inttoptr i32 %add30 to ptr
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %28) #9, !srcloc !238
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %ir_command = getelementptr inbounds %struct.dm1105_dev, ptr %dev_id, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %ir_command to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %ir_command, align 8
  %work35 = getelementptr inbounds %struct.dm1105_dev, ptr %dev_id, i32 0, i32 2, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %32 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %work35) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_net_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm1105_i2c_xfer(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp418 = icmp sgt i32 %num, 0
  br i1 %cmp418, label %do.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.lr.ph:                                    ; preds = %entry
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %io_mem = getelementptr inbounds %struct.dm1105_dev, ptr %1, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %for.inc296.do.body_crit_edge, %do.body.lr.ph
  %i.0419 = phi i32 [ 0, %do.body.lr.ph ], [ %inc297, %for.inc296.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %2 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_mem, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 128
  %4 = ptrtoint ptr %arrayidx to i32
  %and = and i32 %4, 1048575
  %add = or i32 %and, -18874368
  %5 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 0) #9, !srcloc !224
  %arrayidx1 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0419
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0419, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx1, align 4
  %conv5 = trunc i16 %10 to i8
  %shl = shl i8 %conv5, 1
  %or = or i8 %shl, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_mem, align 4
  %arrayidx11 = getelementptr i8, ptr %12, i32 130
  %13 = ptrtoint ptr %arrayidx11 to i32
  %and12 = and i32 %13, 1048575
  %add13 = or i32 %and12, -18874368
  %14 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %or) #9, !srcloc !224
  %len17 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0419, i32 2
  %15 = ptrtoint ptr %len17 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %len17, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp19400.not = icmp eq i16 %16, 0
  br i1 %cmp19400.not, label %if.then.do.body32_crit_edge, label %if.then.do.body22_crit_edge

if.then.do.body22_crit_edge:                      ; preds = %if.then
  br label %do.body22

if.then.do.body32_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

do.body22:                                        ; preds = %do.body22.do.body22_crit_edge, %if.then.do.body22_crit_edge
  %byte.0401 = phi i32 [ %inc, %do.body22.do.body22_crit_edge ], [ 0, %if.then.do.body22_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_mem, align 4
  %add27 = add nuw nsw i32 %byte.0401, 131
  %arrayidx28 = getelementptr i8, ptr %18, i32 %add27
  %19 = ptrtoint ptr %arrayidx28 to i32
  %and29 = and i32 %19, 1048575
  %add30 = or i32 %and29, -18874368
  %20 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 0) #9, !srcloc !224
  %inc = add nuw nsw i32 %byte.0401, 1
  %21 = ptrtoint ptr %len17 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %len17, align 4
  %conv18 = zext i16 %22 to i32
  %cmp19 = icmp ult i32 %inc, %conv18
  br i1 %cmp19, label %do.body22.do.body22_crit_edge, label %do.body22.do.body32_crit_edge

do.body22.do.body32_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

do.body22.do.body22_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

do.body32:                                        ; preds = %do.body22.do.body32_crit_edge, %if.then.do.body32_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %len17 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %len17, align 4
  %conv37 = trunc i16 %24 to i8
  %add38 = add i8 %conv37, -127
  %25 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_mem, align 4
  %arrayidx41 = getelementptr i8, ptr %26, i32 128
  %27 = ptrtoint ptr %arrayidx41 to i32
  %and42 = and i32 %27, 1048575
  %add43 = or i32 %and42, -18874368
  %28 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %add38) #9, !srcloc !224
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc61.while.cond.preheader_crit_edge, %do.body32
  %j.0403 = phi i32 [ 0, %do.body32 ], [ %inc62, %for.inc61.while.cond.preheader_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #9
  %39 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io_mem, align 4
  %arrayidx51 = getelementptr i8, ptr %40, i32 129
  %41 = ptrtoint ptr %arrayidx51 to i32
  %and52 = and i32 %41, 1048575
  %add53 = or i32 %and52, -18874368
  %42 = inttoptr i32 %add53 to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  %44 = and i8 %43, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %44)
  %cmp58 = icmp eq i8 %44, 64
  br i1 %cmp58, label %for.end63, label %for.inc61

for.inc61:                                        ; preds = %while.cond.preheader
  %inc62 = add nuw nsw i32 %j.0403, 1
  %exitcond.not = icmp eq i32 %inc62, 55
  br i1 %exitcond.not, label %for.inc61.cleanup_crit_edge, label %for.inc61.while.cond.preheader_crit_edge

for.inc61.while.cond.preheader_crit_edge:         ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

for.inc61.cleanup_crit_edge:                      ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end63:                                        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %j.0403)
  %cmp64 = icmp ugt i32 %j.0403, 54
  br i1 %cmp64, label %for.end63.cleanup_crit_edge, label %for.cond68.preheader

for.end63.cleanup_crit_edge:                      ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond68.preheader:                             ; preds = %for.end63
  %45 = ptrtoint ptr %len17 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %len17, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp72405.not = icmp eq i16 %46, 0
  br i1 %cmp72405.not, label %for.cond68.preheader.for.inc296_crit_edge, label %for.body74.lr.ph

for.cond68.preheader.for.inc296_crit_edge:        ; preds = %for.cond68.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc296

for.body74.lr.ph:                                 ; preds = %for.cond68.preheader
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0419, i32 3
  br label %for.body74

for.body74:                                       ; preds = %for.body74.for.body74_crit_edge, %for.body74.lr.ph
  %byte.1406 = phi i32 [ 0, %for.body74.lr.ph ], [ %inc94, %for.body74.for.body74_crit_edge ]
  %47 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %io_mem, align 4
  %add78 = add nuw nsw i32 %byte.1406, 131
  %arrayidx79 = getelementptr i8, ptr %48, i32 %add78
  %49 = ptrtoint ptr %arrayidx79 to i32
  %and80 = and i32 %49, 1048575
  %add81 = or i32 %and80, -18874368
  %50 = inttoptr i32 %add81 to ptr
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %50) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  %52 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buf, align 4
  %arrayidx92 = getelementptr i8, ptr %53, i32 %byte.1406
  %54 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %51, ptr %arrayidx92, align 1
  %inc94 = add nuw nsw i32 %byte.1406, 1
  %55 = ptrtoint ptr %len17 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %len17, align 4
  %conv71 = zext i16 %56 to i32
  %cmp72 = icmp ult i32 %inc94, %conv71
  br i1 %cmp72, label %for.body74.for.body74_crit_edge, label %for.body74.for.inc296_crit_edge

for.body74.for.inc296_crit_edge:                  ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc296

for.body74.for.body74_crit_edge:                  ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body74

if.else:                                          ; preds = %do.body
  %buf97 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0419, i32 3
  %57 = ptrtoint ptr %buf97 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buf97, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %60)
  %cmp100 = icmp eq i8 %60, -9
  br i1 %cmp100, label %land.lhs.true, label %if.else.do.body212_crit_edge

if.else.do.body212_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body212

land.lhs.true:                                    ; preds = %if.else
  %61 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 85, i16 %62)
  %cmp105 = icmp eq i16 %62, 85
  br i1 %cmp105, label %if.then107, label %land.lhs.true.do.body212_crit_edge

land.lhs.true.do.body212_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body212

if.then107:                                       ; preds = %land.lhs.true
  %len109 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0419, i32 2
  %63 = ptrtoint ptr %len109 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %len109, align 4
  %conv110 = zext i16 %64 to i32
  %sub = add nsw i32 %conv110, -1
  br label %do.body111

do.body111:                                       ; preds = %if.end204.do.body111_crit_edge, %if.then107
  %len.0 = phi i32 [ %sub, %if.then107 ], [ %sub206, %if.end204.do.body111_crit_edge ]
  %k.0 = phi i32 [ 1, %if.then107 ], [ %add205, %if.end204.do.body111_crit_edge ]
  %smin = call i32 @llvm.smin.i32(i32 %len.0, i32 48)
  %smax = call i32 @llvm.smax.i32(i32 %smin, i32 1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %65 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx1, align 4
  %conv117 = trunc i16 %66 to i8
  %shl118 = shl i8 %conv117, 1
  %67 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %io_mem, align 4
  %arrayidx121 = getelementptr i8, ptr %68, i32 130
  %69 = ptrtoint ptr %arrayidx121 to i32
  %and122 = and i32 %69, 1048575
  %add123 = or i32 %and122, -18874368
  %70 = inttoptr i32 %add123 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 %shl118) #9, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %71 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %io_mem, align 4
  %arrayidx129 = getelementptr i8, ptr %72, i32 131
  %73 = ptrtoint ptr %arrayidx129 to i32
  %and130 = and i32 %73, 1048575
  %add131 = or i32 %and130, -18874368
  %74 = inttoptr i32 %add131 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %74, i8 -9) #9, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %cmp136413 = icmp sgt i32 %len.0, 0
  br i1 %cmp136413, label %do.body111.for.body138_crit_edge, label %do.body111.do.body158_crit_edge

do.body111.do.body158_crit_edge:                  ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body158

do.body111.for.body138_crit_edge:                 ; preds = %do.body111
  br label %for.body138

for.body138:                                      ; preds = %for.body138.for.body138_crit_edge, %do.body111.for.body138_crit_edge
  %byte.2414 = phi i32 [ %inc156, %for.body138.for.body138_crit_edge ], [ 0, %do.body111.for.body138_crit_edge ]
  %75 = ptrtoint ptr %buf97 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %buf97, align 4
  %add141 = add nuw nsw i32 %byte.2414, %k.0
  %arrayidx142 = getelementptr i8, ptr %76, i32 %add141
  %77 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx142, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  tail call void @arm_heavy_mb() #9
  %79 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %io_mem, align 4
  %add150 = add nuw nsw i32 %byte.2414, 132
  %arrayidx151 = getelementptr i8, ptr %80, i32 %add150
  %81 = ptrtoint ptr %arrayidx151 to i32
  %and152 = and i32 %81, 1048575
  %add153 = or i32 %and152, -18874368
  %82 = inttoptr i32 %add153 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 %78) #9, !srcloc !224
  %inc156 = add nuw nsw i32 %byte.2414, 1
  %exitcond434.not = icmp eq i32 %inc156, %smax
  br i1 %exitcond434.not, label %for.body138.do.body158_crit_edge, label %for.body138.for.body138_crit_edge

for.body138.for.body138_crit_edge:                ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body138

for.body138.do.body158_crit_edge:                 ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body158

do.body158:                                       ; preds = %for.body138.do.body158_crit_edge, %do.body111.do.body158_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  tail call void @arm_heavy_mb() #9
  %83 = trunc i32 %smin to i8
  %conv168 = add i8 %83, -126
  %84 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %io_mem, align 4
  %arrayidx170 = getelementptr i8, ptr %85, i32 128
  %86 = ptrtoint ptr %arrayidx170 to i32
  %and171 = and i32 %86, 1048575
  %add172 = or i32 %and171, -18874368
  %87 = inttoptr i32 %add172 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %87, i8 %conv168) #9, !srcloc !224
  br label %while.cond179.preheader

while.cond179.preheader:                          ; preds = %for.inc198.while.cond179.preheader_crit_edge, %do.body158
  %j.1417 = phi i32 [ 0, %do.body158 ], [ %inc199, %for.inc198.while.cond179.preheader_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %90(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %94(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %95(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %97(i32 noundef 214748000) #9
  %98 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %io_mem, align 4
  %arrayidx186 = getelementptr i8, ptr %99, i32 129
  %100 = ptrtoint ptr %arrayidx186 to i32
  %and187 = and i32 %100, 1048575
  %add188 = or i32 %and187, -18874368
  %101 = inttoptr i32 %add188 to ptr
  %102 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %101) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !268
  %103 = and i8 %102, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %103)
  %cmp194 = icmp eq i8 %103, 64
  br i1 %cmp194, label %if.end204, label %for.inc198

for.inc198:                                       ; preds = %while.cond179.preheader
  %inc199 = add nuw nsw i32 %j.1417, 1
  %exitcond435.not = icmp eq i32 %inc199, 25
  br i1 %exitcond435.not, label %for.inc198.cleanup_crit_edge, label %for.inc198.while.cond179.preheader_crit_edge

for.inc198.while.cond179.preheader_crit_edge:     ; preds = %for.inc198
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond179.preheader

for.inc198.cleanup_crit_edge:                     ; preds = %for.inc198
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end204:                                        ; preds = %while.cond179.preheader
  %add205 = add nuw nsw i32 %k.0, 48
  %sub206 = add nsw i32 %len.0, -48
  %cmp208 = icmp sgt i32 %len.0, 48
  br i1 %cmp208, label %if.end204.do.body111_crit_edge, label %if.end204.for.inc296_crit_edge

if.end204.for.inc296_crit_edge:                   ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc296

if.end204.do.body111_crit_edge:                   ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body111

do.body212:                                       ; preds = %land.lhs.true.do.body212_crit_edge, %if.else.do.body212_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  tail call void @arm_heavy_mb() #9
  %104 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %arrayidx1, align 4
  %conv217 = trunc i16 %105 to i8
  %shl218 = shl i8 %conv217, 1
  %106 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %io_mem, align 4
  %arrayidx221 = getelementptr i8, ptr %107, i32 130
  %108 = ptrtoint ptr %arrayidx221 to i32
  %and222 = and i32 %108, 1048575
  %add223 = or i32 %and222, -18874368
  %109 = inttoptr i32 %add223 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %109, i8 %shl218) #9, !srcloc !224
  %len227 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0419, i32 2
  %110 = ptrtoint ptr %len227 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %len227, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %cmp229408.not = icmp eq i16 %111, 0
  br i1 %cmp229408.not, label %do.body212.do.body250_crit_edge, label %do.body212.for.body231_crit_edge

do.body212.for.body231_crit_edge:                 ; preds = %do.body212
  br label %for.body231

do.body212.do.body250_crit_edge:                  ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body250

for.body231:                                      ; preds = %for.body231.for.body231_crit_edge, %do.body212.for.body231_crit_edge
  %byte.3409 = phi i32 [ %inc248, %for.body231.for.body231_crit_edge ], [ 0, %do.body212.for.body231_crit_edge ]
  %112 = ptrtoint ptr %buf97 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %buf97, align 4
  %arrayidx234 = getelementptr i8, ptr %113, i32 %byte.3409
  %114 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx234, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !270
  tail call void @arm_heavy_mb() #9
  %116 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %io_mem, align 4
  %add242 = add nuw nsw i32 %byte.3409, 131
  %arrayidx243 = getelementptr i8, ptr %117, i32 %add242
  %118 = ptrtoint ptr %arrayidx243 to i32
  %and244 = and i32 %118, 1048575
  %add245 = or i32 %and244, -18874368
  %119 = inttoptr i32 %add245 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %119, i8 %115) #9, !srcloc !224
  %inc248 = add nuw nsw i32 %byte.3409, 1
  %120 = ptrtoint ptr %len227 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %len227, align 4
  %conv228 = zext i16 %121 to i32
  %cmp229 = icmp ult i32 %inc248, %conv228
  br i1 %cmp229, label %for.body231.for.body231_crit_edge, label %for.body231.do.body250_crit_edge

for.body231.do.body250_crit_edge:                 ; preds = %for.body231
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body250

for.body231.for.body231_crit_edge:                ; preds = %for.body231
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body231

do.body250:                                       ; preds = %for.body231.do.body250_crit_edge, %do.body212.do.body250_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !271
  tail call void @arm_heavy_mb() #9
  %122 = ptrtoint ptr %len227 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %len227, align 4
  %conv255 = trunc i16 %123 to i8
  %add256 = add i8 %conv255, -127
  %124 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %io_mem, align 4
  %arrayidx259 = getelementptr i8, ptr %125, i32 128
  %126 = ptrtoint ptr %arrayidx259 to i32
  %and260 = and i32 %126, 1048575
  %add261 = or i32 %and260, -18874368
  %127 = inttoptr i32 %add261 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %127, i8 %add256) #9, !srcloc !224
  br label %while.cond268.preheader

while.cond268.preheader:                          ; preds = %for.inc287.while.cond268.preheader_crit_edge, %do.body250
  %j.2412 = phi i32 [ 0, %do.body250 ], [ %inc288, %for.inc287.while.cond268.preheader_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %128 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %128(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %129(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %130(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %131(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %132(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %133(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %134 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %134(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %135(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %136(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %137 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %137(i32 noundef 214748000) #9
  %138 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %io_mem, align 4
  %arrayidx275 = getelementptr i8, ptr %139, i32 129
  %140 = ptrtoint ptr %arrayidx275 to i32
  %and276 = and i32 %140, 1048575
  %add277 = or i32 %and276, -18874368
  %141 = inttoptr i32 %add277 to ptr
  %142 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %141) #9, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !272
  %143 = and i8 %142, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %143)
  %cmp283 = icmp eq i8 %143, 64
  br i1 %cmp283, label %for.end289, label %for.inc287

for.inc287:                                       ; preds = %while.cond268.preheader
  %inc288 = add nuw nsw i32 %j.2412, 1
  %exitcond433.not = icmp eq i32 %inc288, 25
  br i1 %exitcond433.not, label %for.inc287.cleanup_crit_edge, label %for.inc287.while.cond268.preheader_crit_edge

for.inc287.while.cond268.preheader_crit_edge:     ; preds = %for.inc287
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond268.preheader

for.inc287.cleanup_crit_edge:                     ; preds = %for.inc287
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end289:                                       ; preds = %while.cond268.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %j.2412)
  %cmp290 = icmp ugt i32 %j.2412, 24
  br i1 %cmp290, label %for.end289.cleanup_crit_edge, label %for.end289.for.inc296_crit_edge

for.end289.for.inc296_crit_edge:                  ; preds = %for.end289
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc296

for.end289.cleanup_crit_edge:                     ; preds = %for.end289
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc296:                                       ; preds = %for.end289.for.inc296_crit_edge, %if.end204.for.inc296_crit_edge, %for.body74.for.inc296_crit_edge, %for.cond68.preheader.for.inc296_crit_edge
  %inc297 = add nuw nsw i32 %i.0419, 1
  %exitcond436.not = icmp eq i32 %inc297, %num
  br i1 %exitcond436.not, label %for.inc296.cleanup_crit_edge, label %for.inc296.do.body_crit_edge

for.inc296.do.body_crit_edge:                     ; preds = %for.inc296
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc296.cleanup_crit_edge:                     ; preds = %for.inc296
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc296.cleanup_crit_edge, %for.end289.cleanup_crit_edge, %for.inc287.cleanup_crit_edge, %for.inc198.cleanup_crit_edge, %for.end63.cleanup_crit_edge, %for.inc61.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %num, %entry.cleanup_crit_edge ], [ -1, %for.inc198.cleanup_crit_edge ], [ -1, %for.inc287.cleanup_crit_edge ], [ -1, %for.inc61.cleanup_crit_edge ], [ -1, %for.end63.cleanup_crit_edge ], [ -1, %for.end289.cleanup_crit_edge ], [ %num, %for.inc296.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @functionality(ptr nocapture noundef readnone %adap) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm1105_setline(ptr nocapture noundef readonly %dev, i32 noundef %line, i32 noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %line)
  %tobool.not.i5 = icmp ult i32 %line, 262144
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i5, label %if.then.if.end.i_crit_edge, label %do.end.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.if.end.i_crit_edge
  %and1.i = and i32 %line, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i.not, label %if.end.i.if.end_crit_edge, label %do.body25.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !237
  tail call void @arm_heavy_mb() #9
  %io_mem28.i = getelementptr inbounds %struct.dm1105_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %io_mem28.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_mem28.i, align 4
  %arrayidx29.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %arrayidx29.i to i32
  %and30.i = and i32 %2, 1048575
  %add31.i = or i32 %and30.i, -18874368
  %3 = inttoptr i32 %add31.i to ptr
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %3) #9, !srcloc !238
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !239
  %or41.i = or i32 %5, %and1.i
  %6 = tail call i32 @llvm.bswap.i32(i32 %or41.i) #9
  %7 = ptrtoint ptr %io_mem28.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_mem28.i, align 4
  %arrayidx43.i = getelementptr i8, ptr %8, i32 12
  %9 = ptrtoint ptr %arrayidx43.i to i32
  %and44.i = and i32 %9, 1048575
  %add45.i = or i32 %and44.i, -18874368
  %10 = inttoptr i32 %add45.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 %6) #9, !srcloc !231
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i5, label %if.else.if.end.i10_crit_edge, label %do.end.i7

if.else.if.end.i10_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i10

do.end.i7:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call.i6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #13
  br label %if.end.i10

if.end.i10:                                       ; preds = %do.end.i7, %if.else.if.end.i10_crit_edge
  %and1.i8 = and i32 %line, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i8)
  %tobool2.not.i9 = icmp eq i32 %and1.i8, 0
  br i1 %tobool2.not.i9, label %if.end.i10.dm1105_gpio_enable.exit12_crit_edge, label %do.body5.i

if.end.i10.dm1105_gpio_enable.exit12_crit_edge:   ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #11
  br label %dm1105_gpio_enable.exit12

do.body5.i:                                       ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !245
  tail call void @arm_heavy_mb() #9
  %io_mem.i = getelementptr inbounds %struct.dm1105_dev, ptr %dev, i32 0, i32 1
  %11 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_mem.i, align 4
  %arrayidx.i = getelementptr i8, ptr %12, i32 12
  %13 = ptrtoint ptr %arrayidx.i to i32
  %and7.i = and i32 %13, 1048575
  %add.i = or i32 %and7.i, -18874368
  %14 = inttoptr i32 %add.i to ptr
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %14) #9, !srcloc !238
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !246
  %neg.i = xor i32 %and1.i8, -1
  %and12.i = and i32 %16, %neg.i
  %17 = tail call i32 @llvm.bswap.i32(i32 %and12.i) #9
  %18 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_mem.i, align 4
  %arrayidx16.i = getelementptr i8, ptr %19, i32 12
  %20 = ptrtoint ptr %arrayidx16.i to i32
  %and17.i = and i32 %20, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %21 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %21, i32 %17) #9, !srcloc !231
  br label %dm1105_gpio_enable.exit12

dm1105_gpio_enable.exit12:                        ; preds = %do.body5.i, %if.end.i10.dm1105_gpio_enable.exit12_crit_edge
  br i1 %tobool.not.i5, label %dm1105_gpio_enable.exit12.if.end.i18_crit_edge, label %do.end.i15

dm1105_gpio_enable.exit12.if.end.i18_crit_edge:   ; preds = %dm1105_gpio_enable.exit12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i18

do.end.i15:                                       ; preds = %dm1105_gpio_enable.exit12
  call void @__sanitizer_cov_trace_pc() #11
  %call.i14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.26) #13
  br label %if.end.i18

if.end.i18:                                       ; preds = %do.end.i15, %dm1105_gpio_enable.exit12.if.end.i18_crit_edge
  br i1 %tobool2.not.i9, label %if.end.i18.if.end_crit_edge, label %do.body4.i

if.end.i18.if.end_crit_edge:                      ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body4.i:                                       ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  tail call void @arm_heavy_mb() #9
  %io_mem.i19 = getelementptr inbounds %struct.dm1105_dev, ptr %dev, i32 0, i32 1
  %22 = ptrtoint ptr %io_mem.i19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_mem.i19, align 4
  %arrayidx.i20 = getelementptr i8, ptr %23, i32 8
  %24 = ptrtoint ptr %arrayidx.i20 to i32
  %and6.i = and i32 %24, 1048575
  %add.i21 = or i32 %and6.i, -18874368
  %25 = inttoptr i32 %add.i21 to ptr
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %25) #9, !srcloc !238
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  %neg.i22 = xor i32 %and1.i8, -1
  %and11.i = and i32 %27, %neg.i22
  %28 = tail call i32 @llvm.bswap.i32(i32 %and11.i) #9
  %29 = ptrtoint ptr %io_mem.i19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_mem.i19, align 4
  %arrayidx15.i = getelementptr i8, ptr %30, i32 8
  %31 = ptrtoint ptr %arrayidx15.i to i32
  %and16.i = and i32 %31, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %32 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %32, i32 %28) #9, !srcloc !231
  br label %if.end

if.end:                                           ; preds = %do.body4.i, %if.end.i18.if.end_crit_edge, %do.body25.i, %if.end.i.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm1105_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb.i, align 4
  %boardnr = getelementptr i8, ptr %1, i32 1068
  %2 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %boardnr, align 8
  %lnb = getelementptr [5 x %struct.dm1105_board], ptr @dm1105_boards, i32 0, i32 %3, i32 1
  %4 = ptrtoint ptr %lnb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lnb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %5)
  %tobool.not.i = icmp ult i32 %5, 262144
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %do.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %and1.i = and i32 %5, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.dm1105_gpio_enable.exit_crit_edge, label %do.body5.i

if.end.i.dm1105_gpio_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dm1105_gpio_enable.exit

do.body5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !245
  tail call void @arm_heavy_mb() #9
  %io_mem.i = getelementptr i8, ptr %1, i32 -1112
  %6 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_mem.i, align 4
  %arrayidx.i = getelementptr i8, ptr %7, i32 12
  %8 = ptrtoint ptr %arrayidx.i to i32
  %and7.i = and i32 %8, 1048575
  %add.i = or i32 %and7.i, -18874368
  %9 = inttoptr i32 %add.i to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #9, !srcloc !238
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !246
  %neg.i = xor i32 %and1.i, -1
  %and12.i = and i32 %11, %neg.i
  %12 = tail call i32 @llvm.bswap.i32(i32 %and12.i) #9
  %13 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_mem.i, align 4
  %arrayidx16.i = getelementptr i8, ptr %14, i32 12
  %15 = ptrtoint ptr %arrayidx16.i to i32
  %and17.i = and i32 %15, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %16 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %12) #9, !srcloc !231
  br label %dm1105_gpio_enable.exit

dm1105_gpio_enable.exit:                          ; preds = %do.body5.i, %if.end.i.dm1105_gpio_enable.exit_crit_edge
  %17 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %voltage, label %if.else17 [
    i32 1, label %if.then
    i32 0, label %if.then9
  ]

if.then:                                          ; preds = %dm1105_gpio_enable.exit
  %18 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %boardnr, align 8
  %lnb3 = getelementptr [5 x %struct.dm1105_board], ptr @dm1105_boards, i32 0, i32 %19, i32 1
  %20 = ptrtoint ptr %lnb3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lnb3, align 4
  %v18 = getelementptr [5 x %struct.dm1105_board], ptr @dm1105_boards, i32 0, i32 %19, i32 1, i32 3
  %22 = ptrtoint ptr %v18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %v18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %21)
  %tobool.not.i37 = icmp ult i32 %21, 262144
  br i1 %tobool.not.i37, label %if.then.if.end.i42_crit_edge, label %do.end.i39

if.then.if.end.i42_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i42

do.end.i39:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call.i38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.86) #13
  br label %if.end.i42

if.end.i42:                                       ; preds = %do.end.i39, %if.then.if.end.i42_crit_edge
  %and1.i40 = and i32 %21, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i40)
  %tobool2.not.i41 = icmp eq i32 %and1.i40, 0
  br i1 %tobool2.not.i41, label %if.end.i42.if.end25_crit_edge, label %do.body4.i

if.end.i42.if.end25_crit_edge:                    ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.body4.i:                                       ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  tail call void @arm_heavy_mb() #9
  %io_mem.i43 = getelementptr i8, ptr %1, i32 -1112
  %24 = ptrtoint ptr %io_mem.i43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_mem.i43, align 4
  %arrayidx.i44 = getelementptr i8, ptr %25, i32 8
  %26 = ptrtoint ptr %arrayidx.i44 to i32
  %and6.i = and i32 %26, 1048575
  %add.i45 = or i32 %and6.i, -18874368
  %27 = inttoptr i32 %add.i45 to ptr
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %27) #9, !srcloc !238
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !274
  %neg.i46 = xor i32 %and1.i40, -1
  %and11.i = and i32 %29, %neg.i46
  %and13.i = and i32 %and1.i40, %23
  %or.i = or i32 %and11.i, %and13.i
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %31 = ptrtoint ptr %io_mem.i43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io_mem.i43, align 4
  %arrayidx15.i = getelementptr i8, ptr %32, i32 8
  %33 = ptrtoint ptr %arrayidx15.i to i32
  %and16.i = and i32 %33, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %34 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %34, i32 %30) #9, !srcloc !231
  br label %if.end25

if.then9:                                         ; preds = %dm1105_gpio_enable.exit
  %35 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %boardnr, align 8
  %lnb12 = getelementptr [5 x %struct.dm1105_board], ptr @dm1105_boards, i32 0, i32 %36, i32 1
  %37 = ptrtoint ptr %lnb12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lnb12, align 4
  %v13 = getelementptr [5 x %struct.dm1105_board], ptr @dm1105_boards, i32 0, i32 %36, i32 1, i32 2
  %39 = ptrtoint ptr %v13 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %v13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %38)
  %tobool.not.i47 = icmp ult i32 %38, 262144
  br i1 %tobool.not.i47, label %if.then9.if.end.i52_crit_edge, label %do.end.i49

if.then9.if.end.i52_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i52

do.end.i49:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %call.i48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.86) #13
  br label %if.end.i52

if.end.i52:                                       ; preds = %do.end.i49, %if.then9.if.end.i52_crit_edge
  %and1.i50 = and i32 %38, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i50)
  %tobool2.not.i51 = icmp eq i32 %and1.i50, 0
  br i1 %tobool2.not.i51, label %if.end.i52.if.end25_crit_edge, label %do.body4.i64

if.end.i52.if.end25_crit_edge:                    ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.body4.i64:                                     ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  tail call void @arm_heavy_mb() #9
  %io_mem.i53 = getelementptr i8, ptr %1, i32 -1112
  %41 = ptrtoint ptr %io_mem.i53 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %io_mem.i53, align 4
  %arrayidx.i54 = getelementptr i8, ptr %42, i32 8
  %43 = ptrtoint ptr %arrayidx.i54 to i32
  %and6.i55 = and i32 %43, 1048575
  %add.i56 = or i32 %and6.i55, -18874368
  %44 = inttoptr i32 %add.i56 to ptr
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %44) #9, !srcloc !238
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !274
  %neg.i57 = xor i32 %and1.i50, -1
  %and11.i58 = and i32 %46, %neg.i57
  %and13.i59 = and i32 %and1.i50, %40
  %or.i60 = or i32 %and11.i58, %and13.i59
  %47 = tail call i32 @llvm.bswap.i32(i32 %or.i60) #9
  %48 = ptrtoint ptr %io_mem.i53 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %io_mem.i53, align 4
  %arrayidx15.i61 = getelementptr i8, ptr %49, i32 8
  %50 = ptrtoint ptr %arrayidx15.i61 to i32
  %and16.i62 = and i32 %50, 1048575
  %add17.i63 = or i32 %and16.i62, -18874368
  %51 = inttoptr i32 %add17.i63 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %51, i32 %47) #9, !srcloc !231
  br label %if.end25

if.else17:                                        ; preds = %dm1105_gpio_enable.exit
  %52 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %boardnr, align 8
  %lnb20 = getelementptr [5 x %struct.dm1105_board], ptr @dm1105_boards, i32 0, i32 %53, i32 1
  %54 = ptrtoint ptr %lnb20 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lnb20, align 4
  %off = getelementptr [5 x %struct.dm1105_board], ptr @dm1105_boards, i32 0, i32 %53, i32 1, i32 1
  %56 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %55)
  %tobool.not.i66 = icmp ult i32 %55, 262144
  br i1 %tobool.not.i66, label %if.else17.if.end.i71_crit_edge, label %do.end.i68

if.else17.if.end.i71_crit_edge:                   ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i71

do.end.i68:                                       ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  %call.i67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.86) #13
  br label %if.end.i71

if.end.i71:                                       ; preds = %do.end.i68, %if.else17.if.end.i71_crit_edge
  %and1.i69 = and i32 %55, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i69)
  %tobool2.not.i70 = icmp eq i32 %and1.i69, 0
  br i1 %tobool2.not.i70, label %if.end.i71.if.end25_crit_edge, label %do.body4.i83

if.end.i71.if.end25_crit_edge:                    ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.body4.i83:                                     ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  tail call void @arm_heavy_mb() #9
  %io_mem.i72 = getelementptr i8, ptr %1, i32 -1112
  %58 = ptrtoint ptr %io_mem.i72 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %io_mem.i72, align 4
  %arrayidx.i73 = getelementptr i8, ptr %59, i32 8
  %60 = ptrtoint ptr %arrayidx.i73 to i32
  %and6.i74 = and i32 %60, 1048575
  %add.i75 = or i32 %and6.i74, -18874368
  %61 = inttoptr i32 %add.i75 to ptr
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %61) #9, !srcloc !238
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !274
  %neg.i76 = xor i32 %and1.i69, -1
  %and11.i77 = and i32 %63, %neg.i76
  %and13.i78 = and i32 %and1.i69, %57
  %or.i79 = or i32 %and11.i77, %and13.i78
  %64 = tail call i32 @llvm.bswap.i32(i32 %or.i79) #9
  %65 = ptrtoint ptr %io_mem.i72 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %io_mem.i72, align 4
  %arrayidx15.i80 = getelementptr i8, ptr %66, i32 8
  %67 = ptrtoint ptr %arrayidx15.i80 to i32
  %and16.i81 = and i32 %67, 1048575
  %add17.i82 = or i32 %and16.i81, -18874368
  %68 = inttoptr i32 %add17.i82 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %68, i32 %64) #9, !srcloc !231
  br label %if.end25

if.end25:                                         ; preds = %do.body4.i83, %if.end.i71.if.end25_crit_edge, %do.body4.i64, %if.end.i52.if.end25_crit_edge, %do.body4.i, %if.end.i42.if.end25_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sharp_z0194a_set_symbol_rate(ptr noundef %fe, i32 noundef %srate, i32 noundef %ratio) #2 align 64 {
entry:
  %buf.i59 = alloca [2 x i8], align 1
  %buf.i53 = alloca [2 x i8], align 1
  %buf.i47 = alloca [2 x i8], align 1
  %buf.i41 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %srate)
  %cmp = icmp ult i32 %srate, 1500000
  br i1 %cmp, label %entry.if.end19_crit_edge, label %if.else

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %srate)
  %cmp1 = icmp ult i32 %srate, 3000000
  br i1 %cmp1, label %if.else.if.end19_crit_edge, label %if.else3

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %srate)
  %cmp4 = icmp ult i32 %srate, 7000000
  br i1 %cmp4, label %if.else3.if.end19_crit_edge, label %if.else6

if.else3.if.end19_crit_edge:                      ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_const_cmp4(i32 14000000, i32 %srate)
  %cmp7 = icmp ult i32 %srate, 14000000
  br i1 %cmp7, label %if.else6.if.end19_crit_edge, label %if.else9

if.else6.if.end19_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else9:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000000, i32 %srate)
  %cmp10 = icmp ult i32 %srate, 30000000
  br i1 %cmp10, label %if.else9.if.end19_crit_edge, label %if.else12

if.else9.if.end19_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 45000000, i32 %srate)
  %cmp13 = icmp ult i32 %srate, 45000000
  %spec.select = select i1 %cmp13, i8 -76, i8 0
  %spec.select40 = select i1 %cmp13, i8 81, i8 0
  br label %if.end19

if.end19:                                         ; preds = %if.else12, %if.else9.if.end19_crit_edge, %if.else6.if.end19_crit_edge, %if.else3.if.end19_crit_edge, %if.else.if.end19_crit_edge, %entry.if.end19_crit_edge
  %aclk.0 = phi i8 [ -73, %entry.if.end19_crit_edge ], [ -73, %if.else.if.end19_crit_edge ], [ -73, %if.else3.if.end19_crit_edge ], [ -73, %if.else6.if.end19_crit_edge ], [ -74, %if.else9.if.end19_crit_edge ], [ %spec.select, %if.else12 ]
  %bclk.0 = phi i8 [ 71, %entry.if.end19_crit_edge ], [ 75, %if.else.if.end19_crit_edge ], [ 79, %if.else3.if.end19_crit_edge ], [ 83, %if.else6.if.end19_crit_edge ], [ 83, %if.else9.if.end19_crit_edge ], [ %spec.select40, %if.else12 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 19, ptr %buf.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %aclk.0, ptr %0, align 1
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %stv0299_writereg.exit.thread, label %stv0299_writereg.exit

stv0299_writereg.exit.thread:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #9
  br label %stv0299_writereg.exit46

stv0299_writereg.exit:                            ; preds = %if.end19
  %call.i = call i32 %4(ptr noundef %fe, ptr noundef nonnull %buf.i, i32 noundef 2) #9
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #9
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i41, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i41 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 20, ptr %buf.i41, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bclk.0, ptr %6, align 1
  %tobool.not.i43 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i43, label %stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge, label %if.then.i45

stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge: ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit46

if.then.i45:                                      ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i44 = call i32 %.pr(ptr noundef %fe, ptr noundef nonnull %buf.i41, i32 noundef 2) #9
  br label %stv0299_writereg.exit46

stv0299_writereg.exit46:                          ; preds = %if.then.i45, %stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge, %stv0299_writereg.exit.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i41) #9
  %shr = lshr i32 %ratio, 16
  %conv = trunc i32 %shr to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i47) #9
  %9 = getelementptr inbounds [2 x i8], ptr %buf.i47, i32 0, i32 1
  %10 = ptrtoint ptr %buf.i47 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 31, ptr %buf.i47, align 1
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %9, align 1
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %tobool.not.i49 = icmp eq ptr %13, null
  br i1 %tobool.not.i49, label %stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge, label %if.then.i51

stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge: ; preds = %stv0299_writereg.exit46
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit52

if.then.i51:                                      ; preds = %stv0299_writereg.exit46
  call void @__sanitizer_cov_trace_pc() #11
  %call.i50 = call i32 %13(ptr noundef %fe, ptr noundef nonnull %buf.i47, i32 noundef 2) #9
  br label %stv0299_writereg.exit52

stv0299_writereg.exit52:                          ; preds = %if.then.i51, %stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i47) #9
  %shr22 = lshr i32 %ratio, 8
  %conv24 = trunc i32 %shr22 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i53) #9
  %14 = getelementptr inbounds [2 x i8], ptr %buf.i53, i32 0, i32 1
  %15 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 32, ptr %buf.i53, align 1
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv24, ptr %14, align 1
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i, align 4
  %tobool.not.i55 = icmp eq ptr %18, null
  br i1 %tobool.not.i55, label %stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge, label %if.then.i57

stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge: ; preds = %stv0299_writereg.exit52
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit58

if.then.i57:                                      ; preds = %stv0299_writereg.exit52
  call void @__sanitizer_cov_trace_pc() #11
  %call.i56 = call i32 %18(ptr noundef %fe, ptr noundef nonnull %buf.i53, i32 noundef 2) #9
  br label %stv0299_writereg.exit58

stv0299_writereg.exit58:                          ; preds = %if.then.i57, %stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i53) #9
  %19 = trunc i32 %ratio to i8
  %conv27 = and i8 %19, -16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i59) #9
  %20 = getelementptr inbounds [2 x i8], ptr %buf.i59, i32 0, i32 1
  %21 = ptrtoint ptr %buf.i59 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 33, ptr %buf.i59, align 1
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv27, ptr %20, align 1
  %23 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i, align 4
  %tobool.not.i61 = icmp eq ptr %24, null
  br i1 %tobool.not.i61, label %stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge, label %if.then.i63

stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge: ; preds = %stv0299_writereg.exit58
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit64

if.then.i63:                                      ; preds = %stv0299_writereg.exit58
  call void @__sanitizer_cov_trace_pc() #11
  %call.i62 = call i32 %24(ptr noundef %fe, ptr noundef nonnull %buf.i59, i32 noundef 2) #9
  br label %stv0299_writereg.exit64

stv0299_writereg.exit64:                          ; preds = %if.then.i63, %stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i59) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm1105_emit_key(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ir_command = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %ir_command to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ir_command, align 4
  %2 = load i32, ptr @ir_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93, i32 noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -36
  %shr = lshr i32 %1, 8
  %3 = trunc i32 %shr to i8
  %conv = and i8 %3, 127
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %conv2 = zext i8 %conv to i64
  tail call void @rc_keydown(ptr noundef %5, i32 noundef 0, i64 noundef %conv2, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter_packets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !16, !17, !19, !21, !23, !24, !26, !27, !28, !30, !31, !32, !33, !34, !35, !37, !39, !41, !42, !44, !46, !47, !49, !51, !53, !55, !57, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !104, !105, !106, !107, !108, !109, !111, !112, !113, !114, !115, !116, !118, !119, !120, !121, !122, !124, !125, !126, !127, !128, !130, !131, !132, !133, !134, !136, !137, !138, !139, !140, !142, !143, !144, !145, !146, !148, !149, !150, !151, !152, !154, !155, !156, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !177, !178, !180, !181, !182, !184, !186, !188, !189, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !209, !211, !212, !213}
!llvm.module.flags = !{!214, !215, !216, !217, !218, !219, !220, !221}
!llvm.ident = !{!222}

!0 = !{ptr @__param_card, !1, !"__param_card", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 183, i32 1}
!2 = !{ptr @__UNIQUE_ID_cardtype383, !1, !"__UNIQUE_ID_cardtype383", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_card384, !4, !"__UNIQUE_ID_card384", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 184, i32 1}
!5 = !{ptr @__param_ir_debug, !6, !"__param_ir_debug", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 187, i32 1}
!7 = !{ptr @__UNIQUE_ID_ir_debugtype385, !6, !"__UNIQUE_ID_ir_debugtype385", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_ir_debug386, !9, !"__UNIQUE_ID_ir_debug386", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 188, i32 1}
!10 = !{ptr @__param_adapter_nr, !11, !"__param_adapter_nr", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 192, i32 1}
!12 = !{ptr @__UNIQUE_ID_adapter_nrtype387, !11, !"__UNIQUE_ID_adapter_nrtype387", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_adapter_nr388, !11, !"__UNIQUE_ID_adapter_nr388", i1 false, i1 false}
!14 = !{ptr @__initcall__kmod_dm1105__389_1227_dm1105_driver_init6, !15, !"__initcall__kmod_dm1105__389_1227_dm1105_driver_init6", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 1227, i32 1}
!16 = !{ptr @__exitcall_dm1105_driver_exit, !15, !"__exitcall_dm1105_driver_exit", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_author390, !18, !"__UNIQUE_ID_author390", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 1229, i32 1}
!19 = !{ptr @__UNIQUE_ID_description391, !20, !"__UNIQUE_ID_description391", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 1230, i32 1}
!21 = !{ptr @__UNIQUE_ID_file392, !22, !"__UNIQUE_ID_file392", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 1231, i32 1}
!23 = !{ptr @__UNIQUE_ID_license393, !22, !"__UNIQUE_ID_license393", i1 false, i1 false}
!24 = !{ptr @ir_debug, !25, !"ir_debug", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 186, i32 12}
!26 = !{ptr @__param_str_card, !1, !"__param_str_card", i1 false, i1 false}
!27 = !{ptr @__param_arr_card, !1, !"__param_arr_card", i1 false, i1 false}
!28 = !{ptr @card, !29, !"card", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 182, i32 21}
!30 = !{ptr @__param_str_ir_debug, !6, !"__param_str_ir_debug", i1 false, i1 false}
!31 = !{ptr @__param_str_adapter_nr, !11, !"__param_str_adapter_nr", i1 false, i1 false}
!32 = !{ptr @__param_arr_adapter_nr, !11, !"__param_arr_adapter_nr", i1 false, i1 false}
!33 = !{ptr @adapter_nr, !11, !"adapter_nr", i1 false, i1 false}
!34 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @dm1105_driver, !36, !"dm1105_driver", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 1220, i32 26}
!37 = !{ptr @dm1105_id_table, !38, !"dm1105_id_table", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 1202, i32 35}
!39 = !{ptr @dm1105_probe.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 1027, i32 2}
!41 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.2, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 1047, i32 33}
!44 = !{ptr @dm1105_probe.__key.3, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 1124, i32 2}
!46 = !{ptr @.str.4, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.5, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 1125, i32 20}
!49 = !{ptr @.str.6, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 1126, i32 12}
!51 = !{ptr @dm1105_devcount, !52, !"dm1105_devcount", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 190, i32 21}
!53 = !{ptr @dm1105_subids, !54, !"dm1105_subids", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 258, i32 34}
!55 = !{ptr @.str.7, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 288, i32 3}
!57 = !{ptr @.str.8, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.9, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @dm1105_card_list._entry, !56, !"_entry", i1 false, i1 false}
!60 = !{ptr @dm1105_card_list._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.11, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 296, i32 3}
!63 = !{ptr @dm1105_card_list._entry.10, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @dm1105_card_list._entry_ptr.12, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 303, i32 2}
!67 = !{ptr @dm1105_card_list._entry.13, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @dm1105_card_list._entry_ptr.15, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.17, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 305, i32 3}
!71 = !{ptr @dm1105_card_list._entry.16, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @dm1105_card_list._entry_ptr.18, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.19, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 210, i32 12}
!75 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 219, i32 12}
!77 = !{ptr @.str.21, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 228, i32 12}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 237, i32 12}
!81 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 246, i32 12}
!83 = !{ptr @dm1105_boards, !84, !"dm1105_boards", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 208, i32 34}
!85 = !{ptr @dm1105_algo, !86, !"dm1105_algo", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 563, i32 35}
!87 = !{ptr @.str.24, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 424, i32 3}
!89 = !{ptr @.str.25, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @dm1105_gpio_enable._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @dm1105_gpio_enable._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 393, i32 3}
!94 = !{ptr @dm1105_gpio_clear._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @dm1105_gpio_clear._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.27, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 413, i32 3}
!98 = !{ptr @dm1105_gpio_get._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @dm1105_gpio_get._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @dm1105_read_mac.command, !101, !"command", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 946, i32 12}
!102 = !{ptr @.str.28, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 963, i32 2}
!104 = !{ptr @.str.29, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.30, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.31, !103, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @dm1105_read_mac._entry, !103, !"_entry", i1 false, i1 false}
!108 = !{ptr @dm1105_read_mac._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.32, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 852, i32 13}
!111 = !{ptr @.str.33, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.34, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.35, !110, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @frontend_init._entry, !110, !"_entry", i1 false, i1 false}
!115 = !{ptr @frontend_init._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 857, i32 4}
!118 = !{ptr @.str.37, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.39, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @frontend_init._entry.38, !117, !"_entry", i1 false, i1 false}
!121 = !{ptr @frontend_init._entry_ptr.40, !117, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.41, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 862, i32 13}
!124 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.44, !123, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @frontend_init._entry.43, !123, !"_entry", i1 false, i1 false}
!127 = !{ptr @frontend_init._entry_ptr.45, !123, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.46, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 867, i32 4}
!130 = !{ptr @.str.47, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @frontend_init._entry.48, !129, !"_entry", i1 false, i1 false}
!133 = !{ptr @frontend_init._entry_ptr.50, !129, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.51, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 872, i32 13}
!136 = !{ptr @.str.52, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.54, !135, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @frontend_init._entry.53, !135, !"_entry", i1 false, i1 false}
!139 = !{ptr @frontend_init._entry_ptr.55, !135, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.56, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 879, i32 13}
!142 = !{ptr @.str.57, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @frontend_init._entry.58, !141, !"_entry", i1 false, i1 false}
!145 = !{ptr @frontend_init._entry_ptr.60, !141, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 887, i32 13}
!148 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @frontend_init._entry.63, !147, !"_entry", i1 false, i1 false}
!151 = !{ptr @frontend_init._entry_ptr.65, !147, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 891, i32 4}
!154 = !{ptr @.str.67, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.69, !153, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @frontend_init._entry.68, !153, !"_entry", i1 false, i1 false}
!157 = !{ptr @frontend_init._entry_ptr.70, !153, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @frontend_init._entry.71, !159, !"_entry", i1 false, i1 false}
!159 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 900, i32 13}
!160 = !{ptr @frontend_init._entry_ptr.72, !159, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @frontend_init._entry.73, !162, !"_entry", i1 false, i1 false}
!162 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 905, i32 4}
!163 = !{ptr @frontend_init._entry_ptr.74, !162, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @frontend_init._entry.75, !165, !"_entry", i1 false, i1 false}
!165 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 910, i32 13}
!166 = !{ptr @frontend_init._entry_ptr.76, !165, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @frontend_init._entry.77, !168, !"_entry", i1 false, i1 false}
!168 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 915, i32 4}
!169 = !{ptr @frontend_init._entry_ptr.78, !168, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @frontend_init._entry.79, !171, !"_entry", i1 false, i1 false}
!171 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 920, i32 13}
!172 = !{ptr @frontend_init._entry_ptr.80, !171, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.82, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 929, i32 3}
!175 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @frontend_init._entry.81, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @frontend_init._entry_ptr.84, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.85, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 383, i32 3}
!180 = !{ptr @dm1105_gpio_set._entry, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @dm1105_gpio_set._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @sharp_z0194a_config, !183, !"sharp_z0194a_config", i1 false, i1 false}
!183 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 805, i32 36}
!184 = !{ptr @sharp_z0194a_inittab, !185, !"sharp_z0194a_inittab", i1 false, i1 false}
!185 = !{!"../drivers/media/dvb-frontends/z0194a.h", i32 40, i32 11}
!186 = !{ptr @.str.86, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 403, i32 3}
!188 = !{ptr @dm1105_gpio_andor._entry, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @dm1105_gpio_andor._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @earda_config, !191, !"earda_config", i1 false, i1 false}
!191 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 817, i32 30}
!192 = !{ptr @serit_config, !193, !"serit_config", i1 false, i1 false}
!193 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 822, i32 29}
!194 = !{ptr @serit_sp2633_config, !195, !"serit_sp2633_config", i1 false, i1 false}
!195 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 828, i32 30}
!196 = !{ptr @dvbworld_ds3000_config, !197, !"dvbworld_ds3000_config", i1 false, i1 false}
!197 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 832, i32 29}
!198 = !{ptr @dvbworld_ts2020_config, !199, !"dvbworld_ts2020_config", i1 false, i1 false}
!199 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 836, i32 29}
!200 = !{ptr @.str.88, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 734, i32 3}
!202 = !{ptr @.str.89, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 737, i32 18}
!204 = !{ptr @.str.90, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 738, i32 21}
!206 = !{ptr @dm1105_ir_init.__key, !207, !"__key", i1 false, i1 false}
!207 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 751, i32 2}
!208 = !{ptr @.str.91, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.92, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/pci/dm1105/dm1105.c", i32 660, i32 3}
!211 = !{ptr @.str.93, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @dm1105_emit_key._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @dm1105_emit_key._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{i32 1, !"wchar_size", i32 2}
!215 = !{i32 1, !"min_enum_size", i32 4}
!216 = !{i32 8, !"branch-target-enforcement", i32 0}
!217 = !{i32 8, !"sign-return-address", i32 0}
!218 = !{i32 8, !"sign-return-address-all", i32 0}
!219 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!220 = !{i32 7, !"uwtable", i32 1}
!221 = !{i32 7, !"frame-pointer", i32 2}
!222 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!223 = !{i64 2158305404}
!224 = !{i64 6850325}
!225 = !{i64 2158305888}
!226 = !{i64 2158314776}
!227 = !{i64 2158315264}
!228 = !{i64 2158315794}
!229 = !{i64 6849902}
!230 = !{i64 2158303302}
!231 = !{i64 6850522}
!232 = !{i64 2158316493}
!233 = !{i64 2158317114}
!234 = !{i64 2158317636}
!235 = !{i64 2158318120}
!236 = !{i64 2158318640}
!237 = !{i64 2158287466}
!238 = !{i64 6850940}
!239 = !{i64 2158288285}
!240 = !{i64 2158319223}
!241 = !{i64 2158319718}
!242 = !{i64 2158281407}
!243 = !{i64 2158304425}
!244 = !{i64 2158304909}
!245 = !{i64 2158284635}
!246 = !{i64 2158285434}
!247 = !{i64 2158269872}
!248 = !{i64 2158270671}
!249 = !{i64 2158265579}
!250 = !{i64 2158266398}
!251 = !{i64 2158310130}
!252 = !{i64 6850720}
!253 = !{i64 2158310693}
!254 = !{i64 2158311035}
!255 = !{i64 2158312040}
!256 = !{i64 2158312878}
!257 = !{i64 2158313721}
!258 = !{i64 2158288869}
!259 = !{i64 2158289366}
!260 = !{i64 2158289883}
!261 = !{i64 2158290412}
!262 = !{i64 2158292273}
!263 = !{i64 2158292728}
!264 = !{i64 2158293092}
!265 = !{i64 2158293594}
!266 = !{i64 2158294121}
!267 = !{i64 2158294670}
!268 = !{i64 2158296531}
!269 = !{i64 2158296895}
!270 = !{i64 2158297418}
!271 = !{i64 2158297947}
!272 = !{i64 2158299808}
!273 = !{i64 2158278084}
!274 = !{i64 2158278869}
