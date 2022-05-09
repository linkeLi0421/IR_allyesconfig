; ModuleID = '/llk/IR_all_yes/drivers/usb/typec/tcpm/tcpci_maxim.c_pt.bc'
source_filename = "../drivers/usb/typec/tcpm/tcpci_maxim.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.max_tcpci_chip = type { %struct.tcpci_data, ptr, ptr, ptr, ptr }
%struct.tcpci_data = type { ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.pd_message = type <{ i16, %union.anon.86 }>
%union.anon.86 = type { [7 x i32] }

@__initcall__kmod_tcpci_maxim__288_529_max_tcpci_i2c_driver_init6 = internal global ptr @max_tcpci_i2c_driver_init, section ".initcall6.init", align 4
@max_tcpci_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max_tcpci_probe, ptr @max_tcpci_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max_tcpci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max_tcpci_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max_tcpci_i2c_driver_exit = internal global ptr @max_tcpci_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [62 x i8] c"tcpci_maxim.author=Badhri Jagan Sridharan <badhri@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [86 x i8] c"tcpci_maxim.description=Maxim TCPCI based USB Type-C Port Controller Interface Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [52 x i8] c"tcpci_maxim.file=drivers/usb/typec/tcpm/tcpci_maxim\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [27 x i8] c"tcpci_maxim.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"maxtcpc\00", [24 x i8] zeroinitializer }, align 32
@max_tcpci_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max33359\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max_tcpci_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"maxtcpc\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max_tcpci_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max_tcpci_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 149, ptr @max_tcpci_tcpci_write_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"tcpci_maxim:453:(&max_tcpci_regmap_config)->lock\00", [47 x i8] zeroinitializer }, align 32
@max_tcpci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 455, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Regmap init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max_tcpci_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/usb/typec/tcpm/tcpci_maxim.c\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max_tcpci_probe._entry_ptr = internal global ptr @max_tcpci_probe._entry, section ".printk_index", align 4
@max_tcpci_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 479, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"TCPCI port registration failed\0A\00", [32 x i8] zeroinitializer }, align 32
@max_tcpci_probe._entry_ptr.9 = internal global ptr @max_tcpci_probe._entry.7, section ".printk_index", align 4
@max_tcpci_tcpci_write_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @max_tcpci_tcpci_range, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@max_tcpci_tcpci_range = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 149 }], [24 x i8] zeroinitializer }, align 32
@max_tcpci_set_vbus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 230, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Both source and sink set\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max_tcpci_set_vbus\00", [45 x i8] zeroinitializer }, align 32
@max_tcpci_set_vbus._entry_ptr = internal global ptr @max_tcpci_set_vbus._entry, section ".printk_index", align 4
@max_tcpci_set_partner_usb_comm_capable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 292, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to enable USB switches\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"max_tcpci_set_partner_usb_comm_capable\00", [57 x i8] zeroinitializer }, align 32
@max_tcpci_set_partner_usb_comm_capable._entry_ptr = internal global ptr @max_tcpci_set_partner_usb_comm_capable._entry, section ".printk_index", align 4
@max_tcpci_init_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 99, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error writing to TCPC_ALERT ret:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max_tcpci_init_regs\00", [44 x i8] zeroinitializer }, align 32
@max_tcpci_init_regs._entry_ptr = internal global ptr @max_tcpci_init_regs._entry, section ".printk_index", align 4
@max_tcpci_init_regs._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.4, i32 105, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error writing to TCPC_VENDOR_ALERT ret:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@max_tcpci_init_regs._entry_ptr.18 = internal global ptr @max_tcpci_init_regs._entry.16, section ".printk_index", align 4
@max_tcpci_init_regs._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.4, i32 111, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unable to clear TCPC_ALERT_EXTENDED ret:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@max_tcpci_init_regs._entry_ptr.21 = internal global ptr @max_tcpci_init_regs._entry.19, section ".printk_index", align 4
@max_tcpci_init_regs._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.4, i32 118, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Unable to unmask TCPC_EXTENDED_STATUS_VSAFE0V ret:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@max_tcpci_init_regs._entry_ptr.24 = internal global ptr @max_tcpci_init_regs._entry.22, section ".printk_index", align 4
@max_tcpci_init_regs._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.15, ptr @.str.4, i32 131, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Error enabling TCPC_ALERT: TCPC_ALERT_MASK write failed ret:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@max_tcpci_init_regs._entry_ptr.27 = internal global ptr @max_tcpci_init_regs._entry.25, section ".printk_index", align 4
@max_tcpci_init_regs._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.15, ptr @.str.4, i32 138, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error writing to TCPC_POWER_CTRL ret:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@max_tcpci_init_regs._entry_ptr.30 = internal global ptr @max_tcpci_init_regs._entry.28, section ".printk_index", align 4
@max_tcpci_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 382, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ALERT read failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max_tcpci_irq\00", [18 x i8] zeroinitializer }, align 32
@max_tcpci_irq._entry_ptr = internal global ptr @max_tcpci_irq._entry, section ".printk_index", align 4
@_max_tcpci_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 311, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ALERT clear failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_max_tcpci_irq\00", [17 x i8] zeroinitializer }, align 32
@_max_tcpci_irq._entry_ptr = internal global ptr @_max_tcpci_irq._entry, section ".printk_index", align 4
@_max_tcpci_irq._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 320, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@_max_tcpci_irq._entry_ptr.36 = internal global ptr @_max_tcpci_irq._entry.35, section ".printk_index", align 4
@_max_tcpci_irq._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.34, ptr @.str.4, i32 335, ptr @.str.39, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FRS Signal\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@_max_tcpci_irq._entry_ptr.40 = internal global ptr @_max_tcpci_irq._entry.37, section ".printk_index", align 4
@process_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 161, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TCPC_RX_BYTE_CNT read failed ret:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"process_rx\00", [21 x i8] zeroinitializer }, align 32
@process_rx._entry_ptr = internal global ptr @process_rx._entry, section ".printk_index", align 4
@process_rx._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.4, i32 171, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@process_rx._entry_ptr.45 = internal global ptr @process_rx._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"error: count is 0\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error frame_type is not SOP\00", [36 x i8] zeroinitializer }, align 32
@process_rx._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.42, ptr @.str.4, i32 176, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid TCPC_RX_BYTE_CNT %d\0A\00", [35 x i8] zeroinitializer }, align 32
@process_rx._entry_ptr.50 = internal global ptr @process_rx._entry.48, section ".printk_index", align 4
@process_rx._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.42, ptr @.str.4, i32 187, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error: TCPC_RX_BYTE_CNT read failed: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@process_rx._entry_ptr.53 = internal global ptr @process_rx._entry.51, section ".printk_index", align 4
@___asan_gen_.54 = private unnamed_addr constant [21 x i8] c"max_tcpci_i2c_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 520, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 522, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [19 x i8] c"max_tcpci_of_match\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 513, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant [13 x i8] c"max_tcpci_id\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 506, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [24 x i8] c"max_tcpci_regmap_config\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 60, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 453, i32 22 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 455, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 479, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [28 x i8] c"max_tcpci_tcpci_write_table\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 55, i32 41 }
@___asan_gen_.102 = private unnamed_addr constant [22 x i8] c"max_tcpci_tcpci_range\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 51, i32 34 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 230, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 292, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 99, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 105, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 111, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 118, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 130, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 138, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 382, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 311, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 320, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 335, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 161, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 170, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 176, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.223 = private constant [40 x i8] c"../drivers/usb/typec/tcpm/tcpci_maxim.c\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 187, i32 3 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_max_tcpci_i2c_driver_exit, ptr @__initcall__kmod_tcpci_maxim__288_529_max_tcpci_i2c_driver_init6, ptr @_max_tcpci_irq._entry, ptr @_max_tcpci_irq._entry.35, ptr @_max_tcpci_irq._entry.37, ptr @_max_tcpci_irq._entry_ptr, ptr @_max_tcpci_irq._entry_ptr.36, ptr @_max_tcpci_irq._entry_ptr.40, ptr @max_tcpci_i2c_driver_exit, ptr @max_tcpci_init_regs._entry, ptr @max_tcpci_init_regs._entry.16, ptr @max_tcpci_init_regs._entry.19, ptr @max_tcpci_init_regs._entry.22, ptr @max_tcpci_init_regs._entry.25, ptr @max_tcpci_init_regs._entry.28, ptr @max_tcpci_init_regs._entry_ptr, ptr @max_tcpci_init_regs._entry_ptr.18, ptr @max_tcpci_init_regs._entry_ptr.21, ptr @max_tcpci_init_regs._entry_ptr.24, ptr @max_tcpci_init_regs._entry_ptr.27, ptr @max_tcpci_init_regs._entry_ptr.30, ptr @max_tcpci_irq._entry, ptr @max_tcpci_irq._entry_ptr, ptr @max_tcpci_probe._entry, ptr @max_tcpci_probe._entry.7, ptr @max_tcpci_probe._entry_ptr, ptr @max_tcpci_probe._entry_ptr.9, ptr @max_tcpci_set_partner_usb_comm_capable._entry, ptr @max_tcpci_set_partner_usb_comm_capable._entry_ptr, ptr @max_tcpci_set_vbus._entry, ptr @max_tcpci_set_vbus._entry_ptr, ptr @process_rx._entry, ptr @process_rx._entry.43, ptr @process_rx._entry.48, ptr @process_rx._entry.51, ptr @process_rx._entry_ptr, ptr @process_rx._entry_ptr.45, ptr @process_rx._entry_ptr.50, ptr @process_rx._entry_ptr.53, ptr @max_tcpci_i2c_driver, ptr @.str, ptr @max_tcpci_of_match, ptr @max_tcpci_id, ptr @max_tcpci_probe._key, ptr @max_tcpci_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @max_tcpci_tcpci_write_table, ptr @max_tcpci_tcpci_range, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_tcpci_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_tcpci_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_tcpci_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_tcpci_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_tcpci_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_tcpci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_tcpci_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_tcpci_tcpci_write_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_tcpci_tcpci_range to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_tcpci_set_vbus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_tcpci_set_partner_usb_comm_capable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_tcpci_init_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_tcpci_init_regs._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_tcpci_init_regs._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_tcpci_init_regs._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_tcpci_init_regs._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_tcpci_init_regs._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_tcpci_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_max_tcpci_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_max_tcpci_irq._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_max_tcpci_irq._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_rx._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_rx._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_rx._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max_tcpci_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max_tcpci_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max_tcpci_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @max_tcpci_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_tcpci_probe(ptr noundef %client, ptr nocapture noundef readnone %i2c_id) #2 align 64 {
entry:
  %power_status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %power_status) #7
  %0 = ptrtoint ptr %power_status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %power_status, align 1, !annotation !120
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %client1 = getelementptr inbounds %struct.max_tcpci_chip, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %client1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %client, ptr %client1, align 4
  %call2 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @max_tcpci_regmap_config, ptr noundef nonnull @max_tcpci_probe._key, ptr noundef nonnull @.str.1) #7
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %dev13 = getelementptr inbounds %struct.max_tcpci_chip, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev13, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i91 = call i32 @regmap_raw_read(ptr noundef %call2, i32 noundef 30, ptr noundef nonnull %power_status, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %cmp = icmp slt i32 %call.i91, 0
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %set_vbus = getelementptr inbounds %struct.tcpci_data, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %set_vbus to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @max_tcpci_set_vbus, ptr %set_vbus, align 4
  %start_drp_toggling = getelementptr inbounds %struct.tcpci_data, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %start_drp_toggling to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @max_tcpci_start_toggling, ptr %start_drp_toggling, align 4
  %TX_BUF_BYTE_x_hidden = getelementptr inbounds %struct.tcpci_data, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %TX_BUF_BYTE_x_hidden to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %TX_BUF_BYTE_x_hidden, align 4
  %init = getelementptr inbounds %struct.tcpci_data, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @tcpci_init, ptr %init, align 4
  %frs_sourcing_vbus = getelementptr inbounds %struct.tcpci_data, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %frs_sourcing_vbus to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @max_tcpci_frs_sourcing_vbus, ptr %frs_sourcing_vbus, align 4
  %bf.set29 = or i8 %bf.load, -32
  store i8 %bf.set29, ptr %TX_BUF_BYTE_x_hidden, align 4
  %set_partner_usb_comm_capable = getelementptr inbounds %struct.tcpci_data, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %set_partner_usb_comm_capable to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @max_tcpci_set_partner_usb_comm_capable, ptr %set_partner_usb_comm_capable, align 4
  call fastcc void @max_tcpci_init_regs(ptr noundef nonnull %call.i)
  %14 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev13, align 4
  %call33 = call ptr @tcpci_register_port(ptr noundef %15, ptr noundef nonnull %call.i) #7
  %tcpci = getelementptr inbounds %struct.max_tcpci_chip, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %tcpci to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call33, ptr %tcpci, align 4
  %cmp.i92 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92, label %do.end39, label %if.end43

do.end39:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  %17 = ptrtoint ptr %tcpci to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tcpci, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end43:                                         ; preds = %if.end16
  %call45 = call ptr @tcpci_get_tcpm_port(ptr noundef %call33) #7
  %port = getelementptr inbounds %struct.max_tcpci_chip, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call45, ptr %port, align 4
  %21 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev13, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %23 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 3
  %25 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end43.dev_name.exit.i_crit_edge

if.end43.dev_name.exit.i_crit_edge:               ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %22, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end43.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %28, %if.end.i.i ], [ %26, %if.end43.dev_name.exit.i_crit_edge ]
  %call2.i = call i32 @devm_request_threaded_irq(ptr noundef %22, i32 noundef %24, ptr noundef nonnull @max_tcpci_isr, ptr noundef nonnull @max_tcpci_irq, i32 noundef 8200, ptr noundef %retval.0.i.i, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i93 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i93, label %unreg_port, label %if.end49

if.end49:                                         ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq.i, align 4
  %call.i.i = call i32 @irq_set_irq_wake(i32 noundef %30, i32 noundef 1) #7
  %31 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev13, align 4
  %call51 = call i32 @device_init_wakeup(ptr noundef %32, i1 noundef zeroext true) #7
  br label %cleanup

unreg_port:                                       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %tcpci to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tcpci, align 4
  call void @tcpci_unregister_port(ptr noundef %34) #7
  br label %cleanup

cleanup:                                          ; preds = %unreg_port, %if.end49, %do.end39, %if.end11.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.end ], [ %19, %do.end39 ], [ %call2.i, %unreg_port ], [ 0, %if.end49 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i91, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %power_status) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_tcpci_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tcpci = getelementptr inbounds %struct.max_tcpci_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tcpci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tcpci, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tcpci_unregister_port(ptr noundef nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_tcpci_set_vbus(ptr nocapture noundef readnone %tcpci, ptr nocapture noundef readonly %tdata, i1 noundef zeroext %source, i1 noundef zeroext %sink) #2 align 64 {
entry:
  %buffer_source = alloca [2 x i8], align 2
  %buffer_sink = alloca [2 x i8], align 2
  %buffer_none = alloca [2 x i8], align 2
  %msgs = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer_source) #7
  %0 = ptrtoint ptr %buffer_source to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -18166, ptr %buffer_source, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer_sink) #7
  %1 = ptrtoint ptr %buffer_sink to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -18171, ptr %buffer_sink, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer_none) #7
  %2 = ptrtoint ptr %buffer_none to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -18176, ptr %buffer_none, align 2
  %client = getelementptr inbounds %struct.max_tcpci_chip, ptr %tdata, i32 0, i32 3
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs) #7
  %5 = getelementptr inbounds i8, ptr %msgs, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  %7 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 105, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %4, align 8
  %10 = and i16 %9, 16
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %cond = select i1 %sink, ptr %buffer_sink, ptr %buffer_none
  %cond12 = select i1 %source, ptr %buffer_source, ptr %cond
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond12, ptr %buf, align 4
  %brmerge.demorgan = and i1 %source, %sink
  br i1 %brmerge.demorgan, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.max_tcpci_chip, ptr %tdata, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %16 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter, align 8
  %call18 = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msgs, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  %spec.select = select i1 %cmp, i32 %call18, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %spec.select, %if.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer_none) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer_sink) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer_source) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_tcpci_start_toggling(ptr nocapture noundef readnone %tcpci, ptr nocapture noundef readonly %tdata, i32 noundef %cc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @max_tcpci_init_regs(ptr noundef %tdata)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcpci_init(ptr nocapture noundef readnone %tcpci, ptr nocapture noundef readnone %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max_tcpci_frs_sourcing_vbus(ptr nocapture noundef readnone %tcpci, ptr nocapture noundef readonly %tdata) #2 align 64 {
entry:
  %buffer_source.i = alloca [2 x i8], align 2
  %msgs.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer_source.i) #7
  %0 = ptrtoint ptr %buffer_source.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -18166, ptr %buffer_source.i, align 2
  %client.i = getelementptr inbounds %struct.max_tcpci_chip, ptr %tdata, i32 0, i32 3
  %1 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i) #7
  %3 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 196607, ptr %3, align 4
  %5 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 105, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %2, align 8
  %8 = and i16 %7, 16
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buffer_source.i, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 3
  %11 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter.i, align 8
  %call18.i = call i32 @i2c_transfer(ptr noundef %12, ptr noundef nonnull %msgs.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer_source.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max_tcpci_set_partner_usb_comm_capable(ptr nocapture noundef readnone %tcpci, ptr nocapture noundef readonly %data, i1 noundef zeroext %capable) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = select i1 %capable, i8 9, i8 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %0 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %val.addr.i, align 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %call.i = call i32 @regmap_raw_write(ptr noundef %2, i32 noundef 147, ptr noundef nonnull %val.addr.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.max_tcpci_chip, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max_tcpci_init_regs(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  %val.addr.i80 = alloca i8, align 1
  %val.addr.i78 = alloca i8, align 1
  %val.addr.i76 = alloca i16, align 2
  %val.addr.i74 = alloca i8, align 1
  %val.addr.i72 = alloca i8, align 1
  %val.addr.i70 = alloca i16, align 2
  %val.addr.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.addr.i)
  %0 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val.addr.i, align 2
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %call.i = call i32 @regmap_raw_write(ptr noundef %2, i32 noundef 16, ptr noundef nonnull %val.addr.i, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.max_tcpci_chip, ptr %chip, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.14, i32 noundef %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.addr.i70)
  %5 = ptrtoint ptr %val.addr.i70 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %val.addr.i70, align 2
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %call.i71 = call i32 @regmap_raw_write(ptr noundef %7, i32 noundef 128, ptr noundef nonnull %val.addr.i70, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.addr.i70)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %cmp2 = icmp slt i32 %call.i71, 0
  br i1 %cmp2, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev7 = getelementptr inbounds %struct.max_tcpci_chip, ptr %chip, i32 0, i32 2
  %8 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.17, i32 noundef %call.i71) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i72)
  %10 = ptrtoint ptr %val.addr.i72 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %val.addr.i72, align 1
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  %call.i73 = call i32 @regmap_raw_write(ptr noundef %12, i32 noundef 33, ptr noundef nonnull %val.addr.i72, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i72)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %cmp10 = icmp slt i32 %call.i73, 0
  br i1 %cmp10, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %dev15 = getelementptr inbounds %struct.max_tcpci_chip, ptr %chip, i32 0, i32 2
  %13 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.20, i32 noundef %call.i73) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i74)
  %15 = ptrtoint ptr %val.addr.i74 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %val.addr.i74, align 1
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 4
  %call.i75 = call i32 @regmap_raw_write(ptr noundef %17, i32 noundef 22, ptr noundef nonnull %val.addr.i74, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i74)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %cmp18 = icmp slt i32 %call.i75, 0
  br i1 %cmp18, label %do.end22, label %if.end24

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev23 = getelementptr inbounds %struct.max_tcpci_chip, ptr %chip, i32 0, i32 2
  %18 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev23, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.23, i32 noundef %call.i75) #10
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.addr.i76)
  %20 = ptrtoint ptr %val.addr.i76 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 27775, ptr %val.addr.i76, align 2
  %21 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip, align 4
  %call.i77 = call i32 @regmap_raw_write(ptr noundef %22, i32 noundef 18, ptr noundef nonnull %val.addr.i76, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.addr.i76)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %cmp26 = icmp slt i32 %call.i77, 0
  br i1 %cmp26, label %do.end30, label %if.end32

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %dev31 = getelementptr inbounds %struct.max_tcpci_chip, ptr %chip, i32 0, i32 2
  %23 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev31, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.26, i32 noundef %call.i77) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i78)
  %25 = ptrtoint ptr %val.addr.i78 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %val.addr.i78, align 1
  %26 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip, align 4
  %call.i79 = call i32 @regmap_raw_write(ptr noundef %27, i32 noundef 28, ptr noundef nonnull %val.addr.i78, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i78)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %cmp34 = icmp slt i32 %call.i79, 0
  br i1 %cmp34, label %do.end38, label %if.end40

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %dev39 = getelementptr inbounds %struct.max_tcpci_chip, ptr %chip, i32 0, i32 2
  %28 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev39, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.29, i32 noundef %call.i79) #10
  br label %cleanup

if.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i80)
  %30 = ptrtoint ptr %val.addr.i80 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %val.addr.i80, align 1
  %31 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip, align 4
  %call.i81 = call i32 @regmap_raw_write(ptr noundef %32, i32 noundef 23, ptr noundef nonnull %val.addr.i80, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i80)
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end38, %do.end30, %do.end22, %do.end14, %do.end6, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcpci_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcpci_get_tcpm_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcpci_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_tcpci_isr(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.max_tcpci_chip, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void @pm_wakeup_dev_event(ptr noundef %1, i32 noundef 10000, i1 noundef zeroext false) #7
  %port = getelementptr inbounds %struct.max_tcpci_chip, ptr %dev_id, i32 0, i32 4
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %tobool.not = icmp eq ptr %3, null
  %. = select i1 %tobool.not, i32 1, i32 2
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_tcpci_irq(i32 noundef %irq, ptr noundef readonly %dev_id) #2 align 64 {
entry:
  %pwr_status.i.i = alloca i8, align 1
  %val.addr.i92.i.i = alloca i16, align 2
  %val.addr.i.i.i = alloca i16, align 2
  %msg.i.i = alloca %struct.pd_message, align 2
  %rx_buf.i.i = alloca [32 x i8], align 1
  %val.addr.i156.i = alloca i8, align 1
  %val.addr.i153.i = alloca i16, align 2
  %val.addr.i.i = alloca i16, align 2
  %reg_status.i = alloca i8, align 1
  %status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status) #7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %status, align 2, !annotation !120
  %port = getelementptr inbounds %struct.max_tcpci_chip, ptr %dev_id, i32 0, i32 4
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id, align 4
  %call.i = call i32 @regmap_raw_read(ptr noundef %4, i32 noundef 16, ptr noundef nonnull %status, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool3.not19 = icmp eq i16 %6, 0
  br i1 %tobool3.not19, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %dev.i = getelementptr inbounds %struct.max_tcpci_chip, ptr %dev_id, i32 0, i32 2
  %7 = getelementptr inbounds %struct.pd_message, ptr %msg.i.i, i32 0, i32 1
  %8 = getelementptr inbounds [32 x i8], ptr %rx_buf.i.i, i32 0, i32 1
  %9 = getelementptr inbounds [32 x i8], ptr %rx_buf.i.i, i32 0, i32 2
  %rx_buf_ptr.0.i.i = getelementptr inbounds i8, ptr %rx_buf.i.i, i32 4
  %rx_buf_ptr.0.i.i.1 = getelementptr inbounds i8, ptr %rx_buf.i.i, i32 8
  %arrayidx53.i.i.1 = getelementptr inbounds %struct.pd_message, ptr %msg.i.i, i32 0, i32 1, i32 0, i32 1
  %rx_buf_ptr.0.i.i.2 = getelementptr inbounds i8, ptr %rx_buf.i.i, i32 12
  %arrayidx53.i.i.2 = getelementptr inbounds %struct.pd_message, ptr %msg.i.i, i32 0, i32 1, i32 0, i32 2
  %rx_buf_ptr.0.i.i.3 = getelementptr inbounds i8, ptr %rx_buf.i.i, i32 16
  %arrayidx53.i.i.3 = getelementptr inbounds %struct.pd_message, ptr %msg.i.i, i32 0, i32 1, i32 0, i32 3
  %rx_buf_ptr.0.i.i.4 = getelementptr inbounds i8, ptr %rx_buf.i.i, i32 20
  %arrayidx53.i.i.4 = getelementptr inbounds %struct.pd_message, ptr %msg.i.i, i32 0, i32 1, i32 0, i32 4
  %rx_buf_ptr.0.i.i.5 = getelementptr inbounds i8, ptr %rx_buf.i.i, i32 24
  %arrayidx53.i.i.5 = getelementptr inbounds %struct.pd_message, ptr %msg.i.i, i32 0, i32 1, i32 0, i32 5
  %rx_buf_ptr.0.i.i.6 = getelementptr inbounds i8, ptr %rx_buf.i.i, i32 28
  %arrayidx53.i.i.6 = getelementptr inbounds %struct.pd_message, ptr %msg.i.i, i32 0, i32 1, i32 0, i32 6
  br label %while.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.max_tcpci_chip, ptr %dev_id, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.31) #10
  br label %cleanup

while.cond:                                       ; preds = %_max_tcpci_irq.exit
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %status, align 2
  %tobool3.not = icmp eq i16 %13, 0
  br i1 %tobool3.not, label %while.cond.cleanup_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %14 = phi i16 [ %6, %while.body.lr.ph ], [ %13, %while.cond.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_status.i) #7
  %15 = ptrtoint ptr %reg_status.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %reg_status.i, align 1, !annotation !120
  %conv.i = zext i16 %14 to i32
  %and.i = and i32 %conv.i, 65531
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.if.end11.i_crit_edge, label %if.then.i

while.body.if.end11.i_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then.i:                                        ; preds = %while.body
  %and2.i = and i32 %conv.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %and5.i = and i32 %conv.i, 64507
  %cond.i = select i1 %tobool3.not.i, i32 %and.i, i32 %and5.i
  %conv8.i = trunc i32 %cond.i to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.addr.i.i) #7
  %16 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv8.i, ptr %val.addr.i.i, align 2
  %17 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_id, align 4
  %call.i.i = call i32 @regmap_raw_write(ptr noundef %18, i32 noundef 16, ptr noundef nonnull %val.addr.i.i, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.addr.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end11.i_crit_edge

if.then.i.if.end11.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.33) #10
  br label %_max_tcpci_irq.exit

if.end11.i:                                       ; preds = %if.then.i.if.end11.i_crit_edge, %while.body.if.end11.i_crit_edge
  %and16.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %21 = and i32 %conv.i, 1028
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %21)
  %22 = icmp eq i32 %21, 1024
  br i1 %22, label %if.then18.i, label %if.end11.i.if.end28.i_crit_edge

if.end11.i.if.end28.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

if.then18.i:                                      ; preds = %if.end11.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.addr.i153.i) #7
  %23 = ptrtoint ptr %val.addr.i153.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1028, ptr %val.addr.i153.i, align 2
  %24 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_id, align 4
  %call.i154.i = call i32 @regmap_raw_write(ptr noundef %25, i32 noundef 16, ptr noundef nonnull %val.addr.i153.i, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.addr.i153.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154.i)
  %cmp20.i = icmp slt i32 %call.i154.i, 0
  br i1 %cmp20.i, label %do.end25.i, label %if.then18.i.if.end28.i_crit_edge

if.then18.i.if.end28.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

do.end25.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.33) #10
  br label %_max_tcpci_irq.exit

if.end28.i:                                       ; preds = %if.then18.i.if.end28.i_crit_edge, %if.end11.i.if.end28.i_crit_edge
  %and30.i = and i32 %conv.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.end28.i.if.end52.i_crit_edge, label %if.then32.i

if.end28.i.if.end52.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.i

if.then32.i:                                      ; preds = %if.end28.i
  %28 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_id, align 4
  %call.i155.i = call i32 @regmap_raw_read(ptr noundef %29, i32 noundef 33, ptr noundef nonnull %reg_status.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155.i)
  %cmp34.i = icmp slt i32 %call.i155.i, 0
  br i1 %cmp34.i, label %if.then32.i._max_tcpci_irq.exit_crit_edge, label %if.end37.i

if.then32.i._max_tcpci_irq.exit_crit_edge:        ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_max_tcpci_irq.exit

if.end37.i:                                       ; preds = %if.then32.i
  %30 = ptrtoint ptr %reg_status.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %reg_status.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i156.i) #7
  %32 = ptrtoint ptr %val.addr.i156.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %val.addr.i156.i, align 1
  %33 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_id, align 4
  %call.i157.i = call i32 @regmap_raw_write(ptr noundef %34, i32 noundef 33, ptr noundef nonnull %val.addr.i156.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i156.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157.i)
  %cmp39.i = icmp slt i32 %call.i157.i, 0
  br i1 %cmp39.i, label %if.end37.i._max_tcpci_irq.exit_crit_edge, label %if.end42.i

if.end37.i._max_tcpci_irq.exit_crit_edge:         ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_max_tcpci_irq.exit

if.end42.i:                                       ; preds = %if.end37.i
  %35 = ptrtoint ptr %reg_status.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %reg_status.i, align 1
  %37 = and i8 %36, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool45.not.i = icmp eq i8 %37, 0
  br i1 %tobool45.not.i, label %if.end42.i.if.end52.i_crit_edge, label %do.end49.i

if.end42.i.if.end52.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.i

do.end49.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.38) #10
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port, align 4
  call void @tcpm_sink_frs(ptr noundef %41) #7
  br label %if.end52.i

if.end52.i:                                       ; preds = %do.end49.i, %if.end42.i.if.end52.i_crit_edge, %if.end28.i.if.end52.i_crit_edge
  %and54.i = and i32 %conv.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.end52.i.if.end67.i_crit_edge, label %if.then56.i

if.end52.i.if.end67.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67.i

if.then56.i:                                      ; preds = %if.end52.i
  %42 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_id, align 4
  %call.i158.i = call i32 @regmap_raw_read(ptr noundef %43, i32 noundef 32, ptr noundef nonnull %reg_status.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i158.i)
  %cmp58.i = icmp sgt i32 %call.i158.i, -1
  br i1 %cmp58.i, label %land.lhs.true60.i, label %if.then56.i.if.end67.i_crit_edge

if.then56.i.if.end67.i_crit_edge:                 ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67.i

land.lhs.true60.i:                                ; preds = %if.then56.i
  %44 = ptrtoint ptr %reg_status.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %reg_status.i, align 1
  %46 = and i8 %45, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool63.not.i = icmp eq i8 %46, 0
  br i1 %tobool63.not.i, label %land.lhs.true60.i.if.end67.i_crit_edge, label %if.then64.i

land.lhs.true60.i.if.end67.i_crit_edge:           ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67.i

if.then64.i:                                      ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %port, align 4
  call void @tcpm_vbus_change(ptr noundef %48) #7
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then64.i, %land.lhs.true60.i.if.end67.i_crit_edge, %if.then56.i.if.end67.i_crit_edge, %if.end52.i.if.end67.i_crit_edge
  br i1 %tobool17.not.i, label %if.end67.i.if.end72.i_crit_edge, label %if.then71.i

if.end67.i.if.end72.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72.i

if.then71.i:                                      ; preds = %if.end67.i
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %msg.i.i) #7
  %49 = call ptr @memset(ptr %7, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rx_buf.i.i) #7
  %50 = call ptr @memset(ptr %rx_buf.i.i, i32 255, i32 32)
  %51 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_id, align 4
  %call.i159.i = call i32 @regmap_raw_read(ptr noundef %52, i32 noundef 48, ptr noundef nonnull %rx_buf.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159.i)
  %cmp.i.i = icmp slt i32 %call.i159.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.41, i32 noundef %call.i159.i) #10
  br label %process_rx.exit.i

if.end.i.i:                                       ; preds = %if.then71.i
  %55 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %rx_buf.i.i, align 1
  %conv.i.i = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp2.i.i = icmp eq i8 %56, 0
  br i1 %cmp2.i.i, label %if.end.i.i.if.then7.i.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then7.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %57 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp5.not.i.i = icmp eq i8 %58, 0
  br i1 %cmp5.not.i.i, label %if.end16.i.i, label %lor.lhs.false.i.i.if.then7.i.i_crit_edge

lor.lhs.false.i.i.if.then7.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i.i

if.then7.i.i:                                     ; preds = %lor.lhs.false.i.i.if.then7.i.i_crit_edge, %if.end.i.i.if.then7.i.i_crit_edge
  %cond.i.i = phi ptr [ @.str.47, %lor.lhs.false.i.i.if.then7.i.i_crit_edge ], [ @.str.46, %if.end.i.i.if.then7.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.addr.i.i.i) #7
  %59 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 4, ptr %val.addr.i.i.i, align 2
  %60 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_id, align 4
  %call.i.i.i = call i32 @regmap_raw_write(ptr noundef %61, i32 noundef 16, ptr noundef nonnull %val.addr.i.i.i, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.addr.i.i.i) #7
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.44, ptr noundef nonnull %cond.i.i) #10
  br label %process_rx.exit.i

if.end16.i.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %56)
  %cmp18.i.i = icmp ugt i8 %56, 30
  br i1 %cmp18.i.i, label %do.end27.i.i, label %if.end30.i.i

do.end27.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.49, i32 noundef %conv.i.i) #10
  br label %process_rx.exit.i

if.end30.i.i:                                     ; preds = %if.end16.i.i
  %add.i.i = add nuw nsw i8 %56, 1
  %66 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_id, align 4
  %conv37.i.i = zext i8 %add.i.i to i32
  %call38.i.i = call i32 @regmap_raw_read(ptr noundef %67, i32 noundef 48, ptr noundef nonnull %rx_buf.i.i, i32 noundef %conv37.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i.i)
  %cmp39.i.i = icmp slt i32 %call38.i.i, 0
  br i1 %cmp39.i.i, label %do.end44.i.i, label %if.end46.i.i

do.end44.i.i:                                     ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.52, i32 noundef %call38.i.i) #10
  br label %process_rx.exit.i

if.end46.i.i:                                     ; preds = %if.end30.i.i
  %70 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %9, align 2
  %72 = call i16 @llvm.bswap.i16(i16 %71) #7
  %73 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %msg.i.i, align 2
  %74 = and i16 %72, 112
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %cmp5195.not.i.i = icmp eq i16 %74, 0
  br i1 %cmp5195.not.i.i, label %if.end46.i.i.for.end.i.i_crit_edge, label %for.body.i.i

if.end46.i.i.for.end.i.i_crit_edge:               ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %if.end46.i.i
  %75 = ptrtoint ptr %rx_buf_ptr.0.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rx_buf_ptr.0.i.i, align 4
  %77 = call i32 @llvm.bswap.i32(i32 %76) #7
  %78 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %77, ptr %7, align 2
  %79 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %msg.i.i, align 2
  %81 = and i16 %80, 96
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %cmp51.i.i.not = icmp eq i16 %81, 0
  br i1 %cmp51.i.i.not, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.1

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i.1:                                   ; preds = %for.body.i.i
  %82 = ptrtoint ptr %rx_buf_ptr.0.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rx_buf_ptr.0.i.i.1, align 4
  %84 = call i32 @llvm.bswap.i32(i32 %83) #7
  %85 = ptrtoint ptr %arrayidx53.i.i.1 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %84, ptr %arrayidx53.i.i.1, align 2
  %86 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %msg.i.i, align 2
  %88 = and i16 %87, 112
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %88)
  %cmp51.i.i.1 = icmp ugt i16 %88, 32
  br i1 %cmp51.i.i.1, label %for.body.i.i.2, label %for.body.i.i.1.for.end.i.i_crit_edge

for.body.i.i.1.for.end.i.i_crit_edge:             ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i.2:                                   ; preds = %for.body.i.i.1
  %89 = ptrtoint ptr %rx_buf_ptr.0.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rx_buf_ptr.0.i.i.2, align 4
  %91 = call i32 @llvm.bswap.i32(i32 %90) #7
  %92 = ptrtoint ptr %arrayidx53.i.i.2 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %91, ptr %arrayidx53.i.i.2, align 2
  %93 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %msg.i.i, align 2
  %95 = and i16 %94, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %cmp51.i.i.2.not = icmp eq i16 %95, 0
  br i1 %cmp51.i.i.2.not, label %for.body.i.i.2.for.end.i.i_crit_edge, label %for.body.i.i.3

for.body.i.i.2.for.end.i.i_crit_edge:             ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i.3:                                   ; preds = %for.body.i.i.2
  %96 = ptrtoint ptr %rx_buf_ptr.0.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rx_buf_ptr.0.i.i.3, align 4
  %98 = call i32 @llvm.bswap.i32(i32 %97) #7
  %99 = ptrtoint ptr %arrayidx53.i.i.3 to i32
  call void @__asan_storeN_noabort(i32 %99, i32 4)
  store i32 %98, ptr %arrayidx53.i.i.3, align 2
  %100 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %msg.i.i, align 2
  %102 = and i16 %101, 112
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %102)
  %cmp51.i.i.3 = icmp ugt i16 %102, 64
  br i1 %cmp51.i.i.3, label %for.body.i.i.4, label %for.body.i.i.3.for.end.i.i_crit_edge

for.body.i.i.3.for.end.i.i_crit_edge:             ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i.4:                                   ; preds = %for.body.i.i.3
  %103 = ptrtoint ptr %rx_buf_ptr.0.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rx_buf_ptr.0.i.i.4, align 4
  %105 = call i32 @llvm.bswap.i32(i32 %104) #7
  %106 = ptrtoint ptr %arrayidx53.i.i.4 to i32
  call void @__asan_storeN_noabort(i32 %106, i32 4)
  store i32 %105, ptr %arrayidx53.i.i.4, align 2
  %107 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %msg.i.i, align 2
  %109 = and i16 %108, 96
  call void @__sanitizer_cov_trace_const_cmp2(i16 96, i16 %109)
  %cmp51.i.i.4 = icmp eq i16 %109, 96
  br i1 %cmp51.i.i.4, label %for.body.i.i.5, label %for.body.i.i.4.for.end.i.i_crit_edge

for.body.i.i.4.for.end.i.i_crit_edge:             ; preds = %for.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i.5:                                   ; preds = %for.body.i.i.4
  %110 = ptrtoint ptr %rx_buf_ptr.0.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rx_buf_ptr.0.i.i.5, align 4
  %112 = call i32 @llvm.bswap.i32(i32 %111) #7
  %113 = ptrtoint ptr %arrayidx53.i.i.5 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 %112, ptr %arrayidx53.i.i.5, align 2
  %114 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %msg.i.i, align 2
  %116 = and i16 %115, 112
  call void @__sanitizer_cov_trace_const_cmp2(i16 112, i16 %116)
  %cmp51.i.i.5 = icmp eq i16 %116, 112
  br i1 %cmp51.i.i.5, label %for.body.i.i.6, label %for.body.i.i.5.for.end.i.i_crit_edge

for.body.i.i.5.for.end.i.i_crit_edge:             ; preds = %for.body.i.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i.6:                                   ; preds = %for.body.i.i.5
  call void @__sanitizer_cov_trace_pc() #9
  %117 = ptrtoint ptr %rx_buf_ptr.0.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %rx_buf_ptr.0.i.i.6, align 4
  %119 = call i32 @llvm.bswap.i32(i32 %118) #7
  %120 = ptrtoint ptr %arrayidx53.i.i.6 to i32
  call void @__asan_storeN_noabort(i32 %120, i32 4)
  store i32 %119, ptr %arrayidx53.i.i.6, align 2
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.6, %for.body.i.i.5.for.end.i.i_crit_edge, %for.body.i.i.4.for.end.i.i_crit_edge, %for.body.i.i.3.for.end.i.i_crit_edge, %for.body.i.i.2.for.end.i.i_crit_edge, %for.body.i.i.1.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge, %if.end46.i.i.for.end.i.i_crit_edge
  %121 = and i16 %14, 1024
  %122 = or i16 %121, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.addr.i92.i.i) #7
  %123 = ptrtoint ptr %val.addr.i92.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %val.addr.i92.i.i, align 2
  %124 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev_id, align 4
  %call.i93.i.i = call i32 @regmap_raw_write(ptr noundef %125, i32 noundef 16, ptr noundef nonnull %val.addr.i92.i.i, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.addr.i92.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i)
  %cmp59.i.i = icmp slt i32 %call.i93.i.i, 0
  br i1 %cmp59.i.i, label %for.end.i.i.process_rx.exit.i_crit_edge, label %if.end62.i.i

for.end.i.i.process_rx.exit.i_crit_edge:          ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %process_rx.exit.i

if.end62.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %126 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %port, align 4
  call void @tcpm_pd_receive(ptr noundef %127, ptr noundef nonnull %msg.i.i) #7
  br label %process_rx.exit.i

process_rx.exit.i:                                ; preds = %if.end62.i.i, %for.end.i.i.process_rx.exit.i_crit_edge, %do.end44.i.i, %do.end27.i.i, %if.then7.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rx_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %msg.i.i) #7
  br label %if.end72.i

if.end72.i:                                       ; preds = %process_rx.exit.i, %if.end67.i.if.end72.i_crit_edge
  %and74.i = and i32 %conv.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  br i1 %tobool75.not.i, label %if.end72.i.if.end78.i_crit_edge, label %if.then76.i

if.end72.i.if.end78.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.i

if.then76.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #9
  %128 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %port, align 4
  call void @tcpm_vbus_change(ptr noundef %129) #7
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then76.i, %if.end72.i.if.end78.i_crit_edge
  %and80.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.not.i, label %if.end78.i.if.end84.i_crit_edge, label %if.then82.i

if.end78.i.if.end84.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84.i

if.then82.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #9
  %130 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %port, align 4
  call void @tcpm_cc_change(ptr noundef %131) #7
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.then82.i, %if.end78.i.if.end84.i_crit_edge
  %and86.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp eq i32 %and86.i, 0
  br i1 %tobool87.not.i, label %if.end84.i.if.end89.i_crit_edge, label %if.then88.i

if.end84.i.if.end89.i_crit_edge:                  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89.i

if.then88.i:                                      ; preds = %if.end84.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwr_status.i.i) #7
  %132 = ptrtoint ptr %pwr_status.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 -1, ptr %pwr_status.i.i, align 1, !annotation !120
  %133 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev_id, align 4
  %call.i.i160.i = call i32 @regmap_raw_read(ptr noundef %134, i32 noundef 30, ptr noundef nonnull %pwr_status.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i160.i)
  %cmp.i161.i = icmp slt i32 %call.i.i160.i, 0
  br i1 %cmp.i161.i, label %if.then88.i.process_power_status.exit.i_crit_edge, label %if.end.i162.i

if.then88.i.process_power_status.exit.i_crit_edge: ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %process_power_status.exit.i

if.end.i162.i:                                    ; preds = %if.then88.i
  %135 = ptrtoint ptr %pwr_status.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %pwr_status.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %136)
  %cmp1.i.i = icmp eq i8 %136, -1
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.else.i.i

if.then3.i.i:                                     ; preds = %if.end.i162.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @max_tcpci_init_regs(ptr noundef %dev_id) #7
  br label %process_power_status.exit.i

if.else.i.i:                                      ; preds = %if.end.i162.i
  %137 = and i8 %136, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool.not.i.i = icmp eq i8 %137, 0
  %138 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %port, align 4
  br i1 %tobool.not.i.i, label %if.else6.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @tcpm_sourcing_vbus(ptr noundef %139) #7
  br label %process_power_status.exit.i

if.else6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @tcpm_vbus_change(ptr noundef %139) #7
  br label %process_power_status.exit.i

process_power_status.exit.i:                      ; preds = %if.else6.i.i, %if.then5.i.i, %if.then3.i.i, %if.then88.i.process_power_status.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwr_status.i.i) #7
  br label %if.end89.i

if.end89.i:                                       ; preds = %process_power_status.exit.i, %if.end84.i.if.end89.i_crit_edge
  %and91.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i)
  %tobool92.not.i = icmp eq i32 %and91.i, 0
  br i1 %tobool92.not.i, label %if.end89.i.if.end95.i_crit_edge, label %if.then93.i

if.end89.i.if.end95.i_crit_edge:                  ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95.i

if.then93.i:                                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #9
  %140 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %port, align 4
  call void @tcpm_pd_hard_reset(ptr noundef %141) #7
  call fastcc void @max_tcpci_init_regs(ptr noundef %dev_id) #7
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then93.i, %if.end89.i.if.end95.i_crit_edge
  %and100.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100.i)
  %tobool101.not.i = icmp eq i32 %and100.i, 0
  %and104.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i)
  %tobool105.not.i = icmp eq i32 %and104.i, 0
  %142 = and i32 %conv.i, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %if.end95.i._max_tcpci_irq.exit_crit_edge, label %if.then106.i

if.end95.i._max_tcpci_irq.exit_crit_edge:         ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_max_tcpci_irq.exit

if.then106.i:                                     ; preds = %if.end95.i
  %and97.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  br i1 %tobool98.not.i, label %if.else.i166.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then106.i
  %144 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %port, align 4
  call void @tcpm_pd_transmit_complete(ptr noundef %145, i32 noundef 0) #7
  br i1 %tobool105.not.i, label %if.then.i.i._max_tcpci_irq.exit_crit_edge, label %if.then20.i.i

if.then.i.i._max_tcpci_irq.exit_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_max_tcpci_irq.exit

if.else.i166.i:                                   ; preds = %if.then106.i
  br i1 %tobool101.not.i, label %if.else6.i167.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.else.i166.i
  call void @__sanitizer_cov_trace_pc() #9
  %146 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %port, align 4
  call void @tcpm_pd_transmit_complete(ptr noundef %147, i32 noundef 1) #7
  br label %_max_tcpci_irq.exit

if.else6.i167.i:                                  ; preds = %if.else.i166.i
  br i1 %tobool105.not.i, label %if.else6.i167.i._max_tcpci_irq.exit_crit_edge, label %if.then10.i.i

if.else6.i167.i._max_tcpci_irq.exit_crit_edge:    ; preds = %if.else6.i167.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_max_tcpci_irq.exit

if.then10.i.i:                                    ; preds = %if.else6.i167.i
  call void @__sanitizer_cov_trace_pc() #9
  %148 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %port, align 4
  call void @tcpm_pd_transmit_complete(ptr noundef %149, i32 noundef 2) #7
  br label %_max_tcpci_irq.exit

if.then20.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @max_tcpci_init_regs(ptr noundef %dev_id) #7
  br label %_max_tcpci_irq.exit

_max_tcpci_irq.exit:                              ; preds = %if.then20.i.i, %if.then10.i.i, %if.else6.i167.i._max_tcpci_irq.exit_crit_edge, %if.then4.i.i, %if.then.i.i._max_tcpci_irq.exit_crit_edge, %if.end95.i._max_tcpci_irq.exit_crit_edge, %if.end37.i._max_tcpci_irq.exit_crit_edge, %if.then32.i._max_tcpci_irq.exit_crit_edge, %do.end25.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i.i, %do.end.i ], [ %call.i154.i, %do.end25.i ], [ %call.i155.i, %if.then32.i._max_tcpci_irq.exit_crit_edge ], [ %call.i157.i, %if.end37.i._max_tcpci_irq.exit_crit_edge ], [ 1, %if.end95.i._max_tcpci_irq.exit_crit_edge ], [ 1, %if.then.i.i._max_tcpci_irq.exit_crit_edge ], [ 1, %if.then4.i.i ], [ 1, %if.else6.i167.i._max_tcpci_irq.exit_crit_edge ], [ 1, %if.then10.i.i ], [ 1, %if.then20.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_status.i) #7
  %150 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev_id, align 4
  %call.i18 = call i32 @regmap_raw_read(ptr noundef %151, i32 noundef 16, ptr noundef nonnull %status, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %cmp6 = icmp slt i32 %call.i18, 0
  br i1 %cmp6, label %_max_tcpci_irq.exit.cleanup_crit_edge, label %while.cond

_max_tcpci_irq.exit.cleanup_crit_edge:            ; preds = %_max_tcpci_irq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %_max_tcpci_irq.exit.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %do.end, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 1, %entry.cleanup_crit_edge ], [ 1, %while.cond.preheader.cleanup_crit_edge ], [ %retval.0.i, %while.cond.cleanup_crit_edge ], [ %retval.0.i, %_max_tcpci_irq.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcpm_sink_frs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcpm_vbus_change(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcpm_cc_change(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcpm_pd_hard_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcpm_pd_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcpm_sourcing_vbus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcpm_pd_transmit_complete(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__initcall__kmod_tcpci_maxim__288_529_max_tcpci_i2c_driver_init6, !1, !"__initcall__kmod_tcpci_maxim__288_529_max_tcpci_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 529, i32 1}
!2 = !{ptr @__exitcall_max_tcpci_i2c_driver_exit, !1, !"__exitcall_max_tcpci_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 531, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 532, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 533, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 522, i32 11}
!12 = !{ptr @max_tcpci_i2c_driver, !13, !"max_tcpci_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 520, i32 26}
!14 = !{ptr @max_tcpci_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 453, i32 22}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 455, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @max_tcpci_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @max_tcpci_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 479, i32 3}
!27 = !{ptr @max_tcpci_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @max_tcpci_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @max_tcpci_regmap_config, !30, !"max_tcpci_regmap_config", i1 false, i1 false}
!30 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 60, i32 35}
!31 = !{ptr @max_tcpci_tcpci_write_table, !32, !"max_tcpci_tcpci_write_table", i1 false, i1 false}
!32 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 55, i32 41}
!33 = !{ptr @max_tcpci_tcpci_range, !34, !"max_tcpci_tcpci_range", i1 false, i1 false}
!34 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 51, i32 34}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 230, i32 3}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @max_tcpci_set_vbus._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @max_tcpci_set_vbus._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 292, i32 3}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @max_tcpci_set_partner_usb_comm_capable._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @max_tcpci_set_partner_usb_comm_capable._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 99, i32 3}
!47 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @max_tcpci_init_regs._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @max_tcpci_init_regs._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 105, i32 3}
!52 = !{ptr @max_tcpci_init_regs._entry.16, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @max_tcpci_init_regs._entry_ptr.18, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 111, i32 3}
!56 = !{ptr @max_tcpci_init_regs._entry.19, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @max_tcpci_init_regs._entry_ptr.21, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 118, i32 3}
!60 = !{ptr @max_tcpci_init_regs._entry.22, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @max_tcpci_init_regs._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 130, i32 3}
!64 = !{ptr @max_tcpci_init_regs._entry.25, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @max_tcpci_init_regs._entry_ptr.27, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 138, i32 3}
!68 = !{ptr @max_tcpci_init_regs._entry.28, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @max_tcpci_init_regs._entry_ptr.30, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 382, i32 3}
!72 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @max_tcpci_irq._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @max_tcpci_irq._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 311, i32 4}
!77 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @_max_tcpci_irq._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @_max_tcpci_irq._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @_max_tcpci_irq._entry.35, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 320, i32 4}
!82 = !{ptr @_max_tcpci_irq._entry_ptr.36, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 335, i32 4}
!85 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @_max_tcpci_irq._entry.37, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @_max_tcpci_irq._entry_ptr.40, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 161, i32 3}
!90 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @process_rx._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @process_rx._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 170, i32 3}
!95 = !{ptr @process_rx._entry.43, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @process_rx._entry_ptr.45, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 176, i32 3}
!101 = !{ptr @process_rx._entry.48, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @process_rx._entry_ptr.50, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 187, i32 3}
!105 = !{ptr @process_rx._entry.51, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @process_rx._entry_ptr.53, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @max_tcpci_of_match, !108, !"max_tcpci_of_match", i1 false, i1 false}
!108 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 513, i32 34}
!109 = !{ptr @max_tcpci_id, !110, !"max_tcpci_id", i1 false, i1 false}
!110 = !{!"../drivers/usb/typec/tcpm/tcpci_maxim.c", i32 506, i32 35}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{!"auto-init"}
