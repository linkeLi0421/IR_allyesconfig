; ModuleID = '/llk/IR_all_yes/drivers/nfc/st95hf/core.c_pt.bc'
source_filename = "../drivers/nfc/st95hf/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cmd = type { i32, i8, i8, [4 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nfc_digital_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.st95hf_spi_context = type { i8, ptr, %struct.completion, %struct.mutex }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.st95hf_context = type { %struct.st95hf_spi_context, ptr, ptr, i32, %struct.st95_digital_cmd_complete_arg, ptr, i8, %struct.semaphore, %struct.mutex, i8, i8, i8, i32 }
%struct.st95_digital_cmd_complete_arg = type { ptr, ptr, ptr, i8 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.nfc_digital_dev = type { ptr, ptr, i32, i32, i32, i32, ptr, [6 x %struct.digital_poll_tech], i8, i8, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.delayed_work, i8, i8, i8, i8, i16, i8, i8, ptr, ptr, i32, i32, ptr, i16, ptr, ptr }
%struct.digital_poll_tech = type { i8, ptr }
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%union.anon.46 = type { i64 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.51, i32, i32, i32, i16, i16, %union.anon.53, i32, %union.anon.54, %union.anon.55, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.51 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i16 }
%struct.param_list = type { i32, i32 }

@__initcall__kmod_st95hf__370_1255_st95hf_driver_init6 = internal global ptr @st95hf_driver_init, section ".initcall6.init", align 4
@st95hf_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @st95hf_id, ptr @st95hf_probe, ptr @st95hf_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st95hf_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_st95hf_driver_exit = internal global ptr @st95hf_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author371 = internal constant [49 x i8] c"st95hf.author=Shikha Singh <shikha.singh@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description372 = internal constant [52 x i8] c"st95hf.description=ST NFC Transceiver ST95HF driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file373 = internal constant [38 x i8] c"st95hf.file=drivers/nfc/st95hf/st95hf\00", section ".modinfo", align 1
@__UNIQUE_ID_license374 = internal constant [22 x i8] c"st95hf.license=GPL v2\00", section ".modinfo", align 1
@st95hf_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"st95hf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"st95hf\00", [25 x i8] zeroinitializer }, align 32
@st95hf_spi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,st95hf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@st95hf_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1071, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NFC: ST95HF driver probe called.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st95hf_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/nfc/st95hf/core.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st95hf_probe._entry_ptr = internal global ptr @st95hf_probe._entry, section ".printk_index", align 4
@cmd_array = internal constant { [9 x %struct.cmd], [48 x i8] } { [9 x %struct.cmd] [%struct.cmd { i32 2, i8 85, i8 0, [4 x i8] zeroinitializer, i32 0 }, %struct.cmd { i32 7, i8 9, i8 4, [4 x i8] c":\00Z\04", i32 0 }, %struct.cmd { i32 7, i8 9, i8 4, [4 x i8] c"h\01\01\DF", i32 0 }, %struct.cmd { i32 7, i8 9, i8 4, [4 x i8] c"h\01\01Q", i32 0 }, %struct.cmd { i32 7, i8 2, i8 4, [4 x i8] c"\02\00\01\A0", i32 0 }, %struct.cmd { i32 7, i8 2, i8 4, [4 x i8] c"\03\01\03\FF", i32 0 }, %struct.cmd { i32 6, i8 4, i8 3, [4 x i8] c"\F2\00(\00", i32 1 }, %struct.cmd { i32 5, i8 2, i8 2, [4 x i8] zeroinitializer, i32 0 }, %struct.cmd { i32 5, i8 2, i8 2, [4 x i8] c"\01\0D\00\00", i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st95hfvin\00", [22 x i8] zeroinitializer }, align 32
@st95hf_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1091, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to acquire regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@st95hf_probe._entry_ptr.10 = internal global ptr @st95hf_probe._entry.7, section ".printk_index", align 4
@st95hf_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1097, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable regulator\0A\00", [36 x i8] zeroinitializer }, align 32
@st95hf_probe._entry_ptr.13 = internal global ptr @st95hf_probe._entry.11, section ".printk_index", align 4
@st95hf_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&spicontext->spi_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enable-gpio\00", [20 x i8] zeroinitializer }, align 32
@st95hf_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1116, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No valid enable gpio\0A\00", [42 x i8] zeroinitializer }, align 32
@st95hf_probe._entry_ptr.18 = internal global ptr @st95hf_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enable_gpio\00", [20 x i8] zeroinitializer }, align 32
@st95hf_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1135, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"err: irq request for st95hf is failed\0A\00", [57 x i8] zeroinitializer }, align 32
@st95hf_probe._entry_ptr.22 = internal global ptr @st95hf_probe._entry.20, section ".printk_index", align 4
@st95hf_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1140, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"not a valid IRQ associated with ST95HF\0A\00", [56 x i8] zeroinitializer }, align 32
@st95hf_probe._entry_ptr.25 = internal global ptr @st95hf_probe._entry.23, section ".printk_index", align 4
@st95hf_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 1153, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"err: spi_reset_sequence failed\0A\00", [32 x i8] zeroinitializer }, align 32
@st95hf_probe._entry_ptr.28 = internal global ptr @st95hf_probe._entry.26, section ".printk_index", align 4
@st95hf_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 1160, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"err: por seq failed for st95hf\0A\00", [32 x i8] zeroinitializer }, align 32
@st95hf_probe._entry_ptr.31 = internal global ptr @st95hf_probe._entry.29, section ".printk_index", align 4
@st95hf_nfc_digital_ops = internal constant { %struct.nfc_digital_ops, [56 x i8] } { %struct.nfc_digital_ops { ptr @st95hf_in_configure_hw, ptr @st95hf_in_send_cmd, ptr @st95hf_tg_configure_hw, ptr @st95hf_tg_send_cmd, ptr @st95hf_tg_listen, ptr null, ptr null, ptr @st95hf_tg_get_rf_tech, ptr @st95hf_switch_rf, ptr @st95hf_abort_cmd }, [56 x i8] zeroinitializer }, align 32
@st95hf_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 1180, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"st95hf registration failed\0A\00", [36 x i8] zeroinitializer }, align 32
@st95hf_probe._entry_ptr.34 = internal global ptr @st95hf_probe._entry.32, section ".printk_index", align 4
@st95hf_probe.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&st95context->rm_lock\00", [42 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@st95hf_irq_thread_handler.wtx = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unknown context in ST95HF ISR\00", [34 x i8] zeroinitializer }, align 32
@st95hf_irq_thread_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 806, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TISR spi response err = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"st95hf_irq_thread_handler\00", [38 x i8] zeroinitializer }, align 32
@st95hf_irq_thread_handler._entry_ptr = internal global ptr @st95hf_irq_thread_handler._entry, section ".printk_index", align 4
@st95hf_handle_wtx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 617, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Config. setting error on WTX req, err = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"st95hf_handle_wtx\00", [46 x i8] zeroinitializer }, align 32
@st95hf_handle_wtx._entry_ptr = internal global ptr @st95hf_handle_wtx._entry, section ".printk_index", align 4
@st95hf_handle_wtx._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 631, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"WTX response send, err = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@st95hf_handle_wtx._entry_ptr.45 = internal global ptr @st95hf_handle_wtx._entry.43, section ".printk_index", align 4
@st95hf_handle_wtx._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.3, i32 644, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Default config. setting error after WTX processing, err = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@st95hf_handle_wtx._entry_ptr.48 = internal global ptr @st95hf_handle_wtx._entry.46, section ".printk_index", align 4
@iso14443_config_fdt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 564, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"WTX type a sel proto, err = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iso14443_config_fdt\00", [44 x i8] zeroinitializer }, align 32
@iso14443_config_fdt._entry_ptr = internal global ptr @iso14443_config_fdt._entry, section ".printk_index", align 4
@iso14443_config_fdt._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 572, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"WTX type a second. config, err = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@iso14443_config_fdt._entry_ptr.53 = internal global ptr @iso14443_config_fdt._entry.51, section ".printk_index", align 4
@iso14443_config_fdt._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.3, i32 584, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"WTX type b sel proto, err = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@iso14443_config_fdt._entry_ptr.56 = internal global ptr @iso14443_config_fdt._entry.54, section ".printk_index", align 4
@iso14443_config_fdt._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.50, ptr @.str.3, i32 592, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"WTX type b second. config, err = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@iso14443_config_fdt._entry_ptr.59 = internal global ptr @iso14443_config_fdt._entry.57, section ".printk_index", align 4
@secondary_configuration_type4a._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 343, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"type a config cmd, err = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"secondary_configuration_type4a\00", [33 x i8] zeroinitializer }, align 32
@secondary_configuration_type4a._entry_ptr = internal global ptr @secondary_configuration_type4a._entry, section ".printk_index", align 4
@secondary_configuration_type4a._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.3, i32 354, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"type a demogain cmd, err = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@secondary_configuration_type4a._entry_ptr.64 = internal global ptr @secondary_configuration_type4a._entry.62, section ".printk_index", align 4
@secondary_configuration_type4b._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 370, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"type b demogain cmd, err = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"secondary_configuration_type4b\00", [33 x i8] zeroinitializer }, align 32
@secondary_configuration_type4b._entry_ptr = internal global ptr @secondary_configuration_type4b._entry, section ".printk_index", align 4
@st95hf_send_recv_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 279, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"st95hf_spi_send failed with error %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"st95hf_send_recv_cmd\00", [43 x i8] zeroinitializer }, align 32
@st95hf_send_recv_cmd._entry_ptr = internal global ptr @st95hf_send_recv_cmd._entry, section ".printk_index", align 4
@st95hf_send_recv_cmd._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.3, i32 290, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"spi error from st95hf_spi_recv_response(), err = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@st95hf_send_recv_cmd._entry_ptr.71 = internal global ptr @st95hf_send_recv_cmd._entry.69, section ".printk_index", align 4
@st95hf_send_recv_cmd._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.3, i32 296, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"st95hf error from st95hf_spi_recv_response(), err = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@st95hf_send_recv_cmd._entry_ptr.74 = internal global ptr @st95hf_send_recv_cmd._entry.72, section ".printk_index", align 4
@st95hf_error_handling._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 674, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CRC error, byte received = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st95hf_error_handling\00", [42 x i8] zeroinitializer }, align 32
@st95hf_error_handling._entry_ptr = internal global ptr @st95hf_error_handling._entry, section ".printk_index", align 4
@st95hf_error_handling._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 685, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@st95hf_error_handling._entry_ptr.78 = internal global ptr @st95hf_error_handling._entry.77, section ".printk_index", align 4
@st95hf_response_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 730, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"error in config_fdt to handle fwi of ATS, error=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"st95hf_response_handler\00", [40 x i8] zeroinitializer }, align 32
@st95hf_response_handler._entry_ptr = internal global ptr @st95hf_response_handler._entry, section ".printk_index", align 4
@st95hf_send_spi_reset_sequence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 484, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"spi reset sequence cmd error = %d\00", [62 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"st95hf_send_spi_reset_sequence\00", [33 x i8] zeroinitializer }, align 32
@st95hf_send_spi_reset_sequence._entry_ptr = internal global ptr @st95hf_send_spi_reset_sequence._entry, section ".printk_index", align 4
@st95hf_por_sequence.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.3, ptr @.str.84, i8 0, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"st95hf_por_sequence\00", [44 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"response from echo function = 0x%x, attempt = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@st95hf_echo_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 318, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"err: echo response receive error = 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"st95hf_echo_command\00", [44 x i8] zeroinitializer }, align 32
@st95hf_echo_command._entry_ptr = internal global ptr @st95hf_echo_command._entry, section ".printk_index", align 4
@st95hf_echo_command._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.3, i32 326, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"err: echo res is 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@st95hf_echo_command._entry_ptr.89 = internal global ptr @st95hf_echo_command._entry.87, section ".printk_index", align 4
@st95hf_select_protocol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.3, i32 392, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"protocol sel, err = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"st95hf_select_protocol\00", [41 x i8] zeroinitializer }, align 32
@st95hf_select_protocol._entry_ptr = internal global ptr @st95hf_select_protocol._entry, section ".printk_index", align 4
@st95hf_select_protocol._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.3, i32 400, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"type a secondary config, err = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@st95hf_select_protocol._entry_ptr.94 = internal global ptr @st95hf_select_protocol._entry.92, section ".printk_index", align 4
@st95hf_select_protocol._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.91, ptr @.str.3, i32 413, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"protocol sel send, err = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@st95hf_select_protocol._entry_ptr.97 = internal global ptr @st95hf_select_protocol._entry.95, section ".printk_index", align 4
@st95hf_select_protocol._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.91, ptr @.str.3, i32 427, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"type b secondary config, err = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@st95hf_select_protocol._entry_ptr.100 = internal global ptr @st95hf_select_protocol._entry.98, section ".printk_index", align 4
@st95hf_select_protocol._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.91, ptr @.str.3, i32 440, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@st95hf_select_protocol._entry_ptr.102 = internal global ptr @st95hf_select_protocol._entry.101, section ".printk_index", align 4
@.str.103 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Semaphore is not found up in st95hf_in_send_cmd\0A\00", [47 x i8] zeroinitializer }, align 32
@st95hf_in_send_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.3, i32 974, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error %d trying to perform data_exchange\00", [55 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"st95hf_in_send_cmd\00", [45 x i8] zeroinitializer }, align 32
@st95hf_in_send_cmd._entry_ptr = internal global ptr @st95hf_in_send_cmd._entry, section ".printk_index", align 4
@rf_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.3, i32 911, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"protocol sel send field off, err = 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rf_off\00", [25 x i8] zeroinitializer }, align 32
@rf_off._entry_ptr = internal global ptr @rf_off._entry, section ".printk_index", align 4
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@st95hf_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.3, i32 1222, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sleep for semaphore interrupted by signal\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st95hf_remove\00", [18 x i8] zeroinitializer }, align 32
@st95hf_remove._entry_ptr = internal global ptr @st95hf_remove._entry, section ".printk_index", align 4
@st95hf_remove._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.3, i32 1231, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ST95HF reset failed in remove() err = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@st95hf_remove._entry_ptr.114 = internal global ptr @st95hf_remove._entry.112, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.115 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 6]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.118 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 6, i64 7]
@__sancov_gen_cov_switch_values.119 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.120 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 4]
@___asan_gen_.121 = private unnamed_addr constant [14 x i8] c"st95hf_driver\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1244, i32 26 }
@___asan_gen_.124 = private unnamed_addr constant [10 x i8] c"st95hf_id\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1052, i32 35 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1246, i32 11 }
@___asan_gen_.130 = private unnamed_addr constant [20 x i8] c"st95hf_spi_of_match\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1058, i32 34 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1071, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [10 x i8] c"cmd_array\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 120, i32 25 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1086, i32 49 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1091, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1097, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1103, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1113, i32 7 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1116, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1123, i32 9 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1135, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1140, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1153, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1160, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [23 x i8] c"st95hf_nfc_digital_ops\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1039, i32 37 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1180, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1188, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 87, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [30 x i8] c"st95hf_irq_thread_handler.wtx\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 795, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 806, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 616, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 631, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 643, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 563, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 571, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 583, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 591, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 343, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 354, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 370, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 279, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 289, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 295, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 673, i32 5 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 684, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 729, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 483, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 512, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 317, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 325, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 391, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 399, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 412, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 426, i32 4 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 439, i32 4 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 965, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 973, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 911, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 33, i32 31 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 34, i32 28 }
@___asan_gen_.450 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 35, i32 39 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1222, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.464 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.465 = private constant [29 x i8] c"../drivers/nfc/st95hf/core.c\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1230, i32 3 }
@llvm.compiler.used = appending global [161 x ptr] [ptr @__UNIQUE_ID_author371, ptr @__UNIQUE_ID_description372, ptr @__UNIQUE_ID_file373, ptr @__UNIQUE_ID_license374, ptr @__exitcall_st95hf_driver_exit, ptr @__initcall__kmod_st95hf__370_1255_st95hf_driver_init6, ptr @iso14443_config_fdt._entry, ptr @iso14443_config_fdt._entry.51, ptr @iso14443_config_fdt._entry.54, ptr @iso14443_config_fdt._entry.57, ptr @iso14443_config_fdt._entry_ptr, ptr @iso14443_config_fdt._entry_ptr.53, ptr @iso14443_config_fdt._entry_ptr.56, ptr @iso14443_config_fdt._entry_ptr.59, ptr @rf_off._entry, ptr @rf_off._entry_ptr, ptr @secondary_configuration_type4a._entry, ptr @secondary_configuration_type4a._entry.62, ptr @secondary_configuration_type4a._entry_ptr, ptr @secondary_configuration_type4a._entry_ptr.64, ptr @secondary_configuration_type4b._entry, ptr @secondary_configuration_type4b._entry_ptr, ptr @st95hf_driver_exit, ptr @st95hf_echo_command._entry, ptr @st95hf_echo_command._entry.87, ptr @st95hf_echo_command._entry_ptr, ptr @st95hf_echo_command._entry_ptr.89, ptr @st95hf_error_handling._entry, ptr @st95hf_error_handling._entry.77, ptr @st95hf_error_handling._entry_ptr, ptr @st95hf_error_handling._entry_ptr.78, ptr @st95hf_handle_wtx._entry, ptr @st95hf_handle_wtx._entry.43, ptr @st95hf_handle_wtx._entry.46, ptr @st95hf_handle_wtx._entry_ptr, ptr @st95hf_handle_wtx._entry_ptr.45, ptr @st95hf_handle_wtx._entry_ptr.48, ptr @st95hf_in_send_cmd._entry, ptr @st95hf_in_send_cmd._entry_ptr, ptr @st95hf_irq_thread_handler._entry, ptr @st95hf_irq_thread_handler._entry_ptr, ptr @st95hf_probe._entry, ptr @st95hf_probe._entry.11, ptr @st95hf_probe._entry.16, ptr @st95hf_probe._entry.20, ptr @st95hf_probe._entry.23, ptr @st95hf_probe._entry.26, ptr @st95hf_probe._entry.29, ptr @st95hf_probe._entry.32, ptr @st95hf_probe._entry.7, ptr @st95hf_probe._entry_ptr, ptr @st95hf_probe._entry_ptr.10, ptr @st95hf_probe._entry_ptr.13, ptr @st95hf_probe._entry_ptr.18, ptr @st95hf_probe._entry_ptr.22, ptr @st95hf_probe._entry_ptr.25, ptr @st95hf_probe._entry_ptr.28, ptr @st95hf_probe._entry_ptr.31, ptr @st95hf_probe._entry_ptr.34, ptr @st95hf_remove._entry, ptr @st95hf_remove._entry.112, ptr @st95hf_remove._entry_ptr, ptr @st95hf_remove._entry_ptr.114, ptr @st95hf_response_handler._entry, ptr @st95hf_response_handler._entry_ptr, ptr @st95hf_select_protocol._entry, ptr @st95hf_select_protocol._entry.101, ptr @st95hf_select_protocol._entry.92, ptr @st95hf_select_protocol._entry.95, ptr @st95hf_select_protocol._entry.98, ptr @st95hf_select_protocol._entry_ptr, ptr @st95hf_select_protocol._entry_ptr.100, ptr @st95hf_select_protocol._entry_ptr.102, ptr @st95hf_select_protocol._entry_ptr.94, ptr @st95hf_select_protocol._entry_ptr.97, ptr @st95hf_send_recv_cmd._entry, ptr @st95hf_send_recv_cmd._entry.69, ptr @st95hf_send_recv_cmd._entry.72, ptr @st95hf_send_recv_cmd._entry_ptr, ptr @st95hf_send_recv_cmd._entry_ptr.71, ptr @st95hf_send_recv_cmd._entry_ptr.74, ptr @st95hf_send_spi_reset_sequence._entry, ptr @st95hf_send_spi_reset_sequence._entry_ptr, ptr @st95hf_driver, ptr @st95hf_id, ptr @.str, ptr @st95hf_spi_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cmd_array, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @st95hf_probe.__key, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @st95hf_nfc_digital_ops, ptr @.str.33, ptr @st95hf_probe.__key.35, ptr @.str.36, ptr @init_completion.__key, ptr @.str.37, ptr @st95hf_irq_thread_handler.wtx, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @sema_init.__key, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.113], section "llvm.metadata"
@0 = internal global [116 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_spi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_array to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_nfc_digital_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_probe.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_irq_thread_handler.wtx to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_irq_thread_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_handle_wtx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_handle_wtx._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_handle_wtx._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iso14443_config_fdt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iso14443_config_fdt._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iso14443_config_fdt._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iso14443_config_fdt._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @secondary_configuration_type4a._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @secondary_configuration_type4a._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @secondary_configuration_type4b._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_send_recv_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_send_recv_cmd._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_send_recv_cmd._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_error_handling._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_error_handling._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_response_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_send_spi_reset_sequence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_echo_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_echo_command._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_select_protocol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_select_protocol._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_select_protocol._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_select_protocol._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_select_protocol._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_in_send_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_remove._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @st95hf_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @st95hf_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st95hf_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @st95hf_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st95hf_probe(ptr noundef %nfc_spi_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %nfc_spi_dev, ptr noundef nonnull @.str.1) #9
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %nfc_spi_dev, i32 noundef 348, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %spidev = getelementptr inbounds %struct.st95hf_spi_context, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %spidev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %nfc_spi_dev, ptr %spidev, align 4
  %fwi = getelementptr inbounds %struct.st95hf_context, ptr %call.i, i32 0, i32 12
  %1 = ptrtoint ptr %fwi to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %fwi, align 4
  %call4 = tail call zeroext i1 @device_property_present(ptr noundef %nfc_spi_dev, ptr noundef nonnull @.str.6) #6
  br i1 %call4, label %if.then5, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then5:                                         ; preds = %if.end
  %call7 = tail call ptr @devm_regulator_get(ptr noundef %nfc_spi_dev, ptr noundef nonnull @.str.6) #6
  %st95hf_supply = getelementptr inbounds %struct.st95hf_context, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %st95hf_supply to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %st95hf_supply, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end13, label %if.end17

do.end13:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %nfc_spi_dev, ptr noundef nonnull @.str.8) #9
  %3 = ptrtoint ptr %st95hf_supply to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %st95hf_supply, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.then5
  %call19 = tail call i32 @regulator_enable(ptr noundef %call7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end17.if.end27_crit_edge, label %do.end24

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %nfc_spi_dev, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end17.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %done = getelementptr inbounds %struct.st95hf_spi_context, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.st95hf_spi_context, ptr %call.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @init_completion.__key) #6
  %spi_lock = getelementptr inbounds %struct.st95hf_spi_context, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %spi_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @st95hf_probe.__key) #6
  %driver_data.i = getelementptr inbounds %struct.device, ptr %nfc_spi_dev, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %nfc_spi_dev, i32 0, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call.i170 = tail call i32 @of_get_named_gpio_flags(ptr noundef %9, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef null) #6
  %enable_gpio = getelementptr inbounds %struct.st95hf_context, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i170, ptr %enable_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i170)
  %11 = icmp ult i32 %call.i170, 2048
  br i1 %11, label %if.end42, label %do.end39

do.end39:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %nfc_spi_dev, ptr noundef nonnull @.str.17) #9
  %12 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %enable_gpio, align 4
  br label %err_disable_regulator

if.end42:                                         ; preds = %if.end27
  %call45 = tail call i32 @devm_gpio_request_one(ptr noundef %nfc_spi_dev, i32 noundef %call.i170, i32 noundef 2, ptr noundef nonnull @.str.19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end42.err_disable_regulator_crit_edge

if.end42.err_disable_regulator_crit_edge:         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_disable_regulator

if.end48:                                         ; preds = %if.end42
  %irq = getelementptr inbounds %struct.spi_device, ptr %nfc_spi_dev, i32 0, i32 8
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp sgt i32 %15, 0
  br i1 %cmp, label %if.then50, label %do.end64

if.then50:                                        ; preds = %if.end48
  %call53 = tail call i32 @devm_request_threaded_irq(ptr noundef %nfc_spi_dev, i32 noundef %15, ptr noundef nonnull @st95hf_irq_handler, ptr noundef nonnull @st95hf_irq_thread_handler, i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %do.end59, label %if.end66

do.end59:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %nfc_spi_dev, ptr noundef nonnull @.str.21) #9
  br label %err_disable_regulator

do.end64:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %nfc_spi_dev, ptr noundef nonnull @.str.24) #9
  br label %err_disable_regulator

if.end66:                                         ; preds = %if.then50
  %call67 = tail call fastcc i32 @st95hf_send_spi_reset_sequence(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end74, label %do.end72

do.end72:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %nfc_spi_dev, ptr noundef nonnull @.str.27) #9
  br label %err_disable_regulator

if.end74:                                         ; preds = %if.end66
  %call75 = tail call fastcc i32 @st95hf_por_sequence(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end82, label %do.end80

do.end80:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %nfc_spi_dev, ptr noundef nonnull @.str.30) #9
  br label %err_disable_regulator

if.end82:                                         ; preds = %if.end74
  %call83 = tail call ptr @nfc_digital_allocate_device(ptr noundef nonnull @st95hf_nfc_digital_ops, i32 noundef 208, i32 noundef 1, i32 noundef 3, i32 noundef 1) #6
  %ddev = getelementptr inbounds %struct.st95hf_context, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %ddev to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call83, ptr %ddev, align 4
  %tobool85.not = icmp eq ptr %call83, null
  br i1 %tobool85.not, label %if.end82.err_disable_regulator_crit_edge, label %if.end87

if.end82.err_disable_regulator_crit_edge:         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_disable_regulator

if.end87:                                         ; preds = %if.end82
  %17 = ptrtoint ptr %call83 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call83, align 4
  %nfcdev = getelementptr inbounds %struct.st95hf_context, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %nfcdev to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %nfcdev, align 4
  %20 = load ptr, ptr %call83, align 4
  %parent.i.i = getelementptr inbounds %struct.nfc_dev, ptr %20, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %nfc_spi_dev, ptr %parent.i.i, align 8
  %22 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ddev, align 4
  %call92 = tail call i32 @nfc_digital_register_device(ptr noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end100, label %do.end97

do.end97:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %nfcdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nfcdev, align 4
  %dev99 = getelementptr inbounds %struct.nfc_dev, ptr %25, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev99, ptr noundef nonnull @.str.33) #9
  %26 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ddev, align 4
  tail call void @nfc_digital_free_device(ptr noundef %27) #6
  br label %err_disable_regulator

if.end100:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ddev, align 4
  %driver_data.i171 = getelementptr inbounds %struct.nfc_digital_dev, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %driver_data.i171 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %driver_data.i171, align 4
  %exchange_lock = getelementptr inbounds %struct.st95hf_context, ptr %call.i, i32 0, i32 7
  %wait_list1.i = getelementptr inbounds %struct.st95hf_context, ptr %call.i, i32 0, i32 7, i32 2
  %31 = ptrtoint ptr %exchange_lock to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %exchange_lock, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.st95hf_context, ptr %call.i, i32 0, i32 7, i32 0, i32 1
  %32 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.st95hf_context, ptr %call.i, i32 0, i32 7, i32 0, i32 2
  %33 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.st95hf_context, ptr %call.i, i32 0, i32 7, i32 0, i32 3
  %34 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.st95hf_context, ptr %call.i, i32 0, i32 7, i32 0, i32 4
  %35 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.st95hf_context, ptr %call.i, i32 0, i32 7, i32 0, i32 4, i32 2
  %36 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.108, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.st95hf_context, ptr %call.i, i32 0, i32 7, i32 0, i32 4, i32 3
  %37 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds %struct.st95hf_context, ptr %call.i, i32 0, i32 7, i32 0, i32 4, i32 4
  %38 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.st95hf_context, ptr %call.i, i32 0, i32 7, i32 0, i32 4, i32 5
  %39 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i = getelementptr inbounds %struct.st95hf_context, ptr %call.i, i32 0, i32 7, i32 1
  %40 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %.compoundliteral.sroa.86.0..sroa_idx.i, align 4
  %41 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.st95hf_context, ptr %call.i, i32 0, i32 7, i32 2, i32 1
  %42 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.109, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %rm_lock = getelementptr inbounds %struct.st95hf_context, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %rm_lock, ptr noundef nonnull @.str.36, ptr noundef nonnull @st95hf_probe.__key.35) #6
  br label %cleanup

err_disable_regulator:                            ; preds = %do.end97, %if.end82.err_disable_regulator_crit_edge, %do.end80, %do.end72, %do.end64, %do.end59, %if.end42.err_disable_regulator_crit_edge, %do.end39
  %ret.0 = phi i32 [ %call45, %if.end42.err_disable_regulator_crit_edge ], [ -22, %do.end59 ], [ %call67, %do.end72 ], [ %call75, %do.end80 ], [ %call92, %do.end97 ], [ -22, %do.end64 ], [ %13, %do.end39 ], [ -12, %if.end82.err_disable_regulator_crit_edge ]
  %st95hf_supply106 = getelementptr inbounds %struct.st95hf_context, ptr %call.i, i32 0, i32 5
  %43 = ptrtoint ptr %st95hf_supply106 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %st95hf_supply106, align 4
  %tobool107.not = icmp eq ptr %44, null
  br i1 %tobool107.not, label %err_disable_regulator.cleanup_crit_edge, label %if.then108

err_disable_regulator.cleanup_crit_edge:          ; preds = %err_disable_regulator
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then108:                                       ; preds = %err_disable_regulator
  call void @__sanitizer_cov_trace_pc() #8
  %call110 = tail call i32 @regulator_disable(ptr noundef nonnull %44) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then108, %err_disable_regulator.cleanup_crit_edge, %if.end100, %do.end24, %do.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.end13 ], [ %call19, %do.end24 ], [ 0, %if.end100 ], [ -12, %entry.cleanup_crit_edge ], [ %ret.0, %if.then108 ], [ %ret.0, %err_disable_regulator.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st95hf_remove(ptr nocapture noundef readonly %nfc_spi_dev) #2 align 64 {
entry:
  %reset_cmd = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reset_cmd) #6
  %0 = ptrtoint ptr %reset_cmd to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %reset_cmd, align 1
  %driver_data.i = getelementptr inbounds %struct.device, ptr %nfc_spi_dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %rm_lock = getelementptr inbounds %struct.st95hf_context, ptr %2, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %rm_lock, i32 noundef 0) #6
  %ddev = getelementptr inbounds %struct.st95hf_context, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ddev, align 4
  tail call void @nfc_digital_unregister_device(ptr noundef %4) #6
  %5 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ddev, align 4
  tail call void @nfc_digital_free_device(ptr noundef %6) #6
  %nfcdev_free = getelementptr inbounds %struct.st95hf_context, ptr %2, i32 0, i32 9
  %7 = ptrtoint ptr %nfcdev_free to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %nfcdev_free, align 4
  tail call void @mutex_unlock(ptr noundef %rm_lock) #6
  %exchange_lock = getelementptr inbounds %struct.st95hf_context, ptr %2, i32 0, i32 7
  %call3 = tail call i32 @down_killable(ptr noundef %exchange_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call3)
  %cmp = icmp eq i32 %call3, -4
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %spidev = getelementptr inbounds %struct.st95hf_spi_context, ptr %2, i32 0, i32 1
  %8 = ptrtoint ptr %spidev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spidev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.110) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call5 = call i32 @st95hf_spi_send(ptr noundef %2, ptr noundef nonnull %reset_cmd, i32 noundef 1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %do.end9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %spidev10 = getelementptr inbounds %struct.st95hf_spi_context, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %spidev10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spidev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.113, i32 noundef %call5) #9
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %if.end.if.end12_crit_edge
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #6
  %st95hf_supply = getelementptr inbounds %struct.st95hf_context, ptr %2, i32 0, i32 5
  %12 = ptrtoint ptr %st95hf_supply to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %st95hf_supply, align 4
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %if.end12.if.end17_crit_edge, label %if.then14

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = call i32 @regulator_disable(ptr noundef nonnull %13) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12.if.end17_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reset_cmd) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st95hf_irq_handler(i32 noundef %irq, ptr noundef %st95hfcontext) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %st95hfcontext to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %st95hfcontext, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %done = getelementptr inbounds %struct.st95hf_spi_context, ptr %st95hfcontext, i32 0, i32 2
  tail call void @complete(ptr noundef %done) #6
  %2 = ptrtoint ptr %st95hfcontext to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %st95hfcontext, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st95hf_irq_thread_handler(i32 noundef %irq, ptr noundef %st95hfcontext) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spidev = getelementptr inbounds %struct.st95hf_spi_context, ptr %st95hfcontext, i32 0, i32 1
  %0 = ptrtoint ptr %spidev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spidev, align 4
  %exchange_lock = getelementptr inbounds %struct.st95hf_context, ptr %st95hfcontext, i32 0, i32 7
  %call = tail call i32 @down_trylock(ptr noundef %exchange_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %exchange_lock) #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 795, i32 noundef 9, ptr noundef nonnull @.str.38) #6
  br label %cleanup

if.end18:                                         ; preds = %entry
  %complete_cb_arg = getelementptr inbounds %struct.st95hf_context, ptr %st95hfcontext, i32 0, i32 4
  %2 = ptrtoint ptr %complete_cb_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %complete_cb_arg, align 4
  %rm_lock = getelementptr inbounds %struct.st95hf_context, ptr %st95hfcontext, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %rm_lock, i32 noundef 0) #6
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %call21 = tail call i32 @st95hf_spi_recv_response(ptr noundef %st95hfcontext, ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %do.end25, label %if.end26

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.39, i32 noundef %call21) #9
  br label %end

if.end26:                                         ; preds = %if.end18
  %nfcdev_free = getelementptr inbounds %struct.st95hf_context, ptr %st95hfcontext, i32 0, i32 9
  %6 = ptrtoint ptr %nfcdev_free to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nfcdev_free, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool27.not = icmp eq i8 %7, 0
  br i1 %tobool27.not, label %if.end29, label %if.end26.end_crit_edge

if.end26.end_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end29:                                         ; preds = %if.end26
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %11)
  %cmp31 = icmp eq i8 %11, -14
  br i1 %cmp31, label %if.then33, label %if.end42

if.then33:                                        ; preds = %if.end29
  %arrayidx35 = getelementptr i8, ptr %9, i32 3
  %12 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %13 to i32
  %call37 = tail call fastcc i32 @st95hf_handle_wtx(ptr noundef %st95hfcontext, i1 noundef zeroext true, i32 noundef %conv36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.then33.end_crit_edge

if.then33.end_crit_edge:                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end40:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @st95hf_irq_thread_handler.wtx, align 1
  tail call void @mutex_unlock(ptr noundef %rm_lock) #6
  br label %cleanup

if.end42:                                         ; preds = %if.end29
  %nfcdev.i = getelementptr inbounds %struct.st95hf_context, ptr %st95hfcontext, i32 0, i32 2
  %14 = ptrtoint ptr %nfcdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nfcdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %9, align 1
  %18 = and i8 %17, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.then.i

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -121, i8 %17)
  %cmp.i = icmp eq i8 %17, -121
  %..i = select i1 %cmp.i, i32 -110, i32 -5
  br label %end

if.end7.i:                                        ; preds = %if.end42
  %current_rf_tech.i = getelementptr inbounds %struct.st95hf_context, ptr %st95hfcontext, i32 0, i32 11
  %19 = ptrtoint ptr %current_rf_tech.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %current_rf_tech.i, align 2
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i8 %20, label %if.end7.i.if.end46_crit_edge [
    i8 0, label %sw.bb.i
    i8 4, label %if.end7.i.sw.bb22.i_crit_edge
    i8 3, label %if.end7.i.sw.bb22.i_crit_edge127
  ]

if.end7.i.sw.bb22.i_crit_edge127:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22.i

if.end7.i.sw.bb22.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22.i

if.end7.i.if.end46_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

sw.bb.i:                                          ; preds = %if.end7.i
  %sendrcv_trflag.i = getelementptr inbounds %struct.st95hf_context, ptr %st95hfcontext, i32 0, i32 6
  %22 = ptrtoint ptr %sendrcv_trflag.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sendrcv_trflag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %23)
  %cmp10.i = icmp eq i8 %23, 40
  br i1 %cmp10.i, label %if.then12.i, label %sw.bb.i.if.end46_crit_edge

sw.bb.i.if.end46_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then12.i:                                      ; preds = %sw.bb.i
  %sub.i = add nsw i32 %call21, -3
  %arrayidx14.i = getelementptr i8, ptr %9, i32 %sub.i
  %24 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %25 to i32
  %and16.i = and i32 %conv15.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.then12.i.if.end46_crit_edge, label %do.end.i

if.then12.i.if.end46_crit_edge:                   ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

do.end.i:                                         ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.75, i32 noundef %conv15.i) #9
  br label %end

sw.bb22.i:                                        ; preds = %if.end7.i.sw.bb22.i_crit_edge, %if.end7.i.sw.bb22.i_crit_edge127
  %sub24.i = add nsw i32 %call21, -1
  %arrayidx25.i = getelementptr i8, ptr %9, i32 %sub24.i
  %26 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx25.i, align 1
  %conv26.i = zext i8 %27 to i32
  %and27.i = and i32 %conv26.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %sw.bb22.i.if.end46_crit_edge, label %do.end32.i

sw.bb22.i.if.end46_crit_edge:                     ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

do.end32.i:                                       ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.75, i32 noundef %conv26.i) #9
  br label %end

if.end46:                                         ; preds = %sw.bb22.i.if.end46_crit_edge, %if.then12.i.if.end46_crit_edge, %sw.bb.i.if.end46_crit_edge, %if.end7.i.if.end46_crit_edge
  %ddev.i = getelementptr inbounds %struct.st95hf_context, ptr %st95hfcontext, i32 0, i32 1
  %28 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ddev.i, align 4
  %30 = ptrtoint ptr %nfcdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nfcdev.i, align 4
  %dev1.i111 = getelementptr inbounds %struct.nfc_dev, ptr %31, i32 0, i32 5
  %call.i = tail call ptr @skb_put(ptr noundef %3, i32 noundef %call21) #6
  %call2.i = tail call ptr @skb_pull(ptr noundef %3, i32 noundef 2) #6
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i, align 4
  %curr_protocol.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %29, i32 0, i32 16
  %34 = ptrtoint ptr %curr_protocol.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %curr_protocol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %35)
  %cmp.i112 = icmp eq i8 %35, 4
  br i1 %cmp.i112, label %land.lhs.true.i, label %if.end46.if.end29.i_crit_edge

if.end46.if.end29.i_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

land.lhs.true.i:                                  ; preds = %if.end46
  %rats.i = getelementptr inbounds %struct.st95hf_context, ptr %st95hfcontext, i32 0, i32 4, i32 3
  %36 = ptrtoint ptr %rats.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rats.i, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i113 = icmp eq i8 %37, 0
  br i1 %tobool.not.i113, label %land.lhs.true.i.if.end29.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.if.end29.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  %arrayidx.i = getelementptr i8, ptr %39, i32 1
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i, align 1
  %conv6.i = zext i8 %41 to i32
  %and.i = and i32 %conv6.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true5.i.if.end29.i_crit_edge, label %if.then.i116

land.lhs.true5.i.if.end29.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.then.i116:                                     ; preds = %land.lhs.true5.i
  %and11.i = and i32 %conv6.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %..i115 = select i1 %tobool12.not.i, i32 2, i32 3
  %arrayidx19.i = getelementptr i8, ptr %39, i32 %..i115
  %42 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %.sink.in.in.i = load i8, ptr %arrayidx19.i, align 1
  %.sink.in.i = lshr i8 %.sink.in.in.i, 4
  %.sink.i = zext i8 %.sink.in.i to i32
  %43 = getelementptr inbounds %struct.st95hf_context, ptr %st95hfcontext, i32 0, i32 12
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink.i, ptr %43, align 4
  %call25.i = tail call fastcc i32 @iso14443_config_fdt(ptr noundef %st95hfcontext, i32 noundef 160) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.then.i116.if.end29.i_crit_edge, label %st95hf_response_handler.exit

if.then.i116.if.end29.i_crit_edge:                ; preds = %if.then.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i116.if.end29.i_crit_edge, %land.lhs.true5.i.if.end29.i_crit_edge, %land.lhs.true.i.if.end29.i_crit_edge, %if.end46.if.end29.i_crit_edge
  %rats30.i = getelementptr inbounds %struct.st95hf_context, ptr %st95hfcontext, i32 0, i32 4, i32 3
  %45 = ptrtoint ptr %rats30.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %rats30.i, align 4
  %46 = ptrtoint ptr %current_rf_tech.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %current_rf_tech.i, align 2
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.115)
  switch i8 %47, label %if.end29.i.if.end50_crit_edge [
    i8 0, label %sw.bb.i120
    i8 4, label %if.end29.i.if.end50.sink.split_crit_edge
    i8 3, label %if.end29.i.if.end50.sink.split_crit_edge128
  ]

if.end29.i.if.end50.sink.split_crit_edge128:      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.sink.split

if.end29.i.if.end50.sink.split_crit_edge:         ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.sink.split

if.end29.i.if.end50_crit_edge:                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

sw.bb.i120:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  %sendrcv_trflag.i119 = getelementptr inbounds %struct.st95hf_context, ptr %st95hfcontext, i32 0, i32 6
  %49 = ptrtoint ptr %sendrcv_trflag.i119 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %sendrcv_trflag.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %50)
  %cmp33.i = icmp eq i8 %50, 40
  %. = select i1 %cmp33.i, i32 -5, i32 -3
  br label %if.end50.sink.split

st95hf_response_handler.exit:                     ; preds = %if.then.i116
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i111, ptr noundef nonnull @.str.79, i32 noundef %call25.i) #9
  br label %end

if.end50.sink.split:                              ; preds = %sw.bb.i120, %if.end29.i.if.end50.sink.split_crit_edge, %if.end29.i.if.end50.sink.split_crit_edge128
  %.sink = phi i32 [ %., %sw.bb.i120 ], [ -3, %if.end29.i.if.end50.sink.split_crit_edge ], [ -3, %if.end29.i.if.end50.sink.split_crit_edge128 ]
  %sub.i121 = add i32 %33, %.sink
  tail call void @skb_trim(ptr noundef %3, i32 noundef %sub.i121) #6
  br label %if.end50

if.end50:                                         ; preds = %if.end50.sink.split, %if.end29.i.if.end50_crit_edge
  %.b109 = load i1, ptr @st95hf_irq_thread_handler.wtx, align 1
  br i1 %.b109, label %if.then52, label %if.end50.if.end57_crit_edge

if.end50.if.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then52:                                        ; preds = %if.end50
  store i1 false, ptr @st95hf_irq_thread_handler.wtx, align 1
  %call53 = tail call fastcc i32 @st95hf_handle_wtx(ptr noundef %st95hfcontext, i1 noundef zeroext false, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then52.if.end57_crit_edge, label %if.then52.end_crit_edge

if.then52.end_crit_edge:                          ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.then52.if.end57_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.end57:                                         ; preds = %if.then52.if.end57_crit_edge, %if.end50.if.end57_crit_edge
  %complete_cb = getelementptr inbounds %struct.st95hf_context, ptr %st95hfcontext, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %complete_cb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %complete_cb, align 4
  %53 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ddev.i, align 4
  %cb_usrarg = getelementptr inbounds %struct.st95hf_context, ptr %st95hfcontext, i32 0, i32 4, i32 2
  %55 = ptrtoint ptr %cb_usrarg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cb_usrarg, align 4
  tail call void %52(ptr noundef %54, ptr noundef %56, ptr noundef %3) #6
  tail call void @up(ptr noundef %exchange_lock) #6
  tail call void @mutex_unlock(ptr noundef %rm_lock) #6
  br label %cleanup

end:                                              ; preds = %if.then52.end_crit_edge, %st95hf_response_handler.exit, %do.end32.i, %do.end.i, %if.then.i, %if.then33.end_crit_edge, %if.end26.end_crit_edge, %do.end25
  %result.0 = phi i32 [ %call21, %do.end25 ], [ %call37, %if.then33.end_crit_edge ], [ %call25.i, %st95hf_response_handler.exit ], [ %call53, %if.then52.end_crit_edge ], [ -19, %if.end26.end_crit_edge ], [ %..i, %if.then.i ], [ -5, %do.end32.i ], [ -5, %do.end.i ]
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #6
  store i1 false, ptr @st95hf_irq_thread_handler.wtx, align 1
  %rats = getelementptr inbounds %struct.st95hf_context, ptr %st95hfcontext, i32 0, i32 4, i32 3
  %57 = ptrtoint ptr %rats to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %rats, align 4
  %58 = inttoptr i32 %result.0 to ptr
  %complete_cb61 = getelementptr inbounds %struct.st95hf_context, ptr %st95hfcontext, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %complete_cb61 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %complete_cb61, align 4
  %ddev62 = getelementptr inbounds %struct.st95hf_context, ptr %st95hfcontext, i32 0, i32 1
  %61 = ptrtoint ptr %ddev62 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ddev62, align 4
  %cb_usrarg63 = getelementptr inbounds %struct.st95hf_context, ptr %st95hfcontext, i32 0, i32 4, i32 2
  %63 = ptrtoint ptr %cb_usrarg63 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cb_usrarg63, align 4
  tail call void %60(ptr noundef %62, ptr noundef %64, ptr noundef %58) #6
  tail call void @up(ptr noundef %exchange_lock) #6
  tail call void @mutex_unlock(ptr noundef %rm_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %end, %if.end57, %if.end40, %if.then
  %retval.0 = phi i32 [ 1, %end ], [ 1, %if.end40 ], [ 1, %if.end57 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @st95hf_send_spi_reset_sequence(ptr noundef %st95context) unnamed_addr #2 align 64 {
entry:
  %reset_cmd = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reset_cmd) #6
  %0 = ptrtoint ptr %reset_cmd to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %reset_cmd, align 1
  %call = call i32 @st95hf_spi_send(ptr noundef %st95context, ptr noundef nonnull %reset_cmd, i32 noundef 1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %spidev = getelementptr inbounds %struct.st95hf_spi_context, ptr %st95context, i32 0, i32 1
  %1 = ptrtoint ptr %spidev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %spidev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.81, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #6
  %enable_gpio.i = getelementptr inbounds %struct.st95hf_context, ptr %st95context, i32 0, i32 3
  %3 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %enable_gpio.i, align 4
  %call.i.i = call ptr @gpio_to_desc(i32 noundef %4) #6
  call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef 1) #6
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %5 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enable_gpio.i, align 4
  %call.i5.i = call ptr @gpio_to_desc(i32 noundef %6) #6
  call void @gpiod_set_raw_value(ptr noundef %call.i5.i, i32 noundef 0) #6
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %7 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enable_gpio.i, align 4
  %call.i6.i = call ptr @gpio_to_desc(i32 noundef %8) #6
  call void @gpiod_set_raw_value(ptr noundef %call.i6.i, i32 noundef 1) #6
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reset_cmd) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @st95hf_por_sequence(ptr noundef %st95context) unnamed_addr #2 align 64 {
entry:
  %spi_cmd_buffer.i.i = alloca [7 x i8], align 1
  %echo_response.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_gpio.i = getelementptr inbounds %struct.st95hf_context, ptr %st95context, i32 0, i32 3
  %0 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enable_gpio.i, align 4
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %1) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %2 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_gpio.i, align 4
  %call.i5.i = tail call ptr @gpio_to_desc(i32 noundef %3) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i5.i, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %4 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enable_gpio.i, align 4
  %call.i6.i = tail call ptr @gpio_to_desc(i32 noundef %5) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i6.i, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #6
  %6 = getelementptr inbounds [7 x i8], ptr %spi_cmd_buffer.i.i, i32 0, i32 1
  %7 = getelementptr inbounds [7 x i8], ptr %spi_cmd_buffer.i.i, i32 0, i32 2
  %spidev.i.i = getelementptr inbounds %struct.st95hf_spi_context, ptr %st95context, i32 0, i32 1
  %8 = getelementptr inbounds i8, ptr %spi_cmd_buffer.i.i, i32 3
  br label %do.body

do.body:                                          ; preds = %if.end10.do.body_crit_edge, %entry
  %nth_attempt.0 = phi i32 [ 1, %entry ], [ %inc, %if.end10.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %echo_response.i) #6
  %9 = ptrtoint ptr %echo_response.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %echo_response.i, align 1, !annotation !232
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %spi_cmd_buffer.i.i) #6
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 -1, ptr %8, align 1
  %11 = ptrtoint ptr %spidev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %spidev.i.i, align 4
  %13 = ptrtoint ptr %spi_cmd_buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %spi_cmd_buffer.i.i, align 1
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 85, ptr %6, align 1
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %7, align 1
  %call.i.i22 = call i32 @st95hf_spi_send(ptr noundef %st95context, ptr noundef nonnull %spi_cmd_buffer.i.i, i32 noundef 2, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %tobool40.not.i.i = icmp eq i32 %call.i.i22, 0
  br i1 %tobool40.not.i.i, label %if.end.i, label %st95hf_send_recv_cmd.exit.i

st95hf_send_recv_cmd.exit.i:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.67, i32 noundef %call.i.i22) #9
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %spi_cmd_buffer.i.i) #6
  br label %st95hf_echo_command.exit

if.end.i:                                         ; preds = %do.body
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %spi_cmd_buffer.i.i) #6
  %call1.i = call i32 @st95hf_spi_recv_echo_res(ptr noundef %st95context, ptr noundef nonnull %echo_response.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end5.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %spidev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spidev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.85, i32 noundef %call1.i) #9
  br label %st95hf_echo_command.exit

if.end5.i:                                        ; preds = %if.end.i
  %18 = ptrtoint ptr %echo_response.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %echo_response.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %19)
  %cmp.i = icmp eq i8 %19, 85
  br i1 %cmp.i, label %if.end5.i.st95hf_echo_command.exit_crit_edge, label %do.end11.i

if.end5.i.st95hf_echo_command.exit_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %st95hf_echo_command.exit

do.end11.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i8 %19 to i32
  %20 = ptrtoint ptr %spidev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spidev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.88, i32 noundef %conv.i) #9
  br label %st95hf_echo_command.exit

st95hf_echo_command.exit:                         ; preds = %do.end11.i, %if.end5.i.st95hf_echo_command.exit_crit_edge, %do.end.i, %st95hf_send_recv_cmd.exit.i
  %retval.0.i23 = phi i32 [ %call1.i, %do.end.i ], [ -5, %do.end11.i ], [ %call.i.i22, %st95hf_send_recv_cmd.exit.i ], [ 0, %if.end5.i.st95hf_echo_command.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %echo_response.i) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st95hf_por_sequence.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st95hf_por_sequence, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !233

if.then:                                          ; preds = %st95hf_echo_command.exit
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %spidev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spidev.i.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @st95hf_por_sequence.__UNIQUE_ID_ddebug369, ptr noundef %23, ptr noundef nonnull @.str.84, i32 noundef %retval.0.i23, i32 noundef %nth_attempt.0) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %st95hf_echo_command.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i23)
  %tobool5.not = icmp eq i32 %retval.0.i23, 0
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nth_attempt.0)
  %cmp = icmp eq i32 %nth_attempt.0, 2
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %enable_gpio.i, align 4
  %call.i.i25 = call ptr @gpio_to_desc(i32 noundef %25) #6
  call void @gpiod_set_raw_value(ptr noundef %call.i.i25, i32 noundef 1) #6
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %26 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %enable_gpio.i, align 4
  %call.i5.i26 = call ptr @gpio_to_desc(i32 noundef %27) #6
  call void @gpiod_set_raw_value(ptr noundef %call.i5.i26, i32 noundef 0) #6
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %28 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %enable_gpio.i, align 4
  %call.i6.i27 = call ptr @gpio_to_desc(i32 noundef %29) #6
  call void @gpiod_set_raw_value(ptr noundef %call.i6.i27, i32 noundef 1) #6
  br label %if.end10

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = call fastcc i32 @st95hf_send_spi_reset_sequence(ptr noundef %st95context)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  call void @usleep_range_state(i32 noundef 50000, i32 noundef 51000, i32 noundef 2) #6
  %inc = add nuw nsw i32 %nth_attempt.0, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %if.end10.cleanup_crit_edge, label %if.end10.do.body_crit_edge

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ -110, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_digital_allocate_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_digital_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_digital_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st95hf_spi_recv_response(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @st95hf_handle_wtx(ptr noundef %stcontext, i1 noundef zeroext %new_wtx, i32 noundef %wtx_val) unnamed_addr #2 align 64 {
entry:
  %spi_cmd_buffer.i = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nfcdev = getelementptr inbounds %struct.st95hf_context, ptr %stcontext, i32 0, i32 2
  %0 = ptrtoint ptr %nfcdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nfcdev, align 4
  %dev1 = getelementptr inbounds %struct.nfc_dev, ptr %1, i32 0, i32 5
  br i1 %new_wtx, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %and = and i32 %wtx_val, 63
  %call = tail call fastcc i32 @iso14443_config_fdt(ptr noundef %stcontext, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %for.body.i.preheader, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.41, i32 noundef %call) #9
  br label %cleanup

for.body.i.preheader:                             ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %spi_cmd_buffer.i) #6
  %2 = getelementptr inbounds [7 x i8], ptr %spi_cmd_buffer.i, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %spi_cmd_buffer.i, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %spi_cmd_buffer.i, i32 0, i32 3
  %spidev.i = getelementptr inbounds %struct.st95hf_spi_context, ptr %stcontext, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 -1, ptr %4, align 1
  %6 = ptrtoint ptr %spidev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spidev.i, align 4
  %8 = ptrtoint ptr %spi_cmd_buffer.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %spi_cmd_buffer.i, align 1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %2, align 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %3, align 1
  %11 = call ptr @memcpy(ptr %4, ptr getelementptr inbounds ([9 x %struct.cmd], ptr @cmd_array, i32 0, i32 6, i32 3), i32 3)
  %arrayidx34.i = getelementptr inbounds [7 x i8], ptr %spi_cmd_buffer.i, i32 0, i32 4
  %conv31.i.le = trunc i32 %wtx_val to i8
  %12 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv31.i.le, ptr %arrayidx34.i, align 1
  %call.i = call i32 @st95hf_spi_send(ptr noundef %stcontext, ptr noundef nonnull %spi_cmd_buffer.i, i32 noundef 6, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool40.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool40.not.i, label %st95hf_send_recv_cmd.exit, label %do.end10

st95hf_send_recv_cmd.exit:                        ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %spi_cmd_buffer.i) #6
  br label %cleanup

do.end10:                                         ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.67, i32 noundef %call.i) #9
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %spi_cmd_buffer.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.44, i32 noundef %call.i) #9
  br label %cleanup

if.end12:                                         ; preds = %entry
  %ddev = getelementptr inbounds %struct.st95hf_context, ptr %stcontext, i32 0, i32 1
  %13 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ddev, align 4
  %curr_protocol = getelementptr inbounds %struct.nfc_digital_dev, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %curr_protocol to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %curr_protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %16)
  %switch.selectcmp = icmp eq i8 %16, 6
  %switch.select = select i1 %switch.selectcmp, i32 255, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %16)
  %switch.selectcmp50 = icmp eq i8 %16, 4
  %switch.select51 = select i1 %switch.selectcmp50, i32 160, i32 %switch.select
  %call23 = tail call fastcc i32 @iso14443_config_fdt(ptr noundef %stcontext, i32 noundef %switch.select51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end12.cleanup_crit_edge, label %do.end28

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end28:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.47, i32 noundef %call23) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.end12.cleanup_crit_edge, %do.end10, %st95hf_send_recv_cmd.exit, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call.i, %do.end10 ], [ 0, %st95hf_send_recv_cmd.exit ], [ %call23, %do.end28 ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iso14443_config_fdt(ptr noundef %st95context, i32 noundef %wtxm) unnamed_addr #2 align 64 {
entry:
  %new_params = alloca [2 x %struct.param_list], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spidev = getelementptr inbounds %struct.st95hf_spi_context, ptr %st95context, i32 0, i32 1
  %0 = ptrtoint ptr %spidev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spidev, align 4
  %ddev = getelementptr inbounds %struct.st95hf_context, ptr %st95context, i32 0, i32 1
  %2 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddev, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %new_params) #6
  %4 = getelementptr inbounds %struct.param_list, ptr %new_params, i32 0, i32 1
  %5 = getelementptr inbounds [2 x %struct.param_list], ptr %new_params, i32 0, i32 1
  %6 = getelementptr inbounds [2 x %struct.param_list], ptr %new_params, i32 0, i32 1, i32 1
  %curr_protocol = getelementptr inbounds %struct.nfc_digital_dev, ptr %3, i32 0, i32 16
  %7 = getelementptr inbounds i8, ptr %new_params, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 12)
  %9 = ptrtoint ptr %curr_protocol to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %curr_protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %10)
  %cmp = icmp eq i8 %10, 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fwi = getelementptr inbounds %struct.st95hf_context, ptr %st95context, i32 0, i32 12
  %11 = ptrtoint ptr %fwi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fwi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp3 = icmp slt i32 %12, 4
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.endthread-pre-split_crit_edge

land.lhs.true.if.endthread-pre-split_crit_edge:   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.endthread-pre-split

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %fwi to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %fwi, align 4
  br label %if.endthread-pre-split

if.endthread-pre-split:                           ; preds = %if.then, %land.lhs.true.if.endthread-pre-split_crit_edge
  %14 = ptrtoint ptr %curr_protocol to i32
  call void @__asan_load1_noabort(i32 %14)
  %.pr = load i8, ptr %curr_protocol, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %entry.if.end_crit_edge
  %15 = phi i8 [ %.pr, %if.endthread-pre-split ], [ %10, %entry.if.end_crit_edge ]
  %16 = ptrtoint ptr %new_params to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %new_params, align 4
  %17 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.116)
  switch i8 %15, label %if.end.cleanup_crit_edge [
    i8 4, label %if.end22.thread
    i8 6, label %if.end22.thread89
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.thread:                                  ; preds = %if.end
  %fwi11 = getelementptr inbounds %struct.st95hf_context, ptr %st95context, i32 0, i32 12
  %18 = ptrtoint ptr %fwi11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fwi11, align 4
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %4, align 4
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %5, align 4
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %wtxm, ptr %6, align 4
  %call = call fastcc i32 @st95hf_send_recv_cmd(ptr noundef %st95context, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %new_params, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end30, label %do.end

if.end22.thread89:                                ; preds = %if.end
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %4, align 4
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %5, align 4
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %wtxm, ptr %6, align 4
  %call40 = call fastcc i32 @st95hf_send_recv_cmd(ptr noundef %st95context, i32 noundef 5, i32 noundef 2, ptr noundef nonnull %new_params, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end46, label %do.end45

do.end:                                           ; preds = %if.end22.thread
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.49, i32 noundef %call) #9
  br label %cleanup

if.end30:                                         ; preds = %if.end22.thread
  %nfcdev.i = getelementptr inbounds %struct.st95hf_context, ptr %st95context, i32 0, i32 2
  %26 = ptrtoint ptr %nfcdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nfcdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %27, i32 0, i32 5
  %call.i = call fastcc i32 @st95hf_send_recv_cmd(ptr noundef %st95context, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.60, i32 noundef %call.i) #9
  br label %do.end36

if.end.i:                                         ; preds = %if.end30
  %call2.i = call fastcc i32 @st95hf_send_recv_cmd(ptr noundef %st95context, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %do.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.63, i32 noundef %call2.i) #9
  br label %do.end36

do.end36:                                         ; preds = %do.end7.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call2.i, %do.end7.i ], [ %call.i, %do.end.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.52, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

do.end45:                                         ; preds = %if.end22.thread89
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.55, i32 noundef %call40) #9
  br label %cleanup

if.end46:                                         ; preds = %if.end22.thread89
  %nfcdev.i83 = getelementptr inbounds %struct.st95hf_context, ptr %st95context, i32 0, i32 2
  %28 = ptrtoint ptr %nfcdev.i83 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nfcdev.i83, align 4
  %call.i84 = call fastcc i32 @st95hf_send_recv_cmd(ptr noundef %st95context, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool.not.i85 = icmp eq i32 %call.i84, 0
  br i1 %tobool.not.i85, label %if.end46.cleanup_crit_edge, label %do.end52

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %dev1.i86 = getelementptr inbounds %struct.nfc_dev, ptr %29, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i86, ptr noundef nonnull @.str.65, i32 noundef %call.i84) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.58, i32 noundef %call.i84) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %if.end46.cleanup_crit_edge, %do.end45, %do.end36, %if.end.i.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %do.end45 ], [ %call.i84, %do.end52 ], [ %call, %do.end ], [ %retval.0.i.ph, %do.end36 ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end46.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %new_params) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @st95hf_send_recv_cmd(ptr noundef %st95context, i32 noundef %cmd, i32 noundef %no_modif, ptr noundef readonly %list_array, i1 noundef zeroext %recv_res) unnamed_addr #2 align 64 {
entry:
  %spi_cmd_buffer = alloca [7 x i8], align 1
  %st95hf_response_arr = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %spi_cmd_buffer) #6
  %0 = getelementptr inbounds [7 x i8], ptr %spi_cmd_buffer, i32 0, i32 1
  %1 = getelementptr inbounds [7 x i8], ptr %spi_cmd_buffer, i32 0, i32 2
  %2 = getelementptr inbounds [7 x i8], ptr %spi_cmd_buffer, i32 0, i32 3
  %spidev = getelementptr inbounds %struct.st95hf_spi_context, ptr %st95context, i32 0, i32 1
  %3 = getelementptr inbounds i8, ptr %spi_cmd_buffer, i32 3
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 -1, ptr %3, align 1
  %5 = ptrtoint ptr %spidev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spidev, align 4
  %arrayidx = getelementptr [9 x %struct.cmd], ptr @cmd_array, i32 0, i32 %cmd
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %8)
  %cmp = icmp sgt i32 %8, 7
  br i1 %cmp, label %entry.cleanup71_crit_edge, label %if.end

entry.cleanup71_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

if.end:                                           ; preds = %entry
  %no_cmd_params = getelementptr [9 x %struct.cmd], ptr @cmd_array, i32 0, i32 %cmd, i32 2
  %9 = ptrtoint ptr %no_cmd_params to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %no_cmd_params, align 1
  %conv = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %no_modif)
  %cmp3 = icmp slt i32 %conv, %no_modif
  br i1 %cmp3, label %if.end.cleanup71_crit_edge, label %if.end6

if.end.cleanup71_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %no_modif)
  %tobool.not = icmp ne i32 %no_modif, 0
  %tobool7.not = icmp eq ptr %list_array, null
  %or.cond = and i1 %tobool.not, %tobool7.not
  br i1 %or.cond, label %if.end6.cleanup71_crit_edge, label %if.end9

if.end6.cleanup71_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

if.end9:                                          ; preds = %if.end6
  %11 = ptrtoint ptr %spi_cmd_buffer to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %spi_cmd_buffer, align 1
  %cmd_id = getelementptr [9 x %struct.cmd], ptr @cmd_array, i32 0, i32 %cmd, i32 1
  %12 = ptrtoint ptr %cmd_id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cmd_id, align 4
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %0, align 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %10, ptr %1, align 1
  %cmd_params = getelementptr [9 x %struct.cmd], ptr @cmd_array, i32 0, i32 %cmd, i32 3
  %16 = call ptr @memcpy(ptr %2, ptr %cmd_params, i32 %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %no_modif)
  %cmp20104 = icmp sgt i32 %no_modif, 0
  br i1 %cmp20104, label %if.end9.for.body_crit_edge, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

for.body:                                         ; preds = %if.end29.for.body_crit_edge, %if.end9.for.body_crit_edge
  %i.0105 = phi i32 [ %inc, %if.end29.for.body_crit_edge ], [ 0, %if.end9.for.body_crit_edge ]
  %arrayidx22 = getelementptr %struct.param_list, ptr %list_array, i32 %i.0105
  %17 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv)
  %cmp26.not = icmp slt i32 %18, %conv
  br i1 %cmp26.not, label %if.end29, label %for.body.cleanup71_crit_edge

for.body.cleanup71_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

if.end29:                                         ; preds = %for.body
  %new_param_val = getelementptr %struct.param_list, ptr %list_array, i32 %i.0105, i32 1
  %19 = ptrtoint ptr %new_param_val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %new_param_val, align 4
  %conv31 = trunc i32 %20 to i8
  %add = add i32 %18, 3
  %arrayidx34 = getelementptr [7 x i8], ptr %spi_cmd_buffer, i32 0, i32 %add
  %21 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv31, ptr %arrayidx34, align 1
  %inc = add nuw nsw i32 %i.0105, 1
  %exitcond.not = icmp eq i32 %inc, %no_modif
  br i1 %exitcond.not, label %if.end29.for.end_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end29.for.end_crit_edge, %if.end9.for.end_crit_edge
  %req = getelementptr [9 x %struct.cmd], ptr @cmd_array, i32 0, i32 %cmd, i32 4
  %22 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %req, align 4
  %call = call i32 @st95hf_spi_send(ptr noundef %st95context, ptr noundef nonnull %spi_cmd_buffer, i32 noundef %8, i32 noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool40.not = icmp eq i32 %call, 0
  br i1 %tobool40.not, label %if.end42, label %do.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.67, i32 noundef %call) #9
  br label %cleanup71

if.end42:                                         ; preds = %for.end
  %24 = and i32 %cmd, 268435455
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %24)
  %cmp45.not = icmp ne i32 %24, 6
  %25 = and i1 %cmp45.not, %recv_res
  br i1 %25, label %if.then50, label %if.end42.cleanup71_crit_edge

if.end42.cleanup71_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

if.then50:                                        ; preds = %if.end42
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %st95hf_response_arr) #6
  %26 = ptrtoint ptr %st95hf_response_arr to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %st95hf_response_arr, align 1, !annotation !232
  %27 = getelementptr inbounds [2 x i8], ptr %st95hf_response_arr, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %27, align 1, !annotation !232
  %call53 = call i32 @st95hf_spi_recv_response(ptr noundef %st95context, ptr noundef nonnull %st95hf_response_arr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %do.end59, label %if.end60

do.end59:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.70, i32 noundef %call53) #9
  br label %cleanup.thread

if.end60:                                         ; preds = %if.then50
  %29 = ptrtoint ptr %st95hf_response_arr to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %st95hf_response_arr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool62.not = icmp eq i8 %30, 0
  br i1 %tobool62.not, label %cleanup, label %do.end66

do.end66:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %conv68 = zext i8 %30 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.73, i32 noundef %conv68) #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end66, %do.end59
  %retval.0.ph = phi i32 [ -5, %do.end66 ], [ %call53, %do.end59 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %st95hf_response_arr) #6
  br label %cleanup71

cleanup:                                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %st95hf_response_arr) #6
  br label %cleanup71

cleanup71:                                        ; preds = %cleanup, %cleanup.thread, %if.end42.cleanup71_crit_edge, %do.end, %for.body.cleanup71_crit_edge, %if.end6.cleanup71_crit_edge, %if.end.cleanup71_crit_edge, %entry.cleanup71_crit_edge
  %retval.1 = phi i32 [ %call, %do.end ], [ -22, %entry.cleanup71_crit_edge ], [ -22, %if.end.cleanup71_crit_edge ], [ -22, %if.end6.cleanup71_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ 0, %cleanup ], [ 0, %if.end42.cleanup71_crit_edge ], [ -22, %for.body.cleanup71_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %spi_cmd_buffer) #6
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st95hf_spi_send(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st95hf_spi_recv_echo_res(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st95hf_in_configure_hw(ptr nocapture noundef readonly %ddev, i32 noundef %type, i32 noundef %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @st95hf_select_protocol(ptr noundef %1, i32 noundef %param)
  br label %cleanup

if.then3:                                         ; preds = %entry
  %3 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %param, label %if.then3.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 6, label %if.then3.sw.bb6_crit_edge
    i32 7, label %if.then3.sw.bb6_crit_edge15
    i32 2, label %if.then3.sw.bb6_crit_edge16
  ]

if.then3.sw.bb6_crit_edge16:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

if.then3.sw.bb6_crit_edge15:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

if.then3.sw.bb6_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %sendrcv_trflag = getelementptr inbounds %struct.st95hf_context, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %sendrcv_trflag to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 7, ptr %sendrcv_trflag, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %sendrcv_trflag5 = getelementptr inbounds %struct.st95hf_context, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %sendrcv_trflag5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 8, ptr %sendrcv_trflag5, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %if.then3.sw.bb6_crit_edge, %if.then3.sw.bb6_crit_edge15, %if.then3.sw.bb6_crit_edge16
  %sendrcv_trflag7 = getelementptr inbounds %struct.st95hf_context, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %sendrcv_trflag7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 40, ptr %sendrcv_trflag7, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %sw.bb4, %sw.bb, %if.then3.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb ], [ 0, %sw.bb4 ], [ 0, %sw.bb6 ], [ 0, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st95hf_in_send_cmd(ptr nocapture noundef readonly %ddev, ptr noundef %skb, i16 noundef zeroext %timeout, ptr noundef %cb, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @nfc_alloc_recv_skb(i32 noundef 280, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %current_rf_tech = getelementptr inbounds %struct.st95hf_context, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %current_rf_tech to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %current_rf_tech, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.119)
  switch i8 %3, label %if.end.free_skb_resp_crit_edge [
    i8 0, label %sw.bb
    i8 4, label %if.end.sw.bb2_crit_edge
    i8 3, label %if.end.sw.bb2_crit_edge84
  ]

if.end.sw.bb2_crit_edge84:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

if.end.free_skb_resp_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_skb_resp

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %add = add i32 %6, 1
  %sendrcv_trflag = getelementptr inbounds %struct.st95hf_context, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %sendrcv_trflag to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sendrcv_trflag, align 4
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #6
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %call.i, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge84
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len3, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %len_data_to_tag.0 = phi i32 [ %11, %sw.bb2 ], [ %add, %sw.bb ]
  %call4 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 3) #6
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %13, align 1
  %15 = load ptr, ptr %data, align 4
  %arrayidx6 = getelementptr i8, ptr %15, i32 1
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %arrayidx6, align 1
  %conv7 = trunc i32 %len_data_to_tag.0 to i8
  %17 = load ptr, ptr %data, align 4
  %arrayidx9 = getelementptr i8, ptr %17, i32 2
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv7, ptr %arrayidx9, align 1
  %complete_cb_arg = getelementptr inbounds %struct.st95hf_context, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %complete_cb_arg to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call1, ptr %complete_cb_arg, align 4
  %cb_usrarg = getelementptr inbounds %struct.st95hf_context, ptr %1, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %cb_usrarg to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arg, ptr %cb_usrarg, align 4
  %complete_cb = getelementptr inbounds %struct.st95hf_context, ptr %1, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %complete_cb to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cb, ptr %complete_cb, align 4
  %22 = load ptr, ptr %data, align 4
  %arrayidx14 = getelementptr i8, ptr %22, i32 3
  %23 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %24)
  %cmp = icmp eq i8 %24, -32
  br i1 %cmp, label %land.lhs.true, label %sw.epilog.if.end22_crit_edge

sw.epilog.if.end22_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

land.lhs.true:                                    ; preds = %sw.epilog
  %curr_protocol = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 16
  %25 = ptrtoint ptr %curr_protocol to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %curr_protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %26)
  %cmp18 = icmp eq i8 %26, 4
  br i1 %cmp18, label %if.then20, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %rats = getelementptr inbounds %struct.st95hf_context, ptr %1, i32 0, i32 4, i32 3
  %27 = ptrtoint ptr %rats to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %rats, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %land.lhs.true.if.end22_crit_edge, %sw.epilog.if.end22_crit_edge
  %exchange_lock = getelementptr inbounds %struct.st95hf_context, ptr %1, i32 0, i32 7
  %call23 = tail call i32 @down_killable(ptr noundef %exchange_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end43, label %do.end

do.end:                                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 965, i32 noundef 9, ptr noundef nonnull @.str.103) #6
  br label %free_skb_resp

if.end43:                                         ; preds = %if.end22
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %len45 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %30 = ptrtoint ptr %len45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len45, align 4
  %call46 = tail call i32 @st95hf_spi_send(ptr noundef %1, ptr noundef %29, i32 noundef %31, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end53, label %do.end51

do.end51:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %nfcdev = getelementptr inbounds %struct.st95hf_context, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %nfcdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nfcdev, align 4
  %dev = getelementptr inbounds %struct.nfc_dev, ptr %33, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.104, i32 noundef %call46) #9
  tail call void @up(ptr noundef %exchange_lock) #6
  br label %free_skb_resp

if.end53:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  br label %cleanup

free_skb_resp:                                    ; preds = %do.end51, %do.end, %if.end.free_skb_resp_crit_edge
  %rc.0 = phi i32 [ %call23, %do.end ], [ %call46, %do.end51 ], [ -22, %if.end.free_skb_resp_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %free_skb_resp, %if.end53, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %free_skb_resp ], [ 0, %if.end53 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @st95hf_tg_configure_hw(ptr nocapture noundef readnone %ddev, i32 noundef %type, i32 noundef %param) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @st95hf_tg_send_cmd(ptr nocapture noundef readnone %ddev, ptr nocapture noundef readnone %skb, i16 noundef zeroext %timeout, ptr nocapture noundef readnone %cb, ptr nocapture noundef readnone %arg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @st95hf_tg_listen(ptr nocapture noundef readnone %ddev, i16 noundef zeroext %timeout, ptr nocapture noundef readnone %cb, ptr nocapture noundef readnone %arg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @st95hf_tg_get_rf_tech(ptr nocapture noundef readnone %ddev, ptr nocapture noundef readnone %rf_tech) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st95hf_switch_rf(ptr nocapture noundef readonly %ddev, i1 noundef zeroext %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  br i1 %on, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %curr_rf_tech = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 17
  %2 = ptrtoint ptr %curr_rf_tech to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %curr_rf_tech, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call fastcc i32 @st95hf_select_protocol(ptr noundef %1, i32 noundef %conv)
  br label %cleanup

if.end:                                           ; preds = %entry
  %nfcdev.i = getelementptr inbounds %struct.st95hf_context, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %nfcdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nfcdev.i, align 4
  %call.i = tail call fastcc i32 @st95hf_send_recv_cmd(ptr noundef %1, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %do.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %5, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.106, i32 noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @st95hf_abort_cmd(ptr nocapture noundef %ddev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @st95hf_select_protocol(ptr noundef %stcontext, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nfcdev = getelementptr inbounds %struct.st95hf_context, ptr %stcontext, i32 0, i32 2
  %0 = ptrtoint ptr %nfcdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nfcdev, align 4
  %dev1 = getelementptr inbounds %struct.nfc_dev, ptr %1, i32 0, i32 5
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 4, label %sw.bb9
    i32 3, label %sw.bb25
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %current_rf_tech = getelementptr inbounds %struct.st95hf_context, ptr %stcontext, i32 0, i32 11
  %3 = ptrtoint ptr %current_rf_tech to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %current_rf_tech, align 2
  %call = tail call fastcc i32 @st95hf_send_recv_cmd(ptr noundef %stcontext, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.90, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %4 = ptrtoint ptr %nfcdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nfcdev, align 4
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %5, i32 0, i32 5
  %call.i = tail call fastcc i32 @st95hf_send_recv_cmd(ptr noundef %stcontext, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.60, i32 noundef %call.i) #9
  br label %do.end7

if.end.i:                                         ; preds = %if.end
  %call2.i = tail call fastcc i32 @st95hf_send_recv_cmd(ptr noundef %stcontext, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %do.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.63, i32 noundef %call2.i) #9
  br label %do.end7

do.end7:                                          ; preds = %do.end7.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call2.i, %do.end7.i ], [ %call.i, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.93, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %current_rf_tech10 = getelementptr inbounds %struct.st95hf_context, ptr %stcontext, i32 0, i32 11
  %6 = ptrtoint ptr %current_rf_tech10 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %current_rf_tech10, align 2
  %call11 = tail call fastcc i32 @st95hf_send_recv_cmd(ptr noundef %stcontext, i32 noundef 5, i32 noundef 0, ptr noundef null, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end17, label %do.end16

do.end16:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.96, i32 noundef %call11) #9
  br label %cleanup

if.end17:                                         ; preds = %sw.bb9
  tail call void @usleep_range_state(i32 noundef 50000, i32 noundef 60000, i32 noundef 2) #6
  %7 = ptrtoint ptr %nfcdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nfcdev, align 4
  %call.i62 = tail call fastcc i32 @st95hf_send_recv_cmd(ptr noundef %stcontext, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool.not.i63 = icmp eq i32 %call.i62, 0
  br i1 %tobool.not.i63, label %if.end17.cleanup_crit_edge, label %do.end23

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %dev1.i64 = getelementptr inbounds %struct.nfc_dev, ptr %8, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i64, ptr noundef nonnull @.str.65, i32 noundef %call.i62) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.99, i32 noundef %call.i62) #9
  br label %cleanup

sw.bb25:                                          ; preds = %entry
  %current_rf_tech26 = getelementptr inbounds %struct.st95hf_context, ptr %stcontext, i32 0, i32 11
  %9 = ptrtoint ptr %current_rf_tech26 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 3, ptr %current_rf_tech26, align 2
  %call27 = tail call fastcc i32 @st95hf_send_recv_cmd(ptr noundef %stcontext, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %sw.bb25.cleanup_crit_edge, label %do.end32

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end32:                                         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.96, i32 noundef %call27) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %sw.bb25.cleanup_crit_edge, %do.end23, %if.end17.cleanup_crit_edge, %do.end16, %do.end7, %if.end.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %do.end32 ], [ %call11, %do.end16 ], [ %call.i62, %do.end23 ], [ %call, %do.end ], [ %retval.0.i.ph, %do.end7 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb25.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_alloc_recv_skb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_digital_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !40, !42, !43, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !71, !73, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !145, !147, !148, !150, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !173, !175, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !195, !197, !198, !199, !200, !202, !203, !204, !205, !207, !209, !211, !213, !214, !215, !216, !218, !219, !220}
!llvm.module.flags = !{!222, !223, !224, !225, !226, !227, !228, !229}
!llvm.ident = !{!230}

!0 = !{ptr @__initcall__kmod_st95hf__370_1255_st95hf_driver_init6, !1, !"__initcall__kmod_st95hf__370_1255_st95hf_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nfc/st95hf/core.c", i32 1255, i32 1}
!2 = !{ptr @__exitcall_st95hf_driver_exit, !1, !"__exitcall_st95hf_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author371, !4, !"__UNIQUE_ID_author371", i1 false, i1 false}
!4 = !{!"../drivers/nfc/st95hf/core.c", i32 1257, i32 1}
!5 = !{ptr @__UNIQUE_ID_description372, !6, !"__UNIQUE_ID_description372", i1 false, i1 false}
!6 = !{!"../drivers/nfc/st95hf/core.c", i32 1258, i32 1}
!7 = !{ptr @__UNIQUE_ID_file373, !8, !"__UNIQUE_ID_file373", i1 false, i1 false}
!8 = !{!"../drivers/nfc/st95hf/core.c", i32 1259, i32 1}
!9 = !{ptr @__UNIQUE_ID_license374, !8, !"__UNIQUE_ID_license374", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/nfc/st95hf/core.c", i32 1246, i32 11}
!12 = !{ptr @st95hf_driver, !13, !"st95hf_driver", i1 false, i1 false}
!13 = !{!"../drivers/nfc/st95hf/core.c", i32 1244, i32 26}
!14 = !{ptr @st95hf_id, !15, !"st95hf_id", i1 false, i1 false}
!15 = !{!"../drivers/nfc/st95hf/core.c", i32 1052, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/nfc/st95hf/core.c", i32 1071, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @st95hf_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @st95hf_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/nfc/st95hf/core.c", i32 1086, i32 49}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/nfc/st95hf/core.c", i32 1091, i32 4}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @st95hf_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @st95hf_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/nfc/st95hf/core.c", i32 1097, i32 4}
!33 = !{ptr @st95hf_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @st95hf_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @st95hf_probe.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/nfc/st95hf/core.c", i32 1103, i32 2}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/nfc/st95hf/core.c", i32 1113, i32 7}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/nfc/st95hf/core.c", i32 1116, i32 3}
!42 = !{ptr @st95hf_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @st95hf_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/nfc/st95hf/core.c", i32 1123, i32 9}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/nfc/st95hf/core.c", i32 1135, i32 4}
!48 = !{ptr @st95hf_probe._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @st95hf_probe._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/nfc/st95hf/core.c", i32 1140, i32 3}
!52 = !{ptr @st95hf_probe._entry.23, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @st95hf_probe._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/nfc/st95hf/core.c", i32 1153, i32 3}
!56 = !{ptr @st95hf_probe._entry.26, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @st95hf_probe._entry_ptr.28, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/nfc/st95hf/core.c", i32 1160, i32 3}
!60 = !{ptr @st95hf_probe._entry.29, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @st95hf_probe._entry_ptr.31, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/nfc/st95hf/core.c", i32 1180, i32 3}
!64 = !{ptr @st95hf_probe._entry.32, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @st95hf_probe._entry_ptr.34, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @st95hf_probe.__key.35, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/nfc/st95hf/core.c", i32 1188, i32 2}
!68 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @cmd_array, !70, !"cmd_array", i1 false, i1 false}
!70 = !{!"../drivers/nfc/st95hf/core.c", i32 120, i32 25}
!71 = !{ptr @init_completion.__key, !72, !"__key", i1 false, i1 false}
!72 = !{!"../include/linux/completion.h", i32 87, i32 2}
!73 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"wtx", i1 false, i1 false}
!75 = !{!"../drivers/nfc/st95hf/core.c", i32 771, i32 14}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/nfc/st95hf/core.c", i32 795, i32 3}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/nfc/st95hf/core.c", i32 806, i32 3}
!80 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @st95hf_irq_thread_handler._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @st95hf_irq_thread_handler._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/nfc/st95hf/core.c", i32 616, i32 4}
!85 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @st95hf_handle_wtx._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @st95hf_handle_wtx._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/nfc/st95hf/core.c", i32 631, i32 4}
!90 = !{ptr @st95hf_handle_wtx._entry.43, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @st95hf_handle_wtx._entry_ptr.45, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/nfc/st95hf/core.c", i32 643, i32 3}
!94 = !{ptr @st95hf_handle_wtx._entry.46, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @st95hf_handle_wtx._entry_ptr.48, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/nfc/st95hf/core.c", i32 563, i32 4}
!98 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @iso14443_config_fdt._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @iso14443_config_fdt._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/nfc/st95hf/core.c", i32 571, i32 4}
!103 = !{ptr @iso14443_config_fdt._entry.51, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @iso14443_config_fdt._entry_ptr.53, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/nfc/st95hf/core.c", i32 583, i32 4}
!107 = !{ptr @iso14443_config_fdt._entry.54, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @iso14443_config_fdt._entry_ptr.56, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.58, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/nfc/st95hf/core.c", i32 591, i32 4}
!111 = !{ptr @iso14443_config_fdt._entry.57, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @iso14443_config_fdt._entry_ptr.59, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/nfc/st95hf/core.c", i32 343, i32 3}
!115 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @secondary_configuration_type4a._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @secondary_configuration_type4a._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/nfc/st95hf/core.c", i32 354, i32 3}
!120 = !{ptr @secondary_configuration_type4a._entry.62, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @secondary_configuration_type4a._entry_ptr.64, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.65, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/nfc/st95hf/core.c", i32 370, i32 3}
!124 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @secondary_configuration_type4b._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @secondary_configuration_type4b._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.67, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/nfc/st95hf/core.c", i32 279, i32 3}
!129 = !{ptr @.str.68, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @st95hf_send_recv_cmd._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @st95hf_send_recv_cmd._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.70, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/nfc/st95hf/core.c", i32 289, i32 4}
!134 = !{ptr @st95hf_send_recv_cmd._entry.69, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @st95hf_send_recv_cmd._entry_ptr.71, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.73, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/nfc/st95hf/core.c", i32 295, i32 4}
!138 = !{ptr @st95hf_send_recv_cmd._entry.72, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @st95hf_send_recv_cmd._entry_ptr.74, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.75, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/nfc/st95hf/core.c", i32 673, i32 5}
!142 = !{ptr @.str.76, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @st95hf_error_handling._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @st95hf_error_handling._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @st95hf_error_handling._entry.77, !146, !"_entry", i1 false, i1 false}
!146 = !{!"../drivers/nfc/st95hf/core.c", i32 684, i32 4}
!147 = !{ptr @st95hf_error_handling._entry_ptr.78, !146, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.79, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/nfc/st95hf/core.c", i32 729, i32 4}
!150 = !{ptr @.str.80, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @st95hf_response_handler._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @st95hf_response_handler._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.81, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/nfc/st95hf/core.c", i32 483, i32 3}
!155 = !{ptr @.str.82, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @st95hf_send_spi_reset_sequence._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @st95hf_send_spi_reset_sequence._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.83, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/nfc/st95hf/core.c", i32 512, i32 3}
!160 = !{ptr @.str.84, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @st95hf_por_sequence.__UNIQUE_ID_ddebug369, !159, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!162 = !{ptr @.str.85, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/nfc/st95hf/core.c", i32 317, i32 3}
!164 = !{ptr @.str.86, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @st95hf_echo_command._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @st95hf_echo_command._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.88, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/nfc/st95hf/core.c", i32 325, i32 2}
!169 = !{ptr @st95hf_echo_command._entry.87, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @st95hf_echo_command._entry_ptr.89, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @st95hf_nfc_digital_ops, !172, !"st95hf_nfc_digital_ops", i1 false, i1 false}
!172 = !{!"../drivers/nfc/st95hf/core.c", i32 1039, i32 37}
!173 = !{ptr @.str.90, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/nfc/st95hf/core.c", i32 391, i32 4}
!175 = !{ptr @.str.91, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @st95hf_select_protocol._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @st95hf_select_protocol._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.93, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/nfc/st95hf/core.c", i32 399, i32 4}
!180 = !{ptr @st95hf_select_protocol._entry.92, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @st95hf_select_protocol._entry_ptr.94, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.96, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/nfc/st95hf/core.c", i32 412, i32 4}
!184 = !{ptr @st95hf_select_protocol._entry.95, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @st95hf_select_protocol._entry_ptr.97, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.99, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/nfc/st95hf/core.c", i32 426, i32 4}
!188 = !{ptr @st95hf_select_protocol._entry.98, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @st95hf_select_protocol._entry_ptr.100, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @st95hf_select_protocol._entry.101, !191, !"_entry", i1 false, i1 false}
!191 = !{!"../drivers/nfc/st95hf/core.c", i32 439, i32 4}
!192 = !{ptr @st95hf_select_protocol._entry_ptr.102, !191, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.103, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/nfc/st95hf/core.c", i32 965, i32 3}
!195 = !{ptr @.str.104, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/nfc/st95hf/core.c", i32 973, i32 3}
!197 = !{ptr @.str.105, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @st95hf_in_send_cmd._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @st95hf_in_send_cmd._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.106, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/nfc/st95hf/core.c", i32 911, i32 3}
!202 = !{ptr @.str.107, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @rf_off._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @rf_off._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @sema_init.__key, !206, !"__key", i1 false, i1 false}
!206 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!207 = !{ptr @.str.108, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!209 = !{ptr @.str.109, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!211 = !{ptr @.str.110, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/nfc/st95hf/core.c", i32 1222, i32 3}
!213 = !{ptr @.str.111, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @st95hf_remove._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @st95hf_remove._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.113, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/nfc/st95hf/core.c", i32 1230, i32 3}
!218 = !{ptr @st95hf_remove._entry.112, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @st95hf_remove._entry_ptr.114, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @st95hf_spi_of_match, !221, !"st95hf_spi_of_match", i1 false, i1 false}
!221 = !{!"../drivers/nfc/st95hf/core.c", i32 1058, i32 34}
!222 = !{i32 1, !"wchar_size", i32 2}
!223 = !{i32 1, !"min_enum_size", i32 4}
!224 = !{i32 8, !"branch-target-enforcement", i32 0}
!225 = !{i32 8, !"sign-return-address", i32 0}
!226 = !{i32 8, !"sign-return-address-all", i32 0}
!227 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!228 = !{i32 7, !"uwtable", i32 1}
!229 = !{i32 7, !"frame-pointer", i32 2}
!230 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!231 = !{i8 0, i8 2}
!232 = !{!"auto-init"}
!233 = !{i64 2148355019, i64 2148355024, i64 2148355037, i64 2148355081, i64 2148355115, i64 2148355136}
