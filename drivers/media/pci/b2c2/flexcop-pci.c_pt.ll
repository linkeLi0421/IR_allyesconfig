; ModuleID = '/llk/IR_all_yes/drivers/media/pci/b2c2/flexcop-pci.c_pt.bc'
source_filename = "../drivers/media/pci/b2c2/flexcop-pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.flexcop_device = type { ptr, i32, i32, i32, i32, i32, %struct.dvb_adapter, ptr, %struct.dvb_net, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, ptr, [3 x %struct.flexcop_i2c_adapter], %struct.mutex, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.flexcop_i2c_adapter = type { ptr, %struct.i2c_adapter, i8, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.flexcop_pci = type { ptr, i32, ptr, i32, [2 x %struct.flexcop_dma], i32, i32, i32, i32, i32, %struct.spinlock, i32, %struct.delayed_work, ptr }
%struct.flexcop_dma = type { ptr, ptr, i32, ptr, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.124, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.124 = type { ptr }
%union.flexcop_ibi_value = type { %struct.anon.184 }
%struct.anon.184 = type { i32, i16 }

@__param_str_enable_pid_filtering = internal constant [38 x i8] c"b2c2_flexcop_pci.enable_pid_filtering\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@enable_pid_filtering = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_enable_pid_filtering = internal constant %struct.kernel_param { ptr @__param_str_enable_pid_filtering, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @enable_pid_filtering } }, section "__param", align 4
@__UNIQUE_ID_enable_pid_filteringtype383 = internal constant [51 x i8] c"b2c2_flexcop_pci.parmtype=enable_pid_filtering:int\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_pid_filtering384 = internal constant [106 x i8] c"b2c2_flexcop_pci.parm=enable_pid_filtering:enable hardware pid filtering: supported values: 0 (fullts), 1\00", section ".modinfo", align 1
@__param_str_irq_chk_intv = internal constant [30 x i8] c"b2c2_flexcop_pci.irq_chk_intv\00", align 1
@irq_chk_intv = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__param_irq_chk_intv = internal constant %struct.kernel_param { ptr @__param_str_irq_chk_intv, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @irq_chk_intv } }, section "__param", align 4
@__UNIQUE_ID_irq_chk_intvtype385 = internal constant [43 x i8] c"b2c2_flexcop_pci.parmtype=irq_chk_intv:int\00", section ".modinfo", align 1
@__UNIQUE_ID_irq_chk_intv386 = internal constant [80 x i8] c"b2c2_flexcop_pci.parm=irq_chk_intv:set the interval for IRQ streaming watchdog.\00", section ".modinfo", align 1
@__param_str_debug = internal constant [23 x i8] c"b2c2_flexcop_pci.debug\00", align 1
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype387 = internal constant [36 x i8] c"b2c2_flexcop_pci.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug388 = internal constant [93 x i8] c"b2c2_flexcop_pci.parm=debug:set debug level (1=info,2=regs,4=TS,8=irqdma,16=check (|-able)).\00", section ".modinfo", align 1
@__initcall__kmod_b2c2_flexcop_pci__389_436_flexcop_pci_driver_init6 = internal global ptr @flexcop_pci_driver_init, section ".initcall6.init", align 4
@flexcop_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @flexcop_pci_tbl, ptr @flexcop_pci_probe, ptr @flexcop_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_flexcop_pci_driver_exit = internal global ptr @flexcop_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author390 = internal constant [72 x i8] c"b2c2_flexcop_pci.author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description391 = internal constant [41 x i8] c"b2c2_flexcop_pci.description=flexcop-pci\00", section ".modinfo", align 1
@__UNIQUE_ID_file392 = internal constant [62 x i8] c"b2c2_flexcop_pci.file=drivers/media/pci/b2c2/b2c2-flexcop-pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license393 = internal constant [29 x i8] c"b2c2_flexcop_pci.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"b2c2_flexcop_pci\00", [47 x i8] zeroinitializer }, align 32
@flexcop_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 5072, i32 8451, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@flexcop_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013flexcop-pci: out of memory\0A\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"flexcop_pci_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/pci/b2c2/flexcop-pci.c\00", [59 x i8] zeroinitializer }, align 32
@flexcop_pci_probe._entry_ptr = internal global ptr @flexcop_pci_probe._entry, section ".printk_index", align 4
@flexcop_pci_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016flexcop-pci: will use the HW PID filter.\0A\00", [52 x i8] zeroinitializer }, align 32
@flexcop_pci_probe._entry_ptr.6 = internal global ptr @flexcop_pci_probe._entry.4, section ".printk_index", align 4
@flexcop_pci_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016flexcop-pci: will pass the complete TS to the demuxer.\0A\00", [38 x i8] zeroinitializer }, align 32
@flexcop_pci_probe._entry_ptr.9 = internal global ptr @flexcop_pci_probe._entry.7, section ".printk_index", align 4
@flexcop_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&(&fc_pci->irq_check_work)->work)\00", [44 x i8] zeroinitializer }, align 32
@flexcop_pci_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(&fc_pci->irq_check_work)->timer\00", [62 x i8] zeroinitializer }, align 32
@lastrreg = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lastrval = internal global { i32, [28 x i8] } zeroinitializer, align 32
@flexcop_pci_read_ibi_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"new rd: %3x: %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"flexcop_pci_read_ibi_reg\00", [39 x i8] zeroinitializer }, align 32
@flexcop_pci_read_ibi_reg._entry_ptr = internal global ptr @flexcop_pci_read_ibi_reg._entry, section ".printk_index", align 4
@lastwreg = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lastwval = internal global { i32, [28 x i8] } zeroinitializer, align 32
@flexcop_pci_write_ibi_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"new wr: %3x: %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"flexcop_pci_write_ibi_reg\00", [38 x i8] zeroinitializer }, align 32
@flexcop_pci_write_ibi_reg._entry_ptr = internal global ptr @flexcop_pci_write_ibi_reg._entry, section ".printk_index", align 4
@flexcop_pci_stream_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DMA xfer enabled\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"flexcop_pci_stream_control\00", [37 x i8] zeroinitializer }, align 32
@flexcop_pci_stream_control._entry_ptr = internal global ptr @flexcop_pci_stream_control._entry, section ".printk_index", align 4
@flexcop_pci_stream_control._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IRQ enabled\0A\00", [19 x i8] zeroinitializer }, align 32
@flexcop_pci_stream_control._entry_ptr.21 = internal global ptr @flexcop_pci_stream_control._entry.19, section ".printk_index", align 4
@flexcop_pci_stream_control._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.3, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IRQ disabled\0A\00", [18 x i8] zeroinitializer }, align 32
@flexcop_pci_stream_control._entry_ptr.24 = internal global ptr @flexcop_pci_stream_control._entry.22, section ".printk_index", align 4
@flexcop_pci_stream_control._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.3, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA xfer disabled\0A\00", [45 x i8] zeroinitializer }, align 32
@flexcop_pci_stream_control._entry_ptr.27 = internal global ptr @flexcop_pci_stream_control._entry.25, section ".printk_index", align 4
@flexcop_pci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016flexcop-pci: card revision %x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"flexcop_pci_init\00", [47 x i8] zeroinitializer }, align 32
@flexcop_pci_init._entry_ptr = internal global ptr @flexcop_pci_init._entry, section ".printk_index", align 4
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"flexcop-pci\00", [20 x i8] zeroinitializer }, align 32
@flexcop_pci_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.3, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013flexcop-pci: cannot map io memory\0A\0A\00", [58 x i8] zeroinitializer }, align 32
@flexcop_pci_init._entry_ptr.33 = internal global ptr @flexcop_pci_init._entry.31, section ".printk_index", align 4
@flexcop_pci_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&fc_pci->irq_lock\00", [46 x i8] zeroinitializer }, align 32
@flexcop_pci_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"data receiver error\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"flexcop_pci_isr\00", [16 x i8] zeroinitializer }, align 32
@flexcop_pci_isr._entry_ptr = internal global ptr @flexcop_pci_isr._entry, section ".printk_index", align 4
@flexcop_pci_isr._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Continuity error flag is set\0A\00", [34 x i8] zeroinitializer }, align 32
@flexcop_pci_isr._entry_ptr.39 = internal global ptr @flexcop_pci_isr._entry.37, section ".printk_index", align 4
@flexcop_pci_isr._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.3, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LLC_SNAP_FLAG_set is set\0A\00", [38 x i8] zeroinitializer }, align 32
@flexcop_pci_isr._entry_ptr.42 = internal global ptr @flexcop_pci_isr._entry.40, section ".printk_index", align 4
@flexcop_pci_isr._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.36, ptr @.str.3, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Transport error\0A\00", [47 x i8] zeroinitializer }, align 32
@flexcop_pci_isr._entry_ptr.45 = internal global ptr @flexcop_pci_isr._entry.43, section ".printk_index", align 4
@flexcop_pci_isr._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.36, ptr @.str.3, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%d valid irq took place so far\0A\00", [32 x i8] zeroinitializer }, align 32
@flexcop_pci_isr._entry_ptr.48 = internal global ptr @flexcop_pci_isr._entry.46, section ".printk_index", align 4
@flexcop_pci_isr._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.36, ptr @.str.3, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"page change to page: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@flexcop_pci_isr._entry_ptr.51 = internal global ptr @flexcop_pci_isr._entry.49, section ".printk_index", align 4
@flexcop_pci_isr._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.36, ptr @.str.3, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%u irq: %08x cur_addr: %llx: cur_pos: %08x, last_cur_pos: %08x \00", [32 x i8] zeroinitializer }, align 32
@flexcop_pci_isr._entry_ptr.54 = internal global ptr @flexcop_pci_isr._entry.52, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@flexcop_pci_isr._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.36, ptr @.str.3, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c" end was reached: passing %d bytes \00", [60 x i8] zeroinitializer }, align 32
@flexcop_pci_isr._entry_ptr.57 = internal global ptr @flexcop_pci_isr._entry.55, section ".printk_index", align 4
@flexcop_pci_isr._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.36, ptr @.str.3, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" passing %d bytes \00", [45 x i8] zeroinitializer }, align 32
@flexcop_pci_isr._entry_ptr.60 = internal global ptr @flexcop_pci_isr._entry.58, section ".printk_index", align 4
@flexcop_pci_isr._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.36, ptr @.str.3, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@flexcop_pci_isr._entry_ptr.63 = internal global ptr @flexcop_pci_isr._entry.61, section ".printk_index", align 4
@flexcop_pci_isr._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.36, ptr @.str.3, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"isr for flexcop called, apparently without reason (%08x)\0A\00", [38 x i8] zeroinitializer }, align 32
@flexcop_pci_isr._entry_ptr.66 = internal global ptr @flexcop_pci_isr._entry.64, section ".printk_index", align 4
@flexcop_pci_irq_check_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no IRQ since the last check\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"flexcop_pci_irq_check_work\00", [37 x i8] zeroinitializer }, align 32
@flexcop_pci_irq_check_work._entry_ptr = internal global ptr @flexcop_pci_irq_check_work._entry, section ".printk_index", align 4
@flexcop_pci_irq_check_work._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.3, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"flexcop-pci: stream problem, resetting pid filter\0A\00", [45 x i8] zeroinitializer }, align 32
@flexcop_pci_irq_check_work._entry_ptr.71 = internal global ptr @flexcop_pci_irq_check_work._entry.69, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.72 = private unnamed_addr constant [21 x i8] c"enable_pid_filtering\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 11, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant [13 x i8] c"irq_chk_intv\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 16, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 35, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant [19 x i8] c"flexcop_pci_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 429, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 436, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"flexcop_pci_tbl\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 422, i32 35 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 351, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 366, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 368, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 388, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [9 x i8] c"lastrreg\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 74, i32 32 }
@___asan_gen_.129 = private unnamed_addr constant [9 x i8] c"lastrval\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 74, i32 42 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 85, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [9 x i8] c"lastwreg\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 74, i32 12 }
@___asan_gen_.144 = private unnamed_addr constant [9 x i8] c"lastwval\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 74, i32 22 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 98, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 244, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 248, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 252, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 256, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 297, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 303, i32 47 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 309, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 315, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 159, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 161, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 163, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 165, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 168, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 180, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 191, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 201, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 213, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 220, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 225, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 114, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.289 = private constant [40 x i8] c"../drivers/media/pci/b2c2/flexcop-pci.c\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 117, i32 5 }
@llvm.compiler.used = appending global [113 x ptr] [ptr @__UNIQUE_ID_author390, ptr @__UNIQUE_ID_debug388, ptr @__UNIQUE_ID_debugtype387, ptr @__UNIQUE_ID_description391, ptr @__UNIQUE_ID_enable_pid_filtering384, ptr @__UNIQUE_ID_enable_pid_filteringtype383, ptr @__UNIQUE_ID_file392, ptr @__UNIQUE_ID_irq_chk_intv386, ptr @__UNIQUE_ID_irq_chk_intvtype385, ptr @__UNIQUE_ID_license393, ptr @__exitcall_flexcop_pci_driver_exit, ptr @__initcall__kmod_b2c2_flexcop_pci__389_436_flexcop_pci_driver_init6, ptr @__param_debug, ptr @__param_enable_pid_filtering, ptr @__param_irq_chk_intv, ptr @flexcop_pci_driver_exit, ptr @flexcop_pci_init._entry, ptr @flexcop_pci_init._entry.31, ptr @flexcop_pci_init._entry_ptr, ptr @flexcop_pci_init._entry_ptr.33, ptr @flexcop_pci_irq_check_work._entry, ptr @flexcop_pci_irq_check_work._entry.69, ptr @flexcop_pci_irq_check_work._entry_ptr, ptr @flexcop_pci_irq_check_work._entry_ptr.71, ptr @flexcop_pci_isr._entry, ptr @flexcop_pci_isr._entry.37, ptr @flexcop_pci_isr._entry.40, ptr @flexcop_pci_isr._entry.43, ptr @flexcop_pci_isr._entry.46, ptr @flexcop_pci_isr._entry.49, ptr @flexcop_pci_isr._entry.52, ptr @flexcop_pci_isr._entry.55, ptr @flexcop_pci_isr._entry.58, ptr @flexcop_pci_isr._entry.61, ptr @flexcop_pci_isr._entry.64, ptr @flexcop_pci_isr._entry_ptr, ptr @flexcop_pci_isr._entry_ptr.39, ptr @flexcop_pci_isr._entry_ptr.42, ptr @flexcop_pci_isr._entry_ptr.45, ptr @flexcop_pci_isr._entry_ptr.48, ptr @flexcop_pci_isr._entry_ptr.51, ptr @flexcop_pci_isr._entry_ptr.54, ptr @flexcop_pci_isr._entry_ptr.57, ptr @flexcop_pci_isr._entry_ptr.60, ptr @flexcop_pci_isr._entry_ptr.63, ptr @flexcop_pci_isr._entry_ptr.66, ptr @flexcop_pci_probe._entry, ptr @flexcop_pci_probe._entry.4, ptr @flexcop_pci_probe._entry.7, ptr @flexcop_pci_probe._entry_ptr, ptr @flexcop_pci_probe._entry_ptr.6, ptr @flexcop_pci_probe._entry_ptr.9, ptr @flexcop_pci_read_ibi_reg._entry, ptr @flexcop_pci_read_ibi_reg._entry_ptr, ptr @flexcop_pci_stream_control._entry, ptr @flexcop_pci_stream_control._entry.19, ptr @flexcop_pci_stream_control._entry.22, ptr @flexcop_pci_stream_control._entry.25, ptr @flexcop_pci_stream_control._entry_ptr, ptr @flexcop_pci_stream_control._entry_ptr.21, ptr @flexcop_pci_stream_control._entry_ptr.24, ptr @flexcop_pci_stream_control._entry_ptr.27, ptr @flexcop_pci_write_ibi_reg._entry, ptr @flexcop_pci_write_ibi_reg._entry_ptr, ptr @enable_pid_filtering, ptr @irq_chk_intv, ptr @debug, ptr @flexcop_pci_driver, ptr @.str, ptr @flexcop_pci_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @flexcop_pci_probe.__key, ptr @.str.10, ptr @flexcop_pci_probe.__key.11, ptr @.str.12, ptr @lastrreg, ptr @lastrval, ptr @.str.13, ptr @.str.14, ptr @lastwreg, ptr @lastwval, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @flexcop_pci_init.__key, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.70], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_pid_filtering to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_chk_intv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lastrreg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lastrval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_read_ibi_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lastwreg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lastwval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_write_ibi_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_stream_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_stream_control._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_stream_control._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_stream_control._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_isr._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_isr._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_isr._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_isr._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_isr._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_isr._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_isr._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_isr._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_isr._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_isr._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_irq_check_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pci_irq_check_work._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcop_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @flexcop_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @flexcop_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @flexcop_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcop_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @flexcop_device_kmalloc(i32 noundef 236) #6
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus_specific = getelementptr inbounds %struct.flexcop_device, ptr %call, i32 0, i32 27
  %0 = ptrtoint ptr %bus_specific to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_specific, align 8
  %fc_dev = getelementptr inbounds %struct.flexcop_pci, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %fc_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %fc_dev, align 4
  %read_ibi_reg = getelementptr inbounds %struct.flexcop_device, ptr %call, i32 0, i32 22
  %3 = ptrtoint ptr %read_ibi_reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @flexcop_pci_read_ibi_reg, ptr %read_ibi_reg, align 4
  %write_ibi_reg = getelementptr inbounds %struct.flexcop_device, ptr %call, i32 0, i32 23
  %4 = ptrtoint ptr %write_ibi_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @flexcop_pci_write_ibi_reg, ptr %write_ibi_reg, align 8
  %i2c_request = getelementptr inbounds %struct.flexcop_device, ptr %call, i32 0, i32 24
  %5 = ptrtoint ptr %i2c_request to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @flexcop_i2c_request, ptr %i2c_request, align 4
  %get_mac_addr = getelementptr inbounds %struct.flexcop_device, ptr %call, i32 0, i32 26
  %6 = ptrtoint ptr %get_mac_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @flexcop_eeprom_check_mac_addr, ptr %get_mac_addr, align 4
  %stream_control = getelementptr inbounds %struct.flexcop_device, ptr %call, i32 0, i32 25
  %7 = ptrtoint ptr %stream_control to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @flexcop_pci_stream_control, ptr %stream_control, align 8
  %8 = load i32, ptr @enable_pid_filtering, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %.str.8..str.5 = select i1 %tobool.not, ptr @.str.8, ptr @.str.5
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.8..str.5) #9
  %9 = load i32, ptr @enable_pid_filtering, align 4
  %pid_filtering = getelementptr inbounds %struct.flexcop_device, ptr %call, i32 0, i32 19
  %10 = ptrtoint ptr %pid_filtering to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pid_filtering, align 8
  %bus_type = getelementptr inbounds %struct.flexcop_device, ptr %call, i32 0, i32 5
  %11 = ptrtoint ptr %bus_type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %bus_type, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %12 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %call, align 8
  %owner = getelementptr inbounds %struct.flexcop_device, ptr %call, i32 0, i32 16
  %13 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %owner, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pdev, ptr %1, align 4
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %15 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %revision.i, align 4
  %conv.i = zext i8 %16 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv.i) #9
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call2.i82 = tail call i32 @pci_enable_device(ptr noundef %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i82)
  %cmp.not.i = icmp eq i32 %call2.i82, 0
  br i1 %cmp.not.i, label %if.end.i83, label %if.end.err_kfree_crit_edge

if.end.err_kfree_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_kfree

if.end.i83:                                       ; preds = %if.end
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void @pci_set_master(ptr noundef %20) #6
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call6.i = tail call i32 @pci_request_regions(ptr noundef %22, ptr noundef nonnull @.str.30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.not.i = icmp eq i32 %call6.i, 0
  br i1 %cmp7.not.i, label %if.end10.i, label %if.end.i83.err_pci_disable_device.i_crit_edge

if.end.i83.err_pci_disable_device.i_crit_edge:    ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_pci_disable_device.i

if.end10.i:                                       ; preds = %if.end.i83
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call12.i = tail call ptr @pci_iomap(ptr noundef %24, i32 noundef 0, i32 noundef 2048) #6
  %io_mem.i = getelementptr inbounds %struct.flexcop_pci, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call12.i, ptr %io_mem.i, align 4
  %tobool.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool.not.i, label %do.end17.i, label %if.end20.i

do.end17.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #9
  br label %err_pci_release_regions.i

if.end20.i:                                       ; preds = %if.end10.i
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44, i32 8
  %28 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %1, ptr %driver_data.i.i.i, align 4
  %irq_lock.i = getelementptr inbounds %struct.flexcop_pci, ptr %1, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @flexcop_pci_init.__key, i16 noundef signext 3) #6
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 46
  %31 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq.i, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %32, ptr noundef nonnull @flexcop_pci_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.30, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp28.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp28.not.i, label %if.end19, label %err_pci_iounmap.i

err_pci_iounmap.i:                                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %35 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_mem.i, align 4
  tail call void @pci_iounmap(ptr noundef %34, ptr noundef %36) #6
  br label %err_pci_release_regions.i

err_pci_release_regions.i:                        ; preds = %err_pci_iounmap.i, %do.end17.i
  %ret.0.i = phi i32 [ %call.i.i, %err_pci_iounmap.i ], [ -5, %do.end17.i ]
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  tail call void @pci_release_regions(ptr noundef %38) #6
  br label %err_pci_disable_device.i

err_pci_disable_device.i:                         ; preds = %err_pci_release_regions.i, %if.end.i83.err_pci_disable_device.i_crit_edge
  %ret.1.i = phi i32 [ %call6.i, %if.end.i83.err_pci_disable_device.i_crit_edge ], [ %ret.0.i, %err_pci_release_regions.i ]
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  tail call void @pci_disable_device(ptr noundef %40) #6
  br label %err_kfree

if.end19:                                         ; preds = %if.end20.i
  %init_state.i = getelementptr inbounds %struct.flexcop_pci, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %init_state.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %init_state.i, align 4
  %or.i = or i32 %42, 1
  store i32 %or.i, ptr %init_state.i, align 4
  %call20 = tail call i32 @flexcop_device_initialize(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %if.end23, label %if.end19.err_pci_exit_crit_edge

if.end19.err_pci_exit_crit_edge:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_pci_exit

if.end23:                                         ; preds = %if.end19
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %dma.i = getelementptr inbounds %struct.flexcop_pci, ptr %1, i32 0, i32 4
  %call.i85 = tail call i32 @flexcop_dma_allocate(ptr noundef %44, ptr noundef %dma.i, i32 noundef 240640) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %cmp.not.i86 = icmp eq i32 %call.i85, 0
  br i1 %cmp.not.i86, label %if.end.i87, label %if.end23.err_fc_exit_crit_edge

if.end23.err_fc_exit_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_fc_exit

if.end.i87:                                       ; preds = %if.end23
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %arrayidx3.i = getelementptr %struct.flexcop_pci, ptr %1, i32 0, i32 4, i32 1
  %call4.i = tail call i32 @flexcop_dma_allocate(ptr noundef %46, ptr noundef %arrayidx3.i, i32 noundef 1880) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp5.not.i, label %do.body29, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @flexcop_dma_free(ptr noundef %dma.i) #6
  br label %err_fc_exit

do.body29:                                        ; preds = %if.end.i87
  %47 = ptrtoint ptr %fc_dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fc_dev, align 4
  %call10.i = tail call i32 @flexcop_sram_set_dest(ptr noundef %48, i32 noundef 9, i32 noundef 1) #6
  %49 = ptrtoint ptr %fc_dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fc_dev, align 4
  %call12.i88 = tail call i32 @flexcop_sram_set_dest(ptr noundef %50, i32 noundef 6, i32 noundef 2) #6
  %51 = ptrtoint ptr %init_state.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %init_state.i, align 4
  %or.i90 = or i32 %52, 2
  store i32 %or.i90, ptr %init_state.i, align 4
  %irq_check_work = getelementptr inbounds %struct.flexcop_pci, ptr %1, i32 0, i32 12
  tail call void @__init_work(ptr noundef %irq_check_work, i32 noundef 0) #6
  %53 = ptrtoint ptr %irq_check_work to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -64, ptr %irq_check_work, align 4
  %lockdep_map = getelementptr inbounds %struct.flexcop_pci, ptr %1, i32 0, i32 12, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @flexcop_pci_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry36 = getelementptr inbounds %struct.flexcop_pci, ptr %1, i32 0, i32 12, i32 0, i32 1
  %54 = ptrtoint ptr %entry36 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %entry36, ptr %entry36, align 4
  %prev.i = getelementptr inbounds %struct.flexcop_pci, ptr %1, i32 0, i32 12, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %entry36, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.flexcop_pci, ptr %1, i32 0, i32 12, i32 0, i32 2
  %56 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @flexcop_pci_irq_check_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.flexcop_pci, ptr %1, i32 0, i32 12, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.12, ptr noundef nonnull @flexcop_pci_probe.__key.11) #6
  %57 = load i32, ptr @irq_chk_intv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp47 = icmp sgt i32 %57, 0
  br i1 %cmp47, label %if.else.i, label %do.body29.cleanup_crit_edge

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.i:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  %58 = tail call i32 @llvm.umax.i32(i32 %57, i32 100)
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %58) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %59 = load ptr, ptr @system_wq, align 4
  %call.i.i92 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %59, ptr noundef %irq_check_work, i32 noundef %call2.i) #6
  br label %cleanup

err_fc_exit:                                      ; preds = %if.then6.i, %if.end23.err_fc_exit_crit_edge
  %retval.0.i91.ph = phi i32 [ %call.i85, %if.end23.err_fc_exit_crit_edge ], [ %call4.i, %if.then6.i ]
  tail call void @flexcop_device_exit(ptr noundef nonnull %call) #6
  br label %err_pci_exit

err_pci_exit:                                     ; preds = %err_fc_exit, %if.end19.err_pci_exit_crit_edge
  %ret.0 = phi i32 [ %call20, %if.end19.err_pci_exit_crit_edge ], [ %retval.0.i91.ph, %err_fc_exit ]
  %60 = ptrtoint ptr %init_state.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %init_state.i, align 4
  %and.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i94 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i94, label %err_pci_exit.flexcop_pci_exit.exit_crit_edge, label %if.then.i

err_pci_exit.flexcop_pci_exit.exit_crit_edge:     ; preds = %err_pci_exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %flexcop_pci_exit.exit

if.then.i:                                        ; preds = %err_pci_exit
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %irq.i95 = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 46
  %64 = ptrtoint ptr %irq.i95 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq.i95, align 4
  %call.i96 = tail call ptr @free_irq(i32 noundef %65, ptr noundef %1) #6
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %68 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %io_mem.i, align 4
  tail call void @pci_iounmap(ptr noundef %67, ptr noundef %69) #6
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  tail call void @pci_release_regions(ptr noundef %71) #6
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  tail call void @pci_disable_device(ptr noundef %73) #6
  br label %flexcop_pci_exit.exit

flexcop_pci_exit.exit:                            ; preds = %if.then.i, %err_pci_exit.flexcop_pci_exit.exit_crit_edge
  %74 = ptrtoint ptr %init_state.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %init_state.i, align 4
  %and5.i = and i32 %75, -2
  store i32 %and5.i, ptr %init_state.i, align 4
  br label %err_kfree

err_kfree:                                        ; preds = %flexcop_pci_exit.exit, %err_pci_disable_device.i, %if.end.err_kfree_crit_edge
  %ret.1 = phi i32 [ %ret.0, %flexcop_pci_exit.exit ], [ %call2.i82, %if.end.err_kfree_crit_edge ], [ %ret.1.i, %err_pci_disable_device.i ]
  tail call void @flexcop_device_kfree(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %err_kfree, %if.else.i, %do.body29.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %ret.1, %err_kfree ], [ 0, %if.else.i ], [ 0, %do.body29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flexcop_pci_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @irq_chk_intv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %irq_check_work = getelementptr inbounds %struct.flexcop_pci, ptr %1, i32 0, i32 12
  %call1 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %irq_check_work) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %init_state.i = getelementptr inbounds %struct.flexcop_pci, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %init_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %init_state.i, align 4
  %and.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.flexcop_pci_dma_exit.exit_crit_edge, label %if.then.i

if.end.flexcop_pci_dma_exit.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %flexcop_pci_dma_exit.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dma.i = getelementptr inbounds %struct.flexcop_pci, ptr %1, i32 0, i32 4
  tail call void @flexcop_dma_free(ptr noundef %dma.i) #6
  %arrayidx2.i = getelementptr %struct.flexcop_pci, ptr %1, i32 0, i32 4, i32 1
  tail call void @flexcop_dma_free(ptr noundef %arrayidx2.i) #6
  br label %flexcop_pci_dma_exit.exit

flexcop_pci_dma_exit.exit:                        ; preds = %if.then.i, %if.end.flexcop_pci_dma_exit.exit_crit_edge
  %5 = ptrtoint ptr %init_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %init_state.i, align 4
  %and4.i = and i32 %6, -3
  store i32 %and4.i, ptr %init_state.i, align 4
  %fc_dev = getelementptr inbounds %struct.flexcop_pci, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %fc_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fc_dev, align 4
  tail call void @flexcop_device_exit(ptr noundef %8) #6
  %9 = ptrtoint ptr %init_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %init_state.i, align 4
  %and.i8 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8)
  %tobool.not.i9 = icmp eq i32 %and.i8, 0
  br i1 %tobool.not.i9, label %flexcop_pci_dma_exit.exit.flexcop_pci_exit.exit_crit_edge, label %if.then.i10

flexcop_pci_dma_exit.exit.flexcop_pci_exit.exit_crit_edge: ; preds = %flexcop_pci_dma_exit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %flexcop_pci_exit.exit

if.then.i10:                                      ; preds = %flexcop_pci_dma_exit.exit
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 46
  %13 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %14, ptr noundef %1) #6
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %io_mem.i = getelementptr inbounds %struct.flexcop_pci, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_mem.i, align 4
  tail call void @pci_iounmap(ptr noundef %16, ptr noundef %18) #6
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void @pci_release_regions(ptr noundef %20) #6
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  tail call void @pci_disable_device(ptr noundef %22) #6
  br label %flexcop_pci_exit.exit

flexcop_pci_exit.exit:                            ; preds = %if.then.i10, %flexcop_pci_dma_exit.exit.flexcop_pci_exit.exit_crit_edge
  %23 = ptrtoint ptr %init_state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %init_state.i, align 4
  %and5.i = and i32 %24, -2
  store i32 %and5.i, ptr %init_state.i, align 4
  %25 = ptrtoint ptr %fc_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fc_dev, align 4
  tail call void @flexcop_device_kfree(ptr noundef %26) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flexcop_device_kmalloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flexcop_pci_read_ibi_reg(ptr noalias nocapture sret(%union.flexcop_ibi_value) align 4 %agg.result, ptr nocapture noundef readonly %fc, i32 noundef %r) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_specific = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 27
  %0 = ptrtoint ptr %bus_specific to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_specific, align 8
  %2 = ptrtoint ptr %agg.result to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 -1, ptr %agg.result, align 4, !annotation !170
  %io_mem = getelementptr inbounds %struct.flexcop_pci, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io_mem, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %r
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !171
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !172
  %7 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %agg.result, align 4
  %8 = load i32, ptr @lastrreg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %r)
  %cmp.not = icmp eq i32 %8, %r
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %9 = load i32, ptr @lastrval, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %6)
  %cmp2.not = icmp eq i32 %9, %6
  br i1 %cmp2.not, label %lor.lhs.false.if.end9_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  store i32 %r, ptr @lastrreg, align 4
  store i32 %6, ptr @lastrval, align 4
  %10 = load i32, ptr @debug, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end9_crit_edge, label %do.end

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %r, i32 noundef %6) #9
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.then.if.end9_crit_edge, %lor.lhs.false.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcop_pci_write_ibi_reg(ptr nocapture noundef readonly %fc, i32 noundef %r, [2 x i32] %v.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %v.coerce.fca.0.extract = extractvalue [2 x i32] %v.coerce, 0
  %bus_specific = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 27
  %0 = ptrtoint ptr %bus_specific to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_specific, align 8
  %2 = load i32, ptr @lastwreg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %r)
  %cmp.not = icmp eq i32 %2, %r
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr @lastwval, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %v.coerce.fca.0.extract)
  %cmp1.not = icmp eq i32 %3, %v.coerce.fca.0.extract
  br i1 %cmp1.not, label %lor.lhs.false.do.body7_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false.do.body7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  store i32 %r, ptr @lastwreg, align 4
  store i32 %v.coerce.fca.0.extract, ptr @lastwval, align 4
  %4 = load i32, ptr @debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.do.body7_crit_edge, label %do.end

if.then.do.body7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %r, i32 noundef %v.coerce.fca.0.extract) #9
  br label %do.body7

do.body7:                                         ; preds = %do.end, %if.then.do.body7_crit_edge, %lor.lhs.false.do.body7_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !173
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %v.coerce.fca.0.extract)
  %io_mem = getelementptr inbounds %struct.flexcop_pci, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_mem, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %r
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #6, !srcloc !174
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flexcop_i2c_request(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flexcop_eeprom_check_mac_addr(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcop_pci_stream_control(ptr noundef %fc, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_specific = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 27
  %0 = ptrtoint ptr %bus_specific to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_specific, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %dma = getelementptr inbounds %struct.flexcop_pci, ptr %1, i32 0, i32 4
  %call = tail call i32 @flexcop_dma_config(ptr noundef %fc, ptr noundef %dma, i32 noundef 1) #6
  %arrayidx2 = getelementptr %struct.flexcop_pci, ptr %1, i32 0, i32 4, i32 1
  %call3 = tail call i32 @flexcop_dma_config(ptr noundef %fc, ptr noundef %arrayidx2, i32 noundef 2) #6
  %call4 = tail call i32 @flexcop_dma_config_timer(ptr noundef %fc, i32 noundef 1, i8 noundef zeroext 0) #6
  %call5 = tail call i32 @flexcop_dma_xfer_control(ptr noundef %fc, i32 noundef 1, i32 noundef 3, i32 noundef 1) #6
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then.do.end11_crit_edge, label %do.end

if.then.do.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #9
  br label %do.end11

do.end11:                                         ; preds = %do.end, %if.then.do.end11_crit_edge
  %last_dma1_cur_pos = getelementptr inbounds %struct.flexcop_pci, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %last_dma1_cur_pos to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %last_dma1_cur_pos, align 4
  %call12 = tail call i32 @flexcop_dma_control_timer_irq(ptr noundef %fc, i32 noundef 1, i32 noundef 1) #6
  %4 = load i32, ptr @debug, align 4
  %and14 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.end11.do.end24_crit_edge, label %do.end19

do.end11.do.end24_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

do.end19:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  br label %do.end24

do.end24:                                         ; preds = %do.end19, %do.end11.do.end24_crit_edge
  %count = getelementptr inbounds %struct.flexcop_pci, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  %count_prev = getelementptr inbounds %struct.flexcop_pci, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %count_prev to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %count_prev, align 4
  br label %if.end51

if.else:                                          ; preds = %entry
  %call25 = tail call i32 @flexcop_dma_control_timer_irq(ptr noundef %fc, i32 noundef 1, i32 noundef 0) #6
  %8 = load i32, ptr @debug, align 4
  %and27 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else.do.end37_crit_edge, label %do.end32

if.else.do.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end37

do.end32:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #9
  br label %do.end37

do.end37:                                         ; preds = %do.end32, %if.else.do.end37_crit_edge
  %call38 = tail call i32 @flexcop_dma_xfer_control(ptr noundef %fc, i32 noundef 1, i32 noundef 3, i32 noundef 0) #6
  %9 = load i32, ptr @debug, align 4
  %and40 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.end37.if.end51_crit_edge, label %do.end45

do.end37.if.end51_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

do.end45:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #9
  br label %if.end51

if.end51:                                         ; preds = %do.end45, %do.end37.if.end51_crit_edge, %do.end24
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flexcop_device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flexcop_pci_irq_check_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_dev = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %fc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fc_dev, align 4
  %feedcount = getelementptr inbounds %struct.flexcop_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %feedcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %feedcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.else.i_crit_edge, label %if.then

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then:                                          ; preds = %entry
  %count = getelementptr i8, ptr %work, i32 -60
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  %count_prev = getelementptr i8, ptr %work, i32 -56
  %6 = ptrtoint ptr %count_prev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count_prev, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %if.then
  %8 = load i32, ptr @debug, align 4
  %and = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.do.end7_crit_edge, label %do.end

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #9
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %stream_problem = getelementptr i8, ptr %work, i32 -52
  %9 = ptrtoint ptr %stream_problem to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stream_problem, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %stream_problem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp8 = icmp eq i32 %10, 3
  br i1 %cmp8, label %if.then9, label %do.end7.if.else.i_crit_edge

do.end7.if.else.i_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then9:                                         ; preds = %do.end7
  %11 = load i32, ptr @debug, align 4
  %and11 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then9.do.end21_crit_edge, label %do.end16

if.then9.do.end21_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

do.end16:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #9
  br label %do.end21

do.end21:                                         ; preds = %do.end16, %if.then9.do.end21_crit_edge
  %lock = getelementptr inbounds %struct.flexcop_device, ptr %1, i32 0, i32 9, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %feed_list = getelementptr inbounds %struct.flexcop_device, ptr %1, i32 0, i32 9, i32 15
  %12 = ptrtoint ptr %feed_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn90 = load ptr, ptr %feed_list, align 8
  %cmp28.not91 = icmp eq ptr %.pn90, %feed_list
  br i1 %cmp28.not91, label %do.end21.for.cond41.preheader_crit_edge, label %do.end21.for.body_crit_edge

do.end21.for.body_crit_edge:                      ; preds = %do.end21
  br label %for.body

do.end21.for.cond41.preheader_crit_edge:          ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond41.preheader

for.cond41.preheader:                             ; preds = %for.body.for.cond41.preheader_crit_edge, %do.end21.for.cond41.preheader_crit_edge
  %13 = ptrtoint ptr %feed_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn8993 = load ptr, ptr %feed_list, align 8
  %cmp45.not94 = icmp eq ptr %.pn8993, %feed_list
  br i1 %cmp45.not94, label %for.cond41.preheader.for.end55_crit_edge, label %for.cond41.preheader.for.body47_crit_edge

for.cond41.preheader.for.body47_crit_edge:        ; preds = %for.cond41.preheader
  br label %for.body47

for.cond41.preheader.for.end55_crit_edge:         ; preds = %for.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end55

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end21.for.body_crit_edge
  %.pn92 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn90, %do.end21.for.body_crit_edge ]
  %feed.0 = getelementptr i8, ptr %.pn92, i32 -4392
  %call29 = tail call i32 @flexcop_pid_feed_control(ptr noundef %1, ptr noundef %feed.0, i32 noundef 0) #6
  %14 = ptrtoint ptr %.pn92 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn92, align 8
  %cmp28.not = icmp eq ptr %.pn, %feed_list
  br i1 %cmp28.not, label %for.body.for.cond41.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.cond41.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond41.preheader

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %for.cond41.preheader.for.body47_crit_edge
  %.pn8995 = phi ptr [ %.pn89, %for.body47.for.body47_crit_edge ], [ %.pn8993, %for.cond41.preheader.for.body47_crit_edge ]
  %feed.1 = getelementptr i8, ptr %.pn8995, i32 -4392
  %call48 = tail call i32 @flexcop_pid_feed_control(ptr noundef %1, ptr noundef %feed.1, i32 noundef 1) #6
  %15 = ptrtoint ptr %.pn8995 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn89 = load ptr, ptr %.pn8995, align 8
  %cmp45.not = icmp eq ptr %.pn89, %feed_list
  br i1 %cmp45.not, label %for.body47.for.end55_crit_edge, label %for.body47.for.body47_crit_edge

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body47

for.body47.for.end55_crit_edge:                   ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end55

for.end55:                                        ; preds = %for.body47.for.end55_crit_edge, %for.cond41.preheader.for.end55_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  %16 = ptrtoint ptr %stream_problem to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %stream_problem, align 4
  br label %if.else.i

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %stream_problem60 = getelementptr i8, ptr %work, i32 -52
  %17 = ptrtoint ptr %stream_problem60 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %stream_problem60, align 4
  %18 = ptrtoint ptr %count_prev to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %5, ptr %count_prev, align 4
  br label %if.else.i

if.else.i:                                        ; preds = %if.else, %for.end55, %do.end7.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %19 = load i32, ptr @irq_chk_intv, align 4
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 100)
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %20) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %21 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %work, i32 noundef %call2.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flexcop_device_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flexcop_device_kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flexcop_dma_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flexcop_dma_config_timer(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flexcop_dma_xfer_control(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flexcop_dma_control_timer_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcop_pci_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %tmp5 = alloca %union.flexcop_ibi_value, align 4
  %tmp134 = alloca %union.flexcop_ibi_value, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_dev = getelementptr inbounds %struct.flexcop_pci, ptr %dev_id, i32 0, i32 13
  %0 = ptrtoint ptr %fc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fc_dev, align 4
  %irq_lock = getelementptr inbounds %struct.flexcop_pci, ptr %dev_id, i32 0, i32 10
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp5) #6
  %read_ibi_reg = getelementptr inbounds %struct.flexcop_device, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %read_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_ibi_reg, align 4
  call void %3(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %tmp5, ptr noundef %1, i32 noundef 524) #6
  %4 = ptrtoint ptr %tmp5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %v.sroa.0.0.copyload269 = load i32, ptr %tmp5, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp5) #6
  %5 = and i32 %v.sroa.0.0.copyload269, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %do.body6

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.body6:                                         ; preds = %entry
  %6 = load i32, ptr @debug, align 4
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body6.if.end16_crit_edge, label %do.end11

do.body6.if.end16_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end11:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #9
  br label %if.end16

if.end16:                                         ; preds = %do.end11, %do.body6.if.end16_crit_edge, %entry.if.end16_crit_edge
  %7 = and i32 %v.sroa.0.0.copyload269, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool20.not = icmp eq i32 %7, 0
  br i1 %tobool20.not, label %if.end16.if.end34_crit_edge, label %do.body22

if.end16.if.end34_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

do.body22:                                        ; preds = %if.end16
  %8 = load i32, ptr @debug, align 4
  %and23 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body22.if.end34_crit_edge, label %do.end28

do.body22.if.end34_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

do.end28:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #9
  br label %if.end34

if.end34:                                         ; preds = %do.end28, %do.body22.if.end34_crit_edge, %if.end16.if.end34_crit_edge
  %9 = and i32 %v.sroa.0.0.copyload269, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool38.not = icmp eq i32 %9, 0
  br i1 %tobool38.not, label %if.end34.if.end52_crit_edge, label %do.body40

if.end34.if.end52_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

do.body40:                                        ; preds = %if.end34
  %10 = load i32, ptr @debug, align 4
  %and41 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %do.body40.if.end52_crit_edge, label %do.end46

do.body40.if.end52_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

do.end46:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  br label %if.end52

if.end52:                                         ; preds = %do.end46, %do.body40.if.end52_crit_edge, %if.end34.if.end52_crit_edge
  %11 = and i32 %v.sroa.0.0.copyload269, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool56.not = icmp eq i32 %11, 0
  br i1 %tobool56.not, label %if.end52.if.end70_crit_edge, label %do.body58

if.end52.if.end70_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

do.body58:                                        ; preds = %if.end52
  %12 = load i32, ptr @debug, align 4
  %and59 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %do.body58.if.end70_crit_edge, label %do.end64

do.body58.if.end70_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

do.end64:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #8
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #9
  br label %if.end70

if.end70:                                         ; preds = %do.end64, %do.body58.if.end70_crit_edge, %if.end52.if.end70_crit_edge
  %count = getelementptr inbounds %struct.flexcop_pci, ptr %dev_id, i32 0, i32 7
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count, align 4
  %rem = srem i32 %14, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp71 = icmp eq i32 %rem, 0
  br i1 %cmp71, label %do.body74, label %if.end70.if.end87_crit_edge

if.end70.if.end87_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

do.body74:                                        ; preds = %if.end70
  %15 = load i32, ptr @debug, align 4
  %and75 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %do.body74.if.end87_crit_edge, label %do.end80

do.body74.if.end87_crit_edge:                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

do.end80:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #8
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %14) #9
  br label %if.end87

if.end87:                                         ; preds = %do.end80, %do.body74.if.end87_crit_edge, %if.end70.if.end87_crit_edge
  %bf.clear89 = and i32 %v.sroa.0.0.copyload269, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear89)
  %cmp90.not = icmp eq i32 %bf.clear89, 0
  br i1 %cmp90.not, label %if.else126, label %if.then92

if.then92:                                        ; preds = %if.end87
  %active_dma1_addr = getelementptr inbounds %struct.flexcop_pci, ptr %dev_id, i32 0, i32 5
  %16 = ptrtoint ptr %active_dma1_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %active_dma1_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp93 = icmp eq i32 %17, 0
  %18 = ptrtoint ptr %fc_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fc_dev, align 4
  %cpu_addr0 = getelementptr inbounds %struct.flexcop_pci, ptr %dev_id, i32 0, i32 4, i32 0, i32 1
  %cpu_addr1 = getelementptr inbounds %struct.flexcop_pci, ptr %dev_id, i32 0, i32 4, i32 0, i32 3
  %cpu_addr0.sink = select i1 %cmp93, ptr %cpu_addr0, ptr %cpu_addr1
  %20 = ptrtoint ptr %cpu_addr0.sink to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cpu_addr0.sink, align 4
  %size = getelementptr inbounds %struct.flexcop_pci, ptr %dev_id, i32 0, i32 4, i32 0, i32 5
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size, align 4
  %div = udiv i32 %23, 188
  call void @flexcop_pass_dmx_packets(ptr noundef %19, ptr noundef %21, i32 noundef %div) #6
  %24 = load i32, ptr @debug, align 4
  %and108 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.then92.do.end120_crit_edge, label %do.end113

if.then92.do.end120_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end120

do.end113:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %active_dma1_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %active_dma1_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool116.not = icmp eq i32 %26, 0
  %lnot.ext = zext i1 %tobool116.not to i32
  %call117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %lnot.ext) #9
  br label %do.end120

do.end120:                                        ; preds = %do.end113, %if.then92.do.end120_crit_edge
  %27 = ptrtoint ptr %active_dma1_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %active_dma1_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool122.not = icmp eq i32 %28, 0
  %lnot.ext124 = zext i1 %tobool122.not to i32
  %29 = ptrtoint ptr %active_dma1_addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %lnot.ext124, ptr %active_dma1_addr, align 4
  br label %cleanup256

if.else126:                                       ; preds = %if.end87
  %30 = and i32 %v.sroa.0.0.copyload269, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp130.not = icmp eq i32 %30, 0
  br i1 %cmp130.not, label %do.body241, label %if.then132

if.then132:                                       ; preds = %if.else126
  %31 = ptrtoint ptr %read_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read_ibi_reg, align 4
  call void %32(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %tmp134, ptr noundef %1, i32 noundef 8) #6
  %33 = ptrtoint ptr %tmp134 to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load135 = load i32, ptr %tmp134, align 4
  %bf.lshr136 = and i32 %bf.load135, -4
  %dma_addr0 = getelementptr inbounds %struct.flexcop_pci, ptr %dev_id, i32 0, i32 4, i32 0, i32 2
  %34 = ptrtoint ptr %dma_addr0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_addr0, align 4
  %sub = sub i32 %bf.lshr136, %35
  %size141 = getelementptr inbounds %struct.flexcop_pci, ptr %dev_id, i32 0, i32 4, i32 0, i32 5
  %36 = ptrtoint ptr %size141 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size141, align 4
  %mul = shl i32 %37, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %mul)
  %cmp142 = icmp ugt i32 %sub, %mul
  br i1 %cmp142, label %if.then132.cleanup256_crit_edge, label %do.body146

if.then132.cleanup256_crit_edge:                  ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup256

do.body146:                                       ; preds = %if.then132
  %38 = load i32, ptr @debug, align 4
  %and147 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %do.body146.do.end160_crit_edge, label %do.end152

do.body146.do.end160_crit_edge:                   ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end160

do.end152:                                        ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %last_irq = getelementptr inbounds %struct.flexcop_pci, ptr %dev_id, i32 0, i32 11
  %40 = ptrtoint ptr %last_irq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %last_irq, align 4
  %sub154 = sub i32 %39, %41
  %call155 = call i32 @jiffies_to_usecs(i32 noundef %sub154) #6
  %conv156 = zext i32 %bf.lshr136 to i64
  %last_dma1_cur_pos = getelementptr inbounds %struct.flexcop_pci, ptr %dev_id, i32 0, i32 6
  %42 = ptrtoint ptr %last_dma1_cur_pos to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %last_dma1_cur_pos, align 4
  %call157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %call155, i32 noundef %v.sroa.0.0.copyload269, i64 noundef %conv156, i32 noundef %sub, i32 noundef %43) #9
  br label %do.end160

do.end160:                                        ; preds = %do.end152, %do.body146.do.end160_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %last_irq161 = getelementptr inbounds %struct.flexcop_pci, ptr %dev_id, i32 0, i32 11
  %45 = ptrtoint ptr %last_irq161 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %last_irq161, align 4
  %last_dma1_cur_pos162 = getelementptr inbounds %struct.flexcop_pci, ptr %dev_id, i32 0, i32 6
  %46 = ptrtoint ptr %last_dma1_cur_pos162 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %last_dma1_cur_pos162, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %47)
  %cmp163 = icmp ult i32 %sub, %47
  br i1 %cmp163, label %do.body166, label %do.end160.if.end197_crit_edge

do.end160.if.end197_crit_edge:                    ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end197

do.body166:                                       ; preds = %do.end160
  %48 = load i32, ptr @debug, align 4
  %and167 = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %do.body166.do.end184_crit_edge, label %do.end172

do.body166.do.end184_crit_edge:                   ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end184

do.end172:                                        ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %size141 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size141, align 4
  %mul177 = shl i32 %50, 1
  %51 = xor i32 %47, -1
  %sub180 = add i32 %mul177, %51
  %call181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %sub180) #9
  br label %do.end184

do.end184:                                        ; preds = %do.end172, %do.body166.do.end184_crit_edge
  %52 = ptrtoint ptr %fc_dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fc_dev, align 4
  %cpu_addr0188 = getelementptr inbounds %struct.flexcop_pci, ptr %dev_id, i32 0, i32 4, i32 0, i32 1
  %54 = ptrtoint ptr %cpu_addr0188 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cpu_addr0188, align 4
  %56 = ptrtoint ptr %last_dma1_cur_pos162 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %last_dma1_cur_pos162, align 4
  %add.ptr = getelementptr i8, ptr %55, i32 %57
  %58 = ptrtoint ptr %size141 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size141, align 4
  %mul193 = shl i32 %59, 1
  %sub195 = sub i32 %mul193, %57
  call void @flexcop_pass_dmx_data(ptr noundef %53, ptr noundef %add.ptr, i32 noundef %sub195) #6
  %60 = ptrtoint ptr %last_dma1_cur_pos162 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %last_dma1_cur_pos162, align 4
  br label %if.end197

if.end197:                                        ; preds = %do.end184, %do.end160.if.end197_crit_edge
  %61 = ptrtoint ptr %last_dma1_cur_pos162 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %last_dma1_cur_pos162, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %62)
  %cmp199 = icmp ugt i32 %sub, %62
  br i1 %cmp199, label %do.body202, label %if.end197.do.body225_crit_edge

if.end197.do.body225_crit_edge:                   ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body225

do.body202:                                       ; preds = %if.end197
  %63 = load i32, ptr @debug, align 4
  %and203 = and i32 %63, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203)
  %tobool204.not = icmp eq i32 %and203, 0
  br i1 %tobool204.not, label %do.body202.do.end215_crit_edge, label %do.end208

do.body202.do.end215_crit_edge:                   ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end215

do.end208:                                        ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #8
  %sub211 = sub i32 %sub, %62
  %call212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %sub211) #9
  br label %do.end215

do.end215:                                        ; preds = %do.end208, %do.body202.do.end215_crit_edge
  %64 = ptrtoint ptr %fc_dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fc_dev, align 4
  %cpu_addr0219 = getelementptr inbounds %struct.flexcop_pci, ptr %dev_id, i32 0, i32 4, i32 0, i32 1
  %66 = ptrtoint ptr %cpu_addr0219 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cpu_addr0219, align 4
  %68 = ptrtoint ptr %last_dma1_cur_pos162 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %last_dma1_cur_pos162, align 4
  %add.ptr221 = getelementptr i8, ptr %67, i32 %69
  %sub223 = sub i32 %sub, %69
  call void @flexcop_pass_dmx_data(ptr noundef %65, ptr noundef %add.ptr221, i32 noundef %sub223) #6
  br label %do.body225

do.body225:                                       ; preds = %do.end215, %if.end197.do.body225_crit_edge
  %70 = load i32, ptr @debug, align 4
  %and226 = and i32 %70, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and226)
  %tobool227.not = icmp eq i32 %and226, 0
  br i1 %tobool227.not, label %do.body225.do.end236_crit_edge, label %do.end231

do.body225.do.end236_crit_edge:                   ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end236

do.end231:                                        ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #8
  %call233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #9
  br label %do.end236

do.end236:                                        ; preds = %do.end231, %do.body225.do.end236_crit_edge
  %71 = ptrtoint ptr %last_dma1_cur_pos162 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %sub, ptr %last_dma1_cur_pos162, align 4
  %72 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %count, align 4
  %inc = add i32 %73, 1
  store i32 %inc, ptr %count, align 4
  br label %cleanup256

do.body241:                                       ; preds = %if.else126
  %74 = load i32, ptr @debug, align 4
  %and242 = and i32 %74, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and242)
  %tobool243.not = icmp eq i32 %and242, 0
  br i1 %tobool243.not, label %do.body241.cleanup256_crit_edge, label %do.end247

do.body241.cleanup256_crit_edge:                  ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup256

do.end247:                                        ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #8
  %call249 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %v.sroa.0.0.copyload269) #9
  br label %cleanup256

cleanup256:                                       ; preds = %do.end247, %do.body241.cleanup256_crit_edge, %do.end236, %if.then132.cleanup256_crit_edge, %do.end120
  %ret.0 = phi i32 [ 1, %do.end120 ], [ 0, %do.end247 ], [ 0, %do.body241.cleanup256_crit_edge ], [ 1, %if.then132.cleanup256_crit_edge ], [ 1, %do.end236 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call2) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @flexcop_pass_dmx_packets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flexcop_pass_dmx_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flexcop_dma_allocate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flexcop_dma_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flexcop_sram_set_dest(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flexcop_pid_feed_control(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !25, !27, !28, !30, !31, !33, !34, !35, !37, !39, !41, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !67, !69, !70, !71, !72, !74, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !102, !103, !104, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !157, !159, !160}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @__param_enable_pid_filtering, !1, !"__param_enable_pid_filtering", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 12, i32 1}
!2 = !{ptr @__UNIQUE_ID_enable_pid_filteringtype383, !1, !"__UNIQUE_ID_enable_pid_filteringtype383", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_enable_pid_filtering384, !4, !"__UNIQUE_ID_enable_pid_filtering384", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 13, i32 1}
!5 = !{ptr @__param_irq_chk_intv, !6, !"__param_irq_chk_intv", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 17, i32 1}
!7 = !{ptr @__UNIQUE_ID_irq_chk_intvtype385, !6, !"__UNIQUE_ID_irq_chk_intvtype385", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_irq_chk_intv386, !9, !"__UNIQUE_ID_irq_chk_intv386", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 18, i32 1}
!10 = !{ptr @__param_debug, !11, !"__param_debug", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 36, i32 1}
!12 = !{ptr @__UNIQUE_ID_debugtype387, !11, !"__UNIQUE_ID_debugtype387", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_debug388, !14, !"__UNIQUE_ID_debug388", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 37, i32 1}
!15 = !{ptr @__initcall__kmod_b2c2_flexcop_pci__389_436_flexcop_pci_driver_init6, !16, !"__initcall__kmod_b2c2_flexcop_pci__389_436_flexcop_pci_driver_init6", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 436, i32 1}
!17 = !{ptr @__exitcall_flexcop_pci_driver_exit, !16, !"__exitcall_flexcop_pci_driver_exit", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_author390, !19, !"__UNIQUE_ID_author390", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 438, i32 1}
!20 = !{ptr @__UNIQUE_ID_description391, !21, !"__UNIQUE_ID_description391", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 439, i32 1}
!22 = !{ptr @__UNIQUE_ID_file392, !23, !"__UNIQUE_ID_file392", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 440, i32 1}
!24 = !{ptr @__UNIQUE_ID_license393, !23, !"__UNIQUE_ID_license393", i1 false, i1 false}
!25 = !{ptr @debug, !26, !"debug", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 35, i32 12}
!27 = !{ptr @__param_str_enable_pid_filtering, !1, !"__param_str_enable_pid_filtering", i1 false, i1 false}
!28 = !{ptr @enable_pid_filtering, !29, !"enable_pid_filtering", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 11, i32 12}
!30 = !{ptr @__param_str_irq_chk_intv, !6, !"__param_str_irq_chk_intv", i1 false, i1 false}
!31 = !{ptr @irq_chk_intv, !32, !"irq_chk_intv", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 16, i32 12}
!33 = !{ptr @__param_str_debug, !11, !"__param_str_debug", i1 false, i1 false}
!34 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @flexcop_pci_driver, !36, !"flexcop_pci_driver", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 429, i32 26}
!37 = !{ptr @flexcop_pci_tbl, !38, !"flexcop_pci_tbl", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 422, i32 35}
!39 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 351, i32 3}
!41 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @flexcop_pci_probe._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @flexcop_pci_probe._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.5, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 366, i32 3}
!47 = !{ptr @flexcop_pci_probe._entry.4, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @flexcop_pci_probe._entry_ptr.6, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.8, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 368, i32 3}
!51 = !{ptr @flexcop_pci_probe._entry.7, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @flexcop_pci_probe._entry_ptr.9, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @flexcop_pci_probe.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 388, i32 2}
!55 = !{ptr @.str.10, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @flexcop_pci_probe.__key.11, !54, !"__key", i1 false, i1 false}
!57 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.13, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 85, i32 3}
!60 = !{ptr @.str.14, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @flexcop_pci_read_ibi_reg._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @flexcop_pci_read_ibi_reg._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @lastrreg, !64, !"lastrreg", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 74, i32 32}
!65 = !{ptr @lastrval, !66, !"lastrval", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 74, i32 42}
!67 = !{ptr @.str.15, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 98, i32 3}
!69 = !{ptr @.str.16, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @flexcop_pci_write_ibi_reg._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @flexcop_pci_write_ibi_reg._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @lastwreg, !73, !"lastwreg", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 74, i32 12}
!74 = !{ptr @lastwval, !75, !"lastwval", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 74, i32 22}
!76 = !{ptr @.str.17, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 244, i32 3}
!78 = !{ptr @.str.18, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @flexcop_pci_stream_control._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @flexcop_pci_stream_control._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.20, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 248, i32 3}
!83 = !{ptr @flexcop_pci_stream_control._entry.19, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @flexcop_pci_stream_control._entry_ptr.21, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.23, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 252, i32 3}
!87 = !{ptr @flexcop_pci_stream_control._entry.22, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @flexcop_pci_stream_control._entry_ptr.24, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.26, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 256, i32 3}
!91 = !{ptr @flexcop_pci_stream_control._entry.25, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @flexcop_pci_stream_control._entry_ptr.27, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 297, i32 2}
!95 = !{ptr @.str.29, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @flexcop_pci_init._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @flexcop_pci_init._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 303, i32 47}
!100 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 309, i32 3}
!102 = !{ptr @flexcop_pci_init._entry.31, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @flexcop_pci_init._entry_ptr.33, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @flexcop_pci_init.__key, !105, !"__key", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 315, i32 2}
!106 = !{ptr @.str.34, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.35, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 159, i32 3}
!109 = !{ptr @.str.36, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @flexcop_pci_isr._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @flexcop_pci_isr._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 161, i32 3}
!114 = !{ptr @flexcop_pci_isr._entry.37, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @flexcop_pci_isr._entry_ptr.39, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.41, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 163, i32 3}
!118 = !{ptr @flexcop_pci_isr._entry.40, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @flexcop_pci_isr._entry_ptr.42, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.44, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 165, i32 3}
!122 = !{ptr @flexcop_pci_isr._entry.43, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @flexcop_pci_isr._entry_ptr.45, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.47, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 168, i32 3}
!126 = !{ptr @flexcop_pci_isr._entry.46, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @flexcop_pci_isr._entry_ptr.48, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 180, i32 3}
!130 = !{ptr @flexcop_pci_isr._entry.49, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @flexcop_pci_isr._entry_ptr.51, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.53, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 191, i32 3}
!134 = !{ptr @flexcop_pci_isr._entry.52, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @flexcop_pci_isr._entry_ptr.54, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 201, i32 4}
!138 = !{ptr @flexcop_pci_isr._entry.55, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @flexcop_pci_isr._entry_ptr.57, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 213, i32 4}
!142 = !{ptr @flexcop_pci_isr._entry.58, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @flexcop_pci_isr._entry_ptr.60, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 220, i32 3}
!146 = !{ptr @flexcop_pci_isr._entry.61, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @flexcop_pci_isr._entry_ptr.63, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.65, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 225, i32 3}
!150 = !{ptr @flexcop_pci_isr._entry.64, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @flexcop_pci_isr._entry_ptr.66, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.67, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 114, i32 4}
!154 = !{ptr @.str.68, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @flexcop_pci_irq_check_work._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @flexcop_pci_irq_check_work._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.70, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/pci/b2c2/flexcop-pci.c", i32 117, i32 5}
!159 = !{ptr @flexcop_pci_irq_check_work._entry.69, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @flexcop_pci_irq_check_work._entry_ptr.71, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{!"auto-init"}
!171 = !{i64 4214463}
!172 = !{i64 2158088941}
!173 = !{i64 2158092088}
!174 = !{i64 4214045}
