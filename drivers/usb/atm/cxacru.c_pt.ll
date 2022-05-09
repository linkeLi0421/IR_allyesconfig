; ModuleID = '/llk/IR_all_yes/drivers/usb/atm/cxacru.c_pt.bc'
source_filename = "../drivers/usb/atm/cxacru.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usbatm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cxacru_modem_type = type { i32, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cxacru_data = type { ptr, ptr, i32, %struct.mutex, i32, %struct.delayed_work, [28 x i32], %struct.mutex, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.completion, %struct.completion }
%struct.usbatm_data = type { ptr, ptr, [16 x i8], i32, ptr, ptr, [64 x i8], ptr, %struct.kref, %struct.mutex, i32, ptr, %struct.completion, %struct.completion, %struct.list_head, %struct.usbatm_channel, %struct.usbatm_channel, %struct.sk_buff_head, ptr, ptr, i32, i16, ptr, i32, [0 x ptr] }
%struct.usbatm_channel = type { i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, %struct.timer_list, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.152, i32 }
%union.anon.152 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.atm_dev = type { ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, %struct.list_head, [6 x i8], %struct.atm_cirange, %struct.k_atm_dev_stats, i8, i32, %struct.refcount_struct, %struct.spinlock, ptr, ptr, %struct.device, %struct.list_head }
%struct.atm_cirange = type { i8, i8 }
%struct.k_atm_dev_stats = type { %struct.k_atm_aal_stats, %struct.k_atm_aal_stats, %struct.k_atm_aal_stats }
%struct.k_atm_aal_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.cxacru_timer = type { %struct.timer_list, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }

@__initcall__kmod_cxacru__483_1374_cxacru_usb_driver_init6 = internal global ptr @cxacru_usb_driver_init, section ".initcall6.init", align 4
@cxacru_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @cxacru_driver_name, ptr @cxacru_usb_probe, ptr @usbatm_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cxacru_usb_ids, ptr @cxacru_groups, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_cxacru_usb_driver_exit = internal global ptr @cxacru_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author484 = internal constant [71 x i8] c"cxacru.author=Roman Kagan, David Woodhouse, Duncan Sands, Simon Arlott\00", section ".modinfo", align 1
@__UNIQUE_ID_description485 = internal constant [63 x i8] c"cxacru.description=Conexant AccessRunner ADSL USB modem driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file486 = internal constant [35 x i8] c"cxacru.file=drivers/usb/atm/cxacru\00", section ".modinfo", align 1
@__UNIQUE_ID_license487 = internal constant [19 x i8] c"cxacru.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cxacru\00", [25 x i8] zeroinitializer }, align 32
@cxacru_driver_name = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cxacru\00", [25 x i8] zeroinitializer }, align 32
@cxacru_usb_ids = internal constant { [18 x %struct.usb_device_id], [112 x i8] } { [18 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1394, i16 -13570, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @cxacru_cafe to i32) }, %struct.usb_device_id { i16 3, i16 1394, i16 -13568, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @cxacru_cb00 to i32) }, %struct.usb_device_id { i16 3, i16 1394, i16 -13567, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @cxacru_cb00 to i32) }, %struct.usb_device_id { i16 3, i16 1394, i16 -13566, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @cxacru_cb00 to i32) }, %struct.usb_device_id { i16 3, i16 1394, i16 -13562, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @cxacru_cb00 to i32) }, %struct.usb_device_id { i16 3, i16 1394, i16 -13561, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @cxacru_cb00 to i32) }, %struct.usb_device_id { i16 3, i16 2275, i16 256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @cxacru_cafe to i32) }, %struct.usb_device_id { i16 3, i16 2275, i16 258, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @cxacru_cb00 to i32) }, %struct.usb_device_id { i16 3, i16 3760, i16 13399, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @cxacru_cafe to i32) }, %struct.usb_device_id { i16 3, i16 6147, i16 21776, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @cxacru_cb00 to i32) }, %struct.usb_device_id { i16 3, i16 1653, i16 512, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @cxacru_cb00 to i32) }, %struct.usb_device_id { i16 3, i16 1414, i16 13066, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @cxacru_cb00 to i32) }, %struct.usb_device_id { i16 3, i16 1414, i16 13067, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @cxacru_cb00 to i32) }, %struct.usb_device_id { i16 3, i16 1625, i16 32, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @cxacru_cb00 to i32) }, %struct.usb_device_id { i16 3, i16 1289, i16 2066, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @cxacru_cb00 to i32) }, %struct.usb_device_id { i16 3, i16 4109, i16 -13567, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @cxacru_cb00 to i32) }, %struct.usb_device_id { i16 3, i16 4109, i16 13122, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @cxacru_cb00 to i32) }, %struct.usb_device_id zeroinitializer], [112 x i8] zeroinitializer }, align 32
@cxacru_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @cxacru_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"USB NET CARD\00", [19 x i8] zeroinitializer }, align 32
@cxacru_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1358, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ignoring cx82310_eth device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cxacru_usb_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/usb/atm/cxacru.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cxacru_usb_probe._entry_ptr = internal global ptr @cxacru_usb_probe._entry, section ".printk_index", align 4
@cxacru_driver = internal global { %struct.usbatm_driver, [52 x i8] } { %struct.usbatm_driver { ptr @cxacru_driver_name, ptr @cxacru_bind, ptr @cxacru_heavy_init, ptr @cxacru_unbind, ptr @cxacru_atm_start, ptr null, i32 2, i32 0, i32 2, i32 3, i32 11 }, [52 x i8] zeroinitializer }, align 32
@cxacru_bind.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&instance->poll_state_serialize\00", [32 x i8] zeroinitializer }, align 32
@cxacru_bind.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&instance->adsl_state_serialize\00", [32 x i8] zeroinitializer }, align 32
@cxacru_bind.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.4, ptr @.str.11, i8 1, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cxacru_bind\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cxacru_bind: no memory for rcv_buf\0A\00", [60 x i8] zeroinitializer }, align 32
@cxacru_bind.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.4, ptr @.str.12, i8 1, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cxacru_bind: no memory for snd_buf\0A\00", [60 x i8] zeroinitializer }, align 32
@cxacru_bind.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.4, ptr @.str.13, i8 1, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cxacru_bind: no command endpoint\0A\00", [62 x i8] zeroinitializer }, align 32
@cxacru_bind.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&instance->cm_serialize\00", [40 x i8] zeroinitializer }, align 32
@cxacru_bind.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&instance->poll_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@cxacru_bind.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&instance->poll_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cxacru_poll_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014ATM dev %d: poll status: error %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cxacru_poll_status\00", [45 x i8] zeroinitializer }, align 32
@cxacru_poll_status._entry_ptr = internal global ptr @cxacru_poll_status._entry, section ".printk_index", align 4
@cxacru_poll_status._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\014ATM dev %d: polling disabled, set adsl_state to 'start' or 'poll' to resume\0A\00", [49 x i8] zeroinitializer }, align 32
@cxacru_poll_status._entry_ptr.24 = internal global ptr @cxacru_poll_status._entry.22, section ".printk_index", align 4
@cxacru_poll_status._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.4, i32 852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016ATM dev %d: ADSL state: running\0A\00", [61 x i8] zeroinitializer }, align 32
@cxacru_poll_status._entry_ptr.27 = internal global ptr @cxacru_poll_status._entry.25, section ".printk_index", align 4
@cxacru_poll_status._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.4, i32 856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016ATM dev %d: ADSL state: stopped\0A\00", [61 x i8] zeroinitializer }, align 32
@cxacru_poll_status._entry_ptr.30 = internal global ptr @cxacru_poll_status._entry.28, section ".printk_index", align 4
@cxacru_poll_status._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.21, ptr @.str.4, i32 860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016ATM dev %d: Unknown adsl status %02x\0A\00", [56 x i8] zeroinitializer }, align 32
@cxacru_poll_status._entry_ptr.33 = internal global ptr @cxacru_poll_status._entry.31, section ".printk_index", align 4
@cxacru_poll_status._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.21, ptr @.str.4, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016ATM dev %d: ADSL line: down\0A\00", [33 x i8] zeroinitializer }, align 32
@cxacru_poll_status._entry_ptr.36 = internal global ptr @cxacru_poll_status._entry.34, section ".printk_index", align 4
@cxacru_poll_status._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.21, ptr @.str.4, i32 877, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016ATM dev %d: ADSL line: attempting to activate\0A\00", [47 x i8] zeroinitializer }, align 32
@cxacru_poll_status._entry_ptr.39 = internal global ptr @cxacru_poll_status._entry.37, section ".printk_index", align 4
@cxacru_poll_status._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.21, ptr @.str.4, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016ATM dev %d: ADSL line: training\0A\00", [61 x i8] zeroinitializer }, align 32
@cxacru_poll_status._entry_ptr.42 = internal global ptr @cxacru_poll_status._entry.40, section ".printk_index", align 4
@cxacru_poll_status._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.21, ptr @.str.4, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016ATM dev %d: ADSL line: channel analysis\0A\00", [53 x i8] zeroinitializer }, align 32
@cxacru_poll_status._entry_ptr.45 = internal global ptr @cxacru_poll_status._entry.43, section ".printk_index", align 4
@cxacru_poll_status._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.21, ptr @.str.4, i32 892, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016ATM dev %d: ADSL line: exchange\0A\00", [61 x i8] zeroinitializer }, align 32
@cxacru_poll_status._entry_ptr.48 = internal global ptr @cxacru_poll_status._entry.46, section ".printk_index", align 4
@cxacru_poll_status._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.21, ptr @.str.4, i32 900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016ATM dev %d: ADSL line: up (%d kb/s down | %d kb/s up)\0A\00", [39 x i8] zeroinitializer }, align 32
@cxacru_poll_status._entry_ptr.51 = internal global ptr @cxacru_poll_status._entry.49, section ".printk_index", align 4
@cxacru_poll_status._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.21, ptr @.str.4, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016ATM dev %d: ADSL line: waiting\0A\00", [62 x i8] zeroinitializer }, align 32
@cxacru_poll_status._entry_ptr.54 = internal global ptr @cxacru_poll_status._entry.52, section ".printk_index", align 4
@cxacru_poll_status._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.21, ptr @.str.4, i32 910, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016ATM dev %d: ADSL line: initializing\0A\00", [57 x i8] zeroinitializer }, align 32
@cxacru_poll_status._entry_ptr.57 = internal global ptr @cxacru_poll_status._entry.55, section ".printk_index", align 4
@cxacru_poll_status._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.21, ptr @.str.4, i32 915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016ATM dev %d: Unknown line state %02x\0A\00", [57 x i8] zeroinitializer }, align 32
@cxacru_poll_status._entry_ptr.60 = internal global ptr @cxacru_poll_status._entry.58, section ".printk_index", align 4
@__func__.cxacru_cm_get_array = private unnamed_addr constant [20 x i8] c"cxacru_cm_get_array\00", align 1
@cxacru_cm_get_array._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @__func__.cxacru_cm_get_array, ptr @.str.4, i32 734, ptr @.str.62, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid data length from cm %#x: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@cxacru_cm_get_array._entry_ptr = internal global ptr @cxacru_cm_get_array._entry, section ".printk_index", align 4
@cxacru_cm_get_array._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @__func__.cxacru_cm_get_array, ptr @.str.4, i32 743, ptr @.str.62, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"wrong index %#x in response to cm %#x\0A\00", [57 x i8] zeroinitializer }, align 32
@cxacru_cm_get_array._entry_ptr.65 = internal global ptr @cxacru_cm_get_array._entry.63, section ".printk_index", align 4
@__func__.cxacru_cm = private unnamed_addr constant [10 x i8] c"cxacru_cm\00", align 1
@cxacru_cm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @__func__.cxacru_cm, ptr @.str.4, i32 622, ptr @.str.62, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"requested transfer size too large (%d, %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@cxacru_cm._entry_ptr = internal global ptr @cxacru_cm._entry, section ".printk_index", align 4
@cxacru_cm._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @__func__.cxacru_cm, ptr @.str.4, i32 635, ptr @.str.62, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"submit of read urb for cm %#x failed (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@cxacru_cm._entry_ptr.69 = internal global ptr @cxacru_cm._entry.67, section ".printk_index", align 4
@cxacru_cm._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @__func__.cxacru_cm, ptr @.str.4, i32 653, ptr @.str.62, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"submit of write urb for cm %#x failed (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@cxacru_cm._entry_ptr.72 = internal global ptr @cxacru_cm._entry.70, section ".printk_index", align 4
@cxacru_cm._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @__func__.cxacru_cm, ptr @.str.4, i32 660, ptr @.str.62, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"send of cm %#x failed (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@cxacru_cm._entry_ptr.75 = internal global ptr @cxacru_cm._entry.73, section ".printk_index", align 4
@cxacru_cm._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @__func__.cxacru_cm, ptr @.str.4, i32 667, ptr @.str.62, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"receive of cm %#x failed (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@cxacru_cm._entry_ptr.78 = internal global ptr @cxacru_cm._entry.76, section ".printk_index", align 4
@cxacru_cm._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @__func__.cxacru_cm, ptr @.str.4, i32 673, ptr @.str.62, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"invalid response length to cm %#x: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@cxacru_cm._entry_ptr.81 = internal global ptr @cxacru_cm._entry.79, section ".printk_index", align 4
@cxacru_cm._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @__func__.cxacru_cm, ptr @.str.4, i32 683, ptr @.str.62, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"wrong cm %#x in response to cm %#x\0A\00", [60 x i8] zeroinitializer }, align 32
@cxacru_cm._entry_ptr.84 = internal global ptr @cxacru_cm._entry.82, section ".printk_index", align 4
@cxacru_cm._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @__func__.cxacru_cm, ptr @.str.4, i32 690, ptr @.str.62, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"response to cm %#x failed: %#x\0A\00", [32 x i8] zeroinitializer }, align 32
@cxacru_cm._entry_ptr.87 = internal global ptr @cxacru_cm._entry.85, section ".printk_index", align 4
@cxacru_cm.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.cxacru_cm, ptr @.str.4, ptr @.str.88, i8 0, i8 -81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cm %#x\0A\00", [24 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@cxacru_start_wait_urb.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&timer.timer)\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@cxacru_card_status.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.4, ptr @.str.92, i8 0, i8 -66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cxacru_card_status\00", [45 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"cxacru_adsl_start: CARD_GET_STATUS returned %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fw\00", [29 x i8] zeroinitializer }, align 32
@cxacru_heavy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.4, i32 1100, ptr @.str.96, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"firmware (cxacru-fw.bin) unavailable (system misconfigured?)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxacru_heavy_init\00", [46 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cxacru_heavy_init._entry_ptr = internal global ptr @cxacru_heavy_init._entry, section ".printk_index", align 4
@.str.97 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bp\00", [29 x i8] zeroinitializer }, align 32
@cxacru_heavy_init._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.95, ptr @.str.4, i32 1107, ptr @.str.96, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"boot ROM patch (cxacru-bp.bin) unavailable (system misconfigured?)\0A\00", [60 x i8] zeroinitializer }, align 32
@cxacru_heavy_init._entry_ptr.100 = internal global ptr @cxacru_heavy_init._entry.98, section ".printk_index", align 4
@cxacru_heavy_init.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.4, ptr @.str.101, i8 1, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"modem initialisation failed\0A\00", [35 x i8] zeroinitializer }, align 32
@cxacru_heavy_init.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.4, ptr @.str.102, i8 1, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"done setting up the modem\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cxacru-%s.bin\00", [18 x i8] zeroinitializer }, align 32
@cxacru_find_firmware.__UNIQUE_ID_ddebug474 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.4, ptr @.str.105, i8 1, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cxacru_find_firmware\00", [43 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cxacru_find_firmware: looking for %s\0A\00", [58 x i8] zeroinitializer }, align 32
@cxacru_find_firmware.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.4, ptr @.str.106, i8 1, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no stage %s firmware found\0A\00", [36 x i8] zeroinitializer }, align 32
@cxacru_find_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.104, ptr @.str.4, i32 1087, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"found firmware %s\0A\00", [45 x i8] zeroinitializer }, align 32
@cxacru_find_firmware._entry_ptr = internal global ptr @cxacru_find_firmware._entry, section ".printk_index", align 4
@cxacru_upload_firmware.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.4, ptr @.str.109, i8 0, i8 -8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cxacru_upload_firmware\00", [41 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@cxacru_upload_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.4, i32 1000, ptr @.str.62, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"FirmwarePllFClkValue failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@cxacru_upload_firmware._entry_ptr = internal global ptr @cxacru_upload_firmware._entry, section ".printk_index", align 4
@cxacru_upload_firmware._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.108, ptr @.str.4, i32 1008, ptr @.str.62, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"FirmwarePllBClkValue failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@cxacru_upload_firmware._entry_ptr.113 = internal global ptr @cxacru_upload_firmware._entry.111, section ".printk_index", align 4
@cxacru_upload_firmware._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.108, ptr @.str.4, i32 1016, ptr @.str.62, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Enable SDRAM failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@cxacru_upload_firmware._entry_ptr.116 = internal global ptr @cxacru_upload_firmware._entry.114, section ".printk_index", align 4
@cxacru_upload_firmware._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.108, ptr @.str.4, i32 1021, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"loading firmware\0A\00", [46 x i8] zeroinitializer }, align 32
@cxacru_upload_firmware._entry_ptr.119 = internal global ptr @cxacru_upload_firmware._entry.117, section ".printk_index", align 4
@cxacru_upload_firmware._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.108, ptr @.str.4, i32 1024, ptr @.str.62, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Firmware upload failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@cxacru_upload_firmware._entry_ptr.122 = internal global ptr @cxacru_upload_firmware._entry.120, section ".printk_index", align 4
@cxacru_upload_firmware._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.108, ptr @.str.4, i32 1030, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"loading boot ROM patch\0A\00", [40 x i8] zeroinitializer }, align 32
@cxacru_upload_firmware._entry_ptr.125 = internal global ptr @cxacru_upload_firmware._entry.123, section ".printk_index", align 4
@cxacru_upload_firmware._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.108, ptr @.str.4, i32 1033, ptr @.str.62, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Boot ROM patching failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cxacru_upload_firmware._entry_ptr.128 = internal global ptr @cxacru_upload_firmware._entry.126, section ".printk_index", align 4
@cxacru_upload_firmware._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.108, ptr @.str.4, i32 1041, ptr @.str.62, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Signature storing failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cxacru_upload_firmware._entry_ptr.131 = internal global ptr @cxacru_upload_firmware._entry.129, section ".printk_index", align 4
@cxacru_upload_firmware._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.108, ptr @.str.4, i32 1045, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"starting device\0A\00", [47 x i8] zeroinitializer }, align 32
@cxacru_upload_firmware._entry_ptr.134 = internal global ptr @cxacru_upload_firmware._entry.132, section ".printk_index", align 4
@cxacru_upload_firmware._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.108, ptr @.str.4, i32 1053, ptr @.str.62, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Passing control to firmware failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@cxacru_upload_firmware._entry_ptr.137 = internal global ptr @cxacru_upload_firmware._entry.135, section ".printk_index", align 4
@cxacru_upload_firmware._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.108, ptr @.str.4, i32 1067, ptr @.str.62, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"modem failed to initialize: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@cxacru_upload_firmware._entry_ptr.140 = internal global ptr @cxacru_upload_firmware._entry.138, section ".printk_index", align 4
@cxacru_fw.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.141, ptr @.str.4, ptr @.str.142, i8 0, i8 -14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cxacru_fw\00", [22 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sending fw %#x failed\0A\00", [41 x i8] zeroinitializer }, align 32
@cxacru_fw.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.141, ptr @.str.4, ptr @.str.143, i8 0, i8 -13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sent fw %#x\0A\00", [19 x i8] zeroinitializer }, align 32
@cxacru_unbind.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.4, ptr @.str.145, i8 1, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cxacru_unbind\00", [18 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cxacru_unbind entered\0A\00", [41 x i8] zeroinitializer }, align 32
@cxacru_unbind.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.4, ptr @.str.146, i8 1, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cxacru_unbind: NULL instance!\0A\00", [33 x i8] zeroinitializer }, align 32
@cxacru_atm_start.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.147, ptr @.str.4, ptr @.str.109, i8 0, i8 -62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cxacru_atm_start\00", [47 x i8] zeroinitializer }, align 32
@cxacru_atm_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.147, ptr @.str.4, i32 783, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013ATM dev %d: cxacru_atm_start: CARD_GET_MAC_ADDRESS returned %d\0A\00", [62 x i8] zeroinitializer }, align 32
@cxacru_atm_start._entry_ptr = internal global ptr @cxacru_atm_start._entry, section ".printk_index", align 4
@cxacru_atm_start._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.147, ptr @.str.4, i32 791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013ATM dev %d: cxacru_atm_start: CHIP_ADSL_LINE_START returned %d\0A\00", [62 x i8] zeroinitializer }, align 32
@cxacru_atm_start._entry_ptr.151 = internal global ptr @cxacru_atm_start._entry.149, section ".printk_index", align 4
@cxacru_cafe = internal constant { %struct.cxacru_modem_type, [20 x i8] } { %struct.cxacru_modem_type { i32 47740127, i32 26649882, i32 1 }, [20 x i8] zeroinitializer }, align 32
@cxacru_cb00 = internal constant { %struct.cxacru_modem_type, [20 x i8] } { %struct.cxacru_modem_type { i32 5, i32 3, i32 0 }, [20 x i8] zeroinitializer }, align 32
@cxacru_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cxacru_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@cxacru_attrs = internal global { [27 x ptr], [52 x i8] } { [27 x ptr] [ptr @dev_attr_adsl_config, ptr @dev_attr_adsl_state, ptr @dev_attr_adsl_controller_version, ptr @dev_attr_adsl_headend_environment, ptr @dev_attr_adsl_headend, ptr @dev_attr_modulation, ptr @dev_attr_line_startable, ptr @dev_attr_downstream_hec_errors, ptr @dev_attr_upstream_hec_errors, ptr @dev_attr_downstream_fec_errors, ptr @dev_attr_upstream_fec_errors, ptr @dev_attr_downstream_crc_errors, ptr @dev_attr_upstream_crc_errors, ptr @dev_attr_startup_attempts, ptr @dev_attr_downstream_bits_per_frame, ptr @dev_attr_upstream_bits_per_frame, ptr @dev_attr_transmitter_power, ptr @dev_attr_downstream_attenuation, ptr @dev_attr_upstream_attenuation, ptr @dev_attr_downstream_snr_margin, ptr @dev_attr_upstream_snr_margin, ptr @dev_attr_mac_address, ptr @dev_attr_line_status, ptr @dev_attr_link_status, ptr @dev_attr_upstream_rate, ptr @dev_attr_downstream_rate, ptr null], [52 x i8] zeroinitializer }, align 32
@dev_attr_adsl_config = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.152, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @adsl_config_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_adsl_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.160, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adsl_state_show, ptr @adsl_state_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_adsl_controller_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.174, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adsl_controller_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_adsl_headend_environment = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.175, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adsl_headend_environment_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_adsl_headend = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.176, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adsl_headend_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_modulation = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.177, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @modulation_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_line_startable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.182, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @line_startable_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_downstream_hec_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.185, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @downstream_hec_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_upstream_hec_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.186, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @upstream_hec_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_downstream_fec_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.187, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @downstream_fec_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_upstream_fec_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.188, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @upstream_fec_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_downstream_crc_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.189, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @downstream_crc_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_upstream_crc_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.190, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @upstream_crc_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_startup_attempts = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.191, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @startup_attempts_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_downstream_bits_per_frame = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.192, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @downstream_bits_per_frame_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_upstream_bits_per_frame = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.193, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @upstream_bits_per_frame_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_transmitter_power = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.194, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @transmitter_power_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_downstream_attenuation = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.196, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @downstream_attenuation_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_upstream_attenuation = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.199, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @upstream_attenuation_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_downstream_snr_margin = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.200, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @downstream_snr_margin_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_upstream_snr_margin = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.201, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @upstream_snr_margin_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mac_address = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.202, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mac_address_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_line_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.204, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @line_status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_link_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.213, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @link_status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_upstream_rate = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.217, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @upstream_rate_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_downstream_rate = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.218, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @downstream_rate_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adsl_config\00", [20 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%x=%x%n\00", [24 x i8] zeroinitializer }, align 32
@adsl_config_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.4, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ATM dev %d: set card data returned %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adsl_config_store\00", [46 x i8] zeroinitializer }, align 32
@adsl_config_store._entry_ptr = internal global ptr @adsl_config_store._entry, section ".printk_index", align 4
@.str.156 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" %02x=%08x\00", [21 x i8] zeroinitializer }, align 32
@adsl_config_store._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.155, ptr @.str.4, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016ATM dev %d: config%s\0A\00", [40 x i8] zeroinitializer }, align 32
@adsl_config_store._entry_ptr.159 = internal global ptr @adsl_config_store._entry.157, section ".printk_index", align 4
@.str.160 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"adsl_state\00", [21 x i8] zeroinitializer }, align 32
@adsl_state_show.str = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.161, ptr @.str.162], [24 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"running\00", [24 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stopped\00", [24 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%7s\00", [28 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stop\00", [27 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"restart\00", [24 x i8] zeroinitializer }, align 32
@adsl_state_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.4, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013ATM dev %d: change adsl state: CHIP_ADSL_LINE_STOP returned %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adsl_state_store\00", [47 x i8] zeroinitializer }, align 32
@adsl_state_store._entry_ptr = internal global ptr @adsl_state_store._entry, section ".printk_index", align 4
@.str.169 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@adsl_state_store._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.168, ptr @.str.4, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013ATM dev %d: change adsl state: CHIP_ADSL_LINE_START returned %d\0A\00", [61 x i8] zeroinitializer }, align 32
@adsl_state_store._entry_ptr.172 = internal global ptr @adsl_state_store._entry.170, section ".printk_index", align 4
@.str.173 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"poll\00", [27 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adsl_controller_version\00", [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adsl_headend_environment\00", [39 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adsl_headend\00", [19 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"modulation\00", [21 x i8] zeroinitializer }, align 32
@cxacru_sysfs_showattr_MODU.str = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181], [16 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.179 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ANSI T1.413\00", [20 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ITU-T G.992.1 (G.DMT)\00", [42 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ITU-T G.992.2 (G.LITE)\00", [41 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"line_startable\00", [17 x i8] zeroinitializer }, align 32
@cxacru_sysfs_showattr_bool.str = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.183, ptr @.str.184], [24 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"downstream_hec_errors\00", [42 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"upstream_hec_errors\00", [44 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"downstream_fec_errors\00", [42 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"upstream_fec_errors\00", [44 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"downstream_crc_errors\00", [42 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"upstream_crc_errors\00", [44 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"startup_attempts\00", [47 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"downstream_bits_per_frame\00", [38 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"upstream_bits_per_frame\00", [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"transmitter_power\00", [46 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"downstream_attenuation\00", [41 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%u.%02u\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"-%u.%02u\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"upstream_attenuation\00", [43 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"downstream_snr_margin\00", [42 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"upstream_snr_margin\00", [44 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mac_address\00", [20 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pM\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"line_status\00", [20 x i8] zeroinitializer }, align 32
@cxacru_sysfs_showattr_LINE.str = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212], [32 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"down\00", [27 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"attempting to activate\00", [41 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"training\00", [23 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"channel analysis\00", [47 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"exchange\00", [23 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"up\00", [29 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"waiting\00", [24 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"initialising\00", [19 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"link_status\00", [20 x i8] zeroinitializer }, align 32
@cxacru_sysfs_showattr_LINK.str = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr null, ptr @.str.214, ptr @.str.215, ptr @.str.216], [16 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"not connected\00", [18 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"connected\00", [22 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lost\00", [27 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"upstream_rate\00", [18 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"downstream_rate\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.219 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.220 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.221 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.222 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.223 = private unnamed_addr constant [18 x i8] c"cxacru_usb_driver\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1366, i32 26 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1374, i32 1 }
@___asan_gen_.229 = private unnamed_addr constant [19 x i8] c"cxacru_driver_name\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 34, i32 19 }
@___asan_gen_.232 = private unnamed_addr constant [15 x i8] c"cxacru_usb_ids\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1276, i32 35 }
@___asan_gen_.235 = private unnamed_addr constant [14 x i8] c"cxacru_groups\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1357, i32 20 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1358, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant [14 x i8] c"cxacru_driver\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1333, i32 29 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1144, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1149, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1153, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1159, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1175, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1203, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1205, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 831, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 838, i32 5 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 852, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 856, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 860, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 872, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 877, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 882, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 887, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 892, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 899, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 905, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 910, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 915, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 733, i32 5 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 742, i32 6 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 621, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 634, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 652, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 660, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 667, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 672, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 682, i32 5 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 689, i32 5 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 701, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 87, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 597, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 763, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1097, i32 43 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1100, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1105, i32 40 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1107, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1121, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1123, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1079, i32 15 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1080, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1083, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1087, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 994, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1000, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1008, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1016, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1021, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1024, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1030, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1033, i32 4 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1041, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1045, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1053, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1067, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 968, i32 5 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 974, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1229, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1232, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 777, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 783, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 791, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant [12 x i8] c"cxacru_cafe\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1264, i32 39 }
@___asan_gen_.631 = private unnamed_addr constant [12 x i8] c"cxacru_cb00\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1270, i32 39 }
@___asan_gen_.634 = private unnamed_addr constant [13 x i8] c"cxacru_group\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 570, i32 1 }
@___asan_gen_.637 = private unnamed_addr constant [13 x i8] c"cxacru_attrs\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 541, i32 26 }
@___asan_gen_.640 = private unnamed_addr constant [21 x i8] c"dev_attr_adsl_config\00", align 1
@___asan_gen_.643 = private unnamed_addr constant [20 x i8] c"dev_attr_adsl_state\00", align 1
@___asan_gen_.646 = private unnamed_addr constant [33 x i8] c"dev_attr_adsl_controller_version\00", align 1
@___asan_gen_.649 = private unnamed_addr constant [34 x i8] c"dev_attr_adsl_headend_environment\00", align 1
@___asan_gen_.652 = private unnamed_addr constant [22 x i8] c"dev_attr_adsl_headend\00", align 1
@___asan_gen_.655 = private unnamed_addr constant [20 x i8] c"dev_attr_modulation\00", align 1
@___asan_gen_.658 = private unnamed_addr constant [24 x i8] c"dev_attr_line_startable\00", align 1
@___asan_gen_.661 = private unnamed_addr constant [31 x i8] c"dev_attr_downstream_hec_errors\00", align 1
@___asan_gen_.664 = private unnamed_addr constant [29 x i8] c"dev_attr_upstream_hec_errors\00", align 1
@___asan_gen_.667 = private unnamed_addr constant [31 x i8] c"dev_attr_downstream_fec_errors\00", align 1
@___asan_gen_.670 = private unnamed_addr constant [29 x i8] c"dev_attr_upstream_fec_errors\00", align 1
@___asan_gen_.673 = private unnamed_addr constant [31 x i8] c"dev_attr_downstream_crc_errors\00", align 1
@___asan_gen_.676 = private unnamed_addr constant [29 x i8] c"dev_attr_upstream_crc_errors\00", align 1
@___asan_gen_.679 = private unnamed_addr constant [26 x i8] c"dev_attr_startup_attempts\00", align 1
@___asan_gen_.682 = private unnamed_addr constant [35 x i8] c"dev_attr_downstream_bits_per_frame\00", align 1
@___asan_gen_.685 = private unnamed_addr constant [33 x i8] c"dev_attr_upstream_bits_per_frame\00", align 1
@___asan_gen_.688 = private unnamed_addr constant [27 x i8] c"dev_attr_transmitter_power\00", align 1
@___asan_gen_.691 = private unnamed_addr constant [32 x i8] c"dev_attr_downstream_attenuation\00", align 1
@___asan_gen_.694 = private unnamed_addr constant [30 x i8] c"dev_attr_upstream_attenuation\00", align 1
@___asan_gen_.697 = private unnamed_addr constant [31 x i8] c"dev_attr_downstream_snr_margin\00", align 1
@___asan_gen_.700 = private unnamed_addr constant [29 x i8] c"dev_attr_upstream_snr_margin\00", align 1
@___asan_gen_.703 = private unnamed_addr constant [21 x i8] c"dev_attr_mac_address\00", align 1
@___asan_gen_.706 = private unnamed_addr constant [21 x i8] c"dev_attr_line_status\00", align 1
@___asan_gen_.709 = private unnamed_addr constant [21 x i8] c"dev_attr_link_status\00", align 1
@___asan_gen_.712 = private unnamed_addr constant [23 x i8] c"dev_attr_upstream_rate\00", align 1
@___asan_gen_.715 = private unnamed_addr constant [25 x i8] c"dev_attr_downstream_rate\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 457, i32 27 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 484, i32 5 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 490, i32 32 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 493, i32 4 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 318, i32 15 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 318, i32 25 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 318, i32 36 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 328, i32 23 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 345, i32 20 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 356, i32 23 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 356, i32 51 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 359, i32 4 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 376, i32 23 }
@___asan_gen_.778 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 379, i32 4 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 389, i32 23 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 284, i32 15 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 285, i32 4 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 286, i32 4 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 287, i32 4 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 288, i32 4 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 255, i32 15 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 255, i32 25 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 255, i32 31 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 238, i32 22 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 244, i32 35 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 248, i32 35 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 312, i32 22 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 273, i32 15 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 273, i32 25 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 273, i32 33 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 274, i32 3 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 274, i32 15 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 274, i32 35 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 274, i32 47 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 275, i32 3 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 275, i32 14 }
@___asan_gen_.916 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 264, i32 15 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 264, i32 31 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 264, i32 48 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 264, i32 61 }
@___asan_gen_.931 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.932 = private constant [28 x i8] c"../drivers/usb/atm/cxacru.c\00", align 1
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 539, i32 1 }
@llvm.compiler.used = appending global [289 x ptr] [ptr @__UNIQUE_ID_author484, ptr @__UNIQUE_ID_description485, ptr @__UNIQUE_ID_file486, ptr @__UNIQUE_ID_license487, ptr @__exitcall_cxacru_usb_driver_exit, ptr @__initcall__kmod_cxacru__483_1374_cxacru_usb_driver_init6, ptr @adsl_config_store._entry, ptr @adsl_config_store._entry.157, ptr @adsl_config_store._entry_ptr, ptr @adsl_config_store._entry_ptr.159, ptr @adsl_state_store._entry, ptr @adsl_state_store._entry.170, ptr @adsl_state_store._entry_ptr, ptr @adsl_state_store._entry_ptr.172, ptr @cxacru_atm_start._entry, ptr @cxacru_atm_start._entry.149, ptr @cxacru_atm_start._entry_ptr, ptr @cxacru_atm_start._entry_ptr.151, ptr @cxacru_cm._entry, ptr @cxacru_cm._entry.67, ptr @cxacru_cm._entry.70, ptr @cxacru_cm._entry.73, ptr @cxacru_cm._entry.76, ptr @cxacru_cm._entry.79, ptr @cxacru_cm._entry.82, ptr @cxacru_cm._entry.85, ptr @cxacru_cm._entry_ptr, ptr @cxacru_cm._entry_ptr.69, ptr @cxacru_cm._entry_ptr.72, ptr @cxacru_cm._entry_ptr.75, ptr @cxacru_cm._entry_ptr.78, ptr @cxacru_cm._entry_ptr.81, ptr @cxacru_cm._entry_ptr.84, ptr @cxacru_cm._entry_ptr.87, ptr @cxacru_cm_get_array._entry, ptr @cxacru_cm_get_array._entry.63, ptr @cxacru_cm_get_array._entry_ptr, ptr @cxacru_cm_get_array._entry_ptr.65, ptr @cxacru_find_firmware._entry, ptr @cxacru_find_firmware._entry_ptr, ptr @cxacru_heavy_init._entry, ptr @cxacru_heavy_init._entry.98, ptr @cxacru_heavy_init._entry_ptr, ptr @cxacru_heavy_init._entry_ptr.100, ptr @cxacru_poll_status._entry, ptr @cxacru_poll_status._entry.22, ptr @cxacru_poll_status._entry.25, ptr @cxacru_poll_status._entry.28, ptr @cxacru_poll_status._entry.31, ptr @cxacru_poll_status._entry.34, ptr @cxacru_poll_status._entry.37, ptr @cxacru_poll_status._entry.40, ptr @cxacru_poll_status._entry.43, ptr @cxacru_poll_status._entry.46, ptr @cxacru_poll_status._entry.49, ptr @cxacru_poll_status._entry.52, ptr @cxacru_poll_status._entry.55, ptr @cxacru_poll_status._entry.58, ptr @cxacru_poll_status._entry_ptr, ptr @cxacru_poll_status._entry_ptr.24, ptr @cxacru_poll_status._entry_ptr.27, ptr @cxacru_poll_status._entry_ptr.30, ptr @cxacru_poll_status._entry_ptr.33, ptr @cxacru_poll_status._entry_ptr.36, ptr @cxacru_poll_status._entry_ptr.39, ptr @cxacru_poll_status._entry_ptr.42, ptr @cxacru_poll_status._entry_ptr.45, ptr @cxacru_poll_status._entry_ptr.48, ptr @cxacru_poll_status._entry_ptr.51, ptr @cxacru_poll_status._entry_ptr.54, ptr @cxacru_poll_status._entry_ptr.57, ptr @cxacru_poll_status._entry_ptr.60, ptr @cxacru_upload_firmware._entry, ptr @cxacru_upload_firmware._entry.111, ptr @cxacru_upload_firmware._entry.114, ptr @cxacru_upload_firmware._entry.117, ptr @cxacru_upload_firmware._entry.120, ptr @cxacru_upload_firmware._entry.123, ptr @cxacru_upload_firmware._entry.126, ptr @cxacru_upload_firmware._entry.129, ptr @cxacru_upload_firmware._entry.132, ptr @cxacru_upload_firmware._entry.135, ptr @cxacru_upload_firmware._entry.138, ptr @cxacru_upload_firmware._entry_ptr, ptr @cxacru_upload_firmware._entry_ptr.113, ptr @cxacru_upload_firmware._entry_ptr.116, ptr @cxacru_upload_firmware._entry_ptr.119, ptr @cxacru_upload_firmware._entry_ptr.122, ptr @cxacru_upload_firmware._entry_ptr.125, ptr @cxacru_upload_firmware._entry_ptr.128, ptr @cxacru_upload_firmware._entry_ptr.131, ptr @cxacru_upload_firmware._entry_ptr.134, ptr @cxacru_upload_firmware._entry_ptr.137, ptr @cxacru_upload_firmware._entry_ptr.140, ptr @cxacru_usb_driver_exit, ptr @cxacru_usb_probe._entry, ptr @cxacru_usb_probe._entry_ptr, ptr @cxacru_usb_driver, ptr @.str, ptr @cxacru_driver_name, ptr @cxacru_usb_ids, ptr @cxacru_groups, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @cxacru_driver, ptr @cxacru_bind.__key, ptr @.str.7, ptr @cxacru_bind.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @cxacru_bind.__key.14, ptr @.str.15, ptr @cxacru_bind.__key.16, ptr @.str.17, ptr @cxacru_bind.__key.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @init_completion.__key, ptr @.str.89, ptr @cxacru_start_wait_urb.__key, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.150, ptr @cxacru_cafe, ptr @cxacru_cb00, ptr @cxacru_group, ptr @cxacru_attrs, ptr @dev_attr_adsl_config, ptr @dev_attr_adsl_state, ptr @dev_attr_adsl_controller_version, ptr @dev_attr_adsl_headend_environment, ptr @dev_attr_adsl_headend, ptr @dev_attr_modulation, ptr @dev_attr_line_startable, ptr @dev_attr_downstream_hec_errors, ptr @dev_attr_upstream_hec_errors, ptr @dev_attr_downstream_fec_errors, ptr @dev_attr_upstream_fec_errors, ptr @dev_attr_downstream_crc_errors, ptr @dev_attr_upstream_crc_errors, ptr @dev_attr_startup_attempts, ptr @dev_attr_downstream_bits_per_frame, ptr @dev_attr_upstream_bits_per_frame, ptr @dev_attr_transmitter_power, ptr @dev_attr_downstream_attenuation, ptr @dev_attr_upstream_attenuation, ptr @dev_attr_downstream_snr_margin, ptr @dev_attr_upstream_snr_margin, ptr @dev_attr_mac_address, ptr @dev_attr_line_status, ptr @dev_attr_link_status, ptr @dev_attr_upstream_rate, ptr @dev_attr_downstream_rate, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.158, ptr @.str.160, ptr @adsl_state_show.str, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.171, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @cxacru_sysfs_showattr_MODU.str, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @cxacru_sysfs_showattr_bool.str, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @cxacru_sysfs_showattr_LINE.str, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @cxacru_sysfs_showattr_LINK.str, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218], section "llvm.metadata"
@0 = internal global [237 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_driver_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_usb_ids to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_driver to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_bind.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_bind.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_bind.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_bind.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_bind.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_poll_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_poll_status._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_poll_status._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_poll_status._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_poll_status._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_poll_status._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_poll_status._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_poll_status._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_poll_status._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_poll_status._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_poll_status._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_poll_status._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_poll_status._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_poll_status._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_cm_get_array._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_cm_get_array._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_cm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_cm._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_cm._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_cm._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_cm._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_cm._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_cm._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_cm._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_start_wait_urb.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_heavy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_heavy_init._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_find_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_upload_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_upload_firmware._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_upload_firmware._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_upload_firmware._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_upload_firmware._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_upload_firmware._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_upload_firmware._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_upload_firmware._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_upload_firmware._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_upload_firmware._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_upload_firmware._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_atm_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_atm_start._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_cafe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_cb00 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_attrs to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_adsl_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_adsl_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_adsl_controller_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_adsl_headend_environment to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_adsl_headend to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_modulation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_line_startable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_downstream_hec_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_upstream_hec_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_downstream_fec_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_upstream_fec_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_downstream_crc_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_upstream_crc_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_startup_attempts to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_downstream_bits_per_frame to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_upstream_bits_per_frame to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_transmitter_power to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_downstream_attenuation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_upstream_attenuation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_downstream_snr_margin to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_upstream_snr_margin to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mac_address to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_line_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_link_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_upstream_rate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_downstream_rate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsl_config_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsl_config_store._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsl_state_show.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsl_state_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsl_state_store._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_sysfs_showattr_MODU.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_sysfs_showattr_bool.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_sysfs_showattr_LINE.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxacru_sysfs_showattr_LINK.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cxacru_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @cxacru_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cxacru_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_deregister(ptr noundef nonnull @cxacru_usb_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxacru_usb_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  %buf = alloca [15 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %buf) #11
  %bDeviceClass = getelementptr i8, ptr %1, i32 932
  %2 = call ptr @memset(ptr %buf, i32 255, i32 15)
  %3 = ptrtoint ptr %bDeviceClass to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bDeviceClass, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp = icmp eq i8 %4, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %iProduct = getelementptr i8, ptr %1, i32 943
  %5 = ptrtoint ptr %iProduct to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %iProduct, align 1
  %conv3 = zext i8 %6 to i32
  %call4 = call i32 @usb_string(ptr noundef %add.ptr.i, i32 noundef %conv3, ptr noundef nonnull %buf, i32 noundef 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp sgt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %buf, ptr noundef nonnull dereferenceable(13) @.str.1, i32 13) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %do.end, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.2) #15
  br label %cleanup

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  %call11 = call i32 @usbatm_usb_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @cxacru_driver) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ -19, %do.end ]
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbatm_usb_disconnect(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbatm_usb_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxacru_bind(ptr noundef %usbatm_instance, ptr nocapture noundef readonly %intf, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %arrayidx = getelementptr i8, ptr %1, i32 964
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 636) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %usbatm_instance, ptr %call7.i.i, align 8
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %6 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_info, align 4
  %8 = inttoptr i32 %7 to ptr
  %modem_type = getelementptr inbounds %struct.cxacru_data, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %modem_type to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %modem_type, align 4
  %poll_state_serialize = getelementptr inbounds %struct.cxacru_data, ptr %call7.i.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %poll_state_serialize, ptr noundef nonnull @.str.7, ptr noundef nonnull @cxacru_bind.__key) #11
  %poll_state = getelementptr inbounds %struct.cxacru_data, ptr %call7.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %poll_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %poll_state, align 4
  %line_status = getelementptr inbounds %struct.cxacru_data, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %line_status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %line_status, align 8
  %adsl_status = getelementptr inbounds %struct.cxacru_data, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %adsl_status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %adsl_status, align 8
  %adsl_state_serialize = getelementptr inbounds %struct.cxacru_data, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %adsl_state_serialize, ptr noundef nonnull @.str.9, ptr noundef nonnull @cxacru_bind.__key.8) #11
  %call5 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #11
  %13 = inttoptr i32 %call5 to ptr
  %rcv_buf = getelementptr inbounds %struct.cxacru_data, ptr %call7.i.i, i32 0, i32 10
  %14 = ptrtoint ptr %rcv_buf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %rcv_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool7.not = icmp eq i32 %call5, 0
  br i1 %tobool7.not, label %do.body9, label %if.end18

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxacru_bind.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxacru_bind, %if.then14)) #11
          to label %fail [label %if.then14], !srcloc !435

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  %usb_intf = getelementptr inbounds %struct.usbatm_data, ptr %usbatm_instance, i32 0, i32 5
  %15 = ptrtoint ptr %usb_intf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb_intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxacru_bind.__UNIQUE_ID_ddebug478, ptr noundef %dev, ptr noundef nonnull @.str.11) #11
  br label %fail

if.end18:                                         ; preds = %if.end
  %call19 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #11
  %17 = inttoptr i32 %call19 to ptr
  %snd_buf = getelementptr inbounds %struct.cxacru_data, ptr %call7.i.i, i32 0, i32 11
  %18 = ptrtoint ptr %snd_buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %snd_buf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool21.not = icmp eq i32 %call19, 0
  br i1 %tobool21.not, label %do.body23, label %if.end41

do.body23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxacru_bind.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxacru_bind, %if.then35)) #11
          to label %fail [label %if.then35], !srcloc !435

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  %usb_intf36 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm_instance, i32 0, i32 5
  %19 = ptrtoint ptr %usb_intf36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usb_intf36, align 4
  %dev37 = getelementptr inbounds %struct.usb_interface, ptr %20, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxacru_bind.__UNIQUE_ID_ddebug479, ptr noundef %dev37, ptr noundef nonnull @.str.12) #11
  br label %fail

if.end41:                                         ; preds = %if.end18
  %call42 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %rcv_urb = getelementptr inbounds %struct.cxacru_data, ptr %call7.i.i, i32 0, i32 12
  %21 = ptrtoint ptr %rcv_urb to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call42, ptr %rcv_urb, align 4
  %tobool44.not = icmp eq ptr %call42, null
  br i1 %tobool44.not, label %if.end41.fail_crit_edge, label %if.end46

if.end41.fail_crit_edge:                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end46:                                         ; preds = %if.end41
  %call47 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %snd_urb = getelementptr inbounds %struct.cxacru_data, ptr %call7.i.i, i32 0, i32 13
  %22 = ptrtoint ptr %snd_urb to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call47, ptr %snd_urb, align 8
  %tobool49.not = icmp eq ptr %call47, null
  br i1 %tobool49.not, label %if.end46.fail_crit_edge, label %if.end51

if.end46.fail_crit_edge:                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end51:                                         ; preds = %if.end46
  %tobool52.not = icmp eq ptr %3, null
  br i1 %tobool52.not, label %do.body54, label %if.end72

do.body54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxacru_bind.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxacru_bind, %if.then66)) #11
          to label %fail [label %if.then66], !srcloc !435

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #13
  %usb_intf67 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm_instance, i32 0, i32 5
  %23 = ptrtoint ptr %usb_intf67 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb_intf67, align 4
  %dev68 = getelementptr inbounds %struct.usb_interface, ptr %24, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxacru_bind.__UNIQUE_ID_ddebug480, ptr noundef %dev68, ptr noundef nonnull @.str.13) #11
  br label %fail

if.end72:                                         ; preds = %if.end51
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 3
  %25 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bmAttributes, align 1
  %27 = and i8 %26, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %27)
  %cmp = icmp eq i8 %27, 3
  %28 = ptrtoint ptr %rcv_urb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rcv_urb, align 4
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %31, 8
  br i1 %cmp, label %if.then74, label %if.else

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  %or77 = or i32 %shl.i, 1073774720
  %32 = ptrtoint ptr %rcv_buf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rcv_buf, align 4
  %rcv_done = getelementptr inbounds %struct.cxacru_data, ptr %call7.i.i, i32 0, i32 14
  %dev1.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 8
  %34 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 10
  %35 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or77, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 14
  %36 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 19
  %37 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4096, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 28
  %38 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @cxacru_blocking_completion, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 27
  %39 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %rcv_done, ptr %context4.i, align 4
  %speed.i = getelementptr i8, ptr %1, i32 -100
  %40 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 25
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %40, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 23
  %42 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %start_frame.i, align 4
  %43 = ptrtoint ptr %snd_urb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %snd_urb, align 8
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i, align 8
  %shl.i187 = shl i32 %46, 8
  %or81 = or i32 %shl.i187, 1073774592
  %47 = ptrtoint ptr %snd_buf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %snd_buf, align 8
  %snd_done = getelementptr inbounds %struct.cxacru_data, ptr %call7.i.i, i32 0, i32 15
  %dev1.i189 = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 8
  %49 = ptrtoint ptr %dev1.i189 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr.i, ptr %dev1.i189, align 4
  %pipe2.i190 = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 10
  %50 = ptrtoint ptr %pipe2.i190 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or81, ptr %pipe2.i190, align 4
  %transfer_buffer3.i191 = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 14
  %51 = ptrtoint ptr %transfer_buffer3.i191 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %transfer_buffer3.i191, align 4
  %transfer_buffer_length.i192 = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 19
  %52 = ptrtoint ptr %transfer_buffer_length.i192 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4096, ptr %transfer_buffer_length.i192, align 4
  %complete.i193 = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 28
  %53 = ptrtoint ptr %complete.i193 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @cxacru_blocking_completion, ptr %complete.i193, align 4
  %context4.i194 = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 27
  %54 = ptrtoint ptr %context4.i194 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %snd_done, ptr %context4.i194, align 4
  %55 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %56)
  %cmp.i196 = icmp eq i32 %56, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %56)
  %cmp6.i197 = icmp ugt i32 %56, 4
  %or.cond.i198 = or i1 %cmp.i196, %cmp6.i197
  %interval.sink.i = select i1 %or.cond.i198, i32 8, i32 4
  %57 = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 25
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %interval.sink.i, ptr %57, align 4
  %start_frame.i199 = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 23
  %59 = ptrtoint ptr %start_frame.i199 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %start_frame.i199, align 4
  br label %do.body95

if.else:                                          ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  %or86 = or i32 %shl.i, -1073708928
  %60 = ptrtoint ptr %rcv_buf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rcv_buf, align 4
  %rcv_done88 = getelementptr inbounds %struct.cxacru_data, ptr %call7.i.i, i32 0, i32 14
  %dev1.i202 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 8
  %62 = ptrtoint ptr %dev1.i202 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr.i, ptr %dev1.i202, align 4
  %pipe2.i203 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 10
  %63 = ptrtoint ptr %pipe2.i203 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or86, ptr %pipe2.i203, align 4
  %transfer_buffer3.i204 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 14
  %64 = ptrtoint ptr %transfer_buffer3.i204 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %transfer_buffer3.i204, align 4
  %transfer_buffer_length.i205 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 19
  %65 = ptrtoint ptr %transfer_buffer_length.i205 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 4096, ptr %transfer_buffer_length.i205, align 4
  %complete.i206 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 28
  %66 = ptrtoint ptr %complete.i206 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @cxacru_blocking_completion, ptr %complete.i206, align 4
  %context4.i207 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 27
  %67 = ptrtoint ptr %context4.i207 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %rcv_done88, ptr %context4.i207, align 4
  %68 = ptrtoint ptr %snd_urb to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %snd_urb, align 8
  %70 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr.i, align 8
  %shl.i208 = shl i32 %71, 8
  %or91 = or i32 %shl.i208, -1073709056
  %72 = ptrtoint ptr %snd_buf to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %snd_buf, align 8
  %snd_done93 = getelementptr inbounds %struct.cxacru_data, ptr %call7.i.i, i32 0, i32 15
  %dev1.i210 = getelementptr inbounds %struct.urb, ptr %69, i32 0, i32 8
  %74 = ptrtoint ptr %dev1.i210 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %add.ptr.i, ptr %dev1.i210, align 4
  %pipe2.i211 = getelementptr inbounds %struct.urb, ptr %69, i32 0, i32 10
  %75 = ptrtoint ptr %pipe2.i211 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or91, ptr %pipe2.i211, align 4
  %transfer_buffer3.i212 = getelementptr inbounds %struct.urb, ptr %69, i32 0, i32 14
  %76 = ptrtoint ptr %transfer_buffer3.i212 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %transfer_buffer3.i212, align 4
  %transfer_buffer_length.i213 = getelementptr inbounds %struct.urb, ptr %69, i32 0, i32 19
  %77 = ptrtoint ptr %transfer_buffer_length.i213 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 4096, ptr %transfer_buffer_length.i213, align 4
  %complete.i214 = getelementptr inbounds %struct.urb, ptr %69, i32 0, i32 28
  %78 = ptrtoint ptr %complete.i214 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @cxacru_blocking_completion, ptr %complete.i214, align 4
  %context4.i215 = getelementptr inbounds %struct.urb, ptr %69, i32 0, i32 27
  %79 = ptrtoint ptr %context4.i215 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %snd_done93, ptr %context4.i215, align 4
  br label %do.body95

do.body95:                                        ; preds = %if.else, %if.then74
  %cm_serialize = getelementptr inbounds %struct.cxacru_data, ptr %call7.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %cm_serialize, ptr noundef nonnull @.str.15, ptr noundef nonnull @cxacru_bind.__key.14) #11
  %poll_work = getelementptr inbounds %struct.cxacru_data, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %poll_work, i32 noundef 0) #11
  %80 = ptrtoint ptr %poll_work to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -64, ptr %poll_work, align 4
  %lockdep_map = getelementptr inbounds %struct.cxacru_data, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.17, ptr noundef nonnull @cxacru_bind.__key.16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry106 = getelementptr inbounds %struct.cxacru_data, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %81 = ptrtoint ptr %entry106 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %entry106, ptr %entry106, align 8
  %prev.i = getelementptr inbounds %struct.cxacru_data, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1, i32 1
  %82 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %entry106, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.cxacru_data, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 2
  %83 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @cxacru_poll_status, ptr %func, align 8
  %timer = getelementptr inbounds %struct.cxacru_data, ptr %call7.i.i, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.19, ptr noundef nonnull @cxacru_bind.__key.18) #11
  %driver_data = getelementptr inbounds %struct.usbatm_data, ptr %usbatm_instance, i32 0, i32 1
  %84 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call7.i.i, ptr %driver_data, align 4
  %call.i = tail call fastcc i32 @cxacru_cm(ptr noundef nonnull %call7.i.i, i32 noundef 144, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i216 = icmp slt i32 %call.i, 0
  br i1 %cmp.i216, label %do.body.i, label %do.body95.cxacru_card_status.exit_crit_edge

do.body95.cxacru_card_status.exit_crit_edge:      ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #13
  br label %cxacru_card_status.exit

do.body.i:                                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxacru_card_status.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxacru_bind, %if.then4.i)) #11
          to label %cxacru_card_status.exit [label %if.then4.i], !srcloc !435

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %call7.i.i, align 8
  %usb_intf.i = getelementptr inbounds %struct.usbatm_data, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %usb_intf.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %usb_intf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %88, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxacru_card_status.__UNIQUE_ID_ddebug467, ptr noundef %dev.i, ptr noundef nonnull @.str.92, i32 noundef %call.i) #11
  br label %cxacru_card_status.exit

cxacru_card_status.exit:                          ; preds = %if.then4.i, %do.body.i, %do.body95.cxacru_card_status.exit_crit_edge
  %89 = xor i1 %cmp.i216, true
  %cond = zext i1 %89 to i32
  %flags = getelementptr inbounds %struct.usbatm_data, ptr %usbatm_instance, i32 0, i32 3
  %90 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %cond, ptr %flags, align 4
  br label %cleanup

fail:                                             ; preds = %if.then66, %do.body54, %if.end46.fail_crit_edge, %if.end41.fail_crit_edge, %if.then35, %do.body23, %if.then14, %do.body9
  %ret.0 = phi i32 [ -12, %if.then14 ], [ -12, %if.then35 ], [ -12, %if.end41.fail_crit_edge ], [ -12, %if.end46.fail_crit_edge ], [ -19, %if.then66 ], [ -12, %do.body9 ], [ -12, %do.body23 ], [ -19, %do.body54 ]
  %snd_buf119 = getelementptr inbounds %struct.cxacru_data, ptr %call7.i.i, i32 0, i32 11
  %91 = ptrtoint ptr %snd_buf119 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %snd_buf119, align 8
  %93 = ptrtoint ptr %92 to i32
  tail call void @free_pages(i32 noundef %93, i32 noundef 0) #11
  %94 = ptrtoint ptr %rcv_buf to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rcv_buf, align 4
  %96 = ptrtoint ptr %95 to i32
  tail call void @free_pages(i32 noundef %96, i32 noundef 0) #11
  %snd_urb121 = getelementptr inbounds %struct.cxacru_data, ptr %call7.i.i, i32 0, i32 13
  %97 = ptrtoint ptr %snd_urb121 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %snd_urb121, align 8
  tail call void @usb_free_urb(ptr noundef %98) #11
  %rcv_urb122 = getelementptr inbounds %struct.cxacru_data, ptr %call7.i.i, i32 0, i32 12
  %99 = ptrtoint ptr %rcv_urb122 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rcv_urb122, align 4
  tail call void @usb_free_urb(ptr noundef %100) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %fail, %cxacru_card_status.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cxacru_card_status.exit ], [ %ret.0, %fail ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxacru_heavy_init(ptr nocapture noundef readonly %usbatm_instance, ptr nocapture noundef readnone %usb_intf) #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #11
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !436
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #11
  %1 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !436
  %driver_data = getelementptr inbounds %struct.usbatm_data, ptr %usbatm_instance, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data, align 4
  %call = call fastcc i32 @cxacru_find_firmware(ptr noundef %3, ptr noundef nonnull @.str.93, ptr noundef nonnull %fw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %usb_intf1 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm_instance, i32 0, i32 5
  %4 = ptrtoint ptr %usb_intf1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_intf1, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.94) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %modem_type = getelementptr inbounds %struct.cxacru_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %modem_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %modem_type, align 4
  %boot_rom_patch = getelementptr inbounds %struct.cxacru_modem_type, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %boot_rom_patch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %boot_rom_patch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %if.end.if.end13_crit_edge, label %if.then3

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc i32 @cxacru_find_firmware(ptr noundef %3, ptr noundef nonnull @.str.97, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.if.end13_crit_edge, label %do.end9

if.then3.if.end13_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

do.end9:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %usb_intf10 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm_instance, i32 0, i32 5
  %10 = ptrtoint ptr %usb_intf10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_intf10, align 4
  %dev11 = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev11, ptr noundef nonnull @.str.99) #15
  %12 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %13) #11
  br label %cleanup

if.end13:                                         ; preds = %if.then3.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %14 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw, align 4
  %16 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bp, align 4
  call fastcc void @cxacru_upload_firmware(ptr noundef %3, ptr noundef %15, ptr noundef %17)
  %18 = ptrtoint ptr %modem_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %modem_type, align 4
  %boot_rom_patch15 = getelementptr inbounds %struct.cxacru_modem_type, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %boot_rom_patch15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %boot_rom_patch15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool16.not = icmp eq i32 %21, 0
  br i1 %tobool16.not, label %if.end13.if.end18_crit_edge, label %if.then17

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bp, align 4
  call void @release_firmware(ptr noundef %23) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end13.if.end18_crit_edge
  %24 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %25) #11
  %call.i = call fastcc i32 @cxacru_cm(ptr noundef %3, i32 noundef 144, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %do.body33

do.body.i:                                        ; preds = %if.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxacru_card_status.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxacru_heavy_init, %if.then4.i)) #11
          to label %do.body22 [label %if.then4.i], !srcloc !435

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %usb_intf.i = getelementptr inbounds %struct.usbatm_data, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %usb_intf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_intf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %29, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxacru_card_status.__UNIQUE_ID_ddebug467, ptr noundef %dev.i, ptr noundef nonnull @.str.92, i32 noundef %call.i) #11
  br label %do.body22

do.body22:                                        ; preds = %if.then4.i, %do.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxacru_heavy_init.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxacru_heavy_init, %if.then27)) #11
          to label %cleanup [label %if.then27], !srcloc !435

if.then27:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #13
  %usb_intf28 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm_instance, i32 0, i32 5
  %30 = ptrtoint ptr %usb_intf28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb_intf28, align 4
  %dev29 = getelementptr inbounds %struct.usb_interface, ptr %31, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxacru_heavy_init.__UNIQUE_ID_ddebug476, ptr noundef %dev29, ptr noundef nonnull @.str.101) #11
  br label %cleanup

do.body33:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxacru_heavy_init.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxacru_heavy_init, %if.then45)) #11
          to label %cleanup [label %if.then45], !srcloc !435

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  %usb_intf46 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm_instance, i32 0, i32 5
  %32 = ptrtoint ptr %usb_intf46 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb_intf46, align 4
  %dev47 = getelementptr inbounds %struct.usb_interface, ptr %33, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxacru_heavy_init.__UNIQUE_ID_ddebug477, ptr noundef %dev47, ptr noundef nonnull @.str.102) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %do.body33, %if.then27, %do.body22, %do.end9, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call4, %do.end9 ], [ 0, %if.then45 ], [ %call.i, %if.then27 ], [ %call.i, %do.body22 ], [ 0, %do.body33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxacru_unbind(ptr nocapture noundef %usbatm_instance, ptr nocapture noundef readnone %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.usbatm_data, ptr %usbatm_instance, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxacru_unbind.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxacru_unbind, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !435

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %usb_intf = getelementptr inbounds %struct.usbatm_data, ptr %usbatm_instance, i32 0, i32 5
  %2 = ptrtoint ptr %usb_intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxacru_unbind.__UNIQUE_ID_ddebug481, ptr noundef %dev, ptr noundef nonnull @.str.145) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.body5, label %if.end23

do.body5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxacru_unbind.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxacru_unbind, %if.then17)) #11
          to label %cleanup [label %if.then17], !srcloc !435

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %usb_intf18 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm_instance, i32 0, i32 5
  %4 = ptrtoint ptr %usb_intf18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_intf18, align 4
  %dev19 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxacru_unbind.__UNIQUE_ID_ddebug482, ptr noundef %dev19, ptr noundef nonnull @.str.146) #11
  br label %cleanup

if.end23:                                         ; preds = %do.end
  %poll_state_serialize = getelementptr inbounds %struct.cxacru_data, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %poll_state_serialize, i32 noundef 0) #11
  %poll_state = getelementptr inbounds %struct.cxacru_data, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %poll_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %poll_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %do.body32, label %do.end40, !prof !437

do.body32:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/atm/cxacru.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1237, 0\0A.popsection", ""() #11, !srcloc !438
  unreachable

do.end40:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp42 = icmp eq i32 %7, 1
  %8 = ptrtoint ptr %poll_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %poll_state, align 4
  tail call void @mutex_unlock(ptr noundef %poll_state_serialize) #11
  br i1 %cmp42, label %do.end40.if.end50_crit_edge, label %if.then48

do.end40.if.end50_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then48:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  %poll_work = getelementptr inbounds %struct.cxacru_data, ptr %1, i32 0, i32 5
  %call49 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %poll_work) #11
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %do.end40.if.end50_crit_edge
  %snd_urb = getelementptr inbounds %struct.cxacru_data, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %snd_urb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %snd_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %10) #11
  %rcv_urb = getelementptr inbounds %struct.cxacru_data, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %rcv_urb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rcv_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %12) #11
  %13 = ptrtoint ptr %snd_urb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %snd_urb, align 4
  tail call void @usb_free_urb(ptr noundef %14) #11
  %15 = ptrtoint ptr %rcv_urb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rcv_urb, align 4
  tail call void @usb_free_urb(ptr noundef %16) #11
  %snd_buf = getelementptr inbounds %struct.cxacru_data, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %snd_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %snd_buf, align 4
  %19 = ptrtoint ptr %18 to i32
  tail call void @free_pages(i32 noundef %19, i32 noundef 0) #11
  %rcv_buf = getelementptr inbounds %struct.cxacru_data, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %rcv_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rcv_buf, align 4
  %22 = ptrtoint ptr %21 to i32
  tail call void @free_pages(i32 noundef %22, i32 noundef 0) #11
  tail call void @kfree(ptr noundef nonnull %1) #11
  %23 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %driver_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then17, %do.body5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxacru_atm_start(ptr nocapture noundef readonly %usbatm_instance, ptr nocapture noundef writeonly %atm_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.usbatm_data, ptr %usbatm_instance, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %usb_intf = getelementptr inbounds %struct.usbatm_data, ptr %usbatm_instance, i32 0, i32 5
  %2 = ptrtoint ptr %usb_intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_intf, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxacru_atm_start.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxacru_atm_start, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !435

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxacru_atm_start.__UNIQUE_ID_ddebug468, ptr noundef %dev, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.147) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %esi = getelementptr inbounds %struct.atm_dev, ptr %atm_dev, i32 0, i32 9
  %call3 = tail call fastcc i32 @cxacru_cm(ptr noundef %1, i32 noundef 145, ptr noundef null, i32 noundef 0, ptr noundef %esi, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end7, label %if.end11

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %atm_dev9 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm_instance, i32 0, i32 7
  %4 = ptrtoint ptr %atm_dev9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %atm_dev9, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, i32 noundef %7, i32 noundef %call3) #15
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %adsl_state_serialize = getelementptr inbounds %struct.cxacru_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %adsl_state_serialize, i32 noundef 0) #11
  %call12 = tail call fastcc i32 @cxacru_cm(ptr noundef %1, i32 noundef 132, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end11.if.end22_crit_edge

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %atm_dev19 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm_instance, i32 0, i32 7
  %8 = ptrtoint ptr %atm_dev19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %atm_dev19, align 4
  %number20 = getelementptr inbounds %struct.atm_dev, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %number20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %number20, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef %11, i32 noundef %call12) #15
  br label %if.end22

if.end22:                                         ; preds = %do.end17, %if.end11.if.end22_crit_edge
  %poll_state_serialize = getelementptr inbounds %struct.cxacru_data, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %poll_state_serialize, i32 noundef 0) #11
  %poll_state = getelementptr inbounds %struct.cxacru_data, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %poll_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %poll_state, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.end22.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb24
    i32 2, label %if.end22.sw.bb26_crit_edge
    i32 3, label %if.end22.sw.bb26_crit_edge52
  ]

if.end22.sw.bb26_crit_edge52:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb26

if.end22.sw.bb26_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb26

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %poll_state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %poll_state, align 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %poll_state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %poll_state, align 4
  br label %sw.bb26

sw.bb26:                                          ; preds = %sw.bb24, %if.end22.sw.bb26_crit_edge, %if.end22.sw.bb26_crit_edge52
  tail call void @mutex_unlock(ptr noundef %poll_state_serialize) #11
  tail call void @mutex_unlock(ptr noundef %adsl_state_serialize) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %if.end22.sw.epilog_crit_edge
  tail call void @mutex_unlock(ptr noundef %poll_state_serialize) #11
  tail call void @mutex_unlock(ptr noundef %adsl_state_serialize) #11
  %poll_work = getelementptr inbounds %struct.cxacru_data, ptr %1, i32 0, i32 5
  tail call void @cxacru_poll_status(ptr noundef %poll_work)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb26, %do.end7
  %retval.0 = phi i32 [ %call3, %do.end7 ], [ 0, %sw.bb26 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxacru_blocking_completion(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  tail call void @complete(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxacru_poll_status(ptr noundef %work) #2 align 64 {
entry:
  %buf = alloca [28 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -108
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %buf) #11
  %0 = call ptr @memset(ptr %buf, i32 0, i32 112)
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %atm_dev2 = getelementptr inbounds %struct.usbatm_data, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %atm_dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %atm_dev2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 240) #16
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call3.i = tail call fastcc i32 @cxacru_cm(ptr noundef %add.ptr, i32 noundef 136, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call7.i.i, i32 noundef 240) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.then, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  %div667.i = lshr i32 %call3.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call3.i)
  %cmp715.not.i = icmp ult i32 %call3.i, 4
  br i1 %cmp715.not.i, label %if.end5.i.if.end23_crit_edge, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  br label %for.body.i

if.end5.i.if.end23_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

for.cond.loopexit.i:                              ; preds = %if.end35.i.for.cond.loopexit.i_crit_edge, %while.cond.preheader.i.for.cond.loopexit.i_crit_edge
  %offb.1.lcssa.i = phi i32 [ %inc.i, %while.cond.preheader.i.for.cond.loopexit.i_crit_edge ], [ %inc36.i, %if.end35.i.for.cond.loopexit.i_crit_edge ]
  %cmp7.i = icmp slt i32 %offb.1.lcssa.i, %div667.i
  br i1 %cmp7.i, label %for.cond.loopexit.i.for.body.i_crit_edge, label %for.cond.loopexit.i.if.end23_crit_edge

for.cond.loopexit.i.if.end23_crit_edge:           ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %if.end5.i.for.body.i_crit_edge
  %offb.016.i = phi i32 [ %offb.1.lcssa.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ 0, %if.end5.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %call7.i.i, i32 %offb.016.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %8)
  %9 = icmp ugt i32 %8, 7
  br i1 %9, label %for.body.i.if.then14.i_crit_edge, label %lor.lhs.false10.i

for.body.i.if.then14.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i

lor.lhs.false10.i:                                ; preds = %for.body.i
  %inc.i = add nsw i32 %offb.016.i, 1
  %sub11.i = sub i32 %div667.i, %inc.i
  %div12.i = sdiv i32 %sub11.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %div12.i)
  %cmp13.i = icmp sgt i32 %8, %div12.i
  br i1 %cmp13.i, label %lor.lhs.false10.i.if.then14.i_crit_edge, label %while.cond.preheader.i

lor.lhs.false10.i.if.then14.i_crit_edge:          ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i

while.cond.preheader.i:                           ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool20.not12.i = icmp eq i32 %7, 0
  br i1 %tobool20.not12.i, label %while.cond.preheader.i.for.cond.loopexit.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.for.cond.loopexit.i_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit.i

if.then14.i:                                      ; preds = %lor.lhs.false10.i.if.then14.i_crit_edge, %for.body.i.if.then14.i_crit_edge
  %call15.i = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.cxacru_cm_get_array) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.then14.i.if.then.thread219_crit_edge, label %do.end.i

if.then14.i.if.then.thread219_crit_edge:          ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.thread219

do.end.i:                                         ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %usb_intf.i = getelementptr inbounds %struct.usbatm_data, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %usb_intf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb_intf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.61, i32 noundef 136, i32 noundef %8) #15
  br label %if.then.thread219

while.body.i:                                     ; preds = %if.end35.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %dec14.in.i = phi i32 [ %dec14.i, %if.end35.i.while.body.i_crit_edge ], [ %8, %while.cond.preheader.i.while.body.i_crit_edge ]
  %offb.113.i = phi i32 [ %inc36.i, %if.end35.i.while.body.i_crit_edge ], [ %inc.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %arrayidx22.i = getelementptr i32, ptr %call7.i.i, i32 %offb.113.i
  %14 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx22.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %16)
  %cmp23.i = icmp ugt i32 %16, 27
  br i1 %cmp23.i, label %if.then24.i, label %if.end35.i

if.then24.i:                                      ; preds = %while.body.i
  %call25.i = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.cxacru_cm_get_array) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.then24.i.if.then.thread219_crit_edge, label %do.end30.i

if.then24.i.if.then.thread219_crit_edge:          ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.thread219

do.end30.i:                                       ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 4
  %usb_intf32.i = getelementptr inbounds %struct.usbatm_data, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %usb_intf32.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usb_intf32.i, align 4
  %dev33.i = getelementptr inbounds %struct.usb_interface, ptr %20, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33.i, ptr noundef nonnull @.str.64, i32 noundef %16, i32 noundef 136) #15
  br label %if.then.thread219

if.end35.i:                                       ; preds = %while.body.i
  %dec14.i = add i32 %dec14.in.i, -1
  %inc21.i = add i32 %offb.113.i, 1
  %inc36.i = add i32 %offb.113.i, 2
  %arrayidx37.i = getelementptr i32, ptr %call7.i.i, i32 %inc21.i
  %21 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx37.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #11
  %arrayidx38.i = getelementptr i32, ptr %buf, i32 %16
  %24 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx38.i, align 4
  %tobool20.not.i = icmp eq i32 %dec14.i, 0
  br i1 %tobool20.not.i, label %if.end35.i.for.cond.loopexit.i_crit_edge, label %if.end35.i.while.body.i_crit_edge

if.end35.i.while.body.i_crit_edge:                ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end35.i.for.cond.loopexit.i_crit_edge:         ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit.i

if.then.thread219:                                ; preds = %do.end30.i, %if.then24.i.if.then.thread219_crit_edge, %do.end.i, %if.then14.i.if.then.thread219_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %do.end

if.then:                                          ; preds = %if.end.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -108, i32 %call3.i)
  %cmp3.not = icmp eq i32 %call3.i, -108
  br i1 %cmp3.not, label %if.then.if.end_crit_edge, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %if.then.do.end_crit_edge, %if.then.thread219, %entry.do.end_crit_edge
  %retval.0.i210216 = phi i32 [ %call3.i, %if.then.do.end_crit_edge ], [ -5, %if.then.thread219 ], [ -12, %entry.do.end_crit_edge ]
  %25 = ptrtoint ptr %atm_dev2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %atm_dev2, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %number, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %28, i32 noundef %retval.0.i210216) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %cmp3.not218 = phi i1 [ false, %do.end ], [ true, %if.then.if.end_crit_edge ]
  %poll_state_serialize = getelementptr i8, ptr %work, i32 212
  tail call void @mutex_lock_nested(ptr noundef %poll_state_serialize, i32 noundef 0) #11
  %poll_state = getelementptr i8, ptr %work, i32 304
  %29 = ptrtoint ptr %poll_state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %poll_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp8.not = icmp eq i32 %30, 3
  br i1 %cmp8.not, label %if.end.if.end21_crit_edge, label %if.then9

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then9:                                         ; preds = %if.end
  %31 = ptrtoint ptr %poll_state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %poll_state, align 4
  br i1 %cmp3.not218, label %if.then9.if.end21_crit_edge, label %do.end15

if.then9.if.end21_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

do.end15:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %atm_dev2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %atm_dev2, align 4
  %number18 = getelementptr inbounds %struct.atm_dev, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %number18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %number18, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %35) #15
  br label %if.end21

if.end21:                                         ; preds = %do.end15, %if.then9.if.end21_crit_edge, %if.end.if.end21_crit_edge
  tail call void @mutex_unlock(ptr noundef %poll_state_serialize) #11
  br label %reschedule

if.end23:                                         ; preds = %for.cond.loopexit.i.if.end23_crit_edge, %if.end5.i.if.end23_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %card_info = getelementptr i8, ptr %work, i32 100
  %36 = call ptr @memcpy(ptr %card_info, ptr %buf, i32 112)
  %adsl_status = getelementptr i8, ptr %work, i32 -4
  %37 = ptrtoint ptr %adsl_status to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %adsl_status, align 4
  %arrayidx = getelementptr inbounds [28 x i32], ptr %buf, i32 0, i32 20
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp26.not = icmp eq i32 %38, %40
  br i1 %cmp26.not, label %if.end23.if.end54_crit_edge, label %if.then27

if.end23.if.end54_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then27:                                        ; preds = %if.end23
  %41 = ptrtoint ptr %adsl_status to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %adsl_status, align 4
  %42 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.219)
  switch i32 %40, label %do.end48 [
    i32 0, label %do.end33
    i32 1, label %do.end41
  ]

do.end33:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %atm_dev2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %atm_dev2, align 4
  %number36 = getelementptr inbounds %struct.atm_dev, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %number36 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %number36, align 4
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %46) #15
  br label %if.end54

do.end41:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %atm_dev2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %atm_dev2, align 4
  %number44 = getelementptr inbounds %struct.atm_dev, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %number44 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %number44, align 4
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %50) #15
  br label %if.end54

do.end48:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %atm_dev2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %atm_dev2, align 4
  %number51 = getelementptr inbounds %struct.atm_dev, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %number51 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %number51, align 4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %54, i32 noundef %40) #15
  br label %if.end54

if.end54:                                         ; preds = %do.end48, %do.end41, %do.end33, %if.end23.if.end54_crit_edge
  %line_status = getelementptr i8, ptr %work, i32 -100
  %55 = ptrtoint ptr %line_status to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %line_status, align 4
  %arrayidx55 = getelementptr inbounds [28 x i32], ptr %buf, i32 0, i32 3
  %57 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx55, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp56 = icmp eq i32 %56, %58
  br i1 %cmp56, label %if.end54.reschedule_crit_edge, label %if.end58

if.end54.reschedule_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %reschedule

if.end58:                                         ; preds = %if.end54
  %59 = ptrtoint ptr %line_status to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %line_status, align 4
  %60 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.220)
  switch i32 %58, label %sw.default129 [
    i32 0, label %sw.bb62
    i32 1, label %sw.bb70
    i32 2, label %sw.bb78
    i32 3, label %sw.bb86
    i32 4, label %sw.bb94
    i32 5, label %sw.bb102
    i32 6, label %sw.bb113
    i32 7, label %sw.bb121
  ]

sw.bb62:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @atm_dev_signal_change(ptr noundef %4, i8 noundef zeroext 0) #11
  %61 = ptrtoint ptr %atm_dev2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %atm_dev2, align 4
  %number68 = getelementptr inbounds %struct.atm_dev, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %number68 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %number68, align 4
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %64) #15
  br label %reschedule

sw.bb70:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @atm_dev_signal_change(ptr noundef %4, i8 noundef zeroext 0) #11
  %65 = ptrtoint ptr %atm_dev2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %atm_dev2, align 4
  %number76 = getelementptr inbounds %struct.atm_dev, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %number76 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %number76, align 4
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %68) #15
  br label %reschedule

sw.bb78:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @atm_dev_signal_change(ptr noundef %4, i8 noundef zeroext 0) #11
  %69 = ptrtoint ptr %atm_dev2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %atm_dev2, align 4
  %number84 = getelementptr inbounds %struct.atm_dev, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %number84 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %number84, align 4
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %72) #15
  br label %reschedule

sw.bb86:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @atm_dev_signal_change(ptr noundef %4, i8 noundef zeroext 0) #11
  %73 = ptrtoint ptr %atm_dev2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %atm_dev2, align 4
  %number92 = getelementptr inbounds %struct.atm_dev, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %number92 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %number92, align 4
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %76) #15
  br label %reschedule

sw.bb94:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @atm_dev_signal_change(ptr noundef %4, i8 noundef zeroext 0) #11
  %77 = ptrtoint ptr %atm_dev2 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %atm_dev2, align 4
  %number100 = getelementptr inbounds %struct.atm_dev, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %number100 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %number100, align 4
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %80) #15
  br label %reschedule

sw.bb102:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %buf, align 4
  %mul = mul i32 %82, 1000
  %div = udiv i32 %mul, 424
  %link_rate = getelementptr inbounds %struct.atm_dev, ptr %4, i32 0, i32 13
  %83 = ptrtoint ptr %link_rate to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %div, ptr %link_rate, align 4
  tail call void @atm_dev_signal_change(ptr noundef %4, i8 noundef zeroext 2) #11
  %84 = ptrtoint ptr %atm_dev2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %atm_dev2, align 4
  %number109 = getelementptr inbounds %struct.atm_dev, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %number109 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %number109, align 4
  %arrayidx111 = getelementptr inbounds [28 x i32], ptr %buf, i32 0, i32 1
  %88 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx111, align 4
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %87, i32 noundef %82, i32 noundef %89) #15
  br label %reschedule

sw.bb113:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @atm_dev_signal_change(ptr noundef %4, i8 noundef zeroext 0) #11
  %90 = ptrtoint ptr %atm_dev2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %atm_dev2, align 4
  %number119 = getelementptr inbounds %struct.atm_dev, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %number119 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %number119, align 4
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %93) #15
  br label %reschedule

sw.bb121:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @atm_dev_signal_change(ptr noundef %4, i8 noundef zeroext 0) #11
  %94 = ptrtoint ptr %atm_dev2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %atm_dev2, align 4
  %number127 = getelementptr inbounds %struct.atm_dev, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %number127 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %number127, align 4
  %call128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %97) #15
  br label %reschedule

sw.default129:                                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @atm_dev_signal_change(ptr noundef %4, i8 noundef zeroext 1) #11
  %98 = ptrtoint ptr %atm_dev2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %atm_dev2, align 4
  %number135 = getelementptr inbounds %struct.atm_dev, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %number135 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %number135, align 4
  %102 = ptrtoint ptr %line_status to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %line_status, align 4
  %call137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %101, i32 noundef %103) #15
  br label %reschedule

reschedule:                                       ; preds = %sw.default129, %sw.bb121, %sw.bb113, %sw.bb102, %sw.bb94, %sw.bb86, %sw.bb78, %sw.bb70, %sw.bb62, %if.end54.reschedule_crit_edge, %if.end21
  %poll_state_serialize139 = getelementptr i8, ptr %work, i32 212
  tail call void @mutex_lock_nested(ptr noundef %poll_state_serialize139, i32 noundef 0) #11
  %poll_state140 = getelementptr i8, ptr %work, i32 304
  %104 = ptrtoint ptr %poll_state140 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %poll_state140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp141 = icmp eq i32 %105, 0
  br i1 %cmp141, label %land.lhs.true, label %reschedule.if.end149_crit_edge

reschedule.if.end149_crit_edge:                   ; preds = %reschedule
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end149

land.lhs.true:                                    ; preds = %reschedule
  %adsl_status142 = getelementptr i8, ptr %work, i32 -4
  %106 = ptrtoint ptr %adsl_status142 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %adsl_status142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %107)
  %cmp143 = icmp eq i32 %107, 1
  br i1 %cmp143, label %land.lhs.true144, label %land.lhs.true.if.end149thread-pre-split_crit_edge

land.lhs.true.if.end149thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end149thread-pre-split

land.lhs.true144:                                 ; preds = %land.lhs.true
  %line_status145 = getelementptr i8, ptr %work, i32 -100
  %108 = ptrtoint ptr %line_status145 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %line_status145, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp146 = icmp eq i32 %109, 0
  br i1 %cmp146, label %if.end149.thread, label %land.lhs.true144.if.end149thread-pre-split_crit_edge

land.lhs.true144.if.end149thread-pre-split_crit_edge: ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end149thread-pre-split

if.end149.thread:                                 ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #13
  %110 = ptrtoint ptr %poll_state140 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 1, ptr %poll_state140, align 4
  tail call void @mutex_unlock(ptr noundef %poll_state_serialize139) #11
  br label %if.end158

if.end149thread-pre-split:                        ; preds = %land.lhs.true144.if.end149thread-pre-split_crit_edge, %land.lhs.true.if.end149thread-pre-split_crit_edge
  %111 = ptrtoint ptr %poll_state140 to i32
  call void @__asan_load4_noabort(i32 %111)
  %.pr = load i32, ptr %poll_state140, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.end149thread-pre-split, %reschedule.if.end149_crit_edge
  %112 = phi i32 [ %.pr, %if.end149thread-pre-split ], [ %105, %reschedule.if.end149_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %112)
  %cmp151 = icmp eq i32 %112, 1
  tail call void @mutex_unlock(ptr noundef %poll_state_serialize139) #11
  br i1 %cmp151, label %if.end149.if.end158_crit_edge, label %if.then155

if.end149.if.end158_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end158

if.then155:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #13
  %call156 = tail call i32 @round_jiffies_relative(i32 noundef 100) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %113 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %113, ptr noundef %work, i32 noundef %call156) #11
  br label %if.end158

if.end158:                                        ; preds = %if.then155, %if.end149.if.end158_crit_edge, %if.end149.thread
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %buf) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atm_dev_signal_change(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxacru_cm(ptr noundef %instance, i32 noundef %cm, ptr nocapture noundef readonly %wdata, i32 noundef %wsize, ptr nocapture noundef writeonly %rdata, i32 noundef %rsize) unnamed_addr #2 align 64 {
entry:
  %timer.i253 = alloca %struct.cxacru_timer, align 4
  %timer.i = alloca %struct.cxacru_timer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %snd_buf = getelementptr inbounds %struct.cxacru_data, ptr %instance, i32 0, i32 11
  %0 = ptrtoint ptr %snd_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %snd_buf, align 4
  %rcv_buf = getelementptr inbounds %struct.cxacru_data, ptr %instance, i32 0, i32 10
  %2 = ptrtoint ptr %rcv_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rcv_buf, align 4
  %sub = add i32 %wsize, -1
  %div = sdiv i32 %sub, 60
  %add = shl i32 %div, 6
  %mul = add i32 %add, 64
  %sub1 = add i32 %rsize, -1
  %div2 = sdiv i32 %sub1, 60
  %add3 = shl i32 %div2, 6
  %mul4 = add i32 %add3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %mul)
  %cmp = icmp ugt i32 %mul, 4096
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %call = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.cxacru_cm) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.err_crit_edge, label %do.end

if.then.err_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %instance, align 4
  %usb_intf = getelementptr inbounds %struct.usbatm_data, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %usb_intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.66, i32 noundef %mul, i32 noundef %mul4) #15
  br label %err

if.end7:                                          ; preds = %entry
  %cm_serialize = getelementptr inbounds %struct.cxacru_data, ptr %instance, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %cm_serialize, i32 noundef 0) #11
  %rcv_done = getelementptr inbounds %struct.cxacru_data, ptr %instance, i32 0, i32 14
  %8 = ptrtoint ptr %rcv_done to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rcv_done, align 4
  %wait.i = getelementptr inbounds %struct.cxacru_data, ptr %instance, i32 0, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.89, ptr noundef nonnull @init_completion.__key) #11
  %rcv_urb = getelementptr inbounds %struct.cxacru_data, ptr %instance, i32 0, i32 12
  %9 = ptrtoint ptr %rcv_urb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rcv_urb, align 4
  %call8 = tail call i32 @usb_submit_urb(ptr noundef %10, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end21

if.then10:                                        ; preds = %if.end7
  %call11 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.cxacru_cm) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.fail_crit_edge, label %do.end16

if.then10.fail_crit_edge:                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

do.end16:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %instance, align 4
  %usb_intf18 = getelementptr inbounds %struct.usbatm_data, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %usb_intf18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_intf18, align 4
  %dev19 = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.68, i32 noundef %cm, i32 noundef %call8) #15
  br label %fail

if.end21:                                         ; preds = %if.end7
  %15 = call ptr @memset(ptr %1, i32 0, i32 %mul)
  %conv = trunc i32 %cm to i8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wsize)
  %cmp22266 = icmp sgt i32 %wsize, 0
  br i1 %cmp22266, label %if.end21.for.body_crit_edge, label %if.end21.for.end_crit_edge

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end21.for.body_crit_edge
  %offb.0268 = phi i32 [ %add32, %for.body.for.body_crit_edge ], [ 0, %if.end21.for.body_crit_edge ]
  %offd.0267 = phi i32 [ %add31, %for.body.for.body_crit_edge ], [ 0, %if.end21.for.body_crit_edge ]
  %arrayidx25 = getelementptr i8, ptr %1, i32 %offb.0268
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %arrayidx25, align 1
  %add.ptr26 = getelementptr i8, ptr %arrayidx25, i32 4
  %add.ptr27 = getelementptr i8, ptr %wdata, i32 %offd.0267
  %sub28 = sub i32 %wsize, %offd.0267
  %18 = tail call i32 @llvm.smin.i32(i32 %sub28, i32 60)
  %19 = call ptr @memcpy(ptr %add.ptr26, ptr %add.ptr27, i32 %18)
  %add31 = add i32 %offd.0267, 60
  %add32 = add i32 %offb.0268, 64
  %cmp22 = icmp slt i32 %add31, %wsize
  br i1 %cmp22, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end21.for.end_crit_edge
  %snd_urb = getelementptr inbounds %struct.cxacru_data, ptr %instance, i32 0, i32 13
  %20 = ptrtoint ptr %snd_urb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %snd_urb, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 19
  %22 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul, ptr %transfer_buffer_length, align 4
  %snd_done = getelementptr inbounds %struct.cxacru_data, ptr %instance, i32 0, i32 15
  %23 = ptrtoint ptr %snd_done to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %snd_done, align 4
  %wait.i252 = getelementptr inbounds %struct.cxacru_data, ptr %instance, i32 0, i32 15, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i252, ptr noundef nonnull @.str.89, ptr noundef nonnull @init_completion.__key) #11
  %24 = ptrtoint ptr %snd_urb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %snd_urb, align 4
  %call34 = tail call i32 @usb_submit_urb(ptr noundef %25, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.end48

if.then37:                                        ; preds = %for.end
  %call38 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.cxacru_cm) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then37.fail_crit_edge, label %do.end43

if.then37.fail_crit_edge:                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

do.end43:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %instance, align 4
  %usb_intf45 = getelementptr inbounds %struct.usbatm_data, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %usb_intf45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_intf45, align 4
  %dev46 = getelementptr inbounds %struct.usb_interface, ptr %29, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef nonnull @.str.71, i32 noundef %cm, i32 noundef %call34) #15
  br label %fail

if.end48:                                         ; preds = %for.end
  %30 = ptrtoint ptr %snd_urb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %snd_urb, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %timer.i) #11
  %32 = call ptr @memset(ptr %timer.i, i32 0, i32 48)
  %urb2.i = getelementptr inbounds %struct.cxacru_timer, ptr %timer.i, i32 0, i32 1
  %33 = ptrtoint ptr %urb2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %urb2.i, align 4
  call void @init_timer_on_stack_key(ptr noundef nonnull %timer.i, ptr noundef nonnull @cxacru_timeout_kill, i32 noundef 0, ptr noundef nonnull @.str.90, ptr noundef nonnull @cxacru_start_wait_urb.__key) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %34, 200
  %call5.i = call i32 @mod_timer(ptr noundef nonnull %timer.i, i32 noundef %add.i) #11
  call void @wait_for_completion(ptr noundef %snd_done) #11
  %call7.i = call i32 @del_timer_sync(ptr noundef nonnull %timer.i) #11
  call void @destroy_timer_on_stack(ptr noundef nonnull %timer.i) #11
  %status.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 12
  %35 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %status.i, align 4
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %timer.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp52 = icmp slt i32 %36, 0
  br i1 %cmp52, label %if.then54, label %if.end65

if.then54:                                        ; preds = %if.end48
  %call55 = call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.cxacru_cm) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then54.fail_crit_edge, label %do.end60

if.then54.fail_crit_edge:                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

do.end60:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %instance, align 4
  %usb_intf62 = getelementptr inbounds %struct.usbatm_data, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %usb_intf62 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %usb_intf62, align 4
  %dev63 = getelementptr inbounds %struct.usb_interface, ptr %40, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev63, ptr noundef nonnull @.str.74, i32 noundef %cm, i32 noundef %36) #15
  br label %fail

if.end65:                                         ; preds = %if.end48
  %41 = ptrtoint ptr %rcv_urb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rcv_urb, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %timer.i253) #11
  %43 = call ptr @memset(ptr %timer.i253, i32 0, i32 48)
  %urb2.i254 = getelementptr inbounds %struct.cxacru_timer, ptr %timer.i253, i32 0, i32 1
  %44 = ptrtoint ptr %urb2.i254 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %42, ptr %urb2.i254, align 4
  call void @init_timer_on_stack_key(ptr noundef nonnull %timer.i253, ptr noundef nonnull @cxacru_timeout_kill, i32 noundef 0, ptr noundef nonnull @.str.90, ptr noundef nonnull @cxacru_start_wait_urb.__key) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %add.i255 = add i32 %45, 200
  %call5.i256 = call i32 @mod_timer(ptr noundef nonnull %timer.i253, i32 noundef %add.i255) #11
  call void @wait_for_completion(ptr noundef %rcv_done) #11
  %call7.i257 = call i32 @del_timer_sync(ptr noundef nonnull %timer.i253) #11
  call void @destroy_timer_on_stack(ptr noundef nonnull %timer.i253) #11
  %actual_length9.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 20
  %46 = ptrtoint ptr %actual_length9.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %actual_length9.i, align 4
  %status.i258 = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 12
  %48 = ptrtoint ptr %status.i258 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %status.i258, align 4
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %timer.i253) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp69 = icmp slt i32 %49, 0
  br i1 %cmp69, label %if.then71, label %if.end82

if.then71:                                        ; preds = %if.end65
  %call72 = call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.cxacru_cm) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then71.fail_crit_edge, label %do.end77

if.then71.fail_crit_edge:                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

do.end77:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %instance, align 4
  %usb_intf79 = getelementptr inbounds %struct.usbatm_data, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %usb_intf79 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %usb_intf79, align 4
  %dev80 = getelementptr inbounds %struct.usb_interface, ptr %53, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev80, ptr noundef nonnull @.str.77, i32 noundef %cm, i32 noundef %49) #15
  br label %fail

if.end82:                                         ; preds = %if.end65
  %54 = and i32 %47, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool83.not = icmp ne i32 %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool85.not = icmp eq i32 %47, 0
  %or.cond = or i1 %tobool85.not, %tobool83.not
  br i1 %or.cond, label %if.then86, label %for.cond98.preheader

for.cond98.preheader:                             ; preds = %if.end82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rsize)
  %cmp99269 = icmp sgt i32 %rsize, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp101270 = icmp sgt i32 %47, 0
  %or.cond262271 = select i1 %cmp99269, i1 %cmp101270, i1 false
  br i1 %or.cond262271, label %for.cond98.preheader.for.body103_crit_edge, label %for.cond98.preheader.for.end160_crit_edge

for.cond98.preheader.for.end160_crit_edge:        ; preds = %for.cond98.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end160

for.cond98.preheader.for.body103_crit_edge:       ; preds = %for.cond98.preheader
  br label %for.body103

if.then86:                                        ; preds = %if.end82
  %call87 = call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.cxacru_cm) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then86.fail_crit_edge, label %do.end92

if.then86.fail_crit_edge:                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

do.end92:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %instance, align 4
  %usb_intf94 = getelementptr inbounds %struct.usbatm_data, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %usb_intf94 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %usb_intf94, align 4
  %dev95 = getelementptr inbounds %struct.usb_interface, ptr %58, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev95, ptr noundef nonnull @.str.80, i32 noundef %cm, i32 noundef %47) #15
  br label %fail

for.body103:                                      ; preds = %if.end145.for.body103_crit_edge, %for.cond98.preheader.for.body103_crit_edge
  %offb.1273 = phi i32 [ %add159, %if.end145.for.body103_crit_edge ], [ 0, %for.cond98.preheader.for.body103_crit_edge ]
  %offd.1272 = phi i32 [ %add157, %if.end145.for.body103_crit_edge ], [ 0, %for.cond98.preheader.for.body103_crit_edge ]
  %arrayidx104 = getelementptr i8, ptr %3, i32 %offb.1273
  %59 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv105, i32 %cm)
  %cmp106.not = icmp eq i32 %conv105, %cm
  br i1 %cmp106.not, label %if.end121, label %if.then108

if.then108:                                       ; preds = %for.body103
  %call109 = call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.cxacru_cm) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.then108.fail_crit_edge, label %do.end114

if.then108.fail_crit_edge:                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

do.end114:                                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %instance, align 4
  %usb_intf116 = getelementptr inbounds %struct.usbatm_data, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %usb_intf116 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %usb_intf116, align 4
  %dev117 = getelementptr inbounds %struct.usb_interface, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx104, align 1
  %conv119 = zext i8 %66 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev117, ptr noundef nonnull @.str.83, i32 noundef %conv119, i32 noundef %cm) #15
  br label %fail

if.end121:                                        ; preds = %for.body103
  %add122 = or i32 %offb.1273, 1
  %arrayidx123 = getelementptr i8, ptr %3, i32 %add122
  %67 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx123, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %68)
  %cmp125.not = icmp eq i8 %68, 1
  br i1 %cmp125.not, label %if.end145, label %if.then127

if.then127:                                       ; preds = %if.end121
  %call128 = call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.cxacru_cm) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.then127.fail_crit_edge, label %do.end133

if.then127.fail_crit_edge:                        ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

do.end133:                                        ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx123.le = getelementptr i8, ptr %3, i32 %add122
  %69 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %instance, align 4
  %usb_intf135 = getelementptr inbounds %struct.usbatm_data, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %usb_intf135 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %usb_intf135, align 4
  %dev136 = getelementptr inbounds %struct.usb_interface, ptr %72, i32 0, i32 7
  %73 = ptrtoint ptr %arrayidx123.le to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx123.le, align 1
  %conv139 = zext i8 %74 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev136, ptr noundef nonnull @.str.86, i32 noundef %cm, i32 noundef %conv139) #15
  br label %fail

if.end145:                                        ; preds = %if.end121
  %add.ptr146 = getelementptr i8, ptr %rdata, i32 %offd.1272
  %add.ptr148 = getelementptr i8, ptr %arrayidx104, i32 4
  %sub149 = sub i32 %rsize, %offd.1272
  %75 = call i32 @llvm.smin.i32(i32 %sub149, i32 60)
  %76 = call ptr @memcpy(ptr %add.ptr146, ptr %add.ptr148, i32 %75)
  %add157 = add i32 %offd.1272, 60
  %add159 = add i32 %offb.1273, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %add157, i32 %rsize)
  %cmp99 = icmp slt i32 %add157, %rsize
  call void @__sanitizer_cov_trace_cmp4(i32 %add159, i32 %47)
  %cmp101 = icmp slt i32 %add159, %47
  %or.cond262 = select i1 %cmp99, i1 %cmp101, i1 false
  br i1 %or.cond262, label %if.end145.for.body103_crit_edge, label %if.end145.for.end160_crit_edge

if.end145.for.end160_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end160

if.end145.for.body103_crit_edge:                  ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body103

for.end160:                                       ; preds = %if.end145.for.end160_crit_edge, %for.cond98.preheader.for.end160_crit_edge
  %offd.1.lcssa = phi i32 [ 0, %for.cond98.preheader.for.end160_crit_edge ], [ %add157, %if.end145.for.end160_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxacru_cm.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxacru_cm, %if.then167)) #11
          to label %fail [label %if.then167], !srcloc !435

if.then167:                                       ; preds = %for.end160
  call void @__sanitizer_cov_trace_pc() #13
  %77 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %instance, align 4
  %usb_intf169 = getelementptr inbounds %struct.usbatm_data, ptr %78, i32 0, i32 5
  %79 = ptrtoint ptr %usb_intf169 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %usb_intf169, align 4
  %dev170 = getelementptr inbounds %struct.usb_interface, ptr %80, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxacru_cm.__UNIQUE_ID_ddebug466, ptr noundef %dev170, ptr noundef nonnull @.str.88, i32 noundef %cm) #11
  br label %fail

fail:                                             ; preds = %if.then167, %for.end160, %do.end133, %if.then127.fail_crit_edge, %do.end114, %if.then108.fail_crit_edge, %do.end92, %if.then86.fail_crit_edge, %do.end77, %if.then71.fail_crit_edge, %do.end60, %if.then54.fail_crit_edge, %do.end43, %if.then37.fail_crit_edge, %do.end16, %if.then10.fail_crit_edge
  %ret.0 = phi i32 [ %call8, %do.end16 ], [ %call8, %if.then10.fail_crit_edge ], [ %call34, %do.end43 ], [ %call34, %if.then37.fail_crit_edge ], [ %36, %do.end60 ], [ %36, %if.then54.fail_crit_edge ], [ %49, %do.end77 ], [ %49, %if.then71.fail_crit_edge ], [ %offd.1.lcssa, %if.then167 ], [ -5, %do.end92 ], [ -5, %if.then86.fail_crit_edge ], [ -5, %do.end114 ], [ -5, %if.then108.fail_crit_edge ], [ -5, %do.end133 ], [ -5, %if.then127.fail_crit_edge ], [ %offd.1.lcssa, %for.end160 ]
  call void @mutex_unlock(ptr noundef %cm_serialize) #11
  br label %err

err:                                              ; preds = %fail, %do.end, %if.then.err_crit_edge
  %ret.1 = phi i32 [ %ret.0, %fail ], [ -12, %do.end ], [ -12, %if.then.err_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_on_stack_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxacru_timeout_kill(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %urb = getelementptr inbounds %struct.cxacru_timer, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %urb, align 4
  %call = tail call i32 @usb_unlink_urb(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_timer_on_stack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxacru_find_firmware(ptr nocapture noundef readonly %instance, ptr noundef %phase, ptr noundef %fw_p) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %instance, align 4
  %usb_intf = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %usb_intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_intf, align 4
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #11
  %4 = call ptr @memset(ptr %buf, i32 255, i32 16)
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.103, ptr noundef %phase)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxacru_find_firmware.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxacru_find_firmware, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !435

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %usb_intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb_intf, align 4
  %dev7 = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxacru_find_firmware.__UNIQUE_ID_ddebug474, ptr noundef %dev7, ptr noundef nonnull @.str.105, ptr noundef nonnull %buf) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call10 = call i32 @request_firmware(ptr noundef %fw_p, ptr noundef nonnull %buf, ptr noundef %dev2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.end34, label %do.body13

do.body13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxacru_find_firmware.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxacru_find_firmware, %if.then25)) #11
          to label %cleanup [label %if.then25], !srcloc !435

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %usb_intf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_intf, align 4
  %dev27 = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxacru_find_firmware.__UNIQUE_ID_ddebug475, ptr noundef %dev27, ptr noundef nonnull @.str.106, ptr noundef %phase) #11
  br label %cleanup

do.end34:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %usb_intf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_intf, align 4
  %dev36 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev36, ptr noundef nonnull @.str.107, ptr noundef nonnull %buf) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %if.then25, %do.body13
  %retval.0 = phi i32 [ 0, %do.end34 ], [ -2, %if.then25 ], [ -2, %do.body13 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxacru_upload_firmware(ptr noundef %instance, ptr nocapture noundef readonly %fw, ptr nocapture noundef readonly %bp) unnamed_addr #2 align 64 {
entry:
  %signature = alloca [2 x i16], align 2
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %instance, align 4
  %usb_dev2 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %usb_dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_dev2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %signature) #11
  %4 = getelementptr inbounds [2 x i16], ptr %signature, i32 0, i32 1
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 16, i32 7
  %5 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %idVendor, align 8
  %7 = ptrtoint ptr %signature to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %signature, align 2
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 16, i32 8
  %8 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %idProduct, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxacru_upload_firmware.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxacru_upload_firmware, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !435

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %usb_intf = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %usb_intf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxacru_upload_firmware.__UNIQUE_ID_ddebug473, ptr noundef %dev, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.108) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %modem_type = getelementptr inbounds %struct.cxacru_data, ptr %instance, i32 0, i32 1
  %13 = ptrtoint ptr %modem_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %modem_type, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %val, align 4
  %call6 = call fastcc i32 @cxacru_fw(ptr noundef %3, i32 noundef 3, i8 noundef zeroext 2, i32 noundef 3473512, ptr noundef nonnull %val, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end14, label %do.end11

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %usb_intf12 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %usb_intf12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usb_intf12, align 4
  %dev13 = getelementptr inbounds %struct.usb_interface, ptr %20, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.110, i32 noundef %call6) #15
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %21 = ptrtoint ptr %modem_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %modem_type, align 4
  %pll_b_clk = getelementptr inbounds %struct.cxacru_modem_type, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %pll_b_clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pll_b_clk, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %val, align 4
  %call16 = call fastcc i32 @cxacru_fw(ptr noundef %3, i32 noundef 3, i8 noundef zeroext 2, i32 noundef 3473516, ptr noundef nonnull %val, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end24, label %do.end21

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %usb_intf22 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %usb_intf22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usb_intf22, align 4
  %dev23 = getelementptr inbounds %struct.usb_interface, ptr %28, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.112, i32 noundef %call16) #15
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16777216, ptr %val, align 4
  %call25 = call fastcc i32 @cxacru_fw(ptr noundef %3, i32 noundef 3, i8 noundef zeroext 2, i32 noundef 3473424, ptr noundef nonnull %val, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  %usb_intf37 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %usb_intf37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb_intf37, align 4
  %dev38 = getelementptr inbounds %struct.usb_interface, ptr %31, i32 0, i32 7
  br i1 %tobool26.not, label %do.end36, label %do.end30

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.115, i32 noundef %call25) #15
  br label %cleanup

do.end36:                                         ; preds = %if.end24
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev38, ptr noundef nonnull @.str.118) #15
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %34 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fw, align 4
  %call39 = tail call fastcc i32 @cxacru_fw(ptr noundef %3, i32 noundef 3, i8 noundef zeroext 2, i32 noundef 8392704, ptr noundef %33, i32 noundef %35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end47, label %do.end44

do.end44:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %usb_intf37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usb_intf37, align 4
  %dev46 = getelementptr inbounds %struct.usb_interface, ptr %37, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef nonnull @.str.121, i32 noundef %call39) #15
  br label %cleanup

if.end47:                                         ; preds = %do.end36
  %38 = ptrtoint ptr %modem_type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %modem_type, align 4
  %boot_rom_patch = getelementptr inbounds %struct.cxacru_modem_type, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %boot_rom_patch to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %boot_rom_patch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool49.not = icmp eq i32 %41, 0
  br i1 %tobool49.not, label %if.end47.if.end67_crit_edge, label %do.end53

if.end47.if.end67_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

do.end53:                                         ; preds = %if.end47
  %42 = ptrtoint ptr %usb_intf37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %usb_intf37, align 4
  %dev55 = getelementptr inbounds %struct.usb_interface, ptr %43, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev55, ptr noundef nonnull @.str.124) #15
  %data56 = getelementptr inbounds %struct.firmware, ptr %bp, i32 0, i32 1
  %44 = ptrtoint ptr %data56 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data56, align 4
  %46 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bp, align 4
  %call58 = tail call fastcc i32 @cxacru_fw(ptr noundef %3, i32 noundef 3, i8 noundef zeroext 2, i32 noundef 1574400, ptr noundef %45, i32 noundef %47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %do.end53.if.end67_crit_edge, label %do.end63

do.end53.if.end67_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

do.end63:                                         ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %usb_intf37 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %usb_intf37, align 4
  %dev65 = getelementptr inbounds %struct.usb_interface, ptr %49, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65, ptr noundef nonnull @.str.127, i32 noundef %call58) #15
  br label %cleanup

if.end67:                                         ; preds = %do.end53.if.end67_crit_edge, %if.end47.if.end67_crit_edge
  %call68 = call fastcc i32 @cxacru_fw(ptr noundef %3, i32 noundef 3, i8 noundef zeroext 2, i32 noundef 1574144, ptr noundef nonnull %signature, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  %50 = ptrtoint ptr %usb_intf37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %usb_intf37, align 4
  %dev81 = getelementptr inbounds %struct.usb_interface, ptr %51, i32 0, i32 7
  br i1 %tobool69.not, label %do.end79, label %do.end73

do.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev81, ptr noundef nonnull @.str.130, i32 noundef %call68) #15
  br label %cleanup

do.end79:                                         ; preds = %if.end67
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev81, ptr noundef nonnull @.str.133) #15
  %52 = ptrtoint ptr %modem_type to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %modem_type, align 4
  %boot_rom_patch83 = getelementptr inbounds %struct.cxacru_modem_type, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %boot_rom_patch83 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %boot_rom_patch83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool84.not = icmp eq i32 %55, 0
  br i1 %tobool84.not, label %if.else, label %if.then85

if.then85:                                        ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 399360, ptr %val, align 4
  %call86 = call fastcc i32 @cxacru_fw(ptr noundef %3, i32 noundef 3, i8 noundef zeroext 2, i32 noundef 1605392, ptr noundef nonnull %val, i32 noundef 4)
  br label %if.end88

if.else:                                          ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #13
  %call87 = tail call fastcc i32 @cxacru_fw(ptr noundef %3, i32 noundef 6, i8 noundef zeroext 0, i32 noundef 8392704, ptr noundef null, i32 noundef 0)
  br label %if.end88

if.end88:                                         ; preds = %if.else, %if.then85
  %ret.0 = phi i32 [ %call86, %if.then85 ], [ %call87, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool89.not = icmp eq i32 %ret.0, 0
  br i1 %tobool89.not, label %if.end96, label %do.end93

do.end93:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %usb_intf37 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %usb_intf37, align 4
  %dev95 = getelementptr inbounds %struct.usb_interface, ptr %58, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev95, ptr noundef nonnull @.str.136, i32 noundef %ret.0) #15
  br label %cleanup

if.end96:                                         ; preds = %if.end88
  %call97 = tail call i32 @msleep_interruptible(i32 noundef 1000) #11
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %3, align 8
  %shl.i = shl i32 %60, 8
  %or = or i32 %shl.i, -1073709056
  %call99 = tail call i32 @usb_clear_halt(ptr noundef %3, i32 noundef %or) #11
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %3, align 8
  %shl.i174 = shl i32 %62, 8
  %or102 = or i32 %shl.i174, -1073708928
  %call103 = tail call i32 @usb_clear_halt(ptr noundef %3, i32 noundef %or102) #11
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %3, align 8
  %shl.i176 = shl i32 %64, 8
  %or105 = or i32 %shl.i176, -1073676288
  %call106 = tail call i32 @usb_clear_halt(ptr noundef %3, i32 noundef %or105) #11
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %3, align 8
  %shl.i178 = shl i32 %66, 8
  %or109 = or i32 %shl.i178, -1073676160
  %call110 = tail call i32 @usb_clear_halt(ptr noundef %3, i32 noundef %or109) #11
  %call111 = tail call fastcc i32 @cxacru_cm(ptr noundef %instance, i32 noundef 144, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp = icmp slt i32 %call111, 0
  br i1 %cmp, label %do.end115, label %if.end96.cleanup_crit_edge

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end115:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %usb_intf37 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %usb_intf37, align 4
  %dev117 = getelementptr inbounds %struct.usb_interface, ptr %68, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev117, ptr noundef nonnull @.str.139, i32 noundef %call111) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end115, %if.end96.cleanup_crit_edge, %do.end93, %do.end73, %do.end63, %do.end44, %do.end30, %do.end21, %do.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %signature) #11
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxacru_fw(ptr noundef %usb_dev, i32 noundef %fw, i8 noundef zeroext %code1, i32 noundef %addr, ptr nocapture noundef readonly %data, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #11
  %0 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup68_crit_edge, label %do.body.preheader

entry.cleanup68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup68

do.body.preheader:                                ; preds = %entry
  %conv = trunc i32 %fw to i8
  br label %do.body

do.body:                                          ; preds = %do.cond46.do.body_crit_edge, %do.body.preheader
  %offb.0 = phi i32 [ %offb.2.ph, %do.cond46.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %offd.0 = phi i32 [ %add23, %do.cond46.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %addr.addr.0 = phi i32 [ %add9, %do.cond46.do.body_crit_edge ], [ %addr, %do.body.preheader ]
  %sub = sub i32 %size, %offd.0
  %1 = tail call i32 @llvm.smin.i32(i32 %sub, i32 56)
  %inc = add nuw nsw i32 %offb.0, 1
  %arrayidx = getelementptr i8, ptr %0, i32 %offb.0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %arrayidx, align 1
  %conv1 = trunc i32 %1 to i8
  %inc2 = add nuw nsw i32 %offb.0, 2
  %arrayidx3 = getelementptr i8, ptr %0, i32 %inc
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv1, ptr %arrayidx3, align 1
  %inc4 = add nuw nsw i32 %offb.0, 3
  %arrayidx5 = getelementptr i8, ptr %0, i32 %inc2
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %code1, ptr %arrayidx5, align 1
  %inc6 = add nuw nsw i32 %offb.0, 4
  %arrayidx7 = getelementptr i8, ptr %0, i32 %inc4
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx7, align 1
  %add.ptr = getelementptr i8, ptr %0, i32 %inc6
  %6 = tail call i32 @llvm.bswap.i32(i32 %addr.addr.0)
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %add.ptr, align 1
  %add = add nuw nsw i32 %offb.0, 8
  %add9 = add i32 %1, %addr.addr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool10.not = icmp eq i32 %1, 0
  br i1 %tobool10.not, label %do.body.if.then17_crit_edge, label %if.end14

do.body.if.then17_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

if.end14:                                         ; preds = %do.body
  %add.ptr12 = getelementptr i8, ptr %0, i32 %add
  %add.ptr13 = getelementptr i8, ptr %data, i32 %offd.0
  %8 = call ptr @memcpy(ptr %add.ptr12, ptr %add.ptr13, i32 %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %sub)
  %cmp15 = icmp slt i32 %sub, 56
  br i1 %cmp15, label %if.end14.if.then17_crit_edge, label %if.end14.if.end21_crit_edge

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.end14.if.then17_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

if.then17:                                        ; preds = %if.end14.if.then17_crit_edge, %do.body.if.then17_crit_edge
  %add.ptr18 = getelementptr i8, ptr %0, i32 %add
  %add.ptr19 = getelementptr i8, ptr %add.ptr18, i32 %1
  %sub20 = sub i32 56, %1
  %9 = call ptr @memset(ptr %add.ptr19, i32 0, i32 %sub20)
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end14.if.end21_crit_edge
  %add22 = add i32 %offb.0, 64
  %add23 = add i32 %offd.0, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add22)
  %cmp24 = icmp ult i32 %add22, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %add23, i32 %size)
  %cmp26.not = icmp slt i32 %add23, %size
  %or.cond = select i1 %cmp24, i1 %cmp26.not, i1 false
  br i1 %or.cond, label %if.end21.do.cond46_crit_edge, label %if.then28

if.end21.do.cond46_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond46

if.then28:                                        ; preds = %if.end21
  %10 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %usb_dev, align 8
  %shl.i = shl i32 %11, 8
  %or = or i32 %shl.i, -1073709056
  %call30 = tail call i32 @usb_bulk_msg(ptr noundef %usb_dev, i32 noundef %or, ptr noundef nonnull %0, i32 noundef %add22, ptr noundef null, i32 noundef 2000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.body34, label %if.then28.do.cond46_crit_edge

if.then28.do.cond46_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond46

do.body34:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxacru_fw.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxacru_fw, %if.then40)) #11
          to label %cleanup67 [label %if.then40], !srcloc !435

if.then40:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_device, ptr %usb_dev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxacru_fw.__UNIQUE_ID_ddebug471, ptr noundef %dev, ptr noundef nonnull @.str.142, i32 noundef %fw) #11
  br label %cleanup67

do.cond46:                                        ; preds = %if.then28.do.cond46_crit_edge, %if.end21.do.cond46_crit_edge
  %offb.2.ph = phi i32 [ 0, %if.then28.do.cond46_crit_edge ], [ %add22, %if.end21.do.cond46_crit_edge ]
  br i1 %cmp26.not, label %do.cond46.do.body_crit_edge, label %do.body50

do.cond46.do.body_crit_edge:                      ; preds = %do.cond46
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body50:                                        ; preds = %do.cond46
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxacru_fw.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxacru_fw, %if.then62)) #11
          to label %cleanup67 [label %if.then62], !srcloc !435

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #13
  %dev63 = getelementptr inbounds %struct.usb_device, ptr %usb_dev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxacru_fw.__UNIQUE_ID_ddebug472, ptr noundef %dev63, ptr noundef nonnull @.str.143, i32 noundef %fw) #11
  br label %cleanup67

cleanup67:                                        ; preds = %if.then62, %do.body50, %if.then40, %do.body34
  %ret.3 = phi i32 [ 0, %if.then62 ], [ %call30, %if.then40 ], [ %call30, %do.body34 ], [ 0, %do.body50 ]
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #11
  br label %cleanup68

cleanup68:                                        ; preds = %cleanup67, %entry.cleanup68_crit_edge
  %retval.0 = phi i32 [ %ret.3, %cleanup67 ], [ -12, %entry.cleanup68_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adsl_config_store(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %data = alloca [16 x i32], align 4
  %tmp6 = alloca i32, align 4
  %index = alloca i32, align 4
  %value = alloca i32, align 4
  %log = alloca [85 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.to_usbatm_driver_data.exit_crit_edge, label %if.end.i

entry.to_usbatm_driver_data.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %to_usbatm_driver_data.exit

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.to_usbatm_driver_data.exit_crit_edge, label %if.end3.i

if.end.i.to_usbatm_driver_data.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %to_usbatm_driver_data.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  br label %to_usbatm_driver_data.exit

to_usbatm_driver_data.exit:                       ; preds = %if.end3.i, %if.end.i.to_usbatm_driver_data.exit_crit_edge, %entry.to_usbatm_driver_data.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end3.i ], [ null, %entry.to_usbatm_driver_data.exit_crit_edge ], [ null, %if.end.i.to_usbatm_driver_data.exit_crit_edge ]
  %call1 = tail call i32 @strlen(ptr noundef %buf) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #11
  %4 = getelementptr inbounds i8, ptr %data, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 60)
  %call2 = tail call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call2, label %if.end, label %to_usbatm_driver_data.exit.cleanup76_crit_edge

to_usbatm_driver_data.exit.cleanup76_crit_edge:   ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup76

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %if.end.cleanup76_crit_edge, label %while.cond.preheader

if.end.cleanup76_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup76

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp5119 = icmp sgt i32 %call1, 0
  br i1 %cmp5119, label %while.body.lr.ph, label %while.cond.preheader.cleanup76_crit_edge

while.cond.preheader.cleanup76_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup76

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %sub21 = add nsw i32 %call1, -1
  br label %while.body

while.body:                                       ; preds = %cleanup71.while.body_crit_edge, %while.body.lr.ph
  %num.0121 = phi i32 [ 0, %while.body.lr.ph ], [ %num.2, %cleanup71.while.body_crit_edge ]
  %pos.0120 = phi i32 [ 0, %while.body.lr.ph ], [ %pos.1, %cleanup71.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp6) #11
  %6 = ptrtoint ptr %tmp6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tmp6, align 4, !annotation !436
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #11
  %7 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %index, align 4, !annotation !436
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #11
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %value, align 4, !annotation !436
  %add.ptr7 = getelementptr i8, ptr %buf, i32 %pos.0120
  %call8 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr7, ptr noundef nonnull @.str.153, ptr noundef nonnull %index, ptr noundef nonnull %value, ptr noundef nonnull %tmp6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 2
  br i1 %cmp9, label %while.body.cleanup71.thread_crit_edge, label %if.end11

while.body.cleanup71.thread_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71.thread

if.end11:                                         ; preds = %while.body
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %10)
  %cmp12 = icmp ugt i32 %10, 127
  br i1 %cmp12, label %if.end11.cleanup71.thread_crit_edge, label %if.end14

if.end11.cleanup71.thread_crit_edge:              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71.thread

if.end14:                                         ; preds = %if.end11
  %11 = ptrtoint ptr %tmp6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tmp6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp15 = icmp slt i32 %12, 0
  %sub = sub i32 %call1, %pos.0120
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %sub)
  %cmp16 = icmp sgt i32 %12, %sub
  %or.cond = select i1 %cmp15, i1 true, i1 %cmp16
  br i1 %or.cond, label %if.end14.cleanup71.thread_crit_edge, label %if.end18

if.end14.cleanup71.thread_crit_edge:              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71.thread

if.end18:                                         ; preds = %if.end14
  %add = add i32 %12, %pos.0120
  %arrayidx = getelementptr i8, ptr %buf, i32 %add
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %14)
  %cmp19 = icmp eq i8 %14, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub21)
  %cmp22 = icmp eq i32 %add, %sub21
  %or.cond109 = select i1 %cmp19, i1 %cmp22, i1 false
  %inc = zext i1 %or.cond109 to i32
  %pos.1 = add i32 %add, %inc
  %15 = call i32 @llvm.bswap.i32(i32 %10)
  %mul = shl i32 %num.0121, 1
  %add26 = or i32 %mul, 1
  %arrayidx27 = getelementptr [16 x i32], ptr %data, i32 0, i32 %add26
  %16 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx27, align 4
  %17 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %add29 = add i32 %mul, 2
  %arrayidx30 = getelementptr [16 x i32], ptr %data, i32 0, i32 %add29
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx30, align 4
  %inc31 = add i32 %num.0121, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.1, i32 %call1)
  %cmp32.not = icmp sge i32 %pos.1, %call1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc31)
  %cmp35 = icmp sgt i32 %inc31, 6
  %or.cond110 = select i1 %cmp32.not, i1 true, i1 %cmp35
  br i1 %or.cond110, label %if.then37, label %if.end18.cleanup71_crit_edge

if.end18.cleanup71_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71

if.then37:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 85, ptr nonnull %log) #11
  %21 = call ptr @memset(ptr %log, i32 255, i32 85)
  %22 = call i32 @llvm.bswap.i32(i32 %inc31)
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %data, align 4
  %mul39 = shl i32 %inc31, 3
  %add40 = or i32 %mul39, 4
  %call41 = call fastcc i32 @cxacru_cm(ptr noundef nonnull %retval.0.i, i32 noundef 138, ptr noundef nonnull %data, i32 noundef %add40, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %cleanup.thread, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then37
  %24 = ptrtoint ptr %tmp6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %tmp6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %num.0121)
  %cmp48117 = icmp ult i32 %num.0121, 2147483647
  br i1 %cmp48117, label %for.cond.preheader.for.body_crit_edge, label %cleanup71.critedge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

cleanup.thread:                                   ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %retval.0.i, align 4
  %atm_dev = getelementptr inbounds %struct.usbatm_data, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %atm_dev, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %number, align 4
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, i32 noundef %30, i32 noundef %call41) #15
  call void @llvm.lifetime.end.p0(i64 85, ptr nonnull %log) #11
  br label %cleanup71.thread

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %storemerge118 = phi i32 [ %inc60, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %mul51 = mul i32 %storemerge118, 12
  %add.ptr52 = getelementptr i8, ptr %log, i32 %mul51
  %mul53 = shl i32 %storemerge118, 1
  %add54 = or i32 %mul53, 1
  %arrayidx55 = getelementptr [16 x i32], ptr %data, i32 0, i32 %add54
  %31 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx55, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %add57 = add i32 %mul53, 2
  %arrayidx58 = getelementptr [16 x i32], ptr %data, i32 0, i32 %add57
  %34 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx58, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  %call59 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr52, i32 noundef 13, ptr noundef nonnull @.str.156, i32 noundef %33, i32 noundef %36)
  %37 = ptrtoint ptr %tmp6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tmp6, align 4
  %inc60 = add i32 %38, 1
  store i32 %inc60, ptr %tmp6, align 4
  %cmp48 = icmp slt i32 %inc60, %inc31
  br i1 %cmp48, label %for.body.for.body_crit_edge, label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %retval.0.i, align 4
  %atm_dev66 = getelementptr inbounds %struct.usbatm_data, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %atm_dev66 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %atm_dev66, align 4
  %number67 = getelementptr inbounds %struct.atm_dev, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %number67 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %number67, align 4
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, i32 noundef %44, ptr noundef nonnull %log) #15
  call void @llvm.lifetime.end.p0(i64 85, ptr nonnull %log) #11
  br label %cleanup71

cleanup71.thread:                                 ; preds = %cleanup.thread, %if.end14.cleanup71.thread_crit_edge, %if.end11.cleanup71.thread_crit_edge, %while.body.cleanup71.thread_crit_edge
  %retval.3.ph = phi i32 [ -5, %cleanup.thread ], [ -22, %if.end14.cleanup71.thread_crit_edge ], [ -22, %if.end11.cleanup71.thread_crit_edge ], [ -22, %while.body.cleanup71.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp6) #11
  br label %cleanup76

cleanup71.critedge:                               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %retval.0.i, align 4
  %atm_dev66.c = getelementptr inbounds %struct.usbatm_data, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %atm_dev66.c to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %atm_dev66.c, align 4
  %number67.c = getelementptr inbounds %struct.atm_dev, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %number67.c to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %number67.c, align 4
  %call69.c = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, i32 noundef %50, ptr noundef nonnull %log) #15
  call void @llvm.lifetime.end.p0(i64 85, ptr nonnull %log) #11
  br label %cleanup71

cleanup71:                                        ; preds = %cleanup71.critedge, %cleanup, %if.end18.cleanup71_crit_edge
  %num.2 = phi i32 [ 0, %cleanup ], [ %inc31, %if.end18.cleanup71_crit_edge ], [ 0, %cleanup71.critedge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp6) #11
  %cmp5 = icmp sgt i32 %call1, %pos.1
  br i1 %cmp5, label %cleanup71.while.body_crit_edge, label %cleanup71.cleanup76_crit_edge

cleanup71.cleanup76_crit_edge:                    ; preds = %cleanup71
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup76

cleanup71.while.body_crit_edge:                   ; preds = %cleanup71
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup76:                                        ; preds = %cleanup71.cleanup76_crit_edge, %cleanup71.thread, %while.cond.preheader.cleanup76_crit_edge, %if.end.cleanup76_crit_edge, %to_usbatm_driver_data.exit.cleanup76_crit_edge
  %retval.4 = phi i32 [ -13, %to_usbatm_driver_data.exit.cleanup76_crit_edge ], [ -19, %if.end.cleanup76_crit_edge ], [ %retval.3.ph, %cleanup71.thread ], [ %call1, %while.cond.preheader.cleanup76_crit_edge ], [ %call1, %cleanup71.cleanup76_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #11
  ret i32 %retval.4
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adsl_state_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %to_usbatm_driver_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

to_usbatm_driver_data.exit:                       ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %to_usbatm_driver_data.exit.cleanup_crit_edge, label %if.end

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  %arrayidx = getelementptr %struct.cxacru_data, ptr %3, i32 0, i32 6, i32 20
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1 = icmp ugt i32 %5, 1
  br i1 %cmp1, label %if.then3, label %if.end5, !prof !437

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.163, i32 noundef %5)
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx6 = getelementptr [2 x ptr], ptr @adsl_state_show.str, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6, align 4
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.109, ptr noundef %7)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %to_usbatm_driver_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then3 ], [ %call7, %if.end5 ], [ -19, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adsl_state_store(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %str_cmd = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.to_usbatm_driver_data.exit_crit_edge, label %if.end.i

entry.to_usbatm_driver_data.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %to_usbatm_driver_data.exit

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.to_usbatm_driver_data.exit_crit_edge, label %if.end3.i

if.end.i.to_usbatm_driver_data.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %to_usbatm_driver_data.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  br label %to_usbatm_driver_data.exit

to_usbatm_driver_data.exit:                       ; preds = %if.end3.i, %if.end.i.to_usbatm_driver_data.exit_crit_edge, %entry.to_usbatm_driver_data.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end3.i ], [ null, %entry.to_usbatm_driver_data.exit_crit_edge ], [ null, %if.end.i.to_usbatm_driver_data.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %str_cmd) #11
  %4 = ptrtoint ptr %str_cmd to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %str_cmd, align 8
  %call1 = tail call i32 @strlen(ptr noundef %buf) #14
  %call2 = tail call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call2, label %if.end, label %to_usbatm_driver_data.exit.cleanup_crit_edge

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.164, ptr noundef nonnull %str_cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 1
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cmp6 = icmp eq ptr %retval.0.i, null
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %adsl_state_serialize = getelementptr inbounds %struct.cxacru_data, ptr %retval.0.i, i32 0, i32 3
  %call9 = call i32 @mutex_lock_interruptible_nested(ptr noundef %adsl_state_serialize, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %str_cmd, ptr noundef nonnull dereferenceable(5) @.str.165, i32 5) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool14.not = icmp eq i32 %bcmp, 0
  br i1 %tobool14.not, label %if.end11.if.then18_crit_edge, label %lor.lhs.false

if.end11.if.then18_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

lor.lhs.false:                                    ; preds = %if.end11
  %bcmp119 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %str_cmd, ptr noundef nonnull dereferenceable(8) @.str.166, i32 8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp119)
  %tobool17.not = icmp eq i32 %bcmp119, 0
  br i1 %tobool17.not, label %lor.lhs.false.if.then18_crit_edge, label %lor.lhs.false.if.end25_crit_edge

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %if.end11.if.then18_crit_edge
  %call19 = call fastcc i32 @cxacru_cm(ptr noundef nonnull %retval.0.i, i32 noundef 133, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end, label %if.then18.if.end25_crit_edge

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

do.end:                                           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %retval.0.i, align 4
  %atm_dev = getelementptr inbounds %struct.usbatm_data, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %atm_dev, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %number, align 4
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, i32 noundef %10, i32 noundef %call19) #15
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.then18.if.end25_crit_edge, %lor.lhs.false.if.end25_crit_edge
  %ret.0 = phi i32 [ 0, %lor.lhs.false.if.end25_crit_edge ], [ -5, %do.end ], [ %call1, %if.then18.if.end25_crit_edge ]
  %poll.0 = phi i32 [ -1, %lor.lhs.false.if.end25_crit_edge ], [ -1, %do.end ], [ 1, %if.then18.if.end25_crit_edge ]
  %bcmp115 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %str_cmd, ptr noundef nonnull dereferenceable(8) @.str.166, i32 8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp115)
  %tobool28.not = icmp eq i32 %bcmp115, 0
  br i1 %tobool28.not, label %if.then29, label %if.end25.if.end30_crit_edge

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  call void @msleep(i32 noundef 1500) #11
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end25.if.end30_crit_edge
  %bcmp116 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %str_cmd, ptr noundef nonnull dereferenceable(6) @.str.169, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp116)
  %tobool33.not = icmp eq i32 %bcmp116, 0
  br i1 %tobool33.not, label %if.end30.if.then38_crit_edge, label %lor.lhs.false34

if.end30.if.then38_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38

lor.lhs.false34:                                  ; preds = %if.end30
  %bcmp118 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %str_cmd, ptr noundef nonnull dereferenceable(8) @.str.166, i32 8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp118)
  %tobool37.not = icmp eq i32 %bcmp118, 0
  br i1 %tobool37.not, label %lor.lhs.false34.if.then38_crit_edge, label %lor.lhs.false34.if.end52_crit_edge

lor.lhs.false34.if.end52_crit_edge:               ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

lor.lhs.false34.if.then38_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38

if.then38:                                        ; preds = %lor.lhs.false34.if.then38_crit_edge, %if.end30.if.then38_crit_edge
  %call39 = call fastcc i32 @cxacru_cm(ptr noundef nonnull %retval.0.i, i32 noundef 132, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %do.end44, label %if.then38.if.end52_crit_edge

if.then38.if.end52_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

do.end44:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %retval.0.i, align 4
  %atm_dev47 = getelementptr inbounds %struct.usbatm_data, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %atm_dev47 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %atm_dev47, align 4
  %number48 = getelementptr inbounds %struct.atm_dev, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %number48 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %number48, align 4
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, i32 noundef %16, i32 noundef %call39) #15
  br label %if.end52

if.end52:                                         ; preds = %do.end44, %if.then38.if.end52_crit_edge, %lor.lhs.false34.if.end52_crit_edge
  %ret.1 = phi i32 [ %ret.0, %lor.lhs.false34.if.end52_crit_edge ], [ -5, %do.end44 ], [ %call1, %if.then38.if.end52_crit_edge ]
  %poll.1 = phi i32 [ %poll.0, %lor.lhs.false34.if.end52_crit_edge ], [ %poll.0, %do.end44 ], [ 2, %if.then38.if.end52_crit_edge ]
  %bcmp117 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %str_cmd, ptr noundef nonnull dereferenceable(5) @.str.173, i32 5) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp117)
  %tobool55.not = icmp eq i32 %bcmp117, 0
  %spec.select = select i1 %tobool55.not, i32 %call1, i32 %ret.1
  %spec.select120 = select i1 %tobool55.not, i32 2, i32 %poll.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp58 = icmp eq i32 %spec.select, 0
  %ret.3 = select i1 %cmp58, i32 -22, i32 %spec.select
  %poll.3 = select i1 %cmp58, i32 -1, i32 %spec.select120
  %17 = zext i32 %poll.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.221)
  switch i32 %poll.3, label %if.end52.if.end79.thread_crit_edge [
    i32 2, label %if.then62
    i32 1, label %if.then70
  ]

if.end52.if.end79.thread_crit_edge:               ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79.thread

if.then62:                                        ; preds = %if.end52
  %poll_state_serialize = getelementptr inbounds %struct.cxacru_data, ptr %retval.0.i, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %poll_state_serialize, i32 noundef 0) #11
  %poll_state = getelementptr inbounds %struct.cxacru_data, ptr %retval.0.i, i32 0, i32 8
  %18 = ptrtoint ptr %poll_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %poll_state, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.222)
  switch i32 %19, label %if.then62.if.then82_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb64
    i32 2, label %if.then62.sw.bb66_crit_edge
    i32 3, label %if.then62.sw.bb66_crit_edge124
  ]

if.then62.sw.bb66_crit_edge124:                   ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb66

if.then62.sw.bb66_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb66

if.then62.if.then82_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then82

sw.bb:                                            ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %poll_state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %poll_state, align 4
  br label %if.then82

sw.bb64:                                          ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %poll_state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %poll_state, align 4
  br label %sw.bb66

sw.bb66:                                          ; preds = %sw.bb64, %if.then62.sw.bb66_crit_edge, %if.then62.sw.bb66_crit_edge124
  call void @mutex_unlock(ptr noundef %poll_state_serialize) #11
  call void @mutex_unlock(ptr noundef %adsl_state_serialize) #11
  br label %cleanup

if.then70:                                        ; preds = %if.end52
  %poll_state_serialize71 = getelementptr inbounds %struct.cxacru_data, ptr %retval.0.i, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %poll_state_serialize71, i32 noundef 0) #11
  %poll_state72 = getelementptr inbounds %struct.cxacru_data, ptr %retval.0.i, i32 0, i32 8
  %23 = ptrtoint ptr %poll_state72 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %poll_state72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp73 = icmp eq i32 %24, 2
  br i1 %cmp73, label %if.then74, label %if.then70.if.end76_crit_edge

if.then70.if.end76_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

if.then74:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %poll_state72 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %poll_state72, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.then70.if.end76_crit_edge
  call void @mutex_unlock(ptr noundef %poll_state_serialize71) #11
  br label %if.end79.thread

if.end79.thread:                                  ; preds = %if.end76, %if.end52.if.end79.thread_crit_edge
  call void @mutex_unlock(ptr noundef %adsl_state_serialize) #11
  br label %cleanup

if.then82:                                        ; preds = %sw.bb, %if.then62.if.then82_crit_edge
  call void @mutex_unlock(ptr noundef %poll_state_serialize) #11
  call void @mutex_unlock(ptr noundef %adsl_state_serialize) #11
  %poll_work = getelementptr inbounds %struct.cxacru_data, ptr %retval.0.i, i32 0, i32 5
  call void @cxacru_poll_status(ptr noundef %poll_work)
  br label %cleanup

cleanup:                                          ; preds = %if.then82, %if.end79.thread, %sw.bb66, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %to_usbatm_driver_data.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -19, %if.end5.cleanup_crit_edge ], [ -512, %if.end8.cleanup_crit_edge ], [ %ret.3, %if.then82 ], [ %ret.3, %sw.bb66 ], [ %ret.3, %if.end79.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %str_cmd) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adsl_controller_version_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %to_usbatm_driver_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

to_usbatm_driver_data.exit:                       ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %to_usbatm_driver_data.exit.cleanup_crit_edge, label %if.end

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.cxacru_data, ptr %3, i32 0, i32 6, i32 24
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.163, i32 noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %to_usbatm_driver_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -19, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adsl_headend_environment_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %to_usbatm_driver_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

to_usbatm_driver_data.exit:                       ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %to_usbatm_driver_data.exit.cleanup_crit_edge, label %if.end

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.cxacru_data, ptr %3, i32 0, i32 6, i32 23
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.163, i32 noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %to_usbatm_driver_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -19, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adsl_headend_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %to_usbatm_driver_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

to_usbatm_driver_data.exit:                       ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %to_usbatm_driver_data.exit.cleanup_crit_edge, label %if.end

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.cxacru_data, ptr %3, i32 0, i32 6, i32 22
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.163, i32 noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %to_usbatm_driver_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -19, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @modulation_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %to_usbatm_driver_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

to_usbatm_driver_data.exit:                       ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %to_usbatm_driver_data.exit.cleanup_crit_edge, label %if.end

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  %arrayidx = getelementptr %struct.cxacru_data, ptr %3, i32 0, i32 6, i32 21
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.i3 = icmp ugt i32 %5, 3
  br i1 %cmp.i3, label %if.then.i, label %if.end.i4, !prof !437

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.163, i32 noundef %5) #11
  br label %cleanup

if.end.i4:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr [4 x ptr], ptr @cxacru_sysfs_showattr_MODU.str, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call2.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.109, ptr noundef %7) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i4, %if.then.i, %to_usbatm_driver_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ %call.i, %if.then.i ], [ %call2.i, %if.end.i4 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @line_startable_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %to_usbatm_driver_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

to_usbatm_driver_data.exit:                       ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %to_usbatm_driver_data.exit.cleanup_crit_edge, label %if.end

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  %arrayidx = getelementptr %struct.cxacru_data, ptr %3, i32 0, i32 6, i32 20
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i3 = icmp ugt i32 %5, 1
  br i1 %cmp.i3, label %if.then.i, label %if.end.i4, !prof !437

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.163, i32 noundef %5) #11
  br label %cleanup

if.end.i4:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr [2 x ptr], ptr @cxacru_sysfs_showattr_bool.str, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call2.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.109, ptr noundef %7) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i4, %if.then.i, %to_usbatm_driver_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ %call.i, %if.then.i ], [ %call2.i, %if.end.i4 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @downstream_hec_errors_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %to_usbatm_driver_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

to_usbatm_driver_data.exit:                       ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %to_usbatm_driver_data.exit.cleanup_crit_edge, label %if.end

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.cxacru_data, ptr %3, i32 0, i32 6, i32 19
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.163, i32 noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %to_usbatm_driver_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -19, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upstream_hec_errors_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %to_usbatm_driver_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

to_usbatm_driver_data.exit:                       ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %to_usbatm_driver_data.exit.cleanup_crit_edge, label %if.end

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.cxacru_data, ptr %3, i32 0, i32 6, i32 18
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.163, i32 noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %to_usbatm_driver_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -19, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @downstream_fec_errors_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %to_usbatm_driver_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

to_usbatm_driver_data.exit:                       ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %to_usbatm_driver_data.exit.cleanup_crit_edge, label %if.end

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.cxacru_data, ptr %3, i32 0, i32 6, i32 17
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.163, i32 noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %to_usbatm_driver_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -19, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upstream_fec_errors_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %to_usbatm_driver_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

to_usbatm_driver_data.exit:                       ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %to_usbatm_driver_data.exit.cleanup_crit_edge, label %if.end

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.cxacru_data, ptr %3, i32 0, i32 6, i32 16
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.163, i32 noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %to_usbatm_driver_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -19, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @downstream_crc_errors_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %to_usbatm_driver_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

to_usbatm_driver_data.exit:                       ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %to_usbatm_driver_data.exit.cleanup_crit_edge, label %if.end

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.cxacru_data, ptr %3, i32 0, i32 6, i32 15
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.163, i32 noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %to_usbatm_driver_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -19, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upstream_crc_errors_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %to_usbatm_driver_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

to_usbatm_driver_data.exit:                       ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %to_usbatm_driver_data.exit.cleanup_crit_edge, label %if.end

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.cxacru_data, ptr %3, i32 0, i32 6, i32 14
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.163, i32 noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %to_usbatm_driver_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -19, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @startup_attempts_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %to_usbatm_driver_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

to_usbatm_driver_data.exit:                       ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %to_usbatm_driver_data.exit.cleanup_crit_edge, label %if.end

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.cxacru_data, ptr %3, i32 0, i32 6, i32 13
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.163, i32 noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %to_usbatm_driver_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -19, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @downstream_bits_per_frame_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %to_usbatm_driver_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

to_usbatm_driver_data.exit:                       ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %to_usbatm_driver_data.exit.cleanup_crit_edge, label %if.end

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.cxacru_data, ptr %3, i32 0, i32 6, i32 12
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.163, i32 noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %to_usbatm_driver_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -19, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upstream_bits_per_frame_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %to_usbatm_driver_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

to_usbatm_driver_data.exit:                       ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %to_usbatm_driver_data.exit.cleanup_crit_edge, label %if.end

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.cxacru_data, ptr %3, i32 0, i32 6, i32 11
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.163, i32 noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %to_usbatm_driver_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -19, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @transmitter_power_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %to_usbatm_driver_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

to_usbatm_driver_data.exit:                       ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %to_usbatm_driver_data.exit.cleanup_crit_edge, label %if.end

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.cxacru_data, ptr %3, i32 0, i32 6, i32 10
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %sext = shl i32 %5, 24
  %conv.i = ashr exact i32 %sext, 24
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.195, i32 noundef %conv.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %to_usbatm_driver_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -19, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @downstream_attenuation_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %to_usbatm_driver_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

to_usbatm_driver_data.exit:                       ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %to_usbatm_driver_data.exit.cleanup_crit_edge, label %if.end

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  %arrayidx = getelementptr %struct.cxacru_data, ptr %3, i32 0, i32 6, i32 9
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %5 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv)
  %cmp.i3 = icmp sgt i16 %conv, -1
  br i1 %cmp.i3, label %if.then.i, label %if.else.i, !prof !439

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv.frozen = freeze i16 %conv
  %div1920.i = udiv i16 %conv.frozen, 100
  %div19.zext.i = zext i16 %div1920.i to i32
  %6 = mul i16 %div1920.i, 100
  %rem2122.i.decomposed = sub i16 %conv.frozen, %6
  %rem21.zext.i = zext i16 %rem2122.i.decomposed to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.197, i32 noundef %div19.zext.i, i32 noundef %rem21.zext.i) #11
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = sub i16 0, %conv
  %sub.i.frozen = freeze i16 %sub.i
  %div823.i = sdiv i16 %sub.i.frozen, 100
  %div8.sext.i = sext i16 %div823.i to i32
  %7 = mul i16 %div823.i, 100
  %rem1024.i.decomposed = sub i16 %sub.i.frozen, %7
  %rem10.sext.i = sext i16 %rem1024.i.decomposed to i32
  %call11.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.198, i32 noundef %div8.sext.i, i32 noundef %rem10.sext.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %to_usbatm_driver_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ %call.i, %if.then.i ], [ %call11.i, %if.else.i ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upstream_attenuation_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %to_usbatm_driver_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

to_usbatm_driver_data.exit:                       ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %to_usbatm_driver_data.exit.cleanup_crit_edge, label %if.end

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  %arrayidx = getelementptr %struct.cxacru_data, ptr %3, i32 0, i32 6, i32 8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %5 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv)
  %cmp.i3 = icmp sgt i16 %conv, -1
  br i1 %cmp.i3, label %if.then.i, label %if.else.i, !prof !439

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv.frozen = freeze i16 %conv
  %div1920.i = udiv i16 %conv.frozen, 100
  %div19.zext.i = zext i16 %div1920.i to i32
  %6 = mul i16 %div1920.i, 100
  %rem2122.i.decomposed = sub i16 %conv.frozen, %6
  %rem21.zext.i = zext i16 %rem2122.i.decomposed to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.197, i32 noundef %div19.zext.i, i32 noundef %rem21.zext.i) #11
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = sub i16 0, %conv
  %sub.i.frozen = freeze i16 %sub.i
  %div823.i = sdiv i16 %sub.i.frozen, 100
  %div8.sext.i = sext i16 %div823.i to i32
  %7 = mul i16 %div823.i, 100
  %rem1024.i.decomposed = sub i16 %sub.i.frozen, %7
  %rem10.sext.i = sext i16 %rem1024.i.decomposed to i32
  %call11.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.198, i32 noundef %div8.sext.i, i32 noundef %rem10.sext.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %to_usbatm_driver_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ %call.i, %if.then.i ], [ %call11.i, %if.else.i ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @downstream_snr_margin_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %to_usbatm_driver_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

to_usbatm_driver_data.exit:                       ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %to_usbatm_driver_data.exit.cleanup_crit_edge, label %if.end

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  %arrayidx = getelementptr %struct.cxacru_data, ptr %3, i32 0, i32 6, i32 7
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %5 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv)
  %cmp.i3 = icmp sgt i16 %conv, -1
  br i1 %cmp.i3, label %if.then.i, label %if.else.i, !prof !439

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv.frozen = freeze i16 %conv
  %div1920.i = udiv i16 %conv.frozen, 100
  %div19.zext.i = zext i16 %div1920.i to i32
  %6 = mul i16 %div1920.i, 100
  %rem2122.i.decomposed = sub i16 %conv.frozen, %6
  %rem21.zext.i = zext i16 %rem2122.i.decomposed to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.197, i32 noundef %div19.zext.i, i32 noundef %rem21.zext.i) #11
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = sub i16 0, %conv
  %sub.i.frozen = freeze i16 %sub.i
  %div823.i = sdiv i16 %sub.i.frozen, 100
  %div8.sext.i = sext i16 %div823.i to i32
  %7 = mul i16 %div823.i, 100
  %rem1024.i.decomposed = sub i16 %sub.i.frozen, %7
  %rem10.sext.i = sext i16 %rem1024.i.decomposed to i32
  %call11.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.198, i32 noundef %div8.sext.i, i32 noundef %rem10.sext.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %to_usbatm_driver_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ %call.i, %if.then.i ], [ %call11.i, %if.else.i ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upstream_snr_margin_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %to_usbatm_driver_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

to_usbatm_driver_data.exit:                       ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %to_usbatm_driver_data.exit.cleanup_crit_edge, label %if.end

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  %arrayidx = getelementptr %struct.cxacru_data, ptr %3, i32 0, i32 6, i32 6
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %5 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv)
  %cmp.i3 = icmp sgt i16 %conv, -1
  br i1 %cmp.i3, label %if.then.i, label %if.else.i, !prof !439

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv.frozen = freeze i16 %conv
  %div1920.i = udiv i16 %conv.frozen, 100
  %div19.zext.i = zext i16 %div1920.i to i32
  %6 = mul i16 %div1920.i, 100
  %rem2122.i.decomposed = sub i16 %conv.frozen, %6
  %rem21.zext.i = zext i16 %rem2122.i.decomposed to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.197, i32 noundef %div19.zext.i, i32 noundef %rem21.zext.i) #11
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = sub i16 0, %conv
  %sub.i.frozen = freeze i16 %sub.i
  %div823.i = sdiv i16 %sub.i.frozen, 100
  %div8.sext.i = sext i16 %div823.i to i32
  %7 = mul i16 %div823.i, 100
  %rem1024.i.decomposed = sub i16 %sub.i.frozen, %7
  %rem10.sext.i = sext i16 %rem1024.i.decomposed to i32
  %call11.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.198, i32 noundef %div8.sext.i, i32 noundef %rem10.sext.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %to_usbatm_driver_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ %call.i, %if.then.i ], [ %call11.i, %if.else.i ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mac_address_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %to_usbatm_driver_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

to_usbatm_driver_data.exit:                       ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %to_usbatm_driver_data.exit.cleanup_crit_edge, label %lor.lhs.false

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %to_usbatm_driver_data.exit
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %atm_dev = getelementptr inbounds %struct.usbatm_data, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %atm_dev, align 4
  %cmp1 = icmp eq ptr %7, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %esi = getelementptr inbounds %struct.atm_dev, ptr %7, i32 0, i32 9
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.203, ptr noundef %esi)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %to_usbatm_driver_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @line_status_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %to_usbatm_driver_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

to_usbatm_driver_data.exit:                       ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %to_usbatm_driver_data.exit.cleanup_crit_edge, label %if.end

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  %arrayidx = getelementptr %struct.cxacru_data, ptr %3, i32 0, i32 6, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp.i3 = icmp ugt i32 %5, 7
  br i1 %cmp.i3, label %if.then.i, label %if.end.i4, !prof !437

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.163, i32 noundef %5) #11
  br label %cleanup

if.end.i4:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr [8 x ptr], ptr @cxacru_sysfs_showattr_LINE.str, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call2.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.109, ptr noundef %7) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i4, %if.then.i, %to_usbatm_driver_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ %call.i, %if.then.i ], [ %call2.i, %if.end.i4 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @link_status_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %to_usbatm_driver_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

to_usbatm_driver_data.exit:                       ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %to_usbatm_driver_data.exit.cleanup_crit_edge, label %if.end

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  %arrayidx = getelementptr %struct.cxacru_data, ptr %3, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.i3 = icmp ugt i32 %5, 3
  %6 = and i32 %5, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1.i4 = icmp eq i32 %6, 0
  %7 = or i1 %cmp.i3, %cmp1.i4
  br i1 %7, label %if.then.i, label %if.end.i5, !prof !437

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.163, i32 noundef %5) #11
  br label %cleanup

if.end.i5:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx3.i = getelementptr [4 x ptr], ptr @cxacru_sysfs_showattr_LINK.str, i32 0, i32 %5
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3.i, align 4
  %call4.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.109, ptr noundef %9) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i5, %if.then.i, %to_usbatm_driver_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ %call.i, %if.then.i ], [ %call4.i, %if.end.i5 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upstream_rate_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %to_usbatm_driver_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

to_usbatm_driver_data.exit:                       ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %to_usbatm_driver_data.exit.cleanup_crit_edge, label %if.end

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.cxacru_data, ptr %3, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.163, i32 noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %to_usbatm_driver_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -19, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @downstream_rate_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %cmp.i = icmp eq ptr %add.ptr, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %to_usbatm_driver_data.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

to_usbatm_driver_data.exit:                       ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %to_usbatm_driver_data.exit.cleanup_crit_edge, label %if.end

to_usbatm_driver_data.exit.cleanup_crit_edge:     ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %to_usbatm_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  %card_info = getelementptr inbounds %struct.cxacru_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %card_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %card_info, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.163, i32 noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %to_usbatm_driver_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -19, %to_usbatm_driver_data.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 237)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 237)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !32, !33, !35, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !112, !113, !114, !115, !117, !118, !119, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !166, !168, !170, !171, !172, !173, !174, !176, !178, !179, !180, !182, !183, !185, !186, !188, !190, !191, !192, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !256, !257, !258, !260, !261, !263, !264, !266, !267, !268, !270, !271, !272, !274, !276, !278, !280, !281, !283, !285, !286, !288, !290, !291, !292, !293, !295, !297, !298, !299, !300, !301, !303, !305, !307, !309, !311, !313, !315, !317, !318, !319, !320, !322, !324, !325, !326, !328, !329, !330, !331, !332, !333, !334, !335, !336, !338, !340, !342, !344, !346, !347, !348, !350, !352, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !376, !377, !378, !380, !382, !383, !384, !385, !386, !387, !388, !389, !390, !392, !393, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !413, !414, !416, !418, !420, !422, !423, !424, !425}
!llvm.module.flags = !{!426, !427, !428, !429, !430, !431, !432, !433}
!llvm.ident = !{!434}

!0 = !{ptr @__initcall__kmod_cxacru__483_1374_cxacru_usb_driver_init6, !1, !"__initcall__kmod_cxacru__483_1374_cxacru_usb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/atm/cxacru.c", i32 1374, i32 1}
!2 = !{ptr @__exitcall_cxacru_usb_driver_exit, !1, !"__exitcall_cxacru_usb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author484, !4, !"__UNIQUE_ID_author484", i1 false, i1 false}
!4 = !{!"../drivers/usb/atm/cxacru.c", i32 1376, i32 1}
!5 = !{ptr @__UNIQUE_ID_description485, !6, !"__UNIQUE_ID_description485", i1 false, i1 false}
!6 = !{!"../drivers/usb/atm/cxacru.c", i32 1377, i32 1}
!7 = !{ptr @__UNIQUE_ID_file486, !8, !"__UNIQUE_ID_file486", i1 false, i1 false}
!8 = !{!"../drivers/usb/atm/cxacru.c", i32 1378, i32 1}
!9 = !{ptr @__UNIQUE_ID_license487, !8, !"__UNIQUE_ID_license487", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @cxacru_usb_driver, !12, !"cxacru_usb_driver", i1 false, i1 false}
!12 = !{!"../drivers/usb/atm/cxacru.c", i32 1366, i32 26}
!13 = !{ptr @cxacru_driver_name, !14, !"cxacru_driver_name", i1 false, i1 false}
!14 = !{!"../drivers/usb/atm/cxacru.c", i32 34, i32 19}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/atm/cxacru.c", i32 1357, i32 20}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/atm/cxacru.c", i32 1358, i32 4}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cxacru_usb_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @cxacru_usb_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @cxacru_driver, !26, !"cxacru_driver", i1 false, i1 false}
!26 = !{!"../drivers/usb/atm/cxacru.c", i32 1333, i32 29}
!27 = !{ptr @cxacru_bind.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/usb/atm/cxacru.c", i32 1144, i32 2}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @cxacru_bind.__key.8, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/usb/atm/cxacru.c", i32 1149, i32 2}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/atm/cxacru.c", i32 1153, i32 3}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @cxacru_bind.__UNIQUE_ID_ddebug478, !34, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/atm/cxacru.c", i32 1159, i32 3}
!39 = !{ptr @cxacru_bind.__UNIQUE_ID_ddebug479, !38, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/atm/cxacru.c", i32 1175, i32 3}
!42 = !{ptr @cxacru_bind.__UNIQUE_ID_ddebug480, !41, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!43 = !{ptr @cxacru_bind.__key.14, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/usb/atm/cxacru.c", i32 1203, i32 2}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @cxacru_bind.__key.16, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/usb/atm/cxacru.c", i32 1205, i32 2}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @cxacru_bind.__key.18, !47, !"__key", i1 false, i1 false}
!50 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/atm/cxacru.c", i32 831, i32 4}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @cxacru_poll_status._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @cxacru_poll_status._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/atm/cxacru.c", i32 838, i32 5}
!58 = !{ptr @cxacru_poll_status._entry.22, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @cxacru_poll_status._entry_ptr.24, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/atm/cxacru.c", i32 852, i32 4}
!62 = !{ptr @cxacru_poll_status._entry.25, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @cxacru_poll_status._entry_ptr.27, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/atm/cxacru.c", i32 856, i32 4}
!66 = !{ptr @cxacru_poll_status._entry.28, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @cxacru_poll_status._entry_ptr.30, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/atm/cxacru.c", i32 860, i32 4}
!70 = !{ptr @cxacru_poll_status._entry.31, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @cxacru_poll_status._entry_ptr.33, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/atm/cxacru.c", i32 872, i32 3}
!74 = !{ptr @cxacru_poll_status._entry.34, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @cxacru_poll_status._entry_ptr.36, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/atm/cxacru.c", i32 877, i32 3}
!78 = !{ptr @cxacru_poll_status._entry.37, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @cxacru_poll_status._entry_ptr.39, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/atm/cxacru.c", i32 882, i32 3}
!82 = !{ptr @cxacru_poll_status._entry.40, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @cxacru_poll_status._entry_ptr.42, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/atm/cxacru.c", i32 887, i32 3}
!86 = !{ptr @cxacru_poll_status._entry.43, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @cxacru_poll_status._entry_ptr.45, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/atm/cxacru.c", i32 892, i32 3}
!90 = !{ptr @cxacru_poll_status._entry.46, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @cxacru_poll_status._entry_ptr.48, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/atm/cxacru.c", i32 899, i32 3}
!94 = !{ptr @cxacru_poll_status._entry.49, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @cxacru_poll_status._entry_ptr.51, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/atm/cxacru.c", i32 905, i32 3}
!98 = !{ptr @cxacru_poll_status._entry.52, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @cxacru_poll_status._entry_ptr.54, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/atm/cxacru.c", i32 910, i32 3}
!102 = !{ptr @cxacru_poll_status._entry.55, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @cxacru_poll_status._entry_ptr.57, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.59, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/atm/cxacru.c", i32 915, i32 3}
!106 = !{ptr @cxacru_poll_status._entry.58, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @cxacru_poll_status._entry_ptr.60, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @__func__.cxacru_cm_get_array, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/atm/cxacru.c", i32 732, i32 8}
!110 = !{ptr @.str.61, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/atm/cxacru.c", i32 733, i32 5}
!112 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @cxacru_cm_get_array._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @cxacru_cm_get_array._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.64, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/atm/cxacru.c", i32 742, i32 6}
!117 = !{ptr @cxacru_cm_get_array._entry.63, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @cxacru_cm_get_array._entry_ptr.65, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @__func__.cxacru_cm, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/atm/cxacru.c", i32 620, i32 7}
!121 = !{ptr @.str.66, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/atm/cxacru.c", i32 621, i32 4}
!123 = !{ptr @cxacru_cm._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @cxacru_cm._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.68, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/atm/cxacru.c", i32 634, i32 4}
!127 = !{ptr @cxacru_cm._entry.67, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @cxacru_cm._entry_ptr.69, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.71, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/atm/cxacru.c", i32 652, i32 4}
!131 = !{ptr @cxacru_cm._entry.70, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @cxacru_cm._entry_ptr.72, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.74, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/atm/cxacru.c", i32 660, i32 4}
!135 = !{ptr @cxacru_cm._entry.73, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @cxacru_cm._entry_ptr.75, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.77, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/atm/cxacru.c", i32 667, i32 4}
!139 = !{ptr @cxacru_cm._entry.76, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @cxacru_cm._entry_ptr.78, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.80, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/atm/cxacru.c", i32 672, i32 4}
!143 = !{ptr @cxacru_cm._entry.79, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @cxacru_cm._entry_ptr.81, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.83, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/atm/cxacru.c", i32 682, i32 5}
!147 = !{ptr @cxacru_cm._entry.82, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @cxacru_cm._entry_ptr.84, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.86, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/atm/cxacru.c", i32 689, i32 5}
!151 = !{ptr @cxacru_cm._entry.85, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @cxacru_cm._entry_ptr.87, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.88, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/atm/cxacru.c", i32 701, i32 2}
!155 = !{ptr @cxacru_cm.__UNIQUE_ID_ddebug466, !154, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!156 = !{ptr @init_completion.__key, !157, !"__key", i1 false, i1 false}
!157 = !{!"../include/linux/completion.h", i32 87, i32 2}
!158 = !{ptr @.str.89, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @cxacru_start_wait_urb.__key, !160, !"__key", i1 false, i1 false}
!160 = !{!"../drivers/usb/atm/cxacru.c", i32 597, i32 2}
!161 = !{ptr @.str.90, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.91, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/atm/cxacru.c", i32 763, i32 3}
!164 = !{ptr @.str.92, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @cxacru_card_status.__UNIQUE_ID_ddebug467, !163, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!166 = !{ptr @.str.93, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/atm/cxacru.c", i32 1097, i32 43}
!168 = !{ptr @.str.94, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/atm/cxacru.c", i32 1100, i32 3}
!170 = !{ptr @.str.95, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.96, !169, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @cxacru_heavy_init._entry, !169, !"_entry", i1 false, i1 false}
!173 = !{ptr @cxacru_heavy_init._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.97, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/usb/atm/cxacru.c", i32 1105, i32 40}
!176 = !{ptr @.str.99, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/usb/atm/cxacru.c", i32 1107, i32 4}
!178 = !{ptr @cxacru_heavy_init._entry.98, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @cxacru_heavy_init._entry_ptr.100, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.101, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/usb/atm/cxacru.c", i32 1121, i32 3}
!182 = !{ptr @cxacru_heavy_init.__UNIQUE_ID_ddebug476, !181, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!183 = !{ptr @.str.102, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/usb/atm/cxacru.c", i32 1123, i32 3}
!185 = !{ptr @cxacru_heavy_init.__UNIQUE_ID_ddebug477, !184, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!186 = !{ptr @.str.103, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/usb/atm/cxacru.c", i32 1079, i32 15}
!188 = !{ptr @.str.104, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/usb/atm/cxacru.c", i32 1080, i32 2}
!190 = !{ptr @.str.105, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @cxacru_find_firmware.__UNIQUE_ID_ddebug474, !189, !"__UNIQUE_ID_ddebug474", i1 false, i1 false}
!192 = !{ptr @.str.106, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/usb/atm/cxacru.c", i32 1083, i32 3}
!194 = !{ptr @cxacru_find_firmware.__UNIQUE_ID_ddebug475, !193, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!195 = !{ptr @.str.107, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/usb/atm/cxacru.c", i32 1087, i32 2}
!197 = !{ptr @cxacru_find_firmware._entry, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @cxacru_find_firmware._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.108, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/usb/atm/cxacru.c", i32 994, i32 2}
!201 = !{ptr @.str.109, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @cxacru_upload_firmware.__UNIQUE_ID_ddebug473, !200, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!203 = !{ptr @.str.110, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/usb/atm/cxacru.c", i32 1000, i32 3}
!205 = !{ptr @cxacru_upload_firmware._entry, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @cxacru_upload_firmware._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.112, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/usb/atm/cxacru.c", i32 1008, i32 3}
!209 = !{ptr @cxacru_upload_firmware._entry.111, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @cxacru_upload_firmware._entry_ptr.113, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.115, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/usb/atm/cxacru.c", i32 1016, i32 3}
!213 = !{ptr @cxacru_upload_firmware._entry.114, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @cxacru_upload_firmware._entry_ptr.116, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.118, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/usb/atm/cxacru.c", i32 1021, i32 2}
!217 = !{ptr @cxacru_upload_firmware._entry.117, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @cxacru_upload_firmware._entry_ptr.119, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.121, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/usb/atm/cxacru.c", i32 1024, i32 3}
!221 = !{ptr @cxacru_upload_firmware._entry.120, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @cxacru_upload_firmware._entry_ptr.122, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.124, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/usb/atm/cxacru.c", i32 1030, i32 3}
!225 = !{ptr @cxacru_upload_firmware._entry.123, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @cxacru_upload_firmware._entry_ptr.125, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.127, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/usb/atm/cxacru.c", i32 1033, i32 4}
!229 = !{ptr @cxacru_upload_firmware._entry.126, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @cxacru_upload_firmware._entry_ptr.128, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.130, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/usb/atm/cxacru.c", i32 1041, i32 3}
!233 = !{ptr @cxacru_upload_firmware._entry.129, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @cxacru_upload_firmware._entry_ptr.131, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.133, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/usb/atm/cxacru.c", i32 1045, i32 2}
!237 = !{ptr @cxacru_upload_firmware._entry.132, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @cxacru_upload_firmware._entry_ptr.134, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.136, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/usb/atm/cxacru.c", i32 1053, i32 3}
!241 = !{ptr @cxacru_upload_firmware._entry.135, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @cxacru_upload_firmware._entry_ptr.137, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.139, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/usb/atm/cxacru.c", i32 1067, i32 3}
!245 = !{ptr @cxacru_upload_firmware._entry.138, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @cxacru_upload_firmware._entry_ptr.140, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.141, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/usb/atm/cxacru.c", i32 968, i32 5}
!249 = !{ptr @.str.142, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @cxacru_fw.__UNIQUE_ID_ddebug471, !248, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!251 = !{ptr @.str.143, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/usb/atm/cxacru.c", i32 974, i32 2}
!253 = !{ptr @cxacru_fw.__UNIQUE_ID_ddebug472, !252, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!254 = !{ptr @.str.144, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/usb/atm/cxacru.c", i32 1229, i32 2}
!256 = !{ptr @.str.145, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @cxacru_unbind.__UNIQUE_ID_ddebug481, !255, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!258 = !{ptr @.str.146, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/usb/atm/cxacru.c", i32 1232, i32 3}
!260 = !{ptr @cxacru_unbind.__UNIQUE_ID_ddebug482, !259, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!261 = !{ptr @.str.147, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/usb/atm/cxacru.c", i32 777, i32 2}
!263 = !{ptr @cxacru_atm_start.__UNIQUE_ID_ddebug468, !262, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!264 = !{ptr @.str.148, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/usb/atm/cxacru.c", i32 783, i32 3}
!266 = !{ptr @cxacru_atm_start._entry, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @cxacru_atm_start._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.150, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/usb/atm/cxacru.c", i32 791, i32 3}
!270 = !{ptr @cxacru_atm_start._entry.149, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @cxacru_atm_start._entry_ptr.151, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @cxacru_usb_ids, !273, !"cxacru_usb_ids", i1 false, i1 false}
!273 = !{!"../drivers/usb/atm/cxacru.c", i32 1276, i32 35}
!274 = !{ptr @cxacru_cafe, !275, !"cxacru_cafe", i1 false, i1 false}
!275 = !{!"../drivers/usb/atm/cxacru.c", i32 1264, i32 39}
!276 = !{ptr @cxacru_cb00, !277, !"cxacru_cb00", i1 false, i1 false}
!277 = !{!"../drivers/usb/atm/cxacru.c", i32 1270, i32 39}
!278 = !{ptr @cxacru_groups, !279, !"cxacru_groups", i1 false, i1 false}
!279 = !{!"../drivers/usb/atm/cxacru.c", i32 570, i32 1}
!280 = !{ptr @cxacru_group, !279, !"cxacru_group", i1 false, i1 false}
!281 = !{ptr @cxacru_attrs, !282, !"cxacru_attrs", i1 false, i1 false}
!282 = !{!"../drivers/usb/atm/cxacru.c", i32 541, i32 26}
!283 = !{ptr @.str.152, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/usb/atm/cxacru.c", i32 539, i32 1}
!285 = !{ptr @dev_attr_adsl_config, !284, !"dev_attr_adsl_config", i1 false, i1 false}
!286 = !{ptr @.str.153, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/usb/atm/cxacru.c", i32 457, i32 27}
!288 = !{ptr @.str.154, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/usb/atm/cxacru.c", i32 484, i32 5}
!290 = !{ptr @.str.155, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @adsl_config_store._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @adsl_config_store._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.156, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/usb/atm/cxacru.c", i32 490, i32 32}
!295 = !{ptr @.str.158, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/usb/atm/cxacru.c", i32 493, i32 4}
!297 = !{ptr @adsl_config_store._entry.157, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @adsl_config_store._entry_ptr.159, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.160, !284, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @dev_attr_adsl_state, !284, !"dev_attr_adsl_state", i1 false, i1 false}
!301 = !{ptr @.str.161, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/usb/atm/cxacru.c", i32 318, i32 25}
!303 = !{ptr @.str.162, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/usb/atm/cxacru.c", i32 318, i32 36}
!305 = !{ptr @adsl_state_show.str, !306, !"str", i1 false, i1 false}
!306 = !{!"../drivers/usb/atm/cxacru.c", i32 318, i32 15}
!307 = !{ptr @.str.163, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/usb/atm/cxacru.c", i32 328, i32 23}
!309 = !{ptr @.str.164, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/usb/atm/cxacru.c", i32 345, i32 20}
!311 = !{ptr @.str.165, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/usb/atm/cxacru.c", i32 356, i32 23}
!313 = !{ptr @.str.166, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/usb/atm/cxacru.c", i32 356, i32 51}
!315 = !{ptr @.str.167, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/usb/atm/cxacru.c", i32 359, i32 4}
!317 = !{ptr @.str.168, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @adsl_state_store._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @adsl_state_store._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.169, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/usb/atm/cxacru.c", i32 376, i32 23}
!322 = !{ptr @.str.171, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/usb/atm/cxacru.c", i32 379, i32 4}
!324 = !{ptr @adsl_state_store._entry.170, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @adsl_state_store._entry_ptr.172, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.173, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/usb/atm/cxacru.c", i32 389, i32 23}
!328 = !{ptr @.str.174, !284, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @dev_attr_adsl_controller_version, !284, !"dev_attr_adsl_controller_version", i1 false, i1 false}
!330 = !{ptr @.str.175, !284, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @dev_attr_adsl_headend_environment, !284, !"dev_attr_adsl_headend_environment", i1 false, i1 false}
!332 = !{ptr @.str.176, !284, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @dev_attr_adsl_headend, !284, !"dev_attr_adsl_headend", i1 false, i1 false}
!334 = !{ptr @.str.177, !284, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @dev_attr_modulation, !284, !"dev_attr_modulation", i1 false, i1 false}
!336 = !{ptr @.str.178, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/usb/atm/cxacru.c", i32 285, i32 4}
!338 = !{ptr @.str.179, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/usb/atm/cxacru.c", i32 286, i32 4}
!340 = !{ptr @.str.180, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/usb/atm/cxacru.c", i32 287, i32 4}
!342 = !{ptr @.str.181, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/usb/atm/cxacru.c", i32 288, i32 4}
!344 = !{ptr @cxacru_sysfs_showattr_MODU.str, !345, !"str", i1 false, i1 false}
!345 = !{!"../drivers/usb/atm/cxacru.c", i32 284, i32 15}
!346 = !{ptr @.str.182, !284, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @dev_attr_line_startable, !284, !"dev_attr_line_startable", i1 false, i1 false}
!348 = !{ptr @.str.183, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/usb/atm/cxacru.c", i32 255, i32 25}
!350 = !{ptr @.str.184, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/usb/atm/cxacru.c", i32 255, i32 31}
!352 = !{ptr @cxacru_sysfs_showattr_bool.str, !353, !"str", i1 false, i1 false}
!353 = !{!"../drivers/usb/atm/cxacru.c", i32 255, i32 15}
!354 = !{ptr @.str.185, !284, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @dev_attr_downstream_hec_errors, !284, !"dev_attr_downstream_hec_errors", i1 false, i1 false}
!356 = !{ptr @.str.186, !284, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @dev_attr_upstream_hec_errors, !284, !"dev_attr_upstream_hec_errors", i1 false, i1 false}
!358 = !{ptr @.str.187, !284, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @dev_attr_downstream_fec_errors, !284, !"dev_attr_downstream_fec_errors", i1 false, i1 false}
!360 = !{ptr @.str.188, !284, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @dev_attr_upstream_fec_errors, !284, !"dev_attr_upstream_fec_errors", i1 false, i1 false}
!362 = !{ptr @.str.189, !284, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @dev_attr_downstream_crc_errors, !284, !"dev_attr_downstream_crc_errors", i1 false, i1 false}
!364 = !{ptr @.str.190, !284, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @dev_attr_upstream_crc_errors, !284, !"dev_attr_upstream_crc_errors", i1 false, i1 false}
!366 = !{ptr @.str.191, !284, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @dev_attr_startup_attempts, !284, !"dev_attr_startup_attempts", i1 false, i1 false}
!368 = !{ptr @.str.192, !284, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @dev_attr_downstream_bits_per_frame, !284, !"dev_attr_downstream_bits_per_frame", i1 false, i1 false}
!370 = !{ptr @.str.193, !284, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @dev_attr_upstream_bits_per_frame, !284, !"dev_attr_upstream_bits_per_frame", i1 false, i1 false}
!372 = !{ptr @.str.194, !284, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @dev_attr_transmitter_power, !284, !"dev_attr_transmitter_power", i1 false, i1 false}
!374 = !{ptr @.str.195, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/usb/atm/cxacru.c", i32 238, i32 22}
!376 = !{ptr @.str.196, !284, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @dev_attr_downstream_attenuation, !284, !"dev_attr_downstream_attenuation", i1 false, i1 false}
!378 = !{ptr @.str.197, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/usb/atm/cxacru.c", i32 244, i32 35}
!380 = !{ptr @.str.198, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/usb/atm/cxacru.c", i32 248, i32 35}
!382 = !{ptr @.str.199, !284, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @dev_attr_upstream_attenuation, !284, !"dev_attr_upstream_attenuation", i1 false, i1 false}
!384 = !{ptr @.str.200, !284, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @dev_attr_downstream_snr_margin, !284, !"dev_attr_downstream_snr_margin", i1 false, i1 false}
!386 = !{ptr @.str.201, !284, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @dev_attr_upstream_snr_margin, !284, !"dev_attr_upstream_snr_margin", i1 false, i1 false}
!388 = !{ptr @.str.202, !284, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @dev_attr_mac_address, !284, !"dev_attr_mac_address", i1 false, i1 false}
!390 = !{ptr @.str.203, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/usb/atm/cxacru.c", i32 312, i32 22}
!392 = !{ptr @.str.204, !284, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @dev_attr_line_status, !284, !"dev_attr_line_status", i1 false, i1 false}
!394 = !{ptr @.str.205, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/usb/atm/cxacru.c", i32 273, i32 25}
!396 = !{ptr @.str.206, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/usb/atm/cxacru.c", i32 273, i32 33}
!398 = !{ptr @.str.207, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/usb/atm/cxacru.c", i32 274, i32 3}
!400 = !{ptr @.str.208, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/usb/atm/cxacru.c", i32 274, i32 15}
!402 = !{ptr @.str.209, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/usb/atm/cxacru.c", i32 274, i32 35}
!404 = !{ptr @.str.210, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/usb/atm/cxacru.c", i32 274, i32 47}
!406 = !{ptr @.str.211, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/usb/atm/cxacru.c", i32 275, i32 3}
!408 = !{ptr @.str.212, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/usb/atm/cxacru.c", i32 275, i32 14}
!410 = !{ptr @cxacru_sysfs_showattr_LINE.str, !411, !"str", i1 false, i1 false}
!411 = !{!"../drivers/usb/atm/cxacru.c", i32 273, i32 15}
!412 = !{ptr @.str.213, !284, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @dev_attr_link_status, !284, !"dev_attr_link_status", i1 false, i1 false}
!414 = !{ptr @.str.214, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/usb/atm/cxacru.c", i32 264, i32 31}
!416 = !{ptr @.str.215, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/usb/atm/cxacru.c", i32 264, i32 48}
!418 = !{ptr @.str.216, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/usb/atm/cxacru.c", i32 264, i32 61}
!420 = !{ptr @cxacru_sysfs_showattr_LINK.str, !421, !"str", i1 false, i1 false}
!421 = !{!"../drivers/usb/atm/cxacru.c", i32 264, i32 15}
!422 = !{ptr @.str.217, !284, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @dev_attr_upstream_rate, !284, !"dev_attr_upstream_rate", i1 false, i1 false}
!424 = !{ptr @.str.218, !284, !"<string literal>", i1 false, i1 false}
!425 = !{ptr @dev_attr_downstream_rate, !284, !"dev_attr_downstream_rate", i1 false, i1 false}
!426 = !{i32 1, !"wchar_size", i32 2}
!427 = !{i32 1, !"min_enum_size", i32 4}
!428 = !{i32 8, !"branch-target-enforcement", i32 0}
!429 = !{i32 8, !"sign-return-address", i32 0}
!430 = !{i32 8, !"sign-return-address-all", i32 0}
!431 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!432 = !{i32 7, !"uwtable", i32 1}
!433 = !{i32 7, !"frame-pointer", i32 2}
!434 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!435 = !{i64 2148990735, i64 2148990740, i64 2148990753, i64 2148990797, i64 2148990831, i64 2148990852}
!436 = !{!"auto-init"}
!437 = !{!"branch_weights", i32 1, i32 2000}
!438 = !{i64 2157300887, i64 2157301377, i64 2157300924, i64 2157300980, i64 2157301014, i64 2157301038, i64 2157301079, i64 2157301100, i64 2157301128, i64 2157301162}
!439 = !{!"branch_weights", i32 2000, i32 1}
