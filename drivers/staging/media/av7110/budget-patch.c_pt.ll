; ModuleID = '/llk/IR_all_yes/drivers/staging/media/av7110/budget-patch.c_pt.bc'
source_filename = "../drivers/staging/media/av7110/budget-patch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.saa7146_extension = type { [32 x i8], i32, ptr, %struct.pci_driver, ptr, ptr, ptr, ptr, i32, ptr }
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
%struct.saa7146_pci_extension_data = type { ptr, ptr }
%struct.budget_info = type { ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ves1x93_config = type { i8, i32, i8 }
%struct.stv0299_config = type { i8, ptr, i32, i8, i32, ptr, ptr }
%struct.tda8083_config = type { i8 }
%struct.saa7146_dev = type { ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, ptr, i32, [32 x i8], ptr, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.saa7146_dma, %struct.wait_queue_head, i32, %struct.saa7146_dma, %struct.saa7146_dma }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.saa7146_dma = type { i32, ptr }
%struct.budget = type { %struct.dvb_device, %struct.dvb_net, ptr, %struct.i2c_adapter, ptr, ptr, %struct.saa7146_pgtable, %struct.tasklet_struct, %struct.tasklet_struct, %struct.dmxdev, %struct.dvb_demux, %struct.dmx_frontend, %struct.dmx_frontend, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.dvb_adapter, ptr, ptr, i32, ptr }
%struct.dvb_device = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.saa7146_pgtable = type { i32, ptr, i32, i32, ptr, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.161, i32 }
%union.anon.161 = type { ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.124, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.124 = type { ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.167], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.167 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.168 }>
%union.anon.168 = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@__param_str_adapter_nr = internal constant [24 x i8] c"budget_patch.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype385 = internal constant [48 x i8] c"budget_patch.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr386 = internal constant [49 x i8] c"budget_patch.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@budget_extension = internal global { %struct.saa7146_extension, [36 x i8] } { %struct.saa7146_extension { [32 x i8] c"budget_patch dvb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, ptr null, %struct.pci_driver zeroinitializer, ptr @pci_tbl, ptr null, ptr @budget_patch_attach, ptr @budget_patch_detach, i32 1024, ptr @ttpci_budget_irq10_handler }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_budget_patch__387_660_budget_patch_init6 = internal global ptr @budget_patch_init, section ".initcall6.init", align 4
@__exitcall_budget_patch_exit = internal global ptr @budget_patch_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file388 = internal constant [60 x i8] c"budget_patch.file=drivers/staging/media/av7110/budget-patch\00", section ".modinfo", align 1
@__UNIQUE_ID_license389 = internal constant [25 x i8] c"budget_patch.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author390 = internal constant [82 x i8] c"budget_patch.author=Emard, Roberto Deza, Holger Waechtler, Michael Hunold, others\00", section ".modinfo", align 1
@__UNIQUE_ID_description391 = internal constant [109 x i8] c"budget_patch.description=Driver for full TS modified DVB-S SAA7146+AV7110 based so-called Budget Patch cards\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4401, i32 28998, i32 5058, i32 0, i32 0, i32 0, i32 ptrtoint (ptr @ttbp to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ttbp = internal global { %struct.saa7146_pci_extension_data, [24 x i8] } { %struct.saa7146_pci_extension_data { ptr @budget_extension, ptr @ttbp_info }, [24 x i8] zeroinitializer }, align 32
@ttbp_info = internal global { %struct.budget_info, [24 x i8] } { %struct.budget_info { ptr @.str, i32 3 }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TT-Budget/Patch DVB-S 1.x PCI\00", [34 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@budget_patch_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [120 x i8], [40 x i8] } { [120 x i8] c"budget-patch not detected or saa7146 in non-default state.\0Atry enabling resetting of 7146 with MASK_31 in MC1 register\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"budget_patch_attach\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/staging/media/av7110/budget-patch.c\00", [52 x i8] zeroinitializer }, align 32
@budget_patch_attach._entry_ptr = internal global ptr @budget_patch_attach._entry, section ".printk_index", align 4
@budget_patch_attach._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"BUDGET-PATCH DETECTED.\0A\00", [40 x i8] zeroinitializer }, align 32
@budget_patch_attach._entry_ptr.6 = internal global ptr @budget_patch_attach._entry.4, section ".printk_index", align 4
@budget_debug = external dso_local local_unnamed_addr global i32, align 4
@budget_patch_attach._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017budget_patch: %s(): budget: %p\0A\00", [62 x i8] zeroinitializer }, align 32
@budget_patch_attach._entry_ptr.9 = internal global ptr @budget_patch_attach._entry.7, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ves1x93_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:ves1x93_attach\00", [42 x i8] zeroinitializer }, align 32
@alps_bsrv2_config = internal global { %struct.ves1x93_config, [20 x i8] } { %struct.ves1x93_config { i8 8, i32 90100000, i8 0 }, [20 x i8] zeroinitializer }, align 32
@frontend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol ves1x93_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"frontend_init\00", [18 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr = internal global ptr @frontend_init._entry, section ".printk_index", align 4
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0299_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0299_attach\00", [42 x i8] zeroinitializer }, align 32
@alps_bsru6_config = internal global { %struct.stv0299_config, [36 x i8] } { %struct.stv0299_config { i8 104, ptr @alps_bsru6_inittab, i32 88000000, i8 -104, i32 100, ptr @alps_bsru6_set_symbol_rate, ptr null }, [36 x i8] zeroinitializer }, align 32
@frontend_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.3, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0299_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.18 = internal global ptr @frontend_init._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda8083_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:tda8083_attach\00", [42 x i8] zeroinitializer }, align 32
@grundig_29504_451_config = internal global { %struct.tda8083_config, [31 x i8] } { %struct.tda8083_config { i8 104 }, [31 x i8] zeroinitializer }, align 32
@frontend_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.13, ptr @.str.3, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol tda8083_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.23 = internal global ptr @frontend_init._entry.21, section ".printk_index", align 4
@frontend_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.13, ptr @.str.3, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"dvb-ttpci: A frontend driver was not found for device [%04x:%04x] subsystem [%04x:%04x]\0A\00", [39 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.26 = internal global ptr @frontend_init._entry.24, section ".printk_index", align 4
@frontend_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.13, ptr @.str.3, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"budget-av: Frontend registration failed!\0A\00", [54 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr.29 = internal global ptr @frontend_init._entry.27, section ".printk_index", align 4
@av7110_send_diseqc_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.30, ptr @.str.3, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"av7110_send_diseqc_msg\00", [41 x i8] zeroinitializer }, align 32
@av7110_send_diseqc_msg._entry_ptr = internal global ptr @av7110_send_diseqc_msg._entry, section ".printk_index", align 4
@budget_av7110_send_fw_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.31, ptr @.str.3, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"budget_av7110_send_fw_cmd\00", [38 x i8] zeroinitializer }, align 32
@budget_av7110_send_fw_cmd._entry_ptr = internal global ptr @budget_av7110_send_fw_cmd._entry, section ".printk_index", align 4
@av7110_set22k._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.32, ptr @.str.3, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"av7110_set22k\00", [18 x i8] zeroinitializer }, align 32
@av7110_set22k._entry_ptr = internal global ptr @av7110_set22k._entry, section ".printk_index", align 4
@alps_bsru6_inittab = internal global { [78 x i8], [50 x i8] } { [78 x i8] c"\01\15\020\03\00\04}\055\06@\07\00\08@\09\00\0CQ\0D\82\0E#\10?\11\84\12\B9\15\C9\16\00\17\00\18\00\19\00\1A\00\1FP \00!\00\22\00#\00(\00)\1E*\14+\0F,\09-\05.\011\1F2\193\FC4\93\0FR\FF\FF", [50 x i8] zeroinitializer }, align 32
@SendDiSEqCMsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.33, ptr @.str.3, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SendDiSEqCMsg\00", [18 x i8] zeroinitializer }, align 32
@SendDiSEqCMsg._entry_ptr = internal global ptr @SendDiSEqCMsg._entry, section ".printk_index", align 4
@DiseqcSendByte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.34, ptr @.str.3, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DiseqcSendByte\00", [17 x i8] zeroinitializer }, align 32
@DiseqcSendByte._entry_ptr = internal global ptr @DiseqcSendByte._entry, section ".printk_index", align 4
@DiseqcSendBit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.35, ptr @.str.3, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DiseqcSendBit\00", [18 x i8] zeroinitializer }, align 32
@DiseqcSendBit._entry_ptr = internal global ptr @DiseqcSendBit._entry, section ".printk_index", align 4
@gpio_Set22K._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.36, ptr @.str.3, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio_Set22K\00", [20 x i8] zeroinitializer }, align 32
@gpio_Set22K._entry_ptr = internal global ptr @gpio_Set22K._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 4115]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"budget_extension\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 647, i32 33 }
@___asan_gen_.43 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 25, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant [8 x i8] c"pci_tbl\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 34, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [5 x i8] c"ttbp\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [10 x i8] c"ttbp_info\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 31, i32 1 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 478, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 482, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 588, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [18 x i8] c"alps_bsrv2_config\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 286, i32 30 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 324, i32 26 }
@___asan_gen_.106 = private unnamed_addr constant [18 x i8] c"alps_bsru6_config\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 114, i32 30 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 334, i32 26 }
@___asan_gen_.121 = private unnamed_addr constant [25 x i8] c"grundig_29504_451_config\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 313, i32 30 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 346, i32 26 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 358, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 365, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 190, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 159, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 180, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [19 x i8] c"alps_bsru6_inittab\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [39 x i8] c"../drivers/media/dvb-frontends/bsru6.h\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 11, i32 11 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 89, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 73, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 61, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.185 = private constant [47 x i8] c"../drivers/staging/media/av7110/budget-patch.c\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 50, i32 2 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @DiseqcSendBit._entry, ptr @DiseqcSendBit._entry_ptr, ptr @DiseqcSendByte._entry, ptr @DiseqcSendByte._entry_ptr, ptr @SendDiSEqCMsg._entry, ptr @SendDiSEqCMsg._entry_ptr, ptr @__UNIQUE_ID_adapter_nr386, ptr @__UNIQUE_ID_adapter_nrtype385, ptr @__UNIQUE_ID_author390, ptr @__UNIQUE_ID_description391, ptr @__UNIQUE_ID_file388, ptr @__UNIQUE_ID_license389, ptr @__exitcall_budget_patch_exit, ptr @__initcall__kmod_budget_patch__387_660_budget_patch_init6, ptr @__param_adapter_nr, ptr @av7110_send_diseqc_msg._entry, ptr @av7110_send_diseqc_msg._entry_ptr, ptr @av7110_set22k._entry, ptr @av7110_set22k._entry_ptr, ptr @budget_av7110_send_fw_cmd._entry, ptr @budget_av7110_send_fw_cmd._entry_ptr, ptr @budget_patch_attach._entry, ptr @budget_patch_attach._entry.4, ptr @budget_patch_attach._entry.7, ptr @budget_patch_attach._entry_ptr, ptr @budget_patch_attach._entry_ptr.6, ptr @budget_patch_attach._entry_ptr.9, ptr @budget_patch_exit, ptr @frontend_init._entry, ptr @frontend_init._entry.16, ptr @frontend_init._entry.21, ptr @frontend_init._entry.24, ptr @frontend_init._entry.27, ptr @frontend_init._entry_ptr, ptr @frontend_init._entry_ptr.18, ptr @frontend_init._entry_ptr.23, ptr @frontend_init._entry_ptr.26, ptr @frontend_init._entry_ptr.29, ptr @gpio_Set22K._entry, ptr @gpio_Set22K._entry_ptr, ptr @budget_extension, ptr @adapter_nr, ptr @pci_tbl, ptr @ttbp, ptr @ttbp_info, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @alps_bsrv2_config, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @alps_bsru6_config, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @grundig_29504_451_config, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @alps_bsru6_inittab, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @budget_extension to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttbp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttbp_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @budget_patch_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @budget_patch_attach._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @budget_patch_attach._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_bsrv2_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_bsru6_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grundig_29504_451_config to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_send_diseqc_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @budget_av7110_send_fw_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_set22k._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_bsru6_inittab to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SendDiSEqCMsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DiseqcSendByte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DiseqcSendBit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_Set22K._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @budget_patch_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @saa7146_unregister_extension(ptr noundef nonnull @budget_extension) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_unregister_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @budget_patch_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @saa7146_register_extension(ptr noundef nonnull @budget_extension) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @budget_patch_attach(ptr noundef %dev, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 48) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem, align 4
  %add.ptr5 = getelementptr i8, ptr %3, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #7, !srcloc !113
  %d_rps1 = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 22
  %cpu_addr = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 22, i32 1
  %4 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpu_addr, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 131104, ptr %5, align 4
  %7 = load ptr, ptr %cpu_addr, align 4
  %arrayidx13 = getelementptr i32, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 939524288, ptr %arrayidx13, align 4
  %9 = load ptr, ptr %cpu_addr, align 4
  %arrayidx20 = getelementptr i32, ptr %9, i32 2
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 255, ptr %arrayidx20, align 4
  %11 = load ptr, ptr %cpu_addr, align 4
  %arrayidx27 = getelementptr i32, ptr %11, i32 3
  %12 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 64, ptr %arrayidx27, align 4
  %13 = load ptr, ptr %cpu_addr, align 4
  %arrayidx34 = getelementptr i32, ptr %13, i32 4
  %14 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 80, ptr %arrayidx34, align 4
  tail call void @saa7146_setgpio(ptr noundef %dev, i32 noundef 3, i32 noundef 64) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %d_rps1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %d_rps1, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mem, align 4
  %add.ptr42 = getelementptr i8, ptr %19, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %17) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mem, align 4
  %add.ptr47 = getelementptr i8, ptr %21, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 2097184) #7, !srcloc !113
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.0242 = phi i32 [ 50, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0242, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #7
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body
  tail call void @saa7146_setgpio(ptr noundef %dev, i32 noundef 3, i32 noundef 80) #7
  br label %while.body52

while.body52:                                     ; preds = %while.body52.while.body52_crit_edge, %while.end
  %__ms48.0243 = phi i32 [ 150, %while.end ], [ %dec50, %while.body52.while.body52_crit_edge ]
  %dec50 = add nsw i32 %__ms48.0243, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #7
  %tobool51.not = icmp eq i32 %dec50, 0
  br i1 %tobool51.not, label %while.end53, label %while.body52.while.body52_crit_edge

while.body52.while.body52_crit_edge:              ; preds = %while.body52
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body52

while.end53:                                      ; preds = %while.body52
  %24 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mem, align 4
  %add.ptr55 = getelementptr i8, ptr %25, i32 224
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  %27 = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp = icmp eq i32 %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mem, align 4
  %add.ptr61 = getelementptr i8, ptr %29, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 32) #7, !srcloc !113
  %.str.5..str.1 = select i1 %cmp, ptr @.str.5, ptr @.str.1
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.5..str.1) #10
  %30 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cpu_addr, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8388640, ptr %31, align 4
  %33 = load ptr, ptr %cpu_addr, align 4
  %arrayidx86 = getelementptr i32, ptr %33, i32 1
  %34 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 939524288, ptr %arrayidx86, align 4
  %35 = load ptr, ptr %cpu_addr, align 4
  %arrayidx93 = getelementptr i32, ptr %35, i32 2
  %36 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 255, ptr %arrayidx93, align 4
  %37 = load ptr, ptr %cpu_addr, align 4
  %arrayidx100 = getelementptr i32, ptr %37, i32 3
  %38 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 80, ptr %arrayidx100, align 4
  %39 = load ptr, ptr %cpu_addr, align 4
  %arrayidx107 = getelementptr i32, ptr %39, i32 4
  %40 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 8388644, ptr %arrayidx107, align 4
  %41 = load ptr, ptr %cpu_addr, align 4
  %arrayidx114 = getelementptr i32, ptr %41, i32 5
  %42 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 939524288, ptr %arrayidx114, align 4
  %43 = load ptr, ptr %cpu_addr, align 4
  %arrayidx121 = getelementptr i32, ptr %43, i32 6
  %44 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 255, ptr %arrayidx121, align 4
  %45 = load ptr, ptr %cpu_addr, align 4
  %arrayidx128 = getelementptr i32, ptr %45, i32 7
  %46 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 64, ptr %arrayidx128, align 4
  %47 = load ptr, ptr %cpu_addr, align 4
  %arrayidx135 = getelementptr i32, ptr %47, i32 8
  %48 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 128, ptr %arrayidx135, align 4
  %49 = ptrtoint ptr %d_rps1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %d_rps1, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %52 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cpu_addr, align 4
  %arrayidx144 = getelementptr i32, ptr %53, i32 9
  %54 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %51, ptr %arrayidx144, align 4
  tail call void @saa7146_setgpio(ptr noundef %dev, i32 noundef 3, i32 noundef 64) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  tail call void @arm_heavy_mb() #7
  %55 = ptrtoint ptr %d_rps1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %d_rps1, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %58 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mem, align 4
  %add.ptr153 = getelementptr i8, ptr %59, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153, i32 %57) #7, !srcloc !113
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %60 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3264, i32 noundef 3800) #11
  %tobool155.not = icmp eq ptr %call7.i, null
  br i1 %tobool155.not, label %while.end53.cleanup_crit_edge, label %do.body158

while.end53.cleanup_crit_edge:                    ; preds = %while.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body158:                                       ; preds = %while.end53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %61 = load i32, ptr @budget_debug, align 4
  %and159 = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %do.body158.do.end169_crit_edge, label %do.end164

do.body158.do.end169_crit_edge:                   ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end169

do.end164:                                        ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #9
  %call166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, ptr noundef nonnull %call7.i) #10
  br label %do.end169

do.end169:                                        ; preds = %do.end164, %do.body158.do.end169_crit_edge
  %call170 = tail call i32 @ttpci_budget_init(ptr noundef nonnull %call7.i, ptr noundef %dev, ptr noundef %info, ptr noundef null, ptr noundef nonnull @adapter_nr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %do.body174, label %if.then172

if.then172:                                       ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

do.body174:                                       ; preds = %do.end169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %buffer_height = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 16
  %62 = ptrtoint ptr %buffer_height to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %buffer_height, align 4
  %or = or i32 %63, 4096
  %64 = tail call i32 @llvm.bswap.i32(i32 %or)
  %65 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mem, align 4
  %add.ptr178 = getelementptr i8, ptr %66, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 %64) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %67 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mem, align 4
  %add.ptr183 = getelementptr i8, ptr %68, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr183, i32 2097184) #7, !srcloc !113
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 12
  %69 = ptrtoint ptr %ext_priv to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call7.i, ptr %ext_priv, align 4
  %priv = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 25, i32 5
  %70 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call7.i, ptr %priv, align 8
  %dev.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 2
  %71 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i, align 8
  %pci.i = getelementptr inbounds %struct.saa7146_dev, ptr %72, i32 0, i32 8
  %73 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pci.i, align 4
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 10
  %75 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %subsystem_device.i, align 2
  %77 = zext i16 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values)
  switch i16 %76, label %do.body174.sw.epilog.i_crit_edge [
    i16 0, label %do.body174.sw.bb.i_crit_edge
    i16 4115, label %do.body174.sw.bb.i_crit_edge244
  ]

do.body174.sw.bb.i_crit_edge244:                  ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

do.body174.sw.bb.i_crit_edge:                     ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

do.body174.sw.epilog.i_crit_edge:                 ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %do.body174.sw.bb.i_crit_edge, %do.body174.sw.bb.i_crit_edge244
  %call.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.10) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %cond.end.i, label %sw.bb.i.if.then.i_crit_edge

sw.bb.i.if.then.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

cond.end.i:                                       ; preds = %sw.bb.i
  %call1.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.11) #7
  %call2.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.10) #7
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %do.end.i, label %cond.end.i.if.then.i_crit_edge

cond.end.i.if.then.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %cond.end.i.if.then.i_crit_edge, %sw.bb.i.if.then.i_crit_edge
  %cond187.i = phi ptr [ %call2.i, %cond.end.i.if.then.i_crit_edge ], [ %call.i, %sw.bb.i.if.then.i_crit_edge ]
  %i2c_adap.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 3
  %call4.i = tail call ptr %cond187.i(ptr noundef nonnull @alps_bsrv2_config, ptr noundef %i2c_adap.i) #7
  %cmp.i = icmp eq ptr %call4.i, null
  br i1 %cmp.i, label %if.then6.i, label %if.then12.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.10) #7
  br label %if.end20.i

do.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i241 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  br label %if.end20.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %dvb_frontend.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %78 = ptrtoint ptr %dvb_frontend.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call4.i, ptr %dvb_frontend.i, align 8
  %set_params.i = getelementptr inbounds %struct.dvb_frontend, ptr %call4.i, i32 0, i32 1, i32 32, i32 6
  %79 = ptrtoint ptr %set_params.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @alps_bsrv2_tuner_set_params, ptr %set_params.i, align 4
  %80 = load ptr, ptr %dvb_frontend.i, align 8
  %diseqc_send_master_cmd.i = getelementptr inbounds %struct.dvb_frontend, ptr %80, i32 0, i32 1, i32 21
  %81 = ptrtoint ptr %diseqc_send_master_cmd.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @budget_patch_diseqc_send_master_cmd, ptr %diseqc_send_master_cmd.i, align 4
  %82 = load ptr, ptr %dvb_frontend.i, align 8
  %diseqc_send_burst.i = getelementptr inbounds %struct.dvb_frontend, ptr %82, i32 0, i32 1, i32 23
  %83 = ptrtoint ptr %diseqc_send_burst.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @budget_patch_diseqc_send_burst, ptr %diseqc_send_burst.i, align 4
  %84 = load ptr, ptr %dvb_frontend.i, align 8
  %set_tone.i = getelementptr inbounds %struct.dvb_frontend, ptr %84, i32 0, i32 1, i32 24
  %85 = ptrtoint ptr %set_tone.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @budget_patch_set_tone, ptr %set_tone.i, align 4
  br label %sw.epilog.i

if.end20.i:                                       ; preds = %do.end.i, %if.then6.i
  %dvb_frontend189.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %86 = ptrtoint ptr %dvb_frontend189.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %dvb_frontend189.i, align 8
  %call23.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.14) #7
  %tobool24.not.i = icmp eq ptr %call23.i, null
  br i1 %tobool24.not.i, label %cond.end29.i, label %if.end20.i.if.then32.i_crit_edge

if.end20.i.if.then32.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32.i

cond.end29.i:                                     ; preds = %if.end20.i
  %call27.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.15) #7
  %call28.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.14) #7
  %tobool31.not.i = icmp eq ptr %call28.i, null
  br i1 %tobool31.not.i, label %do.end42.i, label %cond.end29.i.if.then32.i_crit_edge

cond.end29.i.if.then32.i_crit_edge:               ; preds = %cond.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32.i

if.then32.i:                                      ; preds = %cond.end29.i.if.then32.i_crit_edge, %if.end20.i.if.then32.i_crit_edge
  %cond30194.i = phi ptr [ %call28.i, %cond.end29.i.if.then32.i_crit_edge ], [ %call23.i, %if.end20.i.if.then32.i_crit_edge ]
  %i2c_adap33.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 3
  %call34.i = tail call ptr %cond30194.i(ptr noundef nonnull @alps_bsru6_config, ptr noundef %i2c_adap33.i) #7
  %cmp35.i = icmp eq ptr %call34.i, null
  br i1 %cmp35.i, label %if.then37.i, label %if.then50.i

if.then37.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.14) #7
  br label %if.end66.i

do.end42.i:                                       ; preds = %cond.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #10
  br label %if.end66.i

if.then50.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %dvb_frontend189.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call34.i, ptr %dvb_frontend189.i, align 8
  %set_params54.i = getelementptr inbounds %struct.dvb_frontend, ptr %call34.i, i32 0, i32 1, i32 32, i32 6
  %88 = ptrtoint ptr %set_params54.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @alps_bsru6_tuner_set_params, ptr %set_params54.i, align 4
  %89 = load ptr, ptr %dvb_frontend189.i, align 8
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %i2c_adap33.i, ptr %tuner_priv.i, align 4
  %91 = load ptr, ptr %dvb_frontend189.i, align 8
  %diseqc_send_master_cmd59.i = getelementptr inbounds %struct.dvb_frontend, ptr %91, i32 0, i32 1, i32 21
  %92 = ptrtoint ptr %diseqc_send_master_cmd59.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @budget_diseqc_send_master_cmd, ptr %diseqc_send_master_cmd59.i, align 4
  %93 = load ptr, ptr %dvb_frontend189.i, align 8
  %diseqc_send_burst62.i = getelementptr inbounds %struct.dvb_frontend, ptr %93, i32 0, i32 1, i32 23
  %94 = ptrtoint ptr %diseqc_send_burst62.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @budget_diseqc_send_burst, ptr %diseqc_send_burst62.i, align 4
  %95 = load ptr, ptr %dvb_frontend189.i, align 8
  %set_tone65.i = getelementptr inbounds %struct.dvb_frontend, ptr %95, i32 0, i32 1, i32 24
  %96 = ptrtoint ptr %set_tone65.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @budget_set_tone, ptr %set_tone65.i, align 4
  br label %sw.epilog.i

if.end66.i:                                       ; preds = %do.end42.i, %if.then37.i
  %97 = ptrtoint ptr %dvb_frontend189.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %dvb_frontend189.i, align 8
  %call69.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.19) #7
  %tobool70.not.i = icmp eq ptr %call69.i, null
  br i1 %tobool70.not.i, label %cond.end75.i, label %if.end66.i.if.then78.i_crit_edge

if.end66.i.if.then78.i_crit_edge:                 ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then78.i

cond.end75.i:                                     ; preds = %if.end66.i
  %call73.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.20) #7
  %call74.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.19) #7
  %tobool77.not.i = icmp eq ptr %call74.i, null
  br i1 %tobool77.not.i, label %do.end88.i, label %cond.end75.i.if.then78.i_crit_edge

cond.end75.i.if.then78.i_crit_edge:               ; preds = %cond.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then78.i

if.then78.i:                                      ; preds = %cond.end75.i.if.then78.i_crit_edge, %if.end66.i.if.then78.i_crit_edge
  %cond76199.i = phi ptr [ %call74.i, %cond.end75.i.if.then78.i_crit_edge ], [ %call69.i, %if.end66.i.if.then78.i_crit_edge ]
  %i2c_adap79.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 3
  %call80.i = tail call ptr %cond76199.i(ptr noundef nonnull @grundig_29504_451_config, ptr noundef %i2c_adap79.i) #7
  %cmp81.i = icmp eq ptr %call80.i, null
  br i1 %cmp81.i, label %if.then83.i, label %if.then96.i

if.then83.i:                                      ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.19) #7
  br label %if.end91.thread.i

do.end88.i:                                       ; preds = %cond.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  %call90.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #10
  br label %if.end91.thread.i

if.end91.thread.i:                                ; preds = %do.end88.i, %if.then83.i
  %98 = ptrtoint ptr %dvb_frontend189.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %dvb_frontend189.i, align 8
  br label %sw.epilog.i

if.then96.i:                                      ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %dvb_frontend189.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call80.i, ptr %dvb_frontend189.i, align 8
  %set_params100.i = getelementptr inbounds %struct.dvb_frontend, ptr %call80.i, i32 0, i32 1, i32 32, i32 6
  %100 = ptrtoint ptr %set_params100.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @grundig_29504_451_tuner_set_params, ptr %set_params100.i, align 4
  %101 = load ptr, ptr %dvb_frontend189.i, align 8
  %diseqc_send_master_cmd103.i = getelementptr inbounds %struct.dvb_frontend, ptr %101, i32 0, i32 1, i32 21
  %102 = ptrtoint ptr %diseqc_send_master_cmd103.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @budget_diseqc_send_master_cmd, ptr %diseqc_send_master_cmd103.i, align 4
  %103 = load ptr, ptr %dvb_frontend189.i, align 8
  %diseqc_send_burst106.i = getelementptr inbounds %struct.dvb_frontend, ptr %103, i32 0, i32 1, i32 23
  %104 = ptrtoint ptr %diseqc_send_burst106.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @budget_diseqc_send_burst, ptr %diseqc_send_burst106.i, align 4
  %105 = load ptr, ptr %dvb_frontend189.i, align 8
  %set_tone109.i = getelementptr inbounds %struct.dvb_frontend, ptr %105, i32 0, i32 1, i32 24
  %106 = ptrtoint ptr %set_tone109.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @budget_set_tone, ptr %set_tone109.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then96.i, %if.end91.thread.i, %if.then50.i, %if.then12.i, %do.body174.sw.epilog.i_crit_edge
  %dvb_frontend111.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 26
  %107 = ptrtoint ptr %dvb_frontend111.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dvb_frontend111.i, align 8
  %cmp112.i = icmp eq ptr %108, null
  br i1 %cmp112.i, label %do.end117.i, label %if.else133.i

do.end117.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %109 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev.i, align 8
  %pci120.i = getelementptr inbounds %struct.saa7146_dev, ptr %110, i32 0, i32 8
  %111 = ptrtoint ptr %pci120.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pci120.i, align 4
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %112, i32 0, i32 7
  %113 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %vendor.i, align 8
  %conv121.i = zext i16 %114 to i32
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %112, i32 0, i32 8
  %115 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %device.i, align 2
  %conv124.i = zext i16 %116 to i32
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %112, i32 0, i32 9
  %117 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %subsystem_vendor.i, align 4
  %conv127.i = zext i16 %118 to i32
  %subsystem_device130.i = getelementptr inbounds %struct.pci_dev, ptr %112, i32 0, i32 10
  %119 = ptrtoint ptr %subsystem_device130.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %subsystem_device130.i, align 2
  %conv131.i = zext i16 %120 to i32
  %call132.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %conv121.i, i32 noundef %conv124.i, i32 noundef %conv127.i, i32 noundef %conv131.i) #10
  br label %frontend_init.exit

if.else133.i:                                     ; preds = %sw.epilog.i
  %dvb_adapter.i = getelementptr inbounds %struct.budget, ptr %call7.i, i32 0, i32 25
  %call135.i = tail call i32 @dvb_register_frontend(ptr noundef %dvb_adapter.i, ptr noundef nonnull %108) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135.i)
  %tobool136.not.i = icmp eq i32 %call135.i, 0
  br i1 %tobool136.not.i, label %if.else133.i.frontend_init.exit_crit_edge, label %do.end140.i

if.else133.i.frontend_init.exit_crit_edge:        ; preds = %if.else133.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_init.exit

do.end140.i:                                      ; preds = %if.else133.i
  call void @__sanitizer_cov_trace_pc() #9
  %call142.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #10
  %121 = ptrtoint ptr %dvb_frontend111.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dvb_frontend111.i, align 8
  tail call void @dvb_frontend_detach(ptr noundef %122) #7
  %123 = ptrtoint ptr %dvb_frontend111.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %dvb_frontend111.i, align 8
  br label %frontend_init.exit

frontend_init.exit:                               ; preds = %do.end140.i, %if.else133.i.frontend_init.exit_crit_edge, %do.end117.i
  tail call void @ttpci_budget_init_hooks(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %frontend_init.exit, %if.then172, %while.end53.cleanup_crit_edge
  %retval.0 = phi i32 [ %call170, %if.then172 ], [ 0, %frontend_init.exit ], [ -12, %while.end53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @budget_patch_detach(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext_priv, align 4
  %dvb_frontend = getelementptr inbounds %struct.budget, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvb_frontend, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @dvb_unregister_frontend(ptr noundef nonnull %3) #7
  %4 = ptrtoint ptr %dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dvb_frontend, align 8
  tail call void @dvb_frontend_detach(ptr noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @ttpci_budget_deinit(ptr noundef %1) #7
  tail call void @kfree(ptr noundef %1) #7
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttpci_budget_irq10_handler(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_setgpio(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttpci_budget_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttpci_budget_init_hooks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_bsrv2_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #7
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %7 = getelementptr inbounds i8, ptr %msg, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 97, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %buf1, align 4
  %13 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dtv_property_cache, align 4
  %add = add i32 %14, 479500
  %div2 = udiv i32 %add, 125
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %14)
  %cmp = icmp ugt i32 %14, 2000000
  br i1 %cmp, label %entry.if.end23_crit_edge, label %if.else

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1800000, i32 %14)
  %cmp5 = icmp ugt i32 %14, 1800000
  br i1 %cmp5, label %if.else.if.end23_crit_edge, label %if.else7

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600000, i32 %14)
  %cmp9 = icmp ugt i32 %14, 1600000
  br i1 %cmp9, label %if.else7.if.end23_crit_edge, label %if.else11

if.else7.if.end23_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.else11:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200000, i32 %14)
  %cmp13 = icmp ugt i32 %14, 1200000
  br i1 %cmp13, label %if.else11.if.end23_crit_edge, label %if.else15

if.else11.if.end23_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.else15:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1099999, i32 %14)
  %cmp17 = icmp ugt i32 %14, 1099999
  %. = select i1 %cmp17, i8 112, i8 -80
  br label %if.end23

if.end23:                                         ; preds = %if.else15, %if.else11.if.end23_crit_edge, %if.else7.if.end23_crit_edge, %if.else.if.end23_crit_edge, %entry.if.end23_crit_edge
  %pwr.0 = phi i8 [ -16, %entry.if.end23_crit_edge ], [ -80, %if.else.if.end23_crit_edge ], [ 112, %if.else7.if.end23_crit_edge ], [ 48, %if.else11.if.end23_crit_edge ], [ %., %if.else15 ]
  %shr = lshr i32 %div2, 8
  %15 = trunc i32 %shr to i8
  %conv = and i8 %15, 127
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %buf, align 1
  %conv25 = trunc i32 %div2 to i8
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv25, ptr %4, align 1
  %and27 = lshr i32 %div2, 10
  %18 = trunc i32 %and27 to i8
  %19 = and i8 %18, 96
  %conv29 = or i8 %19, -107
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv29, ptr %5, align 1
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %pwr.0, ptr %6, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %22 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.end23.if.end38_crit_edge, label %if.then35

if.end23.if.end38_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then35:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 %23(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end23.if.end38_crit_edge
  %i2c_adap = getelementptr inbounds %struct.budget, ptr %3, i32 0, i32 3
  %call39 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 1
  %.61 = select i1 %cmp40.not, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #7
  ret i32 %.61
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @budget_patch_diseqc_send_master_cmd(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %msg_len, align 1
  %conv = zext i8 %5 to i32
  tail call fastcc void @av7110_send_diseqc_msg(ptr noundef %3, i32 noundef %conv, ptr noundef %cmd, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @budget_patch_diseqc_send_burst(ptr nocapture noundef readonly %fe, i32 noundef %minicmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call fastcc void @av7110_send_diseqc_msg(ptr noundef %3, i32 noundef 0, ptr noundef null, i32 noundef %minicmd)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @budget_patch_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = zext i32 %tone to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %tone, label %entry.cleanup_crit_edge [
    i32 0, label %entry.cleanup.sink.split_crit_edge
    i32 1, label %sw.bb1
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb1, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb1 ], [ 1, %entry.cleanup.sink.split_crit_edge ]
  tail call fastcc void @av7110_set22k(ptr noundef %3, i32 noundef %.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_bsru6_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 97, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 4, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %5 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buf, ptr %buf1, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %6 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner_priv, align 4
  %8 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dtv_property_cache, align 4
  %10 = add i32 %9, -2150001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1200001, i32 %10)
  %11 = icmp ult i32 %10, -1200001
  br i1 %11, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %13 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %14 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %add = add nuw nsw i32 %9, 124
  %div5 = udiv i32 %add, 125
  %shr = lshr i32 %div5, 8
  %15 = trunc i32 %shr to i8
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %buf, align 1
  %conv7 = trunc i32 %div5 to i8
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv7, ptr %14, align 1
  %and9 = lshr i32 %div5, 10
  %18 = trunc i32 %and9 to i8
  %19 = and i8 %18, 96
  %conv12 = or i8 %19, -124
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv12, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1530000, i32 %9)
  %cmp16 = icmp ugt i32 %9, 1530000
  %spec.store.select = select i1 %cmp16, i8 -64, i8 -60
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %spec.store.select, ptr %12, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %22 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.end.if.end24_crit_edge, label %if.then21

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 %23(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end.if.end24_crit_edge
  %call25 = call i32 @i2c_transfer(ptr noundef %7, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25)
  %cmp26.not = icmp eq i32 %call25, 1
  %. = select i1 %cmp26.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %., %if.end24 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @budget_diseqc_send_master_cmd(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %msg_len, align 1
  %conv = zext i8 %5 to i32
  tail call fastcc void @SendDiSEqCMsg(ptr noundef %3, i32 noundef %conv, ptr noundef %cmd, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @budget_diseqc_send_burst(ptr nocapture noundef readonly %fe, i32 noundef %minicmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call fastcc void @SendDiSEqCMsg(ptr noundef %3, i32 noundef 0, ptr noundef null, i32 noundef %minicmd)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @budget_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = zext i32 %tone to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %tone, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.budget, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %7 = load i32, ptr @budget_debug, align 4
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.gpio_Set22K.exit_crit_edge, label %do.end.i

sw.bb.gpio_Set22K.exit_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %gpio_Set22K.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.36, ptr noundef %3) #10
  br label %gpio_Set22K.exit

gpio_Set22K.exit:                                 ; preds = %do.end.i, %sw.bb.gpio_Set22K.exit_crit_edge
  tail call void @saa7146_setgpio(ptr noundef %6, i32 noundef 3, i32 noundef 80) #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %dev1.i3 = getelementptr inbounds %struct.budget, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %dev1.i3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i3, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %10 = load i32, ptr @budget_debug, align 4
  %and.i4 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4)
  %tobool.not.i5 = icmp eq i32 %and.i4, 0
  br i1 %tobool.not.i5, label %sw.bb1.gpio_Set22K.exit8_crit_edge, label %do.end.i7

sw.bb1.gpio_Set22K.exit8_crit_edge:               ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %gpio_Set22K.exit8

do.end.i7:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %call.i6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.36, ptr noundef %3) #10
  br label %gpio_Set22K.exit8

gpio_Set22K.exit8:                                ; preds = %do.end.i7, %sw.bb1.gpio_Set22K.exit8_crit_edge
  tail call void @saa7146_setgpio(ptr noundef %9, i32 noundef 3, i32 noundef 64) #7
  br label %cleanup

cleanup:                                          ; preds = %gpio_Set22K.exit8, %gpio_Set22K.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %gpio_Set22K.exit8 ], [ 0, %gpio_Set22K.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grundig_29504_451_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %data = alloca [4 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #7
  %4 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %7 = getelementptr inbounds i8, ptr %msg, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 97, ptr %msg, align 4
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
  %div1 = udiv i32 %14, 125
  %shr = lshr i32 %div1, 8
  %15 = trunc i32 %shr to i8
  %conv = and i8 %15, 127
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %data, align 1
  %conv3 = trunc i32 %div1 to i8
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv3, ptr %4, align 1
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -114, ptr %5, align 1
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %6, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %20 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 %21(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c_adap = getelementptr inbounds %struct.budget, ptr %3, i32 0, i32 3
  %call9 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp.not = icmp eq i32 %call9, 1
  %. = select i1 %cmp.not, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #7
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @av7110_send_diseqc_msg(ptr noundef %budget, i32 noundef %len, ptr nocapture noundef readonly %msg, i32 noundef %burst) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [18 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %buf) #7
  %0 = getelementptr inbounds i8, ptr %buf, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1542, ptr %buf, align 2
  %3 = getelementptr inbounds <{ i16, i16, [16 x i16] }>, ptr %buf, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %4 = load i32, ptr @budget_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.30, ptr noundef %budget) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %5 = tail call i32 @llvm.smin.i32(i32 %len, i32 10)
  %6 = trunc i32 %5 to i16
  %conv = add i16 %6, 2
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %3, align 2
  %arrayidx7 = getelementptr inbounds [18 x i16], ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %6, ptr %arrayidx7, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %burst)
  %cmp8.not = icmp eq i32 %burst, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %burst)
  %tobool11.not = icmp ne i32 %burst, 0
  %conv12 = zext i1 %tobool11.not to i16
  %conv12.sink = select i1 %cmp8.not, i16 -1, i16 %conv12
  %9 = getelementptr inbounds [18 x i16], ptr %buf, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv12.sink, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp161 = icmp sgt i32 %len, 0
  br i1 %cmp161, label %for.body.preheader, label %do.end3.for.end_crit_edge

do.end3.for.end_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %do.end3
  %smax = call i32 @llvm.smax.i32(i32 %5, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.02 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx18 = getelementptr i8, ptr %msg, i32 %i.02
  %11 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %12 to i16
  %add20 = add nuw nsw i32 %i.02, 4
  %arrayidx21 = getelementptr [18 x i16], ptr %buf, i32 0, i32 %add20
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv19, ptr %arrayidx21, align 2
  %inc = add nuw nsw i32 %i.02, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end3.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %14 = load i32, ptr @budget_debug, align 4
  %and.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.end.for.body.i.preheader_crit_edge, label %do.end.i

for.end.for.body.i.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.preheader

do.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.31, ptr noundef %budget) #10
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %do.end.i, %for.end.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 2, %for.body.i.preheader ]
  %mul.i = shl nuw i32 %i.02.i, 1
  %add.i = add nuw nsw i32 %mul.i, 16636
  %arrayidx.i = getelementptr i16, ptr %buf, i32 %i.02.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %16 to i32
  %call4.i = tail call i32 @ttpci_budget_debiwrite(ptr noundef %budget, i32 noundef 917504, i32 noundef %add.i, i32 noundef 2, i32 noundef %conv.i, i32 noundef 0, i32 noundef 0) #7
  tail call void @msleep(i32 noundef 5) #7
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 18
  br i1 %exitcond.not.i, label %budget_av7110_send_fw_cmd.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

budget_av7110_send_fw_cmd.exit:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %3, align 2
  %conv8.i = zext i16 %18 to i32
  %call9.i = tail call i32 @ttpci_budget_debiwrite(ptr noundef %budget, i32 noundef 917504, i32 noundef 16638, i32 noundef 2, i32 noundef %conv8.i, i32 noundef 0, i32 noundef 0) #7
  tail call void @msleep(i32 noundef 5) #7
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %buf, align 2
  %conv13.i = zext i16 %20 to i32
  %call14.i = tail call i32 @ttpci_budget_debiwrite(ptr noundef %budget, i32 noundef 917504, i32 noundef 16636, i32 noundef 2, i32 noundef %conv13.i, i32 noundef 0, i32 noundef 0) #7
  tail call void @msleep(i32 noundef 5) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %buf) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttpci_budget_debiwrite(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @av7110_set22k(ptr noundef %budget, i32 noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %0 = load i32, ptr @budget_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.32, ptr noundef %budget) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %1 = load i32, ptr @budget_debug, align 4
  %and.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end4.budget_av7110_send_fw_cmd.exit_crit_edge, label %do.end.i

do.end4.budget_av7110_send_fw_cmd.exit_crit_edge: ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %budget_av7110_send_fw_cmd.exit

do.end.i:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.31, ptr noundef %budget) #10
  br label %budget_av7110_send_fw_cmd.exit

budget_av7110_send_fw_cmd.exit:                   ; preds = %do.end.i, %do.end4.budget_av7110_send_fw_cmd.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %call9.i = tail call i32 @ttpci_budget_debiwrite(ptr noundef %budget, i32 noundef 917504, i32 noundef 16638, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  tail call void @msleep(i32 noundef 5) #7
  %conv13.i = select i1 %tobool.not, i32 1539, i32 1538
  %call14.i = tail call i32 @ttpci_budget_debiwrite(ptr noundef %budget, i32 noundef 917504, i32 noundef 16636, i32 noundef 2, i32 noundef %conv13.i, i32 noundef 0, i32 noundef 0) #7
  tail call void @msleep(i32 noundef 5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_bsru6_set_symbol_rate(ptr noundef %fe, i32 noundef %srate, i32 noundef %ratio) #2 align 64 {
entry:
  %buf.i59 = alloca [2 x i8], align 1
  %buf.i53 = alloca [2 x i8], align 1
  %buf.i47 = alloca [2 x i8], align 1
  %buf.i41 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %srate)
  %cmp = icmp ult i32 %srate, 1500000
  br i1 %cmp, label %entry.if.end19_crit_edge, label %if.else

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %srate)
  %cmp1 = icmp ult i32 %srate, 3000000
  br i1 %cmp1, label %if.else.if.end19_crit_edge, label %if.else3

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %srate)
  %cmp4 = icmp ult i32 %srate, 7000000
  br i1 %cmp4, label %if.else3.if.end19_crit_edge, label %if.else6

if.else3.if.end19_crit_edge:                      ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_const_cmp4(i32 14000000, i32 %srate)
  %cmp7 = icmp ult i32 %srate, 14000000
  br i1 %cmp7, label %if.else6.if.end19_crit_edge, label %if.else9

if.else6.if.end19_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.else9:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000000, i32 %srate)
  %cmp10 = icmp ult i32 %srate, 30000000
  br i1 %cmp10, label %if.else9.if.end19_crit_edge, label %if.else12

if.else9.if.end19_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.else12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 45000000, i32 %srate)
  %cmp13 = icmp ult i32 %srate, 45000000
  %spec.select = select i1 %cmp13, i8 -76, i8 0
  %spec.select40 = select i1 %cmp13, i8 81, i8 0
  br label %if.end19

if.end19:                                         ; preds = %if.else12, %if.else9.if.end19_crit_edge, %if.else6.if.end19_crit_edge, %if.else3.if.end19_crit_edge, %if.else.if.end19_crit_edge, %entry.if.end19_crit_edge
  %aclk.0 = phi i8 [ -73, %entry.if.end19_crit_edge ], [ -73, %if.else.if.end19_crit_edge ], [ -73, %if.else3.if.end19_crit_edge ], [ -73, %if.else6.if.end19_crit_edge ], [ -74, %if.else9.if.end19_crit_edge ], [ %spec.select, %if.else12 ]
  %bclk.0 = phi i8 [ 71, %entry.if.end19_crit_edge ], [ 75, %if.else.if.end19_crit_edge ], [ 79, %if.else3.if.end19_crit_edge ], [ 83, %if.else6.if.end19_crit_edge ], [ 83, %if.else9.if.end19_crit_edge ], [ %spec.select40, %if.else12 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #7
  br label %stv0299_writereg.exit46

stv0299_writereg.exit:                            ; preds = %if.end19
  %call.i = call i32 %4(ptr noundef %fe, ptr noundef nonnull %buf.i, i32 noundef 2) #7
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writereg.exit46

if.then.i45:                                      ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i44 = call i32 %.pr(ptr noundef %fe, ptr noundef nonnull %buf.i41, i32 noundef 2) #7
  br label %stv0299_writereg.exit46

stv0299_writereg.exit46:                          ; preds = %if.then.i45, %stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge, %stv0299_writereg.exit.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i41) #7
  %shr = lshr i32 %ratio, 16
  %conv = trunc i32 %shr to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i47) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writereg.exit52

if.then.i51:                                      ; preds = %stv0299_writereg.exit46
  call void @__sanitizer_cov_trace_pc() #9
  %call.i50 = call i32 %13(ptr noundef %fe, ptr noundef nonnull %buf.i47, i32 noundef 2) #7
  br label %stv0299_writereg.exit52

stv0299_writereg.exit52:                          ; preds = %if.then.i51, %stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i47) #7
  %shr22 = lshr i32 %ratio, 8
  %conv24 = trunc i32 %shr22 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i53) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writereg.exit58

if.then.i57:                                      ; preds = %stv0299_writereg.exit52
  call void @__sanitizer_cov_trace_pc() #9
  %call.i56 = call i32 %18(ptr noundef %fe, ptr noundef nonnull %buf.i53, i32 noundef 2) #7
  br label %stv0299_writereg.exit58

stv0299_writereg.exit58:                          ; preds = %if.then.i57, %stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i53) #7
  %19 = trunc i32 %ratio to i8
  %conv27 = and i8 %19, -16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i59) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writereg.exit64

if.then.i63:                                      ; preds = %stv0299_writereg.exit58
  call void @__sanitizer_cov_trace_pc() #9
  %call.i62 = call i32 %24(ptr noundef %fe, ptr noundef nonnull %buf.i59, i32 noundef 2) #7
  br label %stv0299_writereg.exit64

stv0299_writereg.exit64:                          ; preds = %if.then.i63, %stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i59) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @SendDiSEqCMsg(ptr noundef %budget, i32 noundef %len, ptr nocapture noundef readonly %msg, i32 noundef %burst) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.budget, ptr %budget, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %2 = load i32, ptr @budget_debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.33, ptr noundef %budget) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  tail call void @saa7146_setgpio(ptr noundef %1, i32 noundef 3, i32 noundef 64) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp2 = icmp sgt i32 %len, 0
  br i1 %cmp2, label %do.end4.for.body_crit_edge, label %do.end4.while.cond7.preheader_crit_edge

do.end4.while.cond7.preheader_crit_edge:          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond7.preheader

do.end4.for.body_crit_edge:                       ; preds = %do.end4
  br label %for.body

while.cond7.preheader:                            ; preds = %for.body.while.cond7.preheader_crit_edge, %do.end4.while.cond7.preheader_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #7
  %35 = zext i32 %burst to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %burst, label %if.then16 [
    i32 -1, label %while.cond7.preheader.if.end24_crit_edge
    i32 0, label %if.else
  ]

while.cond7.preheader.if.end24_crit_edge:         ; preds = %while.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end4.for.body_crit_edge
  %i.03 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end4.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %msg, i32 %i.03
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %37 to i32
  tail call fastcc void @DiseqcSendByte(ptr noundef %budget, i32 noundef %conv)
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.while.cond7.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.while.cond7.preheader_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond7.preheader

if.then16:                                        ; preds = %while.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @DiseqcSendByte(ptr noundef %budget, i32 noundef 255)
  br label %if.end23

if.else:                                          ; preds = %while.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @saa7146_setgpio(ptr noundef %1, i32 noundef 3, i32 noundef 80) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 107374000) #7
  tail call void @saa7146_setgpio(ptr noundef %1, i32 noundef 3, i32 noundef 64) #7
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then16
  tail call void @msleep(i32 noundef 20) #7
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %while.cond7.preheader.if.end24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @DiseqcSendByte(ptr noundef %budget, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %0 = load i32, ptr @budget_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.34, ptr noundef %budget) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %dev1.i = getelementptr inbounds %struct.budget, ptr %budget, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %do.end4.i.for.body_crit_edge, %do.end3
  %i.030 = phi i32 [ 7, %do.end3 ], [ %dec, %do.end4.i.for.body_crit_edge ]
  %par.029 = phi i32 [ 1, %do.end3 ], [ %xor, %do.end4.i.for.body_crit_edge ]
  %shr11 = lshr i32 %data, %i.030
  %and4 = and i32 %shr11, 1
  %xor = xor i32 %and4, %par.029
  %1 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %3 = load i32, ptr @budget_debug, align 4
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.do.end4.i_crit_edge, label %do.end.i

for.body.do.end4.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.35, ptr noundef %budget) #10
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %for.body.do.end4.i_crit_edge
  tail call void @saa7146_setgpio(ptr noundef %2, i32 noundef 3, i32 noundef 80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not.i = icmp eq i32 %and4, 0
  %cond.i = select i1 %tobool5.not.i, i32 1000, i32 500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %4(i32 noundef %cond.i) #7
  tail call void @saa7146_setgpio(ptr noundef %2, i32 noundef 3, i32 noundef 64) #7
  %cond16.i = select i1 %tobool5.not.i, i32 500, i32 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %5(i32 noundef %cond16.i) #7
  %dec = add nsw i32 %i.030, -1
  %cmp.not = icmp eq i32 %i.030, 0
  br i1 %cmp.not, label %for.end, label %do.end4.i.for.body_crit_edge

do.end4.i.for.body_crit_edge:                     ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %do.end4.i
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @budget_debug to i32))
  %8 = load i32, ptr @budget_debug, align 4
  %and.i13 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13)
  %tobool.not.i14 = icmp eq i32 %and.i13, 0
  br i1 %tobool.not.i14, label %for.end.do.end4.i19_crit_edge, label %do.end.i16

for.end.do.end4.i19_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4.i19

do.end.i16:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.35, ptr noundef %budget) #10
  br label %do.end4.i19

do.end4.i19:                                      ; preds = %do.end.i16, %for.end.do.end4.i19_crit_edge
  tail call void @saa7146_setgpio(ptr noundef %7, i32 noundef 3, i32 noundef 80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %tobool5.not.i17 = icmp eq i32 %xor, 0
  %cond.i18 = select i1 %tobool5.not.i17, i32 1000, i32 500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %9(i32 noundef %cond.i18) #7
  tail call void @saa7146_setgpio(ptr noundef %7, i32 noundef 3, i32 noundef 64) #7
  %cond16.i23 = select i1 %tobool5.not.i17, i32 500, i32 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %10(i32 noundef %cond16.i23) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttpci_budget_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_register_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !13, !15, !16, !17, !18, !20, !22, !24, !25, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !46, !47, !49, !50, !51, !52, !53, !55, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__param_adapter_nr, !1, !"__param_adapter_nr", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_adapter_nrtype385, !1, !"__UNIQUE_ID_adapter_nrtype385", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_adapter_nr386, !1, !"__UNIQUE_ID_adapter_nr386", i1 false, i1 false}
!4 = !{ptr @__initcall__kmod_budget_patch__387_660_budget_patch_init6, !5, !"__initcall__kmod_budget_patch__387_660_budget_patch_init6", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 660, i32 1}
!6 = !{ptr @__exitcall_budget_patch_exit, !7, !"__exitcall_budget_patch_exit", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 661, i32 1}
!8 = !{ptr @__UNIQUE_ID_file388, !9, !"__UNIQUE_ID_file388", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 663, i32 1}
!10 = !{ptr @__UNIQUE_ID_license389, !9, !"__UNIQUE_ID_license389", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author390, !12, !"__UNIQUE_ID_author390", i1 false, i1 false}
!12 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 664, i32 1}
!13 = !{ptr @__UNIQUE_ID_description391, !14, !"__UNIQUE_ID_description391", i1 false, i1 false}
!14 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 665, i32 1}
!15 = !{ptr @__param_str_adapter_nr, !1, !"__param_str_adapter_nr", i1 false, i1 false}
!16 = !{ptr @__param_arr_adapter_nr, !1, !"__param_arr_adapter_nr", i1 false, i1 false}
!17 = !{ptr @adapter_nr, !1, !"adapter_nr", i1 false, i1 false}
!18 = !{ptr @budget_extension, !19, !"budget_extension", i1 false, i1 false}
!19 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 647, i32 33}
!20 = !{ptr @pci_tbl, !21, !"pci_tbl", i1 false, i1 false}
!21 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 34, i32 35}
!22 = !{ptr @ttbp, !23, !"ttbp", i1 false, i1 false}
!23 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 31, i32 1}
!24 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ttbp_info, !23, !"ttbp_info", i1 false, i1 false}
!26 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 478, i32 3}
!28 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @budget_patch_attach._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @budget_patch_attach._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 482, i32 3}
!34 = !{ptr @budget_patch_attach._entry.4, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @budget_patch_attach._entry_ptr.6, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 588, i32 2}
!38 = !{ptr @budget_patch_attach._entry.7, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @budget_patch_attach._entry_ptr.9, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 324, i32 26}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @frontend_init._entry, !41, !"_entry", i1 false, i1 false}
!46 = !{ptr @frontend_init._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 334, i32 26}
!49 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @frontend_init._entry.16, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @frontend_init._entry_ptr.18, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 346, i32 26}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @frontend_init._entry.21, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @frontend_init._entry_ptr.23, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 358, i32 3}
!61 = !{ptr @frontend_init._entry.24, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @frontend_init._entry_ptr.26, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 365, i32 4}
!65 = !{ptr @frontend_init._entry.27, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @frontend_init._entry_ptr.29, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @alps_bsrv2_config, !68, !"alps_bsrv2_config", i1 false, i1 false}
!68 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 286, i32 30}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 190, i32 2}
!71 = !{ptr @av7110_send_diseqc_msg._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @av7110_send_diseqc_msg._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 159, i32 2}
!75 = !{ptr @budget_av7110_send_fw_cmd._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @budget_av7110_send_fw_cmd._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 180, i32 2}
!79 = !{ptr @av7110_set22k._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @av7110_set22k._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @alps_bsru6_config, !82, !"alps_bsru6_config", i1 false, i1 false}
!82 = !{!"../drivers/media/dvb-frontends/bsru6.h", i32 114, i32 30}
!83 = !{ptr @alps_bsru6_inittab, !84, !"alps_bsru6_inittab", i1 false, i1 false}
!84 = !{!"../drivers/media/dvb-frontends/bsru6.h", i32 11, i32 11}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 89, i32 2}
!87 = !{ptr @SendDiSEqCMsg._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @SendDiSEqCMsg._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 73, i32 2}
!91 = !{ptr @DiseqcSendByte._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @DiseqcSendByte._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 61, i32 2}
!95 = !{ptr @DiseqcSendBit._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @DiseqcSendBit._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 50, i32 2}
!99 = !{ptr @gpio_Set22K._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @gpio_Set22K._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @grundig_29504_451_config, !102, !"grundig_29504_451_config", i1 false, i1 false}
!102 = !{!"../drivers/staging/media/av7110/budget-patch.c", i32 313, i32 30}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i64 2158635567}
!113 = !{i64 4223058}
!114 = !{i64 2158636097}
!115 = !{i64 2158637700}
!116 = !{i64 2158638290}
!117 = !{i64 4223476}
!118 = !{i64 2158641690}
!119 = !{i64 2158641996}
!120 = !{i64 2158648090}
!121 = !{i64 2158650620}
!122 = !{i64 2158651245}
